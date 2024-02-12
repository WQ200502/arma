/*
 Navicat Premium Data Transfer

 Source Server         : fivem
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : gta5

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 15/02/2021 19:22:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for addon_account
-- ----------------------------
DROP TABLE IF EXISTS `addon_account`;
CREATE TABLE `addon_account`  (
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addon_account
-- ----------------------------
INSERT INTO `addon_account` VALUES ('caution', 'Caution', 0);
INSERT INTO `addon_account` VALUES ('club_lmc_bank', 'LMC', 1);
INSERT INTO `addon_account` VALUES ('club_lmc_black', 'LMC Black', 1);
INSERT INTO `addon_account` VALUES ('club_lmc_priv', 'LMC Priv', 1);
INSERT INTO `addon_account` VALUES ('club_lmc_pub', 'LMC Pub', 1);
INSERT INTO `addon_account` VALUES ('property_black_money', 'Argent Sale Propriété', 0);
INSERT INTO `addon_account` VALUES ('society_ambulance', 'Ambulance', 1);
INSERT INTO `addon_account` VALUES ('society_burgershot', 'Burgershot', 1);
INSERT INTO `addon_account` VALUES ('society_cardealer', 'Concessionnaire', 1);
INSERT INTO `addon_account` VALUES ('society_cozinheiro', 'Cozinheiro', 1);
INSERT INTO `addon_account` VALUES ('society_mafia', 'Mafia', 1);
INSERT INTO `addon_account` VALUES ('society_mechanic', 'Mécano', 1);
INSERT INTO `addon_account` VALUES ('society_police', 'Police', 1);

-- ----------------------------
-- Table structure for addon_account_data
-- ----------------------------
DROP TABLE IF EXISTS `addon_account_data`;
CREATE TABLE `addon_account_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_addon_account_data_account_name_owner`(`account_name`, `owner`) USING BTREE,
  INDEX `index_addon_account_data_account_name`(`account_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addon_account_data
-- ----------------------------
INSERT INTO `addon_account_data` VALUES (1, 'caution', 0, 'steam:11000010c502cb5');
INSERT INTO `addon_account_data` VALUES (2, 'caution', 0, 'steam:110000103072384');
INSERT INTO `addon_account_data` VALUES (3, 'society_police', 370, NULL);
INSERT INTO `addon_account_data` VALUES (5, 'society_ambulance', 50000, NULL);
INSERT INTO `addon_account_data` VALUES (6, 'society_cardealer', 0, NULL);
INSERT INTO `addon_account_data` VALUES (7, 'property_black_money', 0, 'steam:11000010c502cb5');
INSERT INTO `addon_account_data` VALUES (8, 'society_mechanic', 29006, NULL);
INSERT INTO `addon_account_data` VALUES (9, 'property_black_money', 0, 'steam:110000103072384');
INSERT INTO `addon_account_data` VALUES (10, 'caution', 0, 'steam:110000115d13e50');
INSERT INTO `addon_account_data` VALUES (11, 'property_black_money', 0, 'steam:110000115d13e50');
INSERT INTO `addon_account_data` VALUES (12, 'property_black_money', 0, 'steam:1100001337e0dcf');
INSERT INTO `addon_account_data` VALUES (13, 'caution', 0, 'steam:1100001337e0dcf');
INSERT INTO `addon_account_data` VALUES (14, 'caution', 0, 'steam:1100001172af33b');
INSERT INTO `addon_account_data` VALUES (15, 'property_black_money', 0, 'steam:1100001172af33b');
INSERT INTO `addon_account_data` VALUES (16, 'caution', 0, 'steam:1100001170fb22c');
INSERT INTO `addon_account_data` VALUES (17, 'property_black_money', 0, 'steam:1100001170fb22c');
INSERT INTO `addon_account_data` VALUES (18, 'club_lmc_pub', 0, NULL);
INSERT INTO `addon_account_data` VALUES (19, 'club_lmc_priv', 0, NULL);
INSERT INTO `addon_account_data` VALUES (20, 'club_lmc_black', 0, NULL);
INSERT INTO `addon_account_data` VALUES (21, 'club_lmc_bank', 0, NULL);
INSERT INTO `addon_account_data` VALUES (22, 'society_cozinheiro', 0, NULL);
INSERT INTO `addon_account_data` VALUES (23, 'society_burgershot', 6000000, NULL);
INSERT INTO `addon_account_data` VALUES (24, 'society_blackmarket', 0, NULL);
INSERT INTO `addon_account_data` VALUES (25, 'society_mafia', 24941000, NULL);
INSERT INTO `addon_account_data` VALUES (26, 'caution', 2000, 'steam:110000115517b6d');
INSERT INTO `addon_account_data` VALUES (27, 'property_black_money', 0, 'steam:110000115517b6d');
INSERT INTO `addon_account_data` VALUES (28, 'caution', 12000, 'steam:110000117b4ecd8');
INSERT INTO `addon_account_data` VALUES (29, 'property_black_money', 8567, 'steam:110000117b4ecd8');
INSERT INTO `addon_account_data` VALUES (30, 'caution', 0, 'steam:11000011899ea0f');
INSERT INTO `addon_account_data` VALUES (31, 'property_black_money', 10008500, 'steam:11000011899ea0f');
INSERT INTO `addon_account_data` VALUES (32, 'caution', 0, 'steam:11000011bdbdc1a');
INSERT INTO `addon_account_data` VALUES (33, 'property_black_money', 0, 'steam:11000011bdbdc1a');
INSERT INTO `addon_account_data` VALUES (34, 'caution', 2000, 'steam:11000010722d120');
INSERT INTO `addon_account_data` VALUES (35, 'property_black_money', 0, 'steam:11000010722d120');
INSERT INTO `addon_account_data` VALUES (36, 'caution', 0, 'steam:110000106f5ce70');
INSERT INTO `addon_account_data` VALUES (37, 'property_black_money', 0, 'steam:110000106f5ce70');
INSERT INTO `addon_account_data` VALUES (38, 'property_black_money', 0, 'steam:11000013bd36b18');
INSERT INTO `addon_account_data` VALUES (39, 'caution', 4000, 'steam:11000013bd36b18');
INSERT INTO `addon_account_data` VALUES (40, 'caution', 2000, 'steam:110000135a51347');
INSERT INTO `addon_account_data` VALUES (41, 'property_black_money', 0, 'steam:110000135a51347');
INSERT INTO `addon_account_data` VALUES (42, 'caution', 0, 'steam:110000134728f22');
INSERT INTO `addon_account_data` VALUES (43, 'property_black_money', 0, 'steam:110000134728f22');
INSERT INTO `addon_account_data` VALUES (44, 'caution', 0, 'steam:11000011745d699');
INSERT INTO `addon_account_data` VALUES (45, 'property_black_money', 0, 'steam:11000011745d699');
INSERT INTO `addon_account_data` VALUES (46, 'caution', 0, 'steam:11000013c2b297a');
INSERT INTO `addon_account_data` VALUES (47, 'property_black_money', 0, 'steam:11000013c2b297a');
INSERT INTO `addon_account_data` VALUES (48, 'caution', 0, 'steam:110000103f407b5');
INSERT INTO `addon_account_data` VALUES (49, 'property_black_money', 0, 'steam:110000103f407b5');
INSERT INTO `addon_account_data` VALUES (50, 'caution', 0, 'steam:1100001172d233d');
INSERT INTO `addon_account_data` VALUES (51, 'property_black_money', 0, 'steam:1100001172d233d');
INSERT INTO `addon_account_data` VALUES (52, 'caution', 0, 'steam:11000013f295673');
INSERT INTO `addon_account_data` VALUES (53, 'property_black_money', 0, 'steam:11000013f295673');
INSERT INTO `addon_account_data` VALUES (54, 'caution', 2000, 'steam:11000013716cde4');
INSERT INTO `addon_account_data` VALUES (55, 'property_black_money', 0, 'steam:11000013716cde4');
INSERT INTO `addon_account_data` VALUES (56, 'caution', 0, 'steam:1100001321585b7');
INSERT INTO `addon_account_data` VALUES (57, 'property_black_money', 0, 'steam:1100001321585b7');
INSERT INTO `addon_account_data` VALUES (58, 'caution', 0, 'steam:11000013301b85a');
INSERT INTO `addon_account_data` VALUES (59, 'property_black_money', 0, 'steam:11000013301b85a');
INSERT INTO `addon_account_data` VALUES (60, 'caution', 0, 'steam:11000011a0816e8');
INSERT INTO `addon_account_data` VALUES (61, 'property_black_money', 0, 'steam:11000011a0816e8');
INSERT INTO `addon_account_data` VALUES (62, 'caution', 0, 'steam:11000011bfb9181');
INSERT INTO `addon_account_data` VALUES (63, 'property_black_money', 0, 'steam:11000011bfb9181');
INSERT INTO `addon_account_data` VALUES (64, 'caution', 0, 'steam:110000132555dfb');
INSERT INTO `addon_account_data` VALUES (65, 'property_black_money', 0, 'steam:110000132555dfb');
INSERT INTO `addon_account_data` VALUES (66, 'caution', 0, 'steam:1100001350a4e14');
INSERT INTO `addon_account_data` VALUES (67, 'property_black_money', 0, 'steam:1100001350a4e14');
INSERT INTO `addon_account_data` VALUES (68, 'caution', 0, 'steam:1100001154d67f5');
INSERT INTO `addon_account_data` VALUES (69, 'property_black_money', 0, 'steam:1100001154d67f5');
INSERT INTO `addon_account_data` VALUES (70, 'caution', 0, 'steam:11000010c72c48b');
INSERT INTO `addon_account_data` VALUES (71, 'property_black_money', 0, 'steam:11000010c72c48b');
INSERT INTO `addon_account_data` VALUES (72, 'caution', 2000, 'steam:11000013efb45a5');
INSERT INTO `addon_account_data` VALUES (73, 'property_black_money', 0, 'steam:11000013efb45a5');
INSERT INTO `addon_account_data` VALUES (74, 'caution', 2500, 'steam:11000013f403e65');
INSERT INTO `addon_account_data` VALUES (75, 'property_black_money', 0, 'steam:11000013f403e65');
INSERT INTO `addon_account_data` VALUES (76, 'caution', 0, 'steam:110000117caaf4e');
INSERT INTO `addon_account_data` VALUES (77, 'property_black_money', 0, 'steam:110000117caaf4e');

-- ----------------------------
-- Table structure for addon_inventory
-- ----------------------------
DROP TABLE IF EXISTS `addon_inventory`;
CREATE TABLE `addon_inventory`  (
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addon_inventory
-- ----------------------------
INSERT INTO `addon_inventory` VALUES ('club_lmc', 'LMC', 1);
INSERT INTO `addon_inventory` VALUES ('club_lmc_priv', 'LMC Private', 1);
INSERT INTO `addon_inventory` VALUES ('club_lmc_pub', 'LMC Public', 1);
INSERT INTO `addon_inventory` VALUES ('property', 'Propriété', 0);
INSERT INTO `addon_inventory` VALUES ('society_ambulance', 'Ambulance', 1);
INSERT INTO `addon_inventory` VALUES ('society_burgershot', 'Burgershot', 1);
INSERT INTO `addon_inventory` VALUES ('society_burgershot_fridge', 'Burgershot(frigorifico)', 1);
INSERT INTO `addon_inventory` VALUES ('society_cardealer', 'Concesionnaire', 1);
INSERT INTO `addon_inventory` VALUES ('society_cozinheiro', 'Cozinheiro', 1);
INSERT INTO `addon_inventory` VALUES ('society_cozinheiro_fridge', 'Cozinheiro (frigorifico)', 1);
INSERT INTO `addon_inventory` VALUES ('society_mafia', 'Mafia', 1);
INSERT INTO `addon_inventory` VALUES ('society_mechanic', 'Mécano', 1);
INSERT INTO `addon_inventory` VALUES ('society_police', 'Police', 1);

-- ----------------------------
-- Table structure for addon_inventory_items
-- ----------------------------
DROP TABLE IF EXISTS `addon_inventory_items`;
CREATE TABLE `addon_inventory_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_addon_inventory_items_inventory_name_name`(`inventory_name`, `name`) USING BTREE,
  INDEX `index_addon_inventory_items_inventory_name_name_owner`(`inventory_name`, `name`, `owner`) USING BTREE,
  INDEX `index_addon_inventory_inventory_name`(`inventory_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addon_inventory_items
-- ----------------------------
INSERT INTO `addon_inventory_items` VALUES (1, 'society_cozinheiro_fridge', 'fixtool', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (2, 'society_cozinheiro_fridge', 'hamb', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (3, 'property', 'weed_pooch', 0, 'steam:110000117b4ecd8');
INSERT INTO `addon_inventory_items` VALUES (4, 'property', 'coke_pooch', 0, 'steam:110000117b4ecd8');
INSERT INTO `addon_inventory_items` VALUES (5, 'property', 'lockpick', 0, 'steam:110000117b4ecd8');
INSERT INTO `addon_inventory_items` VALUES (6, 'property', 'clip', 8, 'steam:110000117b4ecd8');
INSERT INTO `addon_inventory_items` VALUES (7, 'property', 'moneywashid', 0, 'steam:110000117b4ecd8');
INSERT INTO `addon_inventory_items` VALUES (8, 'society_burgershot_fridge', 'fvburger', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (9, 'society_burgershot_fridge', 'fburger', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (10, 'society_burgershot_fridge', 'cocacola', 23, NULL);
INSERT INTO `addon_inventory_items` VALUES (11, 'society_burgershot_fridge', 'potato', 28, NULL);
INSERT INTO `addon_inventory_items` VALUES (12, 'society_burgershot_fridge', 'instestinos', 22578, NULL);
INSERT INTO `addon_inventory_items` VALUES (13, 'society_burgershot_fridge', 'hamburger', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (14, 'society_burgershot_fridge', 'chips', 2, NULL);
INSERT INTO `addon_inventory_items` VALUES (15, 'society_burgershot_fridge', 'lettuce', 26, NULL);
INSERT INTO `addon_inventory_items` VALUES (16, 'society_burgershot_fridge', 'tomato', 1, NULL);
INSERT INTO `addon_inventory_items` VALUES (17, 'society_burgershot_fridge', 'water', 35, NULL);
INSERT INTO `addon_inventory_items` VALUES (18, 'society_burgershot_fridge', 'shamburger', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (19, 'society_burgershot_fridge', 'vbread', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (20, 'society_burgershot_fridge', 'vhamburger', 1, NULL);
INSERT INTO `addon_inventory_items` VALUES (21, 'society_burgershot_fridge', 'cheese', 28, NULL);
INSERT INTO `addon_inventory_items` VALUES (22, 'society_burgershot_fridge', 'nugget', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (23, 'society_burgershot_fridge', 'nuggets4', 4, NULL);
INSERT INTO `addon_inventory_items` VALUES (24, 'society_burgershot_fridge', 'bread', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (25, 'property', 'fixtool', 0, 'steam:110000117b4ecd8');
INSERT INTO `addon_inventory_items` VALUES (26, 'society_burgershot_fridge', 'huesos', 23351, NULL);
INSERT INTO `addon_inventory_items` VALUES (27, 'society_burgershot_fridge', 'medulas', 18242, NULL);
INSERT INTO `addon_inventory_items` VALUES (28, 'society_burgershot_fridge', 'corazon', 105, NULL);
INSERT INTO `addon_inventory_items` VALUES (29, 'property', 'instestinos', 64402, 'steam:110000117b4ecd8');
INSERT INTO `addon_inventory_items` VALUES (30, 'property', 'medulas', 4876, 'steam:110000117b4ecd8');
INSERT INTO `addon_inventory_items` VALUES (31, 'property', 'huesos', 71910, 'steam:110000117b4ecd8');
INSERT INTO `addon_inventory_items` VALUES (32, 'property', 'cerebro', 1214, 'steam:110000117b4ecd8');
INSERT INTO `addon_inventory_items` VALUES (33, 'property', 'corazon', 3101, 'steam:110000117b4ecd8');
INSERT INTO `addon_inventory_items` VALUES (34, 'property', 'sciroppo', 50, 'steam:11000013c2b297a');
INSERT INTO `addon_inventory_items` VALUES (35, 'property', 'medikit', 20, 'steam:11000013c2b297a');
INSERT INTO `addon_inventory_items` VALUES (36, 'property', 'antibioticorosacea', 10, 'steam:11000013c2b297a');
INSERT INTO `addon_inventory_items` VALUES (37, 'property', 'antibiotico', 19, 'steam:11000013c2b297a');
INSERT INTO `addon_inventory_items` VALUES (38, 'society_burgershot_fridge', 'cerebro', 537, NULL);
INSERT INTO `addon_inventory_items` VALUES (39, 'society_burgershot_fridge', 'clettuce', 2932, NULL);
INSERT INTO `addon_inventory_items` VALUES (40, 'society_burgershot_fridge', 'ctomato', 3530, NULL);
INSERT INTO `addon_inventory_items` VALUES (41, 'society_mafia', 'slaughtered_chicken', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (42, 'society_mafia', 'corazon', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (43, 'society_mafia', 'cerebro', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (44, 'society_mafia', 'medulas', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (45, 'society_mafia', 'warehouse_key', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (46, 'society_mafia', 'moneywashid', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (47, 'society_mafia', 'huesos', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (48, 'society_mafia', 'instestinos', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (49, 'society_mafia', 'coke_pooch', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (50, 'property', 'instestinos', 0, 'steam:11000011899ea0f');
INSERT INTO `addon_inventory_items` VALUES (51, 'property', 'cerebro', 0, 'steam:11000011899ea0f');
INSERT INTO `addon_inventory_items` VALUES (52, 'property', 'corazon', 0, 'steam:11000011899ea0f');
INSERT INTO `addon_inventory_items` VALUES (53, 'property', 'huesos', 0, 'steam:11000011899ea0f');
INSERT INTO `addon_inventory_items` VALUES (54, 'property', 'medulas', 0, 'steam:11000011899ea0f');
INSERT INTO `addon_inventory_items` VALUES (55, 'society_burgershot_fridge', 'ccheese', 703, NULL);
INSERT INTO `addon_inventory_items` VALUES (56, 'society_mafia', 'cuerpo', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (57, 'property', 'cuerpo', 10358, 'steam:110000117b4ecd8');

-- ----------------------------
-- Table structure for aircraft_categories
-- ----------------------------
DROP TABLE IF EXISTS `aircraft_categories`;
CREATE TABLE `aircraft_categories`  (
  `name` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `label` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aircraft_categories
-- ----------------------------
INSERT INTO `aircraft_categories` VALUES ('heli', 'Helicopters');
INSERT INTO `aircraft_categories` VALUES ('plane', 'Planes');

-- ----------------------------
-- Table structure for aircrafts
-- ----------------------------
DROP TABLE IF EXISTS `aircrafts`;
CREATE TABLE `aircrafts`  (
  `name` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `model` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`model`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aircrafts
-- ----------------------------
INSERT INTO `aircrafts` VALUES ('Alpha Z1', 'alphaz1', 900000000, 'plane');
INSERT INTO `aircrafts` VALUES ('Besra', 'besra', 900000000, 'plane');
INSERT INTO `aircrafts` VALUES ('Buzzard', 'buzzard2', 800000000, 'heli');
INSERT INTO `aircrafts` VALUES ('Cuban 800', 'cuban800', 900000000, 'plane');
INSERT INTO `aircrafts` VALUES ('Dodo', 'dodo', 900000000, 'plane');
INSERT INTO `aircrafts` VALUES ('Duster', 'duster', 900000000, 'plane');
INSERT INTO `aircrafts` VALUES ('Frogger', 'frogger', 800000000, 'heli');
INSERT INTO `aircrafts` VALUES ('Havok', 'havok', 800000000, 'heli');
INSERT INTO `aircrafts` VALUES ('Howard NX25', 'howard', 900000000, 'plane');
INSERT INTO `aircrafts` VALUES ('Luxor', 'luxor', 900000000, 'plane');
INSERT INTO `aircrafts` VALUES ('Luxor Deluxe ', 'luxor2', 900000000, 'plane');
INSERT INTO `aircrafts` VALUES ('Mammatus', 'mammatus', 900000000, 'plane');
INSERT INTO `aircrafts` VALUES ('Maverick', 'maverick', 800000000, 'heli');
INSERT INTO `aircrafts` VALUES ('Ultra Light', 'microlight', 900000000, 'plane');
INSERT INTO `aircrafts` VALUES ('Nimbus', 'nimbus', 900000000, 'plane');
INSERT INTO `aircrafts` VALUES ('Rogue', 'rogue', 900000000, 'plane');
INSERT INTO `aircrafts` VALUES ('Sea Breeze', 'seabreeze', 900000000, 'plane');
INSERT INTO `aircrafts` VALUES ('Sea Sparrow', 'seasparrow', 800000000, 'heli');
INSERT INTO `aircrafts` VALUES ('Shamal', 'shamal', 900000000, 'plane');
INSERT INTO `aircrafts` VALUES ('Mallard', 'stunt', 900000000, 'plane');
INSERT INTO `aircrafts` VALUES ('SuperVolito', 'supervolito', 800000000, 'heli');
INSERT INTO `aircrafts` VALUES ('SuperVolito Carbon', 'supervolito2', 800000000, 'heli');
INSERT INTO `aircrafts` VALUES ('Swift', 'swift', 800000000, 'heli');
INSERT INTO `aircrafts` VALUES ('Swift Deluxe', 'swift2', 800000000, 'heli');
INSERT INTO `aircrafts` VALUES ('Velum', 'velum2', 900000000, 'plane');
INSERT INTO `aircrafts` VALUES ('Vestra', 'vestra', 900000000, 'plane');
INSERT INTO `aircrafts` VALUES ('Volatus', 'volatus', 900000000, 'heli');

-- ----------------------------
-- Table structure for billing
-- ----------------------------
DROP TABLE IF EXISTS `billing`;
CREATE TABLE `billing`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `sender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `target_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of billing
-- ----------------------------
INSERT INTO `billing` VALUES (34, 'steam:1100001170fb22c', 'steam:1100001172af33b', 'society', 'society_ambulance', 'Ambulance', 2000);
INSERT INTO `billing` VALUES (35, 'steam:1100001172af33b', 'steam:1100001170fb22c', 'society', 'society_mechanic', '机修厂', 2000);
INSERT INTO `billing` VALUES (42, 'steam:110000117b4ecd8', 'steam:11000011899ea0f', 'society', 'society_burgershot', 'Locale [es] does not exist', 2147483647);

-- ----------------------------
-- Table structure for boat_categories
-- ----------------------------
DROP TABLE IF EXISTS `boat_categories`;
CREATE TABLE `boat_categories`  (
  `name` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `label` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of boat_categories
-- ----------------------------
INSERT INTO `boat_categories` VALUES ('boat', 'Boats');
INSERT INTO `boat_categories` VALUES ('subs', 'Submersibles');

-- ----------------------------
-- Table structure for boats
-- ----------------------------
DROP TABLE IF EXISTS `boats`;
CREATE TABLE `boats`  (
  `name` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `model` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`model`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of boats
-- ----------------------------
INSERT INTO `boats` VALUES ('Dinghy 4Seat', 'dinghy', 2500000, 'boat');
INSERT INTO `boats` VALUES ('Dinghy 2Seat', 'dinghy2', 2000000, 'boat');
INSERT INTO `boats` VALUES ('Dinghy Yacht', 'dinghy4', 2500000, 'boat');
INSERT INTO `boats` VALUES ('Jetmax', 'jetmax', 3000000, 'boat');
INSERT INTO `boats` VALUES ('Marquis', 'marquis', 4500000, 'boat');
INSERT INTO `boats` VALUES ('Seashark', 'seashark', 1000000, 'boat');
INSERT INTO `boats` VALUES ('Seashark Yacht', 'seashark3', 1000000, 'boat');
INSERT INTO `boats` VALUES ('Speeder', 'speeder', 4000000, 'boat');
INSERT INTO `boats` VALUES ('Squalo', 'squalo', 3200000, 'boat');
INSERT INTO `boats` VALUES ('Submarine', 'submersible', 2900000, 'subs');
INSERT INTO `boats` VALUES ('Kraken', 'submersible2', 3100000, 'subs');
INSERT INTO `boats` VALUES ('Suntrap', 'suntrap', 3400000, 'boat');
INSERT INTO `boats` VALUES ('Toro', 'toro', 3800000, 'boat');
INSERT INTO `boats` VALUES ('Toro Yacht', 'toro2', 3800000, 'boat');
INSERT INTO `boats` VALUES ('Tropic', 'tropic', 2700000, 'boat');
INSERT INTO `boats` VALUES ('Tropic Yacht', 'tropic2', 2700000, 'boat');

-- ----------------------------
-- Table structure for businesses
-- ----------------------------
DROP TABLE IF EXISTS `businesses`;
CREATE TABLE `businesses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` varchar(75) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `blipname` varchar(75) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `owner` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price` int(11) NOT NULL,
  `earnings` int(11) NOT NULL,
  `position` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `stock_price` int(11) NOT NULL DEFAULT 100,
  `employees` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `taxrate` float NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of businesses
-- ----------------------------
INSERT INTO `businesses` VALUES (1, 'Gucci Store', 'Some random street 1337, Beverly Hills', 'Very fancy store', NULL, 'steam:1100001172af33b', 1000000, 10000, '{\"buy\":{\"x\":2524.11, \"y\":-382.22, \"z\":93},\"actions\":{\"x\":2526.04,\"y\":-379.43,\"z\":92.99}}', 0, 100, '{}', NULL);
INSERT INTO `businesses` VALUES (2, 'P.I.G.G', 'Some random street 1338, Beverly Hills', 'Very fancy store', NULL, 'steam:110000117b4ecd8', 1333337, 1337, '{\"buy\":{\"x\":-256.25 ,\"y\":-981.43,\"z\":31.22},\"actions\":{\"x\":-259.71,\"y\":-979.48,\"z\":31.21}}', 73, 100, '[\"steam:11000011899ea0f\"]', NULL);

-- ----------------------------
-- Table structure for cardealer_vehicles
-- ----------------------------
DROP TABLE IF EXISTS `cardealer_vehicles`;
CREATE TABLE `cardealer_vehicles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cardealer_vehicles
-- ----------------------------

-- ----------------------------
-- Table structure for characters
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `dateofbirth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'M',
  `height` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO `characters` VALUES (1, 'steam:11000010c502cb5', 'Lie ', 'Ying ', '1993-04-18', 'm', '175');
INSERT INTO `characters` VALUES (2, 'steam:110000103072384', 'WWKEBI', 'KEBI', '1785.1.1', 'm', '178');
INSERT INTO `characters` VALUES (4, 'steam:110000115d13e50', 'DAA', 'ASD', '1999', 'm', '180');
INSERT INTO `characters` VALUES (5, 'steam:1100001337e0dcf', 'UN-Magic', 'UN-Magic', '19491001', 'm', '170');
INSERT INTO `characters` VALUES (6, 'steam:1100001172af33b', 'LU', 'LU', '19960808', 'f', '180');
INSERT INTO `characters` VALUES (7, 'steam:1100001170fb22c', 'James', 'May', '1970-05-05', 'm', '199');
INSERT INTO `characters` VALUES (8, 'steam:1100001172af33b', 'LULU', 'LULU', '19960808', 'm', '180');
INSERT INTO `characters` VALUES (9, 'steam:1100001172af33b', 'LULU', 'LULU', '19960808', 'm', '180');
INSERT INTO `characters` VALUES (10, 'steam:110000115517b6d', 'XI', 'WU', '20000220', 'm', '188');
INSERT INTO `characters` VALUES (11, 'steam:110000117b4ecd8', 'Peilee', 'Gao', '1989-09-09', 'm', '200');
INSERT INTO `characters` VALUES (12, 'steam:11000011899ea0f', 'YIU', 'Yiii', 'tttt-yy-oo', 'm', '180');
INSERT INTO `characters` VALUES (13, 'steam:11000011bdbdc1a', 'Alan', 'Brady', '20200129', 'm', '180');
INSERT INTO `characters` VALUES (14, 'steam:1100001170fb22c', 'MAY', 'MAY', '1999-01-01', 'm', '190');
INSERT INTO `characters` VALUES (15, 'steam:11000010722d120', 'GANG', 'BENG', '1993-08-07', 'm', '173');
INSERT INTO `characters` VALUES (16, 'steam:110000106f5ce70', 'Ying', 'Kage', '2000-11-19', 'm', '182');
INSERT INTO `characters` VALUES (17, 'steam:11000013bd36b18', 'WHITE', 'LACK', '2020.1.29', 'm', '165');
INSERT INTO `characters` VALUES (18, 'steam:110000135a51347', 'SSSSSS', 'SSS', '2020-00-00', 'm', '200');
INSERT INTO `characters` VALUES (19, 'steam:110000134728f22', 'EQQQ', 'QUINN', '20001025', 'm', '200');
INSERT INTO `characters` VALUES (20, 'steam:11000011745d699', 'CV', 'BS', '90120101', 'm', '170');
INSERT INTO `characters` VALUES (21, 'steam:11000013c2b297a', 'Chen', 'Zhong', '1996', 'm', '172');
INSERT INTO `characters` VALUES (22, 'steam:110000103f407b5', 'ASDsads', 'ASDasdas', '1986-07-3.30', 'm', '176');
INSERT INTO `characters` VALUES (23, 'steam:1100001172d233d', 'Dongdong', 'Dong', '2001-01-01', 'f', '175');
INSERT INTO `characters` VALUES (24, 'steam:11000013f295673', 'AAA', 'AAA', '1996', 'm', '180');
INSERT INTO `characters` VALUES (25, 'steam:11000013716cde4', 'Xiao', 'Xiaosu', '2000-1-1', 'm', '190');
INSERT INTO `characters` VALUES (26, 'steam:1100001321585b7', 'Xu', 'Xiao Zi', '2020-02-02', 'm', '185');
INSERT INTO `characters` VALUES (27, 'steam:11000013301b85a', 'Ke', 'Ke', '20001125', 'm', '200');
INSERT INTO `characters` VALUES (28, 'steam:11000011a0816e8', 'GAHO', 'TSUI', '19950623', 'm', '190');
INSERT INTO `characters` VALUES (29, 'steam:11000011bfb9181', 'TOW MONEY', 'XIAOBAO', '1997 9/19', 'm', '170');
INSERT INTO `characters` VALUES (30, 'steam:11000013bd36b18', 'WHITE', 'LACJ', '2020.1.31', 'm', '165');
INSERT INTO `characters` VALUES (31, 'steam:110000132555dfb', 'Mo', 'Maeki00', '1998-10-5', 'm', '181');
INSERT INTO `characters` VALUES (32, 'steam:1100001350a4e14', 'Xiao', 'Xiao', '1990-1-2', 'm', '180');
INSERT INTO `characters` VALUES (33, 'steam:1100001154d67f5', 'Johnny', 'Zhang', '1998-06-02', 'm', '181');
INSERT INTO `characters` VALUES (34, 'steam:11000010c72c48b', 'XIN', 'XIN', '1999-02-12', 'm', '200');
INSERT INTO `characters` VALUES (35, 'steam:11000013efb45a5', 'HXC', 'XC', '2000-01-02', 'm', '180');
INSERT INTO `characters` VALUES (36, 'steam:11000013f403e65', 'HWM', 'WM', '2000-01-01', 'm', '160');
INSERT INTO `characters` VALUES (37, 'steam:110000117caaf4e', 'DA', 'DA', '1949-10-1', 'm', '200');

-- ----------------------------
-- Table structure for datastore
-- ----------------------------
DROP TABLE IF EXISTS `datastore`;
CREATE TABLE `datastore`  (
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datastore
-- ----------------------------
INSERT INTO `datastore` VALUES ('club_lmc', 'LMC', 1);
INSERT INTO `datastore` VALUES ('club_lmc_priv', 'LMC Priv', 1);
INSERT INTO `datastore` VALUES ('club_lmc_pub', 'LMC Pub', 1);
INSERT INTO `datastore` VALUES ('property', '饰品', 0);
INSERT INTO `datastore` VALUES ('society_ambulance', 'Ambulance', 1);
INSERT INTO `datastore` VALUES ('society_burgershot', 'Burgershot', 1);
INSERT INTO `datastore` VALUES ('society_mafia', 'Mafia', 1);
INSERT INTO `datastore` VALUES ('society_police', 'Police', 1);
INSERT INTO `datastore` VALUES ('user_ears', 'Ears', 0);
INSERT INTO `datastore` VALUES ('user_glasses', 'Glasses', 0);
INSERT INTO `datastore` VALUES ('user_helmet', 'Helmet', 0);
INSERT INTO `datastore` VALUES ('user_mask', 'Mask', 0);

-- ----------------------------
-- Table structure for datastore_data
-- ----------------------------
DROP TABLE IF EXISTS `datastore_data`;
CREATE TABLE `datastore_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_datastore_data_name_owner`(`name`, `owner`) USING BTREE,
  INDEX `index_datastore_data_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 171 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datastore_data
-- ----------------------------
INSERT INTO `datastore_data` VALUES (1, 'society_police', NULL, '{\"weapons\":[{\"name\":\"WEAPON_CARBINERIFLE\",\"count\":0},{\"name\":\"WEAPON_PISTOL\",\"count\":0},{\"name\":\"WEAPON_SPECIALCARBINE\",\"count\":0},{\"name\":\"WEAPON_NIGHTSTICK\",\"count\":0},{\"name\":\"WEAPON_BAT\",\"count\":0},{\"name\":\"WEAPON_MICROSMG\",\"count\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"count\":0},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"count\":0},{\"name\":\"WEAPON_SMOKEGRENADE\",\"count\":0},{\"name\":\"WEAPON_BZGAS\",\"count\":0},{\"name\":\"WEAPON_PETROLCAN\",\"count\":0},{\"name\":\"WEAPON_STUNGUN\",\"count\":0},{\"name\":\"WEAPON_MACHETE\",\"count\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"count\":0},{\"name\":\"WEAPON_SMG\",\"count\":0},{\"name\":\"WEAPON_MG\",\"count\":0},{\"name\":\"WEAPON_HEAVYSNIPER\",\"count\":0},{\"name\":\"WEAPON_MARKSMANRIFLE\",\"count\":0},{\"name\":\"WEAPON_GRENADELAUNCHER\",\"count\":0},{\"name\":\"WEAPON_RPG\",\"count\":0},{\"name\":\"WEAPON_MINIGUN\",\"count\":0},{\"name\":\"WEAPON_GRENADE\",\"count\":0},{\"name\":\"WEAPON_STICKYBOMB\",\"count\":0},{\"name\":\"WEAPON_ASSAULTSMG\",\"count\":0},{\"name\":\"WEAPON_APPISTOL\",\"count\":0},{\"name\":\"WEAPON_ADVANCEDRIFLE\",\"count\":0},{\"name\":\"WEAPON_FLASHLIGHT\",\"count\":0}]}');
INSERT INTO `datastore_data` VALUES (3, 'society_ambulance', NULL, '{}');
INSERT INTO `datastore_data` VALUES (4, 'property', 'steam:11000010c502cb5', '{\"dressing\":[{\"label\":1,\"skin\":{\"chest_1\":0,\"glasses_1\":0,\"blemishes_2\":0,\"pants_2\":0,\"eye_color\":0,\"pants_1\":5,\"hair_color_1\":0,\"ears_2\":0,\"age_2\":0,\"shoes_1\":1,\"hair_2\":0,\"blush_2\":0,\"blush_3\":0,\"tshirt_2\":0,\"beard_2\":0,\"makeup_3\":0,\"hair_1\":2,\"decals_2\":0,\"watches_1\":-1,\"skin\":0,\"moles_1\":0,\"arms\":0,\"watches_2\":0,\"torso_2\":2,\"lipstick_4\":0,\"sex\":0,\"moles_2\":0,\"age_1\":0,\"bracelets_2\":0,\"bproof_1\":0,\"bproof_2\":0,\"blush_1\":0,\"eyebrows_2\":0,\"beard_1\":0,\"eyebrows_3\":0,\"helmet_1\":-1,\"arms_2\":0,\"shoes_2\":0,\"hair_color_2\":0,\"complexion_2\":0,\"helmet_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"decals_1\":0,\"torso_1\":0,\"ears_1\":-1,\"makeup_1\":0,\"eyebrows_4\":0,\"chest_2\":0,\"chain_1\":0,\"beard_4\":0,\"bodyb_1\":0,\"lipstick_3\":0,\"sun_1\":0,\"bags_2\":0,\"tshirt_1\":0,\"makeup_2\":0,\"chest_3\":0,\"eyebrows_1\":0,\"complexion_1\":0,\"blemishes_1\":0,\"mask_2\":0,\"chain_2\":0,\"bracelets_1\":-1,\"mask_1\":0,\"face\":6,\"glasses_2\":0,\"lipstick_2\":0,\"lipstick_1\":0,\"bags_1\":0,\"makeup_4\":0,\"beard_3\":0}},{\"label\":2,\"skin\":{\"chain_1\":0,\"glasses_1\":0,\"blemishes_2\":0,\"pants_2\":2,\"eye_color\":0,\"pants_1\":5,\"hair_color_1\":0,\"ears_2\":0,\"complexion_1\":0,\"shoes_1\":1,\"hair_2\":0,\"blush_2\":0,\"blush_3\":0,\"tshirt_2\":0,\"beard_2\":0,\"makeup_3\":0,\"hair_1\":2,\"decals_2\":0,\"watches_1\":-1,\"skin\":0,\"eyebrows_1\":0,\"arms\":0,\"watches_2\":0,\"torso_2\":2,\"lipstick_4\":0,\"lipstick_3\":0,\"moles_2\":0,\"age_1\":0,\"bracelets_2\":0,\"bproof_1\":0,\"bproof_2\":0,\"blush_1\":0,\"eyebrows_2\":0,\"beard_1\":0,\"tshirt_1\":1,\"helmet_1\":0,\"arms_2\":0,\"shoes_2\":0,\"hair_color_2\":0,\"complexion_2\":0,\"helmet_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"decals_1\":0,\"torso_1\":3,\"sex\":0,\"makeup_1\":0,\"eyebrows_4\":0,\"chest_2\":0,\"chest_1\":0,\"beard_4\":0,\"bodyb_1\":0,\"lipstick_2\":0,\"sun_1\":0,\"bags_2\":0,\"ears_1\":-1,\"makeup_2\":0,\"chest_3\":0,\"mask_2\":7,\"eyebrows_3\":0,\"blemishes_1\":0,\"face\":6,\"chain_2\":0,\"bracelets_1\":-1,\"mask_1\":54,\"lipstick_1\":0,\"glasses_2\":0,\"age_2\":0,\"moles_1\":0,\"bags_1\":0,\"makeup_4\":0,\"beard_3\":0}},{\"label\":321,\"skin\":{\"chain_1\":0,\"glasses_1\":9,\"blemishes_2\":0,\"pants_2\":2,\"eye_color\":0,\"pants_1\":7,\"hair_color_1\":0,\"ears_2\":0,\"complexion_1\":0,\"face\":6,\"hair_2\":0,\"blush_2\":0,\"blush_3\":0,\"tshirt_2\":0,\"beard_2\":0,\"makeup_3\":0,\"hair_1\":2,\"decals_2\":0,\"watches_1\":-1,\"skin\":0,\"eyebrows_1\":0,\"arms\":0,\"watches_2\":0,\"torso_2\":0,\"lipstick_4\":0,\"sex\":0,\"moles_2\":0,\"age_1\":0,\"bracelets_2\":0,\"bproof_1\":0,\"bproof_2\":0,\"blush_1\":0,\"eyebrows_2\":0,\"beard_1\":0,\"tshirt_1\":4,\"helmet_1\":-1,\"arms_2\":0,\"shoes_2\":0,\"hair_color_2\":0,\"complexion_2\":0,\"helmet_2\":0,\"bodyb_2\":0,\"sun_2\":0,\"decals_1\":0,\"torso_1\":192,\"age_2\":0,\"makeup_1\":0,\"ears_1\":-1,\"chest_2\":0,\"bags_1\":0,\"chest_1\":0,\"bodyb_1\":0,\"beard_4\":0,\"sun_1\":0,\"bags_2\":0,\"eyebrows_4\":0,\"makeup_2\":0,\"chest_3\":0,\"lipstick_3\":0,\"shoes_1\":7,\"blemishes_1\":0,\"eyebrows_3\":0,\"chain_2\":0,\"bracelets_1\":-1,\"mask_1\":0,\"mask_2\":0,\"glasses_2\":0,\"lipstick_2\":0,\"lipstick_1\":0,\"moles_1\":0,\"makeup_4\":0,\"beard_3\":0}}]}');
INSERT INTO `datastore_data` VALUES (5, 'property', 'steam:110000103072384', '{\"dressing\":[{\"label\":5255,\"skin\":{\"chest_3\":0,\"hair_2\":0,\"blemishes_1\":0,\"ears_2\":0,\"torso_2\":4,\"bproof_2\":0,\"decals_2\":0,\"lipstick_1\":0,\"hair_color_1\":0,\"chain_2\":0,\"torso_1\":200,\"blush_1\":0,\"beard_2\":0,\"pants_2\":0,\"complexion_2\":0,\"face\":0,\"skin\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"arms_2\":0,\"beard_3\":0,\"shoes_2\":0,\"bags_1\":0,\"chain_1\":0,\"mask_1\":95,\"hair_color_2\":0,\"helmet_1\":-1,\"bracelets_2\":0,\"pants_1\":24,\"makeup_3\":0,\"eyebrows_4\":0,\"chest_2\":0,\"bodyb_2\":0,\"glasses_2\":0,\"eye_color\":0,\"sun_2\":0,\"makeup_2\":0,\"beard_4\":0,\"makeup_4\":0,\"sex\":0,\"blush_2\":0,\"tshirt_1\":0,\"moles_1\":0,\"complexion_1\":0,\"lipstick_4\":0,\"watches_2\":0,\"moles_2\":0,\"blush_3\":0,\"watches_1\":-1,\"eyebrows_1\":0,\"eyebrows_2\":0,\"mask_2\":0,\"arms\":0,\"lipstick_3\":0,\"shoes_1\":7,\"helmet_2\":0,\"lipstick_2\":0,\"sun_1\":0,\"tshirt_2\":0,\"decals_1\":1,\"beard_1\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"bodyb_1\":0,\"age_2\":0,\"blemishes_2\":0,\"bracelets_1\":-1,\"bproof_1\":0,\"chest_1\":0,\"hair_1\":21,\"age_1\":0}},{\"label\":33,\"skin\":{\"chest_3\":0,\"hair_2\":0,\"blemishes_1\":0,\"ears_2\":0,\"torso_2\":4,\"bproof_2\":0,\"decals_2\":0,\"lipstick_1\":0,\"hair_color_1\":0,\"chain_2\":0,\"eyebrows_2\":0,\"blush_1\":0,\"beard_2\":0,\"pants_2\":0,\"complexion_2\":0,\"face\":0,\"skin\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"arms_2\":0,\"beard_3\":0,\"shoes_2\":0,\"bags_1\":0,\"chain_1\":0,\"mask_1\":95,\"hair_color_2\":0,\"helmet_1\":-1,\"bracelets_2\":0,\"pants_1\":29,\"makeup_3\":0,\"eyebrows_4\":0,\"chest_2\":0,\"bodyb_2\":0,\"glasses_2\":0,\"eye_color\":0,\"sun_2\":0,\"makeup_2\":0,\"beard_4\":0,\"makeup_4\":0,\"arms\":0,\"blush_2\":0,\"tshirt_1\":0,\"moles_1\":0,\"complexion_1\":0,\"lipstick_4\":0,\"watches_2\":0,\"moles_2\":0,\"blush_3\":0,\"watches_1\":-1,\"decals_1\":1,\"bags_2\":0,\"hair_1\":21,\"eyebrows_1\":0,\"lipstick_3\":0,\"age_1\":0,\"helmet_2\":0,\"beard_1\":0,\"sun_1\":0,\"tshirt_2\":0,\"glasses_1\":0,\"mask_2\":0,\"sex\":0,\"ears_1\":-1,\"torso_1\":200,\"bodyb_1\":0,\"age_2\":0,\"blemishes_2\":0,\"bracelets_1\":-1,\"bproof_1\":0,\"chest_1\":0,\"lipstick_2\":0,\"shoes_1\":7}},{\"label\":5,\"skin\":{\"chest_3\":0,\"hair_2\":0,\"blemishes_1\":0,\"ears_2\":0,\"torso_2\":4,\"bproof_2\":0,\"decals_2\":0,\"lipstick_1\":0,\"hair_color_1\":0,\"blemishes_2\":0,\"eyebrows_2\":0,\"blush_1\":0,\"beard_2\":0,\"pants_2\":0,\"complexion_2\":0,\"face\":0,\"skin\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"arms_2\":0,\"beard_3\":0,\"shoes_2\":0,\"bags_1\":0,\"chain_1\":0,\"mask_1\":95,\"hair_color_2\":0,\"helmet_1\":-1,\"bracelets_2\":0,\"pants_1\":29,\"makeup_3\":0,\"eyebrows_4\":0,\"chest_2\":0,\"bodyb_2\":0,\"glasses_2\":0,\"eye_color\":0,\"sun_2\":0,\"makeup_2\":0,\"beard_4\":0,\"makeup_4\":0,\"sex\":0,\"blush_2\":0,\"tshirt_1\":0,\"moles_1\":0,\"complexion_1\":0,\"lipstick_4\":0,\"watches_2\":0,\"moles_2\":0,\"blush_3\":0,\"watches_1\":-1,\"decals_1\":1,\"bags_2\":0,\"chain_2\":0,\"eyebrows_1\":0,\"lipstick_3\":0,\"age_1\":0,\"helmet_2\":0,\"shoes_1\":16,\"sun_1\":0,\"tshirt_2\":0,\"beard_1\":0,\"glasses_1\":0,\"torso_1\":200,\"ears_1\":-1,\"lipstick_2\":0,\"bodyb_1\":0,\"age_2\":0,\"arms\":0,\"bracelets_1\":-1,\"bproof_1\":0,\"chest_1\":0,\"mask_2\":0,\"hair_1\":21}},{\"label\":5,\"skin\":{\"chest_3\":0,\"hair_2\":0,\"blemishes_1\":0,\"ears_2\":0,\"torso_2\":4,\"bproof_2\":0,\"decals_2\":0,\"lipstick_1\":0,\"hair_color_1\":0,\"blemishes_2\":0,\"eyebrows_2\":0,\"blush_1\":0,\"beard_2\":0,\"pants_2\":0,\"complexion_2\":0,\"face\":0,\"skin\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"arms_2\":0,\"beard_3\":0,\"shoes_2\":0,\"bags_1\":0,\"chain_1\":0,\"mask_1\":95,\"hair_color_2\":0,\"helmet_1\":-1,\"bracelets_2\":0,\"pants_1\":61,\"makeup_3\":0,\"eyebrows_4\":0,\"chest_2\":0,\"bodyb_2\":0,\"glasses_2\":0,\"eye_color\":0,\"sun_2\":0,\"makeup_2\":0,\"beard_4\":0,\"makeup_4\":0,\"sex\":0,\"blush_2\":0,\"tshirt_1\":0,\"moles_1\":0,\"complexion_1\":0,\"lipstick_4\":0,\"watches_2\":0,\"moles_2\":0,\"blush_3\":0,\"watches_1\":-1,\"decals_1\":1,\"bags_2\":0,\"chain_2\":0,\"eyebrows_1\":0,\"lipstick_3\":0,\"age_1\":0,\"helmet_2\":0,\"shoes_1\":16,\"sun_1\":0,\"tshirt_2\":0,\"beard_1\":0,\"glasses_1\":0,\"torso_1\":200,\"ears_1\":-1,\"lipstick_2\":0,\"bodyb_1\":0,\"age_2\":0,\"arms\":0,\"bracelets_1\":-1,\"bproof_1\":0,\"chest_1\":0,\"mask_2\":0,\"hair_1\":21}},{\"label\":58,\"skin\":{\"chest_3\":0,\"hair_2\":0,\"blemishes_1\":0,\"ears_2\":0,\"torso_2\":4,\"bproof_2\":0,\"decals_2\":0,\"lipstick_1\":0,\"hair_color_1\":0,\"blemishes_2\":0,\"eyebrows_2\":0,\"blush_1\":0,\"beard_2\":0,\"pants_2\":0,\"complexion_2\":0,\"face\":0,\"skin\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"arms_2\":0,\"beard_3\":0,\"shoes_2\":0,\"bags_1\":0,\"chain_1\":0,\"mask_1\":95,\"hair_color_2\":0,\"helmet_1\":-1,\"bracelets_2\":0,\"pants_1\":61,\"makeup_3\":0,\"eyebrows_4\":0,\"chest_2\":0,\"bodyb_2\":0,\"glasses_2\":0,\"eye_color\":0,\"sun_2\":0,\"makeup_2\":0,\"beard_4\":0,\"makeup_4\":0,\"arms\":0,\"blush_2\":0,\"tshirt_1\":0,\"moles_1\":0,\"complexion_1\":0,\"lipstick_4\":0,\"watches_2\":0,\"moles_2\":0,\"blush_3\":0,\"watches_1\":-1,\"lipstick_2\":0,\"shoes_1\":16,\"mask_2\":0,\"eyebrows_1\":0,\"lipstick_3\":0,\"age_1\":0,\"helmet_2\":0,\"decals_1\":1,\"sun_1\":0,\"tshirt_2\":4,\"beard_1\":0,\"glasses_1\":0,\"torso_1\":260,\"ears_1\":-1,\"bags_2\":0,\"bodyb_1\":0,\"age_2\":0,\"chain_2\":0,\"bracelets_1\":-1,\"bproof_1\":0,\"chest_1\":0,\"hair_1\":21,\"sex\":0}},{\"label\":5,\"skin\":{\"chest_3\":0,\"hair_2\":0,\"blemishes_1\":0,\"ears_2\":0,\"torso_2\":4,\"bproof_2\":0,\"decals_2\":0,\"lipstick_1\":0,\"hair_color_1\":0,\"blemishes_2\":0,\"eyebrows_2\":0,\"blush_1\":0,\"mask_2\":0,\"pants_2\":4,\"complexion_2\":0,\"face\":0,\"skin\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"arms_2\":0,\"beard_3\":0,\"shoes_2\":0,\"bags_1\":0,\"chain_1\":0,\"mask_1\":95,\"hair_color_2\":0,\"helmet_1\":-1,\"bracelets_2\":0,\"pants_1\":61,\"makeup_3\":0,\"eyebrows_4\":0,\"chest_2\":0,\"bodyb_2\":0,\"glasses_2\":0,\"eye_color\":0,\"sun_2\":0,\"makeup_2\":0,\"beard_4\":0,\"makeup_4\":0,\"sex\":0,\"blush_2\":0,\"tshirt_1\":0,\"moles_1\":0,\"complexion_1\":0,\"lipstick_4\":0,\"watches_2\":0,\"moles_2\":0,\"blush_3\":0,\"watches_1\":-1,\"decals_1\":1,\"chain_2\":0,\"beard_2\":0,\"eyebrows_1\":0,\"lipstick_3\":0,\"age_1\":0,\"helmet_2\":0,\"beard_1\":0,\"sun_1\":0,\"tshirt_2\":4,\"glasses_1\":0,\"torso_1\":260,\"lipstick_2\":0,\"ears_1\":-1,\"arms\":0,\"bodyb_1\":0,\"age_2\":0,\"bags_2\":0,\"bracelets_1\":-1,\"bproof_1\":0,\"chest_1\":0,\"shoes_1\":16,\"hair_1\":21}},{\"label\":252,\"skin\":{\"chest_3\":0,\"hair_2\":0,\"blemishes_1\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"decals_2\":0,\"lipstick_1\":0,\"hair_color_1\":0,\"blemishes_2\":0,\"eyebrows_2\":0,\"blush_1\":0,\"beard_2\":0,\"pants_2\":4,\"complexion_2\":0,\"face\":0,\"skin\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"arms_2\":0,\"beard_3\":0,\"shoes_2\":0,\"bags_1\":0,\"chain_1\":0,\"mask_1\":111,\"hair_color_2\":0,\"helmet_1\":-1,\"bracelets_2\":0,\"pants_1\":64,\"makeup_3\":0,\"eyebrows_4\":0,\"chest_2\":0,\"bodyb_2\":0,\"beard_1\":0,\"eye_color\":0,\"sun_2\":0,\"makeup_2\":0,\"beard_4\":0,\"decals_1\":1,\"sex\":0,\"blush_2\":0,\"tshirt_1\":15,\"moles_1\":0,\"complexion_1\":0,\"lipstick_4\":0,\"watches_2\":0,\"moles_2\":0,\"blush_3\":0,\"watches_1\":-1,\"eyebrows_1\":0,\"glasses_1\":0,\"lipstick_2\":0,\"chain_2\":0,\"lipstick_3\":0,\"age_1\":0,\"helmet_2\":0,\"glasses_2\":0,\"sun_1\":0,\"tshirt_2\":0,\"torso_1\":15,\"arms\":15,\"mask_2\":6,\"ears_1\":-1,\"makeup_4\":0,\"bodyb_1\":0,\"age_2\":0,\"bags_2\":0,\"bracelets_1\":-1,\"bproof_1\":0,\"chest_1\":0,\"hair_1\":21,\"shoes_1\":16}}]}');
INSERT INTO `datastore_data` VALUES (6, 'property', 'steam:110000115d13e50', '{}');
INSERT INTO `datastore_data` VALUES (7, 'user_ears', 'steam:11000010c502cb5', '{}');
INSERT INTO `datastore_data` VALUES (8, 'user_glasses', 'steam:11000010c502cb5', '{}');
INSERT INTO `datastore_data` VALUES (9, 'user_mask', 'steam:11000010c502cb5', '{\"hasMask\":true,\"skin\":{\"mask_1\":24,\"mask_2\":1}}');
INSERT INTO `datastore_data` VALUES (10, 'user_helmet', 'steam:11000010c502cb5', '{}');
INSERT INTO `datastore_data` VALUES (11, 'user_ears', 'steam:110000103072384', '{}');
INSERT INTO `datastore_data` VALUES (12, 'user_glasses', 'steam:110000103072384', '{}');
INSERT INTO `datastore_data` VALUES (13, 'user_helmet', 'steam:110000103072384', '{}');
INSERT INTO `datastore_data` VALUES (14, 'user_mask', 'steam:110000103072384', '{\"hasMask\":true,\"skin\":{\"mask_2\":6,\"mask_1\":111}}');
INSERT INTO `datastore_data` VALUES (15, 'property', 'steam:1100001337e0dcf', '{}');
INSERT INTO `datastore_data` VALUES (16, 'user_mask', 'steam:1100001337e0dcf', '{}');
INSERT INTO `datastore_data` VALUES (17, 'user_ears', 'steam:1100001337e0dcf', '{}');
INSERT INTO `datastore_data` VALUES (18, 'user_glasses', 'steam:1100001337e0dcf', '{}');
INSERT INTO `datastore_data` VALUES (19, 'user_helmet', 'steam:1100001337e0dcf', '{}');
INSERT INTO `datastore_data` VALUES (20, 'property', 'steam:1100001172af33b', '{}');
INSERT INTO `datastore_data` VALUES (21, 'user_ears', 'steam:1100001172af33b', '{}');
INSERT INTO `datastore_data` VALUES (22, 'user_helmet', 'steam:1100001172af33b', '{}');
INSERT INTO `datastore_data` VALUES (23, 'user_mask', 'steam:1100001172af33b', '{}');
INSERT INTO `datastore_data` VALUES (24, 'user_glasses', 'steam:1100001172af33b', '{}');
INSERT INTO `datastore_data` VALUES (25, 'user_ears', 'steam:110000115d13e50', '{}');
INSERT INTO `datastore_data` VALUES (26, 'user_glasses', 'steam:110000115d13e50', '{}');
INSERT INTO `datastore_data` VALUES (27, 'user_helmet', 'steam:110000115d13e50', '{}');
INSERT INTO `datastore_data` VALUES (28, 'user_mask', 'steam:110000115d13e50', '{}');
INSERT INTO `datastore_data` VALUES (29, 'property', 'steam:1100001170fb22c', '{}');
INSERT INTO `datastore_data` VALUES (30, 'user_ears', 'steam:1100001170fb22c', '{}');
INSERT INTO `datastore_data` VALUES (31, 'user_glasses', 'steam:1100001170fb22c', '{}');
INSERT INTO `datastore_data` VALUES (32, 'user_helmet', 'steam:1100001170fb22c', '{}');
INSERT INTO `datastore_data` VALUES (33, 'user_mask', 'steam:1100001170fb22c', '{}');
INSERT INTO `datastore_data` VALUES (34, 'club_lmc', NULL, '{}');
INSERT INTO `datastore_data` VALUES (35, 'club_lmc_priv', NULL, '{}');
INSERT INTO `datastore_data` VALUES (36, 'club_lmc_pub', NULL, '{\"weapons\":[]}');
INSERT INTO `datastore_data` VALUES (37, 'society_cozinheiro', NULL, '{}');
INSERT INTO `datastore_data` VALUES (38, 'society_burgershot', NULL, '{}');
INSERT INTO `datastore_data` VALUES (39, 'society_blackmarket', NULL, '{\"weapons\":[{\"count\":0,\"name\":\"WEAPON_APPISTOL\"}]}');
INSERT INTO `datastore_data` VALUES (40, 'society_mafia', NULL, '{\"weapons\":[{\"count\":0,\"name\":\"WEAPON_PISTOL\"},{\"count\":2,\"name\":\"WEAPON_FLASHLIGHT\"},{\"count\":0,\"name\":\"WEAPON_PUMPSHOTGUN\"}]}');
INSERT INTO `datastore_data` VALUES (41, 'user_helmet', 'steam:110000115517b6d', '{}');
INSERT INTO `datastore_data` VALUES (42, 'user_glasses', 'steam:110000115517b6d', '{}');
INSERT INTO `datastore_data` VALUES (43, 'user_ears', 'steam:110000115517b6d', '{}');
INSERT INTO `datastore_data` VALUES (44, 'property', 'steam:110000115517b6d', '{}');
INSERT INTO `datastore_data` VALUES (45, 'user_mask', 'steam:110000115517b6d', '{}');
INSERT INTO `datastore_data` VALUES (46, 'property', 'steam:110000117b4ecd8', '{\"weapons\":[],\"dressing\":[{\"skin\":{\"moles_2\":0,\"helmet_1\":-1,\"bproof_2\":0,\"complexion_2\":0,\"lipstick_4\":0,\"torso_2\":0,\"moles_1\":0,\"bags_1\":0,\"ears_1\":-1,\"beard_1\":11,\"chest_3\":0,\"helmet_2\":0,\"bodyb_1\":0,\"bracelets_1\":-1,\"blush_3\":0,\"decals_1\":0,\"sun_2\":0,\"beard_4\":0,\"eyebrows_1\":0,\"watches_2\":0,\"glasses_1\":0,\"blemishes_1\":0,\"sex\":0,\"blush_1\":0,\"shoes_1\":10,\"bags_2\":0,\"tshirt_1\":31,\"eyebrows_4\":0,\"beard_2\":6,\"eyebrows_3\":0,\"chain_2\":0,\"blemishes_2\":0,\"skin\":0,\"shoes_2\":0,\"makeup_3\":0,\"makeup_4\":0,\"decals_2\":0,\"hair_color_2\":0,\"blush_2\":0,\"chest_2\":8,\"mask_1\":0,\"bodyb_2\":0,\"lipstick_1\":0,\"complexion_1\":0,\"watches_1\":3,\"lipstick_2\":0,\"pants_1\":10,\"arms\":1,\"tshirt_2\":0,\"face\":0,\"hair_1\":7,\"chain_1\":0,\"age_1\":0,\"beard_3\":0,\"sun_1\":0,\"bproof_1\":0,\"hair_2\":0,\"glasses_2\":0,\"ears_2\":0,\"eyebrows_2\":0,\"bracelets_2\":0,\"makeup_1\":0,\"mask_2\":0,\"eye_color\":0,\"makeup_2\":0,\"lipstick_3\":0,\"hair_color_1\":0,\"age_2\":0,\"pants_2\":0,\"torso_1\":31,\"arms_2\":0,\"chest_1\":2},\"label\":\"无领带正装\"}]}');
INSERT INTO `datastore_data` VALUES (47, 'user_ears', 'steam:110000117b4ecd8', '{}');
INSERT INTO `datastore_data` VALUES (48, 'user_helmet', 'steam:110000117b4ecd8', '{}');
INSERT INTO `datastore_data` VALUES (49, 'user_glasses', 'steam:110000117b4ecd8', '{}');
INSERT INTO `datastore_data` VALUES (50, 'user_mask', 'steam:110000117b4ecd8', '{}');
INSERT INTO `datastore_data` VALUES (51, 'property', 'steam:11000011899ea0f', '{\"weapons\":[{\"ammo\":0,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":7,\"name\":\"WEAPON_PUMPSHOTGUN\"}]}');
INSERT INTO `datastore_data` VALUES (52, 'user_ears', 'steam:11000011899ea0f', '{}');
INSERT INTO `datastore_data` VALUES (53, 'user_glasses', 'steam:11000011899ea0f', '{\"hasGlasses\":true,\"skin\":{\"glasses_1\":17,\"glasses_2\":0}}');
INSERT INTO `datastore_data` VALUES (54, 'user_helmet', 'steam:11000011899ea0f', '{}');
INSERT INTO `datastore_data` VALUES (55, 'user_mask', 'steam:11000011899ea0f', '{}');
INSERT INTO `datastore_data` VALUES (56, 'user_ears', 'steam:11000011bdbdc1a', '{}');
INSERT INTO `datastore_data` VALUES (57, 'property', 'steam:11000011bdbdc1a', '{}');
INSERT INTO `datastore_data` VALUES (58, 'user_glasses', 'steam:11000011bdbdc1a', '{}');
INSERT INTO `datastore_data` VALUES (59, 'user_helmet', 'steam:11000011bdbdc1a', '{}');
INSERT INTO `datastore_data` VALUES (60, 'user_mask', 'steam:11000011bdbdc1a', '{}');
INSERT INTO `datastore_data` VALUES (61, 'property', 'steam:11000010722d120', '{}');
INSERT INTO `datastore_data` VALUES (62, 'user_glasses', 'steam:11000010722d120', '{}');
INSERT INTO `datastore_data` VALUES (63, 'user_ears', 'steam:11000010722d120', '{}');
INSERT INTO `datastore_data` VALUES (64, 'user_helmet', 'steam:11000010722d120', '{}');
INSERT INTO `datastore_data` VALUES (65, 'user_mask', 'steam:11000010722d120', '{}');
INSERT INTO `datastore_data` VALUES (66, 'user_glasses', 'steam:110000106f5ce70', '{}');
INSERT INTO `datastore_data` VALUES (67, 'user_ears', 'steam:110000106f5ce70', '{}');
INSERT INTO `datastore_data` VALUES (68, 'property', 'steam:110000106f5ce70', '{}');
INSERT INTO `datastore_data` VALUES (69, 'user_helmet', 'steam:110000106f5ce70', '{}');
INSERT INTO `datastore_data` VALUES (70, 'user_mask', 'steam:110000106f5ce70', '{}');
INSERT INTO `datastore_data` VALUES (71, 'property', 'steam:11000013bd36b18', '{\"dressing\":[{\"label\":\"police\",\"skin\":{\"blush_1\":0,\"glasses_2\":3,\"torso_2\":0,\"sex\":1,\"makeup_2\":0,\"eyebrows_2\":0,\"complexion_2\":0,\"makeup_4\":0,\"blemishes_1\":0,\"tshirt_1\":35,\"moles_2\":0,\"torso_1\":48,\"complexion_1\":0,\"bproof_2\":2,\"decals_1\":7,\"chest_3\":0,\"arms_2\":0,\"age_2\":0,\"chest_2\":0,\"bracelets_1\":-1,\"bracelets_2\":0,\"watches_2\":0,\"beard_4\":0,\"eyebrows_3\":0,\"beard_2\":0,\"blush_2\":0,\"bodyb_1\":0,\"decals_2\":3,\"beard_3\":0,\"shoes_1\":27,\"pants_1\":34,\"chest_1\":0,\"hair_1\":15,\"eyebrows_4\":0,\"makeup_1\":0,\"ears_1\":2,\"face\":21,\"hair_color_2\":10,\"chain_2\":0,\"lipstick_1\":0,\"blush_3\":0,\"hair_2\":4,\"age_1\":0,\"lipstick_2\":0,\"bags_2\":0,\"skin\":0,\"blemishes_2\":0,\"shoes_2\":0,\"beard_1\":0,\"bproof_1\":18,\"sun_1\":0,\"glasses_1\":11,\"mask_2\":0,\"eye_color\":0,\"makeup_3\":0,\"pants_2\":0,\"bags_1\":0,\"chain_1\":0,\"helmet_2\":0,\"hair_color_1\":15,\"eyebrows_1\":0,\"lipstick_3\":0,\"bodyb_2\":0,\"watches_1\":2,\"ears_2\":0,\"lipstick_4\":0,\"helmet_1\":45,\"sun_2\":0,\"moles_1\":0,\"mask_1\":0,\"arms\":44,\"tshirt_2\":0}}]}');
INSERT INTO `datastore_data` VALUES (72, 'user_ears', 'steam:11000013bd36b18', '{}');
INSERT INTO `datastore_data` VALUES (73, 'user_glasses', 'steam:11000013bd36b18', '{}');
INSERT INTO `datastore_data` VALUES (74, 'user_mask', 'steam:11000013bd36b18', '{}');
INSERT INTO `datastore_data` VALUES (75, 'user_helmet', 'steam:11000013bd36b18', '{}');
INSERT INTO `datastore_data` VALUES (76, 'property', 'steam:110000135a51347', '{}');
INSERT INTO `datastore_data` VALUES (77, 'user_ears', 'steam:110000135a51347', '{}');
INSERT INTO `datastore_data` VALUES (78, 'user_glasses', 'steam:110000135a51347', '{}');
INSERT INTO `datastore_data` VALUES (79, 'user_mask', 'steam:110000135a51347', '{}');
INSERT INTO `datastore_data` VALUES (80, 'user_helmet', 'steam:110000135a51347', '{}');
INSERT INTO `datastore_data` VALUES (81, 'property', 'steam:110000134728f22', '{}');
INSERT INTO `datastore_data` VALUES (82, 'user_ears', 'steam:110000134728f22', '{}');
INSERT INTO `datastore_data` VALUES (83, 'user_glasses', 'steam:110000134728f22', '{}');
INSERT INTO `datastore_data` VALUES (84, 'user_helmet', 'steam:110000134728f22', '{}');
INSERT INTO `datastore_data` VALUES (85, 'user_mask', 'steam:110000134728f22', '{}');
INSERT INTO `datastore_data` VALUES (86, 'user_ears', 'steam:11000011745d699', '{}');
INSERT INTO `datastore_data` VALUES (87, 'property', 'steam:11000011745d699', '{}');
INSERT INTO `datastore_data` VALUES (88, 'user_glasses', 'steam:11000011745d699', '{}');
INSERT INTO `datastore_data` VALUES (89, 'user_helmet', 'steam:11000011745d699', '{}');
INSERT INTO `datastore_data` VALUES (90, 'user_mask', 'steam:11000011745d699', '{}');
INSERT INTO `datastore_data` VALUES (91, 'property', 'steam:11000013c2b297a', '{\"dressing\":[{\"label\":\"休閒\",\"skin\":{\"lipstick_4\":0,\"bodyb_1\":0,\"age_2\":0,\"glasses_2\":0,\"chain_1\":0,\"mask_2\":0,\"moles_2\":0,\"beard_2\":0,\"beard_3\":0,\"blush_1\":0,\"bproof_2\":0,\"decals_1\":0,\"blush_2\":0,\"watches_2\":0,\"shoes_1\":31,\"hair_color_2\":32,\"pants_1\":18,\"hair_1\":21,\"complexion_1\":0,\"eyebrows_3\":0,\"chest_3\":0,\"beard_4\":0,\"tshirt_1\":15,\"bracelets_1\":-1,\"shoes_2\":2,\"pants_2\":2,\"face\":0,\"mask_1\":0,\"arms\":5,\"sun_1\":0,\"ears_2\":0,\"hair_2\":1,\"age_1\":0,\"blush_3\":0,\"watches_1\":-1,\"moles_1\":0,\"blemishes_2\":0,\"sex\":0,\"helmet_1\":-1,\"eye_color\":0,\"lipstick_2\":0,\"bodyb_2\":0,\"skin\":0,\"blemishes_1\":0,\"bproof_1\":0,\"helmet_2\":0,\"ears_1\":-1,\"eyebrows_1\":0,\"arms_2\":0,\"bags_1\":0,\"bags_2\":0,\"tshirt_2\":0,\"hair_color_1\":29,\"makeup_1\":0,\"torso_2\":9,\"sun_2\":0,\"makeup_3\":0,\"makeup_2\":0,\"eyebrows_2\":0,\"makeup_4\":0,\"lipstick_1\":0,\"eyebrows_4\":0,\"chest_2\":0,\"chest_1\":0,\"beard_1\":0,\"chain_2\":0,\"complexion_2\":0,\"lipstick_3\":0,\"decals_2\":0,\"bracelets_2\":0,\"glasses_1\":0,\"torso_1\":237}}],\"weapons\":[{\"name\":\"WEAPON_ADVANCEDRIFLE\",\"ammo\":220}]}');
INSERT INTO `datastore_data` VALUES (92, 'user_ears', 'steam:11000013c2b297a', '{\"skin\":{\"ears_1\":5,\"ears_2\":1},\"hasEars\":true}');
INSERT INTO `datastore_data` VALUES (93, 'user_helmet', 'steam:11000013c2b297a', '{}');
INSERT INTO `datastore_data` VALUES (94, 'user_glasses', 'steam:11000013c2b297a', '{}');
INSERT INTO `datastore_data` VALUES (95, 'user_mask', 'steam:11000013c2b297a', '{}');
INSERT INTO `datastore_data` VALUES (96, 'property', 'steam:110000103f407b5', '{}');
INSERT INTO `datastore_data` VALUES (97, 'user_ears', 'steam:110000103f407b5', '{}');
INSERT INTO `datastore_data` VALUES (98, 'user_glasses', 'steam:110000103f407b5', '{}');
INSERT INTO `datastore_data` VALUES (99, 'user_mask', 'steam:110000103f407b5', '{}');
INSERT INTO `datastore_data` VALUES (100, 'user_helmet', 'steam:110000103f407b5', '{}');
INSERT INTO `datastore_data` VALUES (101, 'user_ears', 'steam:1100001172d233d', '{}');
INSERT INTO `datastore_data` VALUES (102, 'property', 'steam:1100001172d233d', '{}');
INSERT INTO `datastore_data` VALUES (103, 'user_glasses', 'steam:1100001172d233d', '{}');
INSERT INTO `datastore_data` VALUES (104, 'user_helmet', 'steam:1100001172d233d', '{}');
INSERT INTO `datastore_data` VALUES (105, 'user_mask', 'steam:1100001172d233d', '{}');
INSERT INTO `datastore_data` VALUES (106, 'user_glasses', 'steam:11000013f295673', '{}');
INSERT INTO `datastore_data` VALUES (107, 'user_ears', 'steam:11000013f295673', '{}');
INSERT INTO `datastore_data` VALUES (108, 'property', 'steam:11000013f295673', '{}');
INSERT INTO `datastore_data` VALUES (109, 'user_helmet', 'steam:11000013f295673', '{}');
INSERT INTO `datastore_data` VALUES (110, 'user_mask', 'steam:11000013f295673', '{}');
INSERT INTO `datastore_data` VALUES (111, 'property', 'steam:11000013716cde4', '{\"dressing\":[{\"label\":66,\"skin\":{\"lipstick_4\":0,\"bodyb_1\":0,\"age_2\":0,\"glasses_2\":5,\"chain_1\":12,\"mask_2\":0,\"moles_2\":0,\"beard_2\":0,\"beard_3\":0,\"blush_1\":0,\"bproof_2\":0,\"decals_2\":0,\"bodyb_2\":0,\"watches_2\":0,\"blemishes_1\":0,\"hair_color_2\":0,\"pants_1\":10,\"sun_2\":0,\"lipstick_1\":0,\"eyebrows_3\":0,\"chest_3\":0,\"beard_4\":0,\"tshirt_1\":31,\"bracelets_1\":-1,\"shoes_2\":0,\"pants_2\":0,\"face\":0,\"mask_1\":0,\"arms\":17,\"sun_1\":0,\"ears_2\":0,\"hair_2\":0,\"age_1\":0,\"blush_3\":0,\"watches_1\":-1,\"moles_1\":0,\"blemishes_2\":0,\"eyebrows_4\":0,\"hair_color_1\":0,\"helmet_1\":-1,\"skin\":0,\"lipstick_2\":0,\"sex\":0,\"complexion_1\":0,\"bproof_1\":0,\"hair_1\":0,\"ears_1\":5,\"eyebrows_1\":0,\"arms_2\":0,\"bags_1\":0,\"bags_2\":0,\"chain_2\":2,\"tshirt_2\":0,\"shoes_1\":10,\"torso_2\":0,\"chest_2\":0,\"makeup_3\":0,\"makeup_2\":0,\"eyebrows_2\":0,\"makeup_4\":0,\"torso_1\":29,\"blush_2\":0,\"decals_1\":0,\"chest_1\":0,\"beard_1\":0,\"eye_color\":0,\"complexion_2\":0,\"lipstick_3\":0,\"bracelets_2\":0,\"makeup_1\":0,\"glasses_1\":5,\"helmet_2\":0}}]}');
INSERT INTO `datastore_data` VALUES (112, 'user_ears', 'steam:11000013716cde4', '{\"skin\":{\"ears_1\":8,\"ears_2\":4},\"hasEars\":true}');
INSERT INTO `datastore_data` VALUES (113, 'user_glasses', 'steam:11000013716cde4', '{\"skin\":{\"glasses_2\":5,\"glasses_1\":0},\"hasGlasses\":true}');
INSERT INTO `datastore_data` VALUES (114, 'user_helmet', 'steam:11000013716cde4', '{\"hasHelmet\":true,\"skin\":{\"helmet_1\":12,\"helmet_2\":0}}');
INSERT INTO `datastore_data` VALUES (115, 'user_mask', 'steam:11000013716cde4', '{}');
INSERT INTO `datastore_data` VALUES (116, 'property', 'steam:1100001321585b7', '{}');
INSERT INTO `datastore_data` VALUES (117, 'user_ears', 'steam:1100001321585b7', '{}');
INSERT INTO `datastore_data` VALUES (118, 'user_glasses', 'steam:1100001321585b7', '{}');
INSERT INTO `datastore_data` VALUES (119, 'user_helmet', 'steam:1100001321585b7', '{}');
INSERT INTO `datastore_data` VALUES (120, 'user_mask', 'steam:1100001321585b7', '{}');
INSERT INTO `datastore_data` VALUES (121, 'property', 'steam:11000013301b85a', '{}');
INSERT INTO `datastore_data` VALUES (122, 'user_ears', 'steam:11000013301b85a', '{}');
INSERT INTO `datastore_data` VALUES (123, 'user_glasses', 'steam:11000013301b85a', '{}');
INSERT INTO `datastore_data` VALUES (124, 'user_helmet', 'steam:11000013301b85a', '{}');
INSERT INTO `datastore_data` VALUES (125, 'user_mask', 'steam:11000013301b85a', '{}');
INSERT INTO `datastore_data` VALUES (126, 'property', 'steam:11000011a0816e8', '{}');
INSERT INTO `datastore_data` VALUES (127, 'user_ears', 'steam:11000011a0816e8', '{}');
INSERT INTO `datastore_data` VALUES (128, 'user_glasses', 'steam:11000011a0816e8', '{}');
INSERT INTO `datastore_data` VALUES (129, 'user_helmet', 'steam:11000011a0816e8', '{}');
INSERT INTO `datastore_data` VALUES (130, 'user_mask', 'steam:11000011a0816e8', '{}');
INSERT INTO `datastore_data` VALUES (131, 'property', 'steam:11000011bfb9181', '{}');
INSERT INTO `datastore_data` VALUES (132, 'user_glasses', 'steam:11000011bfb9181', '{}');
INSERT INTO `datastore_data` VALUES (133, 'user_mask', 'steam:11000011bfb9181', '{}');
INSERT INTO `datastore_data` VALUES (134, 'user_helmet', 'steam:11000011bfb9181', '{}');
INSERT INTO `datastore_data` VALUES (135, 'user_ears', 'steam:11000011bfb9181', '{}');
INSERT INTO `datastore_data` VALUES (136, 'property', 'steam:110000132555dfb', '{}');
INSERT INTO `datastore_data` VALUES (137, 'user_ears', 'steam:110000132555dfb', '{}');
INSERT INTO `datastore_data` VALUES (138, 'user_glasses', 'steam:110000132555dfb', '{}');
INSERT INTO `datastore_data` VALUES (139, 'user_helmet', 'steam:110000132555dfb', '{}');
INSERT INTO `datastore_data` VALUES (140, 'user_mask', 'steam:110000132555dfb', '{}');
INSERT INTO `datastore_data` VALUES (141, 'property', 'steam:1100001350a4e14', '{\"dressing\":[{\"label\":\"fgdfg\",\"skin\":{\"age_1\":0,\"bodyb_2\":0,\"eye_color\":0,\"bracelets_2\":0,\"makeup_3\":0,\"shoes_1\":10,\"decals_1\":0,\"tshirt_2\":0,\"watches_1\":-1,\"sun_1\":0,\"complexion_1\":0,\"age_2\":0,\"arms_2\":0,\"chain_2\":2,\"hair_2\":0,\"arms\":17,\"complexion_2\":0,\"beard_1\":0,\"mask_1\":0,\"hair_1\":21,\"chest_3\":0,\"bracelets_1\":-1,\"eyebrows_3\":0,\"moles_1\":0,\"lipstick_2\":0,\"sun_2\":0,\"beard_3\":0,\"bodyb_1\":0,\"torso_2\":0,\"blush_1\":0,\"torso_1\":29,\"chest_1\":0,\"pants_1\":10,\"pants_2\":0,\"blemishes_2\":0,\"chest_2\":0,\"hair_color_2\":5,\"eyebrows_1\":0,\"eyebrows_2\":0,\"chain_1\":12,\"helmet_1\":-1,\"blemishes_1\":0,\"bags_1\":0,\"beard_2\":0,\"makeup_1\":0,\"bproof_1\":0,\"bags_2\":0,\"lipstick_4\":0,\"blush_2\":0,\"ears_2\":0,\"eyebrows_4\":0,\"beard_4\":0,\"lipstick_3\":0,\"decals_2\":0,\"bproof_2\":0,\"glasses_1\":5,\"shoes_2\":0,\"hair_color_1\":19,\"watches_2\":0,\"lipstick_1\":0,\"face\":0,\"blush_3\":0,\"glasses_2\":0,\"skin\":0,\"helmet_2\":0,\"moles_2\":0,\"makeup_2\":0,\"tshirt_1\":31,\"mask_2\":0,\"sex\":0,\"ears_1\":2,\"makeup_4\":0}}]}');
INSERT INTO `datastore_data` VALUES (142, 'user_ears', 'steam:1100001350a4e14', '{\"hasEars\":true,\"skin\":{\"ears_1\":2,\"ears_2\":0}}');
INSERT INTO `datastore_data` VALUES (143, 'user_glasses', 'steam:1100001350a4e14', '{}');
INSERT INTO `datastore_data` VALUES (144, 'user_helmet', 'steam:1100001350a4e14', '{}');
INSERT INTO `datastore_data` VALUES (145, 'user_mask', 'steam:1100001350a4e14', '{}');
INSERT INTO `datastore_data` VALUES (146, 'property', 'steam:1100001154d67f5', '{}');
INSERT INTO `datastore_data` VALUES (147, 'user_ears', 'steam:1100001154d67f5', '{}');
INSERT INTO `datastore_data` VALUES (148, 'user_glasses', 'steam:1100001154d67f5', '{}');
INSERT INTO `datastore_data` VALUES (149, 'user_helmet', 'steam:1100001154d67f5', '{}');
INSERT INTO `datastore_data` VALUES (150, 'user_mask', 'steam:1100001154d67f5', '{}');
INSERT INTO `datastore_data` VALUES (151, 'property', 'steam:11000010c72c48b', '{}');
INSERT INTO `datastore_data` VALUES (152, 'user_ears', 'steam:11000010c72c48b', '{}');
INSERT INTO `datastore_data` VALUES (153, 'user_helmet', 'steam:11000010c72c48b', '{}');
INSERT INTO `datastore_data` VALUES (154, 'user_glasses', 'steam:11000010c72c48b', '{}');
INSERT INTO `datastore_data` VALUES (155, 'user_mask', 'steam:11000010c72c48b', '{}');
INSERT INTO `datastore_data` VALUES (156, 'property', 'steam:11000013efb45a5', '{}');
INSERT INTO `datastore_data` VALUES (157, 'user_ears', 'steam:11000013efb45a5', '{}');
INSERT INTO `datastore_data` VALUES (158, 'user_helmet', 'steam:11000013efb45a5', '{\"hasHelmet\":true,\"skin\":{\"helmet_1\":2,\"helmet_2\":5}}');
INSERT INTO `datastore_data` VALUES (159, 'user_glasses', 'steam:11000013efb45a5', '{}');
INSERT INTO `datastore_data` VALUES (160, 'user_mask', 'steam:11000013efb45a5', '{}');
INSERT INTO `datastore_data` VALUES (161, 'property', 'steam:11000013f403e65', '{\"dressing\":[[]]}');
INSERT INTO `datastore_data` VALUES (162, 'user_ears', 'steam:11000013f403e65', '{\"skin\":{\"ears_1\":2,\"ears_2\":0},\"hasEars\":true}');
INSERT INTO `datastore_data` VALUES (163, 'user_glasses', 'steam:11000013f403e65', '{}');
INSERT INTO `datastore_data` VALUES (164, 'user_helmet', 'steam:11000013f403e65', '{\"hasHelmet\":true,\"skin\":{\"helmet_1\":53,\"helmet_2\":0}}');
INSERT INTO `datastore_data` VALUES (165, 'user_mask', 'steam:11000013f403e65', '{}');
INSERT INTO `datastore_data` VALUES (166, 'property', 'steam:110000117caaf4e', '{}');
INSERT INTO `datastore_data` VALUES (167, 'user_ears', 'steam:110000117caaf4e', '{}');
INSERT INTO `datastore_data` VALUES (168, 'user_glasses', 'steam:110000117caaf4e', '{}');
INSERT INTO `datastore_data` VALUES (169, 'user_mask', 'steam:110000117caaf4e', '{}');
INSERT INTO `datastore_data` VALUES (170, 'user_helmet', 'steam:110000117caaf4e', '{}');

-- ----------------------------
-- Table structure for fine_types
-- ----------------------------
DROP TABLE IF EXISTS `fine_types`;
CREATE TABLE `fine_types`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `amount` int(11) NULL DEFAULT NULL,
  `category` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fine_types
-- ----------------------------
INSERT INTO `fine_types` VALUES (1, '失败的辱骂', 100, 0);
INSERT INTO `fine_types` VALUES (2, '跨越一条连续线', 40, 0);
INSERT INTO `fine_types` VALUES (3, '反向交通', 250, 0);
INSERT INTO `fine_types` VALUES (4, '未经授权的掉头', 250, 0);
INSERT INTO `fine_types` VALUES (5, '循环HORS路线', 170, 0);
INSERT INTO `fine_types` VALUES (6, '不遵守安全距离', 30, 0);
INSERT INTO `fine_types` VALUES (7, '禁止停车', 150, 0);
INSERT INTO `fine_types` VALUES (8, '禁止停车', 70, 0);
INSERT INTO `fine_types` VALUES (9, '右侧优先权未得到尊重', 70, 0);
INSERT INTO `fine_types` VALUES (10, '不遵守优先车辆', 90, 0);
INSERT INTO `fine_types` VALUES (11, '不遵守停车规定', 105, 0);
INSERT INTO `fine_types` VALUES (12, '不遵守红灯', 130, 0);
INSERT INTO `fine_types` VALUES (13, '危险超支', 100, 0);
INSERT INTO `fine_types` VALUES (14, '非现役车辆', 100, 0);
INSERT INTO `fine_types` VALUES (15, '无许可证条件', 1500, 0);
INSERT INTO `fine_types` VALUES (16, '逃跑罪', 800, 0);
INSERT INTO `fine_types` VALUES (17, '超速<5平方公里', 90, 0);
INSERT INTO `fine_types` VALUES (18, '超速5-15平方公里', 120, 0);
INSERT INTO `fine_types` VALUES (19, '超速15-30平方公里', 180, 0);
INSERT INTO `fine_types` VALUES (20, '超速>30平方公里', 300, 0);
INSERT INTO `fine_types` VALUES (21, '交通障碍', 110, 1);
INSERT INTO `fine_types` VALUES (22, '公路退化', 90, 1);
INSERT INTO `fine_types` VALUES (23, '扰乱公共秩序', 90, 1);
INSERT INTO `fine_types` VALUES (24, '警察行动障碍', 130, 1);
INSERT INTO `fine_types` VALUES (25, '侮辱平民', 75, 1);
INSERT INTO `fine_types` VALUES (26, '警察藐视法庭', 110, 1);
INSERT INTO `fine_types` VALUES (27, '对平民的口头威胁或恐吓', 90, 1);
INSERT INTO `fine_types` VALUES (28, '对警察的口头威胁或恐吓', 150, 1);
INSERT INTO `fine_types` VALUES (29, '非法示威', 250, 1);
INSERT INTO `fine_types` VALUES (30, '腐败未遂', 1500, 1);
INSERT INTO `fine_types` VALUES (31, '白色武器出城', 120, 2);
INSERT INTO `fine_types` VALUES (32, '左轮手枪', 300, 2);
INSERT INTO `fine_types` VALUES (33, '未经许可携带武器（“未经许可携带武器”）', 600, 2);
INSERT INTO `fine_types` VALUES (34, '携带非法武器', 700, 2);
INSERT INTO `fine_types` VALUES (35, '被困在旗帜上', 300, 2);
INSERT INTO `fine_types` VALUES (36, '成活率', 1800, 2);
INSERT INTO `fine_types` VALUES (37, '排气管', 1500, 2);
INSERT INTO `fine_types` VALUES (38, '药品生产', 1500, 2);
INSERT INTO `fine_types` VALUES (39, '所有权', 650, 2);
INSERT INTO `fine_types` VALUES (40, '民用采集', 1500, 2);
INSERT INTO `fine_types` VALUES (41, '国家代理人威胁', 2000, 2);
INSERT INTO `fine_types` VALUES (42, '碎麻机', 650, 2);
INSERT INTO `fine_types` VALUES (43, '抢劫店', 650, 2);
INSERT INTO `fine_types` VALUES (44, '银行抢劫', 1500, 2);
INSERT INTO `fine_types` VALUES (45, '平民射击', 2000, 3);
INSERT INTO `fine_types` VALUES (46, '对国家代理人开枪', 2500, 3);
INSERT INTO `fine_types` VALUES (47, '谋杀未遂', 3000, 3);
INSERT INTO `fine_types` VALUES (48, '国家特工谋杀未遂案', 5000, 3);
INSERT INTO `fine_types` VALUES (49, '民事谋杀', 10000, 3);
INSERT INTO `fine_types` VALUES (50, '国家特工死亡', 30000, 3);
INSERT INTO `fine_types` VALUES (51, '非自愿谋杀', 1800, 3);
INSERT INTO `fine_types` VALUES (52, '企业欺诈', 2000, 2);

-- ----------------------------
-- Table structure for fine_types_mafia
-- ----------------------------
DROP TABLE IF EXISTS `fine_types_mafia`;
CREATE TABLE `fine_types_mafia`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amount` int(11) NULL DEFAULT NULL,
  `category` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fine_types_mafia
-- ----------------------------
INSERT INTO `fine_types_mafia` VALUES (1, 'Raket', 3000, 0);
INSERT INTO `fine_types_mafia` VALUES (2, 'Raket', 5000, 0);
INSERT INTO `fine_types_mafia` VALUES (3, 'Raket', 10000, 1);
INSERT INTO `fine_types_mafia` VALUES (4, 'Raket', 20000, 1);
INSERT INTO `fine_types_mafia` VALUES (5, 'Raket', 50000, 2);
INSERT INTO `fine_types_mafia` VALUES (6, 'Raket', 150000, 3);
INSERT INTO `fine_types_mafia` VALUES (7, 'Raket', 350000, 3);

-- ----------------------------
-- Table structure for glovebox_inventory
-- ----------------------------
DROP TABLE IF EXISTS `glovebox_inventory`;
CREATE TABLE `glovebox_inventory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `data` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `plate`(`plate`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of glovebox_inventory
-- ----------------------------
INSERT INTO `glovebox_inventory` VALUES (16, 'SSR 784 ', '{\"coffres\":[{\"name\":\"vhamburger\",\"count\":15}]}', 1);
INSERT INTO `glovebox_inventory` VALUES (26, 'BZY 581 ', '{\"coffres\":[]}', 1);
INSERT INTO `glovebox_inventory` VALUES (56, 'GZJ 603 ', '{\"coffres\":[]}', 1);
INSERT INTO `glovebox_inventory` VALUES (66, 'VAF 045 ', '{\"coffres\":[{\"count\":97,\"name\":\"coke_pooch\"},{\"name\":\"juice_orage\",\"count\":450}]}', 1);
INSERT INTO `glovebox_inventory` VALUES (82, 'UQS 330 ', '{\"coffres\":[{\"count\":1,\"name\":\"coke_pooch\"}]}', 1);
INSERT INTO `glovebox_inventory` VALUES (85, 'OFB 116 ', '{\"coffres\":[]}', 1);
INSERT INTO `glovebox_inventory` VALUES (93, 'ZPX 621 ', '{\"coffres\":[]}', 1);
INSERT INTO `glovebox_inventory` VALUES (97, 'FZC 738 ', '{\"weapons\":[{\"name\":\"WEAPON_PETROLCAN\",\"label\":\"????\",\"ammo\":10}],\"coffres\":[]}', 1);
INSERT INTO `glovebox_inventory` VALUES (104, 'SSW 824 ', '{\"coffres\":[],\"weapons\":[{\"label\":\"??\",\"name\":\"WEAPON_PISTOL\",\"ammo\":0},{\"label\":\"??\",\"name\":\"WEAPON_PISTOL\",\"ammo\":0}]}', 1);
INSERT INTO `glovebox_inventory` VALUES (105, 'AKF 108 ', '{\"coffres\":[],\"weapons\":[{\"ammo\":0,\"name\":\"WEAPON_PISTOL\",\"label\":\"??\"}]}', 1);

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1,
  `price` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('absinthe', '江小白', 5, 0, 1, NULL);
INSERT INTO `items` VALUES ('alive_chicken', '活鸡', 20, 0, 1, NULL);
INSERT INTO `items` VALUES ('antibiotico', '胃药', 10, 0, 1, NULL);
INSERT INTO `items` VALUES ('antibioticorosacea', '皮肤美颜霜', -1, 0, 1, NULL);
INSERT INTO `items` VALUES ('bandage', '绷带', 20, 0, 1, NULL);
INSERT INTO `items` VALUES ('beer', '啤酒', 15, 0, 1, NULL);
INSERT INTO `items` VALUES ('blowpipe', '焊枪', 10, 0, 1, NULL);
INSERT INTO `items` VALUES ('bobbypin', '发夹', 50, 0, 1, NULL);
INSERT INTO `items` VALUES ('bread', '面包', 15, 0, 1, NULL);
INSERT INTO `items` VALUES ('bulletproof', '防弹背心', 3, 0, 1, NULL);
INSERT INTO `items` VALUES ('camera', '相机', -1, 0, 1, NULL);
INSERT INTO `items` VALUES ('carokit', '快速修车包', 5, 0, 1, NULL);
INSERT INTO `items` VALUES ('carotool', '快速修理工具', 4, 0, 1, NULL);
INSERT INTO `items` VALUES ('ccheese', '奶酪羊乳酪', 40, 0, 1, NULL);
INSERT INTO `items` VALUES ('cerebro', '脑子', -1, 0, 1, NULL);
INSERT INTO `items` VALUES ('champagne', '香槟', 10, 0, 1, NULL);
INSERT INTO `items` VALUES ('cheese', '芝士', 10, 0, 1, NULL);
INSERT INTO `items` VALUES ('chips', '甘薯', 5, 0, 1, NULL);
INSERT INTO `items` VALUES ('chocolate', '巧克力', 10, 0, 1, NULL);
INSERT INTO `items` VALUES ('cigarett', '中华', 20, 0, 1, NULL);
INSERT INTO `items` VALUES ('clettuce', '切生菜', 40, 0, 1, NULL);
INSERT INTO `items` VALUES ('clip', '武器子弹', 3, 0, 1, NULL);
INSERT INTO `items` VALUES ('clothe', '衣服', 40, 0, 1, NULL);
INSERT INTO `items` VALUES ('cocacola', '可口可乐', 15, 0, 1, NULL);
INSERT INTO `items` VALUES ('coffe', '咖啡', 15, 0, 1, NULL);
INSERT INTO `items` VALUES ('coke', '可卡因', 50, 0, 1, NULL);
INSERT INTO `items` VALUES ('coke_pooch', '可卡因粉', 10, 0, 1, NULL);
INSERT INTO `items` VALUES ('copper', '铜', 56, 0, 1, NULL);
INSERT INTO `items` VALUES ('corazon', '心', -1, 0, 1, NULL);
INSERT INTO `items` VALUES ('ctomato', '切番茄', 40, 0, 1, NULL);
INSERT INTO `items` VALUES ('cuerpo', '身体', -1, 0, 1, NULL);
INSERT INTO `items` VALUES ('cupcake', '烤饼', 15, 0, 1, NULL);
INSERT INTO `items` VALUES ('cutted_wood', '切碎的木头', 20, 0, 1, NULL);
INSERT INTO `items` VALUES ('diamond', '钻石', 50, 0, 1, NULL);
INSERT INTO `items` VALUES ('essence', '精油', 24, 0, 1, NULL);
INSERT INTO `items` VALUES ('fabric', '织物', 80, 0, 1, NULL);
INSERT INTO `items` VALUES ('fburger', '冷冻汉堡', 20, 0, 1, NULL);
INSERT INTO `items` VALUES ('firstaidkit', '急救药箱', 2, 0, 1, NULL);
INSERT INTO `items` VALUES ('fish', '鱼', 100, 0, 1, NULL);
INSERT INTO `items` VALUES ('fixkit', '修理工具包', 20, 0, 1, NULL);
INSERT INTO `items` VALUES ('fixtool', '修理工具', 20, 0, 1, NULL);
INSERT INTO `items` VALUES ('fvburger', '冷冻蔬菜汉堡', 20, 0, 1, NULL);
INSERT INTO `items` VALUES ('gazbottle', '气瓶', 11, 0, 1, NULL);
INSERT INTO `items` VALUES ('gintonic', '杜松子酒', 5, 0, 1, NULL);
INSERT INTO `items` VALUES ('gold', '金', 21, 0, 1, NULL);
INSERT INTO `items` VALUES ('goldNecklace', '金项链', -1, 0, 1, NULL);
INSERT INTO `items` VALUES ('hamburger', '汉堡', 15, 0, 1, NULL);
INSERT INTO `items` VALUES ('huesos', '骨头', -1, 0, 1, NULL);
INSERT INTO `items` VALUES ('icetea', '冰红茶', 15, 0, 1, NULL);
INSERT INTO `items` VALUES ('instestinos', '肠子', -1, 0, 1, NULL);
INSERT INTO `items` VALUES ('iron', '铁', 42, 0, 1, NULL);
INSERT INTO `items` VALUES ('juice_orage', '成品果汁', 50, 0, 1, NULL);
INSERT INTO `items` VALUES ('laptop', '笔记本电脑', -1, 0, 1, NULL);
INSERT INTO `items` VALUES ('lettuce', '生菜', 10, 0, 1, NULL);
INSERT INTO `items` VALUES ('lighter', '打火机', 1, 0, 1, NULL);
INSERT INTO `items` VALUES ('lockpick', '盗窃钥匙', 1, 0, 1, NULL);
INSERT INTO `items` VALUES ('medikit', '医疗箱', 5, 0, 1, NULL);
INSERT INTO `items` VALUES ('medulas', '骨髓', -1, 0, 1, NULL);
INSERT INTO `items` VALUES ('meth', '冰毒', 50, 0, 1, NULL);
INSERT INTO `items` VALUES ('meth_pooch', '甲安菲他明', 10, 0, 1, NULL);
INSERT INTO `items` VALUES ('milk', '牛奶', 15, 0, 1, NULL);
INSERT INTO `items` VALUES ('moneywashid', '洗钱票', 1, 0, 1, NULL);
INSERT INTO `items` VALUES ('multi_key', '多人竞速钥匙', 10, 0, 1, NULL);
INSERT INTO `items` VALUES ('nitrocannister', '氮气罐', 10, 0, 1, NULL);
INSERT INTO `items` VALUES ('nugget', '金块', 40, 0, 1, NULL);
INSERT INTO `items` VALUES ('nuggets10', '掘金x10', 4, 0, 1, NULL);
INSERT INTO `items` VALUES ('nuggets4', '掘金4', 10, 0, 1, NULL);
INSERT INTO `items` VALUES ('opium', '鸦片', 50, 0, 1, NULL);
INSERT INTO `items` VALUES ('opium_pooch', '鸦片粉', 10, 0, 1, NULL);
INSERT INTO `items` VALUES ('orage', '橘子', 50, 0, 1, NULL);
INSERT INTO `items` VALUES ('oxygen_mask', '氧气面罩', 1, 0, 1, NULL);
INSERT INTO `items` VALUES ('packaged_chicken', '包装鸡肉', 100, 0, 1, NULL);
INSERT INTO `items` VALUES ('packaged_plank', '包装木板', 100, 0, 1, NULL);
INSERT INTO `items` VALUES ('petrol', '石油', 24, 0, 1, NULL);
INSERT INTO `items` VALUES ('petrol_raffin', '精炼石油', 24, 0, 1, NULL);
INSERT INTO `items` VALUES ('potato', '土豆', 10, 0, 1, NULL);
INSERT INTO `items` VALUES ('raspa', '彩票', 3, 0, 1, NULL);
INSERT INTO `items` VALUES ('ring', '戒指', -1, 0, 1, NULL);
INSERT INTO `items` VALUES ('rolex', '劳力士', -1, 0, 1, NULL);
INSERT INTO `items` VALUES ('rubberband', '橡皮筋', 50, 0, 1, NULL);
INSERT INTO `items` VALUES ('samsungS10', '华为max30', -1, 0, 1, NULL);
INSERT INTO `items` VALUES ('sandwich', '三明治', 15, 0, 1, NULL);
INSERT INTO `items` VALUES ('sciroppo', '止咳糖浆', -1, 0, 1, NULL);
INSERT INTO `items` VALUES ('shamburger', '简单的汉堡包', 15, 0, 1, NULL);
INSERT INTO `items` VALUES ('slaughtered_chicken', '鸡肉', 20, 0, 1, NULL);
INSERT INTO `items` VALUES ('solo_key', '个人竞速钥匙', 10, 0, 1, NULL);
INSERT INTO `items` VALUES ('stone', '石头', 7, 0, 1, NULL);
INSERT INTO `items` VALUES ('tequila', '龙舌兰酒', 15, 0, 1, NULL);
INSERT INTO `items` VALUES ('tomato', '番茄', 10, 0, 1, NULL);
INSERT INTO `items` VALUES ('vbread', '素食面包', 20, 0, 1, NULL);
INSERT INTO `items` VALUES ('vhamburger', '素汉堡', 15, 0, 1, NULL);
INSERT INTO `items` VALUES ('vodka', '伏特加', 15, 0, 1, NULL);
INSERT INTO `items` VALUES ('warehouse_key', '私人钥匙', 5, 0, 1, NULL);
INSERT INTO `items` VALUES ('washed_stone', '洗石头', 7, 0, 1, NULL);
INSERT INTO `items` VALUES ('water', '百岁山', 15, 0, 1, NULL);
INSERT INTO `items` VALUES ('weed', '烟草', 50, 0, 1, NULL);
INSERT INTO `items` VALUES ('weed_pooch', '大麻', 10, 0, 1, NULL);
INSERT INTO `items` VALUES ('whisky', '威士忌', 15, 0, 1, NULL);
INSERT INTO `items` VALUES ('wine', '红星二锅头', 15, 0, 1, NULL);
INSERT INTO `items` VALUES ('wood', '木材', 20, 0, 1, NULL);
INSERT INTO `items` VALUES ('wool', '羊毛', 40, 0, 1, NULL);
INSERT INTO `items` VALUES ('wrench', '扳手', 1, 0, 1, NULL);

-- ----------------------------
-- Table structure for job_grades
-- ----------------------------
DROP TABLE IF EXISTS `job_grades`;
CREATE TABLE `job_grades`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `skin_female` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_grades
-- ----------------------------
INSERT INTO `job_grades` VALUES (1, 'unemployed', 0, 'unemployed', '潇潇洒洒', 200, '{}', '{}');
INSERT INTO `job_grades` VALUES (2, 'lumberjack', 0, 'employee', '实习伐木工', 1300, '{}', '{}');
INSERT INTO `job_grades` VALUES (3, 'fisherman', 0, 'employee', '实习捕鱼工', 1400, '{}', '{}');
INSERT INTO `job_grades` VALUES (4, 'fueler', 0, 'employee', '实习地沟油工', 1500, '{}', '{}');
INSERT INTO `job_grades` VALUES (5, 'reporter', 0, 'employee', '小道记者', 500, '{}', '{}');
INSERT INTO `job_grades` VALUES (6, 'tailor', 0, 'employee', '实习裁缝', 700, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}');
INSERT INTO `job_grades` VALUES (7, 'miner', 0, 'employee', '实习矿工', 800, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}');
INSERT INTO `job_grades` VALUES (8, 'slaughterer', 0, 'employee', '肯德基屠夫', 1000, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}');
INSERT INTO `job_grades` VALUES (9, 'police', 0, 'recruit', '实习警员', 2000, '{}', '{}');
INSERT INTO `job_grades` VALUES (10, 'police', 1, 'officer', '警员', 4000, '{}', '{}');
INSERT INTO `job_grades` VALUES (11, 'police', 2, 'sergeant', '警长', 6000, '{}', '{}');
INSERT INTO `job_grades` VALUES (12, 'police', 3, 'lieutenant', '副局长', 8500, '{}', '{}');
INSERT INTO `job_grades` VALUES (13, 'police', 4, 'boss', '局长', 10000, '{}', '{}');
INSERT INTO `job_grades` VALUES (26, 'ambulance', 0, 'ambulance', '救护车司机', 2000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES (27, 'ambulance', 1, 'doctor', '医生', 4000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES (28, 'ambulance', 2, 'chief_doctor', '医师长', 6000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES (29, 'ambulance', 3, 'boss', '医院院长', 8000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES (30, 'cardealer', 0, 'recruit', '新手', 5000, '{}', '{}');
INSERT INTO `job_grades` VALUES (31, 'cardealer', 1, 'novice', '初出茅庐', 6000, '{}', '{}');
INSERT INTO `job_grades` VALUES (32, 'cardealer', 2, 'experienced', '业务经理', 7000, '{}', '{}');
INSERT INTO `job_grades` VALUES (33, 'cardealer', 3, 'boss', '老板', 10000, '{}', '{}');
INSERT INTO `job_grades` VALUES (34, 'mechanic', 0, 'recrue', '新手', 12, '{}', '{}');
INSERT INTO `job_grades` VALUES (35, 'mechanic', 1, 'novice', '半吊子', 24, '{}', '{}');
INSERT INTO `job_grades` VALUES (36, 'mechanic', 2, 'experimente', '普通修车工', 36, '{}', '{}');
INSERT INTO `job_grades` VALUES (37, 'mechanic', 3, 'chief', '修车大师傅', 48, '{}', '{}');
INSERT INTO `job_grades` VALUES (38, 'mechanic', 4, 'boss', '修车店老板', 3500, '{}', '{}');
INSERT INTO `job_grades` VALUES (40, 'burgershot', 0, 'recluta', 'Practicante', 800, '{}', '{}');
INSERT INTO `job_grades` VALUES (41, 'burgershot', 1, 'novato', 'Ayudante de cocina', 800, '{}', '{}');
INSERT INTO `job_grades` VALUES (42, 'burgershot', 2, 'chef', 'Chef', 800, '{}', '{}');
INSERT INTO `job_grades` VALUES (43, 'burgershot', 3, 'viceboss', 'Sub-Gerente', 800, '{}', '{}');
INSERT INTO `job_grades` VALUES (44, 'burgershot', 4, 'boss', 'Gerente', 3500, '{}', '{}');
INSERT INTO `job_grades` VALUES (56, 'mafia', 0, 'soldato', '职员', 2000, '{}', '{}');
INSERT INTO `job_grades` VALUES (57, 'mafia', 1, 'capo', '助理', 2500, '{}', '{}');
INSERT INTO `job_grades` VALUES (58, 'mafia', 2, 'consigliere', '执行董事', 3000, '{}', '{}');
INSERT INTO `job_grades` VALUES (59, 'mafia', 3, 'boss', '董事长', 3500, '{}', '{}');

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------
INSERT INTO `jobs` VALUES ('ambulance', '医护人员', 1);
INSERT INTO `jobs` VALUES ('burgershot', '汉堡王', 1);
INSERT INTO `jobs` VALUES ('cardealer', '汽车经销商老板', 1);
INSERT INTO `jobs` VALUES ('fisherman', '渔民', 0);
INSERT INTO `jobs` VALUES ('fueler', '炼油工人', 0);
INSERT INTO `jobs` VALUES ('lumberjack', '伐木工人', 0);
INSERT INTO `jobs` VALUES ('mafia', '派利集团', 1);
INSERT INTO `jobs` VALUES ('mechanic', '修车工', 1);
INSERT INTO `jobs` VALUES ('miner', '矿工', 0);
INSERT INTO `jobs` VALUES ('police', '农村市', 1);
INSERT INTO `jobs` VALUES ('reporter', '记者', 0);
INSERT INTO `jobs` VALUES ('slaughterer', '屠宰者', 0);
INSERT INTO `jobs` VALUES ('tailor', '裁缝师', 0);
INSERT INTO `jobs` VALUES ('unemployed', '无业游民', 0);

-- ----------------------------
-- Table structure for licenses
-- ----------------------------
DROP TABLE IF EXISTS `licenses`;
CREATE TABLE `licenses`  (
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of licenses
-- ----------------------------
INSERT INTO `licenses` VALUES ('aircraft', 'Aircraft License');
INSERT INTO `licenses` VALUES ('boating', 'Boating License');
INSERT INTO `licenses` VALUES ('dmv', 'Code de la route');
INSERT INTO `licenses` VALUES ('drive', 'Permis de conduire');
INSERT INTO `licenses` VALUES ('drive_bike', 'Permis moto');
INSERT INTO `licenses` VALUES ('drive_truck', 'Permis camion');
INSERT INTO `licenses` VALUES ('weapon', 'Permis de port d\'arme');

-- ----------------------------
-- Table structure for marathon_times
-- ----------------------------
DROP TABLE IF EXISTS `marathon_times`;
CREATE TABLE `marathon_times`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track` int(10) NOT NULL,
  `runner` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `laptime` bigint(20) NULL DEFAULT 999999,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of marathon_times
-- ----------------------------

-- ----------------------------
-- Table structure for multi_race
-- ----------------------------
DROP TABLE IF EXISTS `multi_race`;
CREATE TABLE `multi_race`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `race` int(11) NOT NULL,
  `nb_laps` int(11) NOT NULL,
  `nb_pers` int(11) NOT NULL,
  `ended` tinyint(1) NOT NULL,
  `created_date` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of multi_race
-- ----------------------------
INSERT INTO `multi_race` VALUES (2, 'steam:11000010c502cb5', 2, 1, 3, 1, 1571659145);
INSERT INTO `multi_race` VALUES (3, 'steam:11000010c502cb5', 2, 1, 3, 1, 1571659984);
INSERT INTO `multi_race` VALUES (5, 'steam:11000010c502cb5', 4, 1, 1, 1, 1571661929);
INSERT INTO `multi_race` VALUES (6, 'steam:11000010c502cb5', 6, 2, 2, 1, 1572160746);
INSERT INTO `multi_race` VALUES (7, 'steam:11000010c502cb5', 6, 2, 2, 1, 1572160920);
INSERT INTO `multi_race` VALUES (8, 'steam:11000010c502cb5', 4, 2, 2, 1, 1572161683);
INSERT INTO `multi_race` VALUES (9, 'steam:11000010c502cb5', 4, 1, 2, 1, 1572944332);
INSERT INTO `multi_race` VALUES (10, 'steam:11000010c502cb5', 4, 1, 2, 1, 1572944613);
INSERT INTO `multi_race` VALUES (11, 'steam:11000010c502cb5', 4, 1, 2, 1, 1572944832);

-- ----------------------------
-- Table structure for nitro_vehicles
-- ----------------------------
DROP TABLE IF EXISTS `nitro_vehicles`;
CREATE TABLE `nitro_vehicles`  (
  `plate` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nitro_vehicles
-- ----------------------------
INSERT INTO `nitro_vehicles` VALUES ('JPQ 706', 0);

-- ----------------------------
-- Table structure for owned_properties
-- ----------------------------
DROP TABLE IF EXISTS `owned_properties`;
CREATE TABLE `owned_properties`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of owned_properties
-- ----------------------------
INSERT INTO `owned_properties` VALUES (1, 'IntegrityWay30', 1700000, 0, 'steam:11000010c502cb5');
INSERT INTO `owned_properties` VALUES (2, 'IntegrityWay28', 1700000, 0, 'steam:110000103072384');
INSERT INTO `owned_properties` VALUES (3, 'Modern1Apartment', 1300000, 0, 'steam:1100001337e0dcf');
INSERT INTO `owned_properties` VALUES (4, 'MadWayneThunder', 7500, 1, 'steam:110000117b4ecd8');
INSERT INTO `owned_properties` VALUES (5, 'LowEndApartment', 2813, 1, 'steam:110000117b4ecd8');
INSERT INTO `owned_properties` VALUES (7, 'RichardMajesticApt2', 8500, 1, 'steam:11000011899ea0f');
INSERT INTO `owned_properties` VALUES (8, 'RichardMajesticApt2', 8500, 1, 'steam:11000013bd36b18');
INSERT INTO `owned_properties` VALUES (9, 'LowEndApartment', 2813, 1, 'steam:11000013bd36b18');
INSERT INTO `owned_properties` VALUES (12, 'TinselTowersApt12', 8500, 1, 'steam:11000013bd36b18');
INSERT INTO `owned_properties` VALUES (13, 'NorthConkerAvenue2045', 7500, 1, 'steam:1100001172d233d');
INSERT INTO `owned_properties` VALUES (14, 'LowEndApartment', 562500, 0, 'steam:11000013c2b297a');
INSERT INTO `owned_properties` VALUES (15, 'WhispymoundDrive', 7500, 1, 'steam:110000117b4ecd8');

-- ----------------------------
-- Table structure for owned_shops
-- ----------------------------
DROP TABLE IF EXISTS `owned_shops`;
CREATE TABLE `owned_shops`  (
  `identifier` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ShopNumber` int(11) NULL DEFAULT NULL,
  `money` int(11) NULL DEFAULT 0,
  `ShopValue` int(11) NULL DEFAULT NULL,
  `LastRobbery` int(11) NULL DEFAULT 0,
  `ShopName` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of owned_shops
-- ----------------------------
INSERT INTO `owned_shops` VALUES ('steam:1100001172af33b', 1, 2535000, 2800000, 1580307426, 'lulu');
INSERT INTO `owned_shops` VALUES ('steam:11000013716cde4', 2, 0, 2200000, 1549643682, 'xiao su');
INSERT INTO `owned_shops` VALUES ('0', 3, 0, 2350000, 1577932638, '0');
INSERT INTO `owned_shops` VALUES ('steam:11000011899ea0f', 4, 0, 2850000, 1580317965, 'PIGG.food');
INSERT INTO `owned_shops` VALUES ('0', 5, 0, 1350000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('0', 6, 0, 2350000, 1580262503, '0');
INSERT INTO `owned_shops` VALUES ('steam:110000115517b6d', 7, 0, 1600000, 1549643682, 'xiwu');
INSERT INTO `owned_shops` VALUES ('0', 8, 0, 2750000, 1580231675, '0');
INSERT INTO `owned_shops` VALUES ('0', 9, 0, 2650000, 1580318592, '0');
INSERT INTO `owned_shops` VALUES ('steam:110000134728f22', 10, 0, 3000000, 1580317320, 'Auto SHOP');
INSERT INTO `owned_shops` VALUES ('steam:110000117b4ecd8', 12, 1, 1450000, 1549643682, 'Pit BUll');
INSERT INTO `owned_shops` VALUES ('0', 13, 0, 1450000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('0', 14, 0, 2820000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('steam:1100001170fb22c', 15, 8750, 3000000, 1580314771, 'Best Car Shop');
INSERT INTO `owned_shops` VALUES ('steam:11000013c2b297a', 16, 0, 4350000, 1549643682, 'Doctor');
INSERT INTO `owned_shops` VALUES ('0', 18, 0, 2350000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('steam:110000117b4ecd8', 11, 0, 2250000, 1549643682, 'PIGG.bullet');
INSERT INTO `owned_shops` VALUES ('0', 19, 0, 1500000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('0', 20, 0, 1650000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('0', 17, 0, 1500000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('steam:1100001172af33b', 1, 2535000, 2800000, 1580307426, 'lulu');
INSERT INTO `owned_shops` VALUES ('steam:11000013716cde4', 2, 0, 2200000, 1549643682, 'xiao su');
INSERT INTO `owned_shops` VALUES ('0', 3, 0, 2350000, 1577932638, '0');
INSERT INTO `owned_shops` VALUES ('steam:11000011899ea0f', 4, 0, 2850000, 1580317965, 'PIGG.food');
INSERT INTO `owned_shops` VALUES ('0', 5, 0, 1350000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('0', 6, 0, 2350000, 1580262503, '0');
INSERT INTO `owned_shops` VALUES ('steam:110000115517b6d', 7, 0, 1600000, 1549643682, 'xiwu');
INSERT INTO `owned_shops` VALUES ('0', 8, 0, 2750000, 1580231675, '0');
INSERT INTO `owned_shops` VALUES ('0', 9, 0, 2650000, 1580318592, '0');
INSERT INTO `owned_shops` VALUES ('steam:110000134728f22', 10, 0, 3000000, 1580317320, 'Auto SHOP');
INSERT INTO `owned_shops` VALUES ('steam:110000117b4ecd8', 12, 1, 1450000, 1549643682, 'Pit BUll');
INSERT INTO `owned_shops` VALUES ('0', 13, 0, 1450000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('0', 14, 0, 2800000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('steam:1100001170fb22c', 15, 8750, 3000000, 1580314771, 'Best Car Shop');
INSERT INTO `owned_shops` VALUES ('steam:11000013c2b297a', 16, 0, 4350000, 1549643682, 'Doctor');
INSERT INTO `owned_shops` VALUES ('0', 18, 0, 2350000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('steam:110000117b4ecd8', 11, 0, 2250000, 1549643682, 'PIGG.bullet');
INSERT INTO `owned_shops` VALUES ('0', 19, 0, 1500000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('0', 20, 0, 1650000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('0', 17, 0, 1500000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('steam:1100001172af33b', 1, 2535000, 2800000, 1580307426, 'lulu');
INSERT INTO `owned_shops` VALUES ('steam:11000013716cde4', 2, 0, 2200000, 1549643682, 'xiao su');
INSERT INTO `owned_shops` VALUES ('0', 3, 0, 2350000, 1577932638, '0');
INSERT INTO `owned_shops` VALUES ('steam:11000011899ea0f', 4, 0, 2850000, 1580317965, 'PIGG.food');
INSERT INTO `owned_shops` VALUES ('0', 5, 0, 1350000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('0', 6, 0, 2350000, 1580262503, '0');
INSERT INTO `owned_shops` VALUES ('steam:110000115517b6d', 7, 0, 1600000, 1549643682, 'xiwu');
INSERT INTO `owned_shops` VALUES ('0', 8, 0, 2750000, 1580231675, '0');
INSERT INTO `owned_shops` VALUES ('0', 9, 0, 2650000, 1580318592, '0');
INSERT INTO `owned_shops` VALUES ('steam:110000134728f22', 10, 0, 3000000, 1580317320, 'Auto SHOP');
INSERT INTO `owned_shops` VALUES ('steam:110000117b4ecd8', 12, 1, 1450000, 1549643682, 'Pit BUll');
INSERT INTO `owned_shops` VALUES ('0', 13, 0, 1450000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('0', 14, 0, 2800000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('steam:1100001170fb22c', 15, 8750, 3000000, 1580314771, 'Best Car Shop');
INSERT INTO `owned_shops` VALUES ('steam:11000013c2b297a', 16, 0, 4350000, 1549643682, 'Doctor');
INSERT INTO `owned_shops` VALUES ('0', 18, 0, 2350000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('steam:110000117b4ecd8', 11, 0, 2250000, 1549643682, 'PIGG.bullet');
INSERT INTO `owned_shops` VALUES ('0', 19, 0, 1500000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('0', 20, 0, 1650000, 1549643682, '0');
INSERT INTO `owned_shops` VALUES ('0', 17, 0, 1500000, 1549643682, '0');

-- ----------------------------
-- Table structure for owned_vehicles
-- ----------------------------
DROP TABLE IF EXISTS `owned_vehicles`;
CREATE TABLE `owned_vehicles`  (
  `owner` varchar(22) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Etat de la voiture',
  `plate` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `vehicle` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'car',
  `job` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`plate`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of owned_vehicles
-- ----------------------------
INSERT INTO `owned_vehicles` VALUES ('steam:11000010c502cb5', 1, 'AEN 341', '{\"modSmokeEnabled\":1,\"modTank\":-1,\"modFrame\":-1,\"neonColor\":[255,0,255],\"modBackWheels\":7,\"modAirFilter\":-1,\"plate\":\"AEN 341\",\"modHood\":-1,\"tyreSmokeColor\":[254,254,254],\"neonEnabled\":[false,false,false,false],\"plateIndex\":0,\"modTurbo\":1,\"modArchCover\":-1,\"modSpoilers\":-1,\"modHorns\":9,\"color2\":0,\"modTrimB\":-1,\"pearlescentColor\":0,\"extras\":[],\"modFrontWheels\":7,\"modDial\":-1,\"bodyHealth\":884.7,\"modRightFender\":-1,\"modDashboard\":-1,\"fuelLevel\":31.0,\"color1\":111,\"modTrimA\":-1,\"modAerials\":-1,\"model\":1265391242,\"modEngineBlock\":-1,\"modGrille\":-1,\"modVanityPlate\":-1,\"modFender\":-1,\"modWindows\":-1,\"modTransmission\":2,\"modSteeringWheel\":-1,\"modFrontBumper\":-1,\"modSuspension\":-1,\"modSpeakers\":-1,\"modOrnaments\":-1,\"modSideSkirt\":-1,\"modStruts\":-1,\"dirtLevel\":6.3,\"engineHealth\":935.1,\"modAPlate\":-1,\"modShifterLeavers\":-1,\"modEngine\":2,\"modXenon\":1,\"modExhaust\":-1,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"modPlateHolder\":-1,\"wheels\":6,\"modTrunk\":-1,\"modSeats\":-1,\"modArmor\":4,\"wheelColor\":111,\"windowTint\":1,\"modHydrolic\":-1,\"modRearBumper\":-1,\"modLivery\":-1,\"modBrakes\":2}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001172af33b', 0, 'AIH 166', '{\"modSteeringWheel\":-1,\"modDoorSpeaker\":-1,\"modLivery\":-1,\"modSpeakers\":-1,\"modRightFender\":-1,\"modOrnaments\":-1,\"modHorns\":-1,\"modFender\":-1,\"fuelLevel\":35.0,\"modArchCover\":-1,\"bodyHealth\":1000.0,\"modEngine\":-1,\"modAirFilter\":-1,\"modAerials\":-1,\"wheelColor\":96,\"pearlescentColor\":0,\"color1\":0,\"color2\":160,\"modTank\":-1,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"modTurbo\":1,\"modArmor\":-1,\"modShifterLeavers\":-1,\"modSeats\":-1,\"windowTint\":-1,\"modSpoilers\":-1,\"modGrille\":-1,\"modExhaust\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modHood\":-1,\"plateIndex\":4,\"model\":-2026191538,\"tyreSmokeColor\":[255,255,255],\"modStruts\":-1,\"modAPlate\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modTrimA\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"modFrontWheels\":-1,\"modPlateHolder\":-1,\"neonColor\":[255,0,255],\"modRearBumper\":-1,\"modDial\":-1,\"modBrakes\":-1,\"dirtLevel\":4.0,\"modFrame\":-1,\"extras\":[],\"neonEnabled\":[false,false,false,false],\"modDashboard\":-1,\"modSideSkirt\":-1,\"engineHealth\":1000.0,\"modTransmission\":-1,\"plate\":\"AIH 166\",\"modRoof\":-1,\"wheels\":7,\"modXenon\":false}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000013716cde4', 0, 'AKF 108', '{\"modGrille\":-1,\"plateIndex\":3,\"modRearBumper\":-1,\"modSpeakers\":-1,\"bodyHealth\":687.9,\"modArmor\":-1,\"modBrakes\":-1,\"modSteeringWheel\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"color2\":122,\"modSuspension\":-1,\"modTransmission\":-1,\"pearlescentColor\":0,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modShifterLeavers\":-1,\"modFrontWheels\":-1,\"modHood\":-1,\"color1\":122,\"plate\":\"AKF 108\",\"modTurbo\":false,\"modHydrolic\":-1,\"modAPlate\":-1,\"modBackWheels\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modTank\":-1,\"modSpoilers\":-1,\"modWindows\":-1,\"modTrimB\":-1,\"modSmokeEnabled\":false,\"modLivery\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modDoorSpeaker\":-1,\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"modRoof\":-1,\"modAirFilter\":-1,\"fuelLevel\":80.0,\"modStruts\":-1,\"wheels\":0,\"modSeats\":-1,\"windowTint\":-1,\"modPlateHolder\":-1,\"modFrontBumper\":-1,\"dirtLevel\":15.0,\"neonColor\":[255,0,255],\"modEngine\":-1,\"modTrunk\":-1,\"model\":2053223216,\"modArchCover\":-1,\"modOrnaments\":-1,\"modDial\":-1,\"wheelColor\":156,\"modVanityPlate\":-1,\"extras\":{\"11\":false,\"6\":false,\"7\":false,\"1\":false,\"2\":true,\"3\":false,\"4\":false,\"10\":false,\"5\":false,\"12\":false},\"modXenon\":false,\"neonEnabled\":[false,false,false,false],\"modTrimA\":-1,\"engineHealth\":996.0}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000135a51347', 0, 'AOV 647', '{\"color1\":134,\"modHydrolic\":-1,\"color2\":134,\"engineHealth\":1000.0,\"modVanityPlate\":-1,\"modTurbo\":false,\"modHood\":-1,\"neonColor\":[255,0,255],\"modGrille\":-1,\"modAirFilter\":-1,\"modSpoilers\":-1,\"plate\":\"AOV 647\",\"modStruts\":-1,\"modSteeringWheel\":-1,\"modLivery\":3,\"modXenon\":false,\"modFender\":-1,\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"modBrakes\":-1,\"extras\":{\"2\":true,\"1\":false},\"modArchCover\":-1,\"modSpeakers\":-1,\"modEngine\":-1,\"windowTint\":-1,\"fuelLevel\":62.0,\"modTrunk\":-1,\"tyreSmokeColor\":[255,255,255],\"modTank\":-1,\"modOrnaments\":-1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"modAerials\":-1,\"modArmor\":-1,\"modSmokeEnabled\":false,\"modHorns\":-1,\"modFrontBumper\":-1,\"modEngineBlock\":-1,\"modAPlate\":-1,\"modDial\":-1,\"modTransmission\":-1,\"pearlescentColor\":0,\"wheels\":1,\"modDashboard\":-1,\"wheelColor\":156,\"modTrimB\":-1,\"modFrame\":-1,\"modTrimA\":-1,\"model\":2046537925,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"modSeats\":-1,\"plateIndex\":4,\"dirtLevel\":1.0,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modRoof\":-1,\"modWindows\":-1,\"bodyHealth\":1000.0,\"modRightFender\":-1,\"modSideSkirt\":-1,\"modFrontWheels\":-1}', 'car', 'police', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001172af33b', 1, 'AWX 358', '{\"modWindows\":-1,\"modRoof\":-1,\"modPlateHolder\":-1,\"modGrille\":-1,\"modSpeakers\":-1,\"modStruts\":-1,\"modTrunk\":-1,\"bodyHealth\":1000.0,\"modDial\":-1,\"windowTint\":-1,\"modSteeringWheel\":-1,\"modTank\":-1,\"modLivery\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontBumper\":-1,\"dirtLevel\":8.3,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modAerials\":-1,\"modFender\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modHood\":-1,\"model\":-777172681,\"wheels\":0,\"modArchCover\":-1,\"engineHealth\":1000.0,\"modExhaust\":-1,\"modSmokeEnabled\":1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"modRearBumper\":-1,\"modAPlate\":-1,\"modTurbo\":1,\"modEngine\":3,\"modHorns\":-1,\"modSideSkirt\":-1,\"modSeats\":-1,\"modTrimB\":-1,\"modSpoilers\":-1,\"color1\":32,\"modArmor\":4,\"fuelLevel\":27.0,\"modHydrolic\":-1,\"modDashboard\":-1,\"pearlescentColor\":36,\"modTransmission\":2,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modFrame\":-1,\"color2\":5,\"modXenon\":false,\"modBrakes\":2,\"modSuspension\":2,\"extras\":{\"1\":true},\"modTrimA\":-1,\"modRightFender\":-1,\"plate\":\"AWX 358\",\"modDoorSpeaker\":-1,\"wheelColor\":111,\"modBackWheels\":-1,\"plateIndex\":0}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000010c502cb5', 1, 'BTG 033', '{\"modRightFender\":-1,\"modTrimB\":-1,\"modPlateHolder\":-1,\"modSpeakers\":-1,\"model\":2016857647,\"modVanityPlate\":-1,\"bodyHealth\":714.1,\"modStruts\":-1,\"modFrame\":0,\"modOrnaments\":-1,\"modTrimA\":-1,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modBackWheels\":-1,\"modTank\":-1,\"neonColor\":[0,0,255],\"neonEnabled\":[1,1,1,1],\"modShifterLeavers\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"1\":true},\"modSmokeEnabled\":1,\"modAPlate\":-1,\"modDial\":-1,\"plate\":\"BTG 033\",\"fuelLevel\":15.0,\"modGrille\":1,\"modHood\":0,\"modXenon\":1,\"modRoof\":0,\"modFrontWheels\":2,\"color2\":12,\"modTransmission\":2,\"modArmor\":4,\"modHydrolic\":-1,\"tyreSmokeColor\":[255,255,255],\"windowTint\":1,\"modFrontBumper\":2,\"modWindows\":-1,\"dirtLevel\":11.7,\"modEngine\":2,\"modLivery\":-1,\"modAerials\":-1,\"modSuspension\":3,\"modTrunk\":-1,\"modArchCover\":-1,\"engineHealth\":732.2,\"modTurbo\":1,\"color1\":111,\"wheelColor\":111,\"plateIndex\":1,\"modRearBumper\":1,\"wheels\":7,\"modDashboard\":-1,\"modExhaust\":2,\"modBrakes\":2,\"modEngineBlock\":-1,\"modSeats\":-1,\"modSteeringWheel\":-1,\"pearlescentColor\":12,\"modSideSkirt\":0,\"modHorns\":5,\"modFender\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000010722d120', 0, 'BZY 581', '{\"modSeats\":-1,\"modRightFender\":-1,\"model\":-1921167913,\"modLivery\":-1,\"fuelLevel\":65.0,\"modSpoilers\":-1,\"modTank\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modStruts\":-1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modBackWheels\":-1,\"extras\":{\"1\":true,\"2\":false,\"3\":false,\"4\":false},\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modTrimB\":-1,\"pearlescentColor\":0,\"modTrimA\":-1,\"modExhaust\":-1,\"modTrunk\":-1,\"modOrnaments\":-1,\"modFrame\":-1,\"modEngine\":-1,\"modFender\":-1,\"modTurbo\":false,\"color1\":128,\"tyreSmokeColor\":[255,255,255],\"modDashboard\":-1,\"color2\":112,\"modXenon\":false,\"plate\":\"BZY 581\",\"modAPlate\":-1,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"neonColor\":[255,0,255],\"modSmokeEnabled\":false,\"dirtLevel\":10.0,\"modHood\":-1,\"windowTint\":-1,\"modHorns\":-1,\"modArmor\":-1,\"modRoof\":-1,\"plateIndex\":4,\"wheels\":2,\"wheelColor\":96,\"modBrakes\":-1,\"modDial\":-1,\"modAirFilter\":-1,\"modGrille\":-1,\"modSpeakers\":-1,\"engineHealth\":1000.0,\"modShifterLeavers\":-1,\"modRearBumper\":-1,\"modFrontBumper\":-1,\"bodyHealth\":1000.0,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"modSuspension\":-1,\"modTransmission\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000103072384', 1, 'CGN 410', '{\"pearlescentColor\":111,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modAerials\":-1,\"modExhaust\":-1,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modLivery\":-1,\"modBrakes\":-1,\"modSmokeEnabled\":false,\"modAPlate\":-1,\"modFrontBumper\":-1,\"modBackWheels\":-1,\"modFrontWheels\":-1,\"dirtLevel\":8.0,\"wheels\":6,\"color2\":111,\"modVanityPlate\":-1,\"neonEnabled\":[false,false,false,false],\"modRightFender\":-1,\"neonColor\":[255,0,255],\"modTrunk\":-1,\"modSeats\":-1,\"modShifterLeavers\":-1,\"modHorns\":-1,\"modTank\":-1,\"modSideSkirt\":-1,\"modArmor\":-1,\"modEngineBlock\":-1,\"modFrame\":-1,\"modHydrolic\":-1,\"plate\":\"CGN 410\",\"modFender\":-1,\"modPlateHolder\":-1,\"extras\":[],\"modStruts\":-1,\"modSpoilers\":-1,\"fuelLevel\":65.0,\"wheelColor\":156,\"modArchCover\":-1,\"plateIndex\":0,\"modXenon\":false,\"bodyHealth\":1000.0,\"modRearBumper\":-1,\"modTransmission\":-1,\"modSuspension\":-1,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"engineHealth\":1000.0,\"modTrimA\":-1,\"modHood\":-1,\"modGrille\":-1,\"modOrnaments\":-1,\"windowTint\":-1,\"modTurbo\":false,\"model\":743478836,\"color1\":111,\"modSpeakers\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modTrimB\":-1,\"modRoof\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000013c2b297a', 0, 'CIX 554', '{\"modExhaust\":-1,\"modDial\":-1,\"modXenon\":false,\"plateIndex\":4,\"pearlescentColor\":0,\"extras\":{\"7\":true,\"2\":true,\"1\":true},\"fuelLevel\":19.0,\"modRearBumper\":-1,\"modRightFender\":-1,\"dirtLevel\":7.0,\"neonColor\":[255,0,255],\"modFrontBumper\":-1,\"color1\":0,\"wheels\":0,\"modSmokeEnabled\":false,\"plate\":\"CIX 554\",\"modArchCover\":-1,\"modVanityPlate\":-1,\"modTank\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"tyreSmokeColor\":[255,255,255],\"modOrnaments\":-1,\"modArmor\":-1,\"modEngineBlock\":-1,\"windowTint\":-1,\"modDashboard\":-1,\"modHood\":-1,\"color2\":112,\"modSeats\":-1,\"modBrakes\":-1,\"modShifterLeavers\":-1,\"modHorns\":-1,\"modWindows\":-1,\"modTrimB\":-1,\"modGrille\":-1,\"modStruts\":-1,\"modSpeakers\":-1,\"modFender\":-1,\"modTurbo\":false,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modTrunk\":-1,\"modFrame\":-1,\"modEngine\":-1,\"model\":745926877,\"modSteeringWheel\":-1,\"engineHealth\":1000.0,\"modSuspension\":-1,\"modPlateHolder\":-1,\"modBackWheels\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modAPlate\":-1,\"modAerials\":-1,\"modTransmission\":-1,\"modFrontWheels\":-1,\"neonEnabled\":[false,false,false,false],\"wheelColor\":156,\"modRoof\":-1}', 'helicopter', 'ambulance', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000013f295673', 0, 'COL 226', '{\"modFrontBumper\":-1,\"color2\":2,\"modExhaust\":-1,\"modSteeringWheel\":-1,\"modSmokeEnabled\":false,\"modDial\":-1,\"windowTint\":-1,\"modBackWheels\":-1,\"modEngine\":-1,\"modPlateHolder\":-1,\"modRearBumper\":-1,\"modTank\":-1,\"modAPlate\":-1,\"modHood\":-1,\"modTrimA\":-1,\"modWindows\":-1,\"modArchCover\":-1,\"modFrame\":-1,\"modStruts\":-1,\"pearlescentColor\":4,\"fuelLevel\":32.0,\"modOrnaments\":-1,\"modHydrolic\":-1,\"modRoof\":-1,\"modSideSkirt\":-1,\"modEngineBlock\":-1,\"modFender\":-1,\"dirtLevel\":9.0,\"modFrontWheels\":-1,\"plateIndex\":3,\"modTransmission\":-1,\"neonEnabled\":[false,false,false,false],\"modBrakes\":-1,\"wheels\":3,\"modTrunk\":-1,\"modArmor\":-1,\"modXenon\":false,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modRightFender\":-1,\"modGrille\":-1,\"color1\":2,\"modShifterLeavers\":-1,\"modAerials\":-1,\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"model\":1069929536,\"plate\":\"COL 226\",\"modSuspension\":-1,\"modHorns\":-1,\"extras\":{\"11\":false,\"10\":false,\"1\":true,\"12\":false},\"modDashboard\":-1,\"engineHealth\":1000.0,\"modAirFilter\":-1,\"modSeats\":-1,\"modTurbo\":false,\"modSpoilers\":-1,\"bodyHealth\":1000.0,\"modVanityPlate\":-1,\"modLivery\":-1,\"modTrimB\":-1,\"wheelColor\":156}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000103072384', 1, 'DRC 823', '{\"plate\":\"DRC 823\",\"modBrakes\":2,\"modSeats\":-1,\"wheels\":6,\"modHood\":-1,\"pearlescentColor\":147,\"modShifterLeavers\":-1,\"modHydrolic\":-1,\"modEngine\":2,\"color1\":28,\"modVanityPlate\":-1,\"modDoorSpeaker\":-1,\"modTrimA\":-1,\"color2\":147,\"modXenon\":1,\"modSpeakers\":-1,\"windowTint\":2,\"modRearBumper\":0,\"model\":1491277511,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modTurbo\":1,\"modOrnaments\":-1,\"engineHealth\":1000.0,\"modTank\":-1,\"modDial\":-1,\"dirtLevel\":8.7,\"modStruts\":-1,\"modArmor\":4,\"modFrontWheels\":-1,\"modWindows\":-1,\"modTrimB\":-1,\"plateIndex\":1,\"modArchCover\":-1,\"neonColor\":[255,0,255],\"modBackWheels\":-1,\"modTransmission\":2,\"modAirFilter\":-1,\"fuelLevel\":24.0,\"modFender\":-1,\"modAPlate\":-1,\"modSpoilers\":11,\"wheelColor\":28,\"modSmokeEnabled\":1,\"modLivery\":-1,\"modExhaust\":-1,\"modDashboard\":-1,\"modSideSkirt\":7,\"modFrame\":2,\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"tyreSmokeColor\":[255,10,10],\"modRightFender\":-1,\"modRoof\":-1,\"modHorns\":6,\"modSuspension\":-1,\"bodyHealth\":1000.0,\"modAerials\":-1,\"modFrontBumper\":-1,\"modPlateHolder\":-1,\"extras\":[],\"modTrunk\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001172af33b', 0, 'END 225', '{\"modRearBumper\":-1,\"dirtLevel\":13.8,\"modGrille\":-1,\"modTurbo\":false,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modRoof\":-1,\"modTank\":-1,\"plateIndex\":0,\"windowTint\":-1,\"modLivery\":1,\"modArchCover\":-1,\"modTrimB\":-1,\"modVanityPlate\":-1,\"modSideSkirt\":-1,\"modWindows\":-1,\"extras\":[],\"model\":-1683328900,\"modEngineBlock\":-1,\"neonColor\":[255,0,255],\"modHorns\":-1,\"modFrame\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"modSteeringWheel\":-1,\"modSpoilers\":-1,\"modEngine\":1,\"modTrimA\":-1,\"color1\":123,\"modBrakes\":-1,\"modHydrolic\":-1,\"color2\":123,\"fuelLevel\":50.0,\"engineHealth\":851.0,\"modShifterLeavers\":-1,\"modFrontWheels\":-1,\"modArmor\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"wheelColor\":156,\"pearlescentColor\":123,\"modOrnaments\":-1,\"modHood\":-1,\"modAerials\":-1,\"modRightFender\":-1,\"modExhaust\":-1,\"modSmokeEnabled\":1,\"modDashboard\":-1,\"modSeats\":-1,\"modTransmission\":-1,\"bodyHealth\":268.1,\"modDoorSpeaker\":-1,\"modPlateHolder\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"modSpeakers\":-1,\"modXenon\":false,\"modAirFilter\":-1,\"modFender\":-1,\"wheels\":1,\"modDial\":-1,\"plate\":\"END 225\"}', 'car', 'police', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001172af33b', 0, 'EOE 435', '{\"modFrontBumper\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"bodyHealth\":1000.0,\"modHorns\":-1,\"modOrnaments\":-1,\"modSeats\":-1,\"neonColor\":[255,0,255],\"modAirFilter\":-1,\"modTurbo\":false,\"modRoof\":-1,\"modHydrolic\":-1,\"wheelColor\":156,\"color1\":89,\"modTrunk\":-1,\"modFrame\":-1,\"modRearBumper\":-1,\"modBrakes\":-1,\"modPlateHolder\":-1,\"model\":-1372848492,\"modWindows\":-1,\"wheels\":0,\"modHood\":-1,\"modArmor\":-1,\"modSmokeEnabled\":1,\"modEngine\":-1,\"modBackWheels\":-1,\"modSteeringWheel\":-1,\"windowTint\":-1,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"modStruts\":-1,\"modFender\":-1,\"modVanityPlate\":-1,\"modArchCover\":-1,\"modSuspension\":-1,\"extras\":{\"1\":true},\"fuelLevel\":15.0,\"modAPlate\":-1,\"modExhaust\":-1,\"neonEnabled\":[false,false,false,false],\"modXenon\":false,\"modAerials\":-1,\"modTransmission\":-1,\"modGrille\":-1,\"modDial\":-1,\"modTrimB\":-1,\"pearlescentColor\":89,\"modLivery\":-1,\"modDashboard\":-1,\"tyreSmokeColor\":[255,255,255],\"color2\":89,\"modTrimA\":-1,\"engineHealth\":1000.0,\"dirtLevel\":11.0,\"plateIndex\":0,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"modEngineBlock\":-1,\"modRightFender\":-1,\"plate\":\"EOE 435\",\"modShifterLeavers\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001172af33b', 1, 'FCB 739', '{\"modRearBumper\":-1,\"dirtLevel\":9.4,\"modGrille\":-1,\"modTurbo\":1,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modRoof\":-1,\"modTank\":-1,\"model\":-1816146634,\"windowTint\":-1,\"modLivery\":-1,\"modBrakes\":-1,\"modTrimB\":-1,\"modVanityPlate\":-1,\"modSideSkirt\":-1,\"modWindows\":-1,\"extras\":[],\"modBackWheels\":-1,\"modEngineBlock\":-1,\"modRightFender\":-1,\"modHorns\":-1,\"color1\":192,\"modSuspension\":-1,\"modAPlate\":-1,\"modSteeringWheel\":-1,\"modSpoilers\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"modFrame\":-1,\"modPlateHolder\":-1,\"modHydrolic\":-1,\"color2\":128,\"fuelLevel\":23.0,\"modSmokeEnabled\":1,\"modShifterLeavers\":-1,\"modFrontWheels\":-1,\"modArmor\":-1,\"modStruts\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"pearlescentColor\":0,\"modOrnaments\":-1,\"modHood\":-1,\"engineHealth\":994.1,\"wheelColor\":96,\"modEngine\":-1,\"modDial\":-1,\"modExhaust\":-1,\"modDashboard\":-1,\"modTransmission\":-1,\"plateIndex\":4,\"modDoorSpeaker\":-1,\"modXenon\":false,\"modTrunk\":-1,\"modFrontBumper\":-1,\"modSpeakers\":-1,\"bodyHealth\":807.6,\"modAirFilter\":-1,\"modFender\":-1,\"wheels\":7,\"modAerials\":-1,\"plate\":\"FCB 739\"}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000013716cde4', 0, 'FGR 558', '{\"modGrille\":-1,\"plateIndex\":4,\"modRearBumper\":-1,\"modSpeakers\":-1,\"bodyHealth\":650.2,\"modArmor\":-1,\"modBrakes\":-1,\"modSteeringWheel\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"color2\":128,\"modSuspension\":-1,\"modTransmission\":-1,\"pearlescentColor\":0,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modShifterLeavers\":-1,\"modFrontWheels\":-1,\"modHood\":-1,\"color1\":128,\"plate\":\"FGR 558\",\"modTurbo\":false,\"modHydrolic\":-1,\"modAPlate\":-1,\"modBackWheels\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modTank\":-1,\"modSpoilers\":-1,\"modWindows\":-1,\"modTrimB\":-1,\"modSmokeEnabled\":1,\"modLivery\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modDoorSpeaker\":-1,\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"modRoof\":-1,\"modAirFilter\":-1,\"fuelLevel\":44.0,\"modStruts\":-1,\"wheels\":2,\"modSeats\":-1,\"windowTint\":-1,\"modPlateHolder\":-1,\"modFrontBumper\":-1,\"dirtLevel\":9.9,\"neonColor\":[255,0,255],\"modEngine\":-1,\"modTrunk\":-1,\"model\":-1921167913,\"modArchCover\":-1,\"modOrnaments\":-1,\"modDial\":-1,\"wheelColor\":96,\"modVanityPlate\":-1,\"extras\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false},\"modXenon\":false,\"neonEnabled\":[false,false,false,false],\"modTrimA\":-1,\"engineHealth\":997.8}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000103072384', 1, 'FKA 513', '{\"modShifterLeavers\":-1,\"modEngine\":-1,\"dirtLevel\":8.8,\"extras\":{\"2\":false,\"3\":false,\"1\":true},\"modAirFilter\":-1,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modSteeringWheel\":-1,\"modTank\":-1,\"modVanityPlate\":-1,\"modTransmission\":-1,\"modExhaust\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"modFrame\":-1,\"modArchCover\":-1,\"plate\":\"FKA 513\",\"modAPlate\":-1,\"wheelColor\":96,\"fuelLevel\":22.0,\"model\":1084803268,\"modTrunk\":-1,\"bodyHealth\":1000.0,\"color1\":89,\"modTrimA\":-1,\"color2\":89,\"modHorns\":-1,\"modTurbo\":1,\"modFender\":-1,\"modSpeakers\":-1,\"modArmor\":-1,\"modBackWheels\":-1,\"modStruts\":-1,\"neonEnabled\":[1,1,1,1],\"modSuspension\":-1,\"modSpoilers\":-1,\"plateIndex\":4,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modSeats\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"engineHealth\":1000.0,\"modTrimB\":-1,\"modSideSkirt\":-1,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modDashboard\":-1,\"modRoof\":-1,\"neonColor\":[255,255,255],\"modXenon\":1,\"tyreSmokeColor\":[255,255,50],\"modLivery\":1,\"modFrontBumper\":-1,\"modHood\":-1,\"modGrille\":-1,\"wheels\":7,\"modAerials\":-1,\"modBrakes\":-1,\"modDial\":-1,\"pearlescentColor\":89,\"windowTint\":0}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000013c2b297a', 0, 'FUE 911', '{\"modFender\":-1,\"modFrontBumper\":-1,\"extras\":{\"1\":true},\"windowTint\":1,\"modTurbo\":1,\"modLivery\":-1,\"modSpoilers\":-1,\"wheels\":0,\"modSmokeEnabled\":1,\"modXenon\":false,\"modRearBumper\":-1,\"modTank\":-1,\"modEngineBlock\":-1,\"neonColor\":[255,0,255],\"modHorns\":-1,\"plateIndex\":0,\"modAPlate\":-1,\"modBrakes\":2,\"modWindows\":-1,\"model\":-1372848492,\"engineHealth\":1000.0,\"modSideSkirt\":-1,\"modSpeakers\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"modTrimB\":-1,\"pearlescentColor\":53,\"modVanityPlate\":-1,\"modEngine\":3,\"modAerials\":-1,\"fuelLevel\":28.0,\"tyreSmokeColor\":[255,255,255],\"modHood\":-1,\"modFrame\":-1,\"modTrimA\":-1,\"modAirFilter\":-1,\"modDial\":-1,\"modRightFender\":-1,\"modArmor\":-1,\"modBackWheels\":-1,\"wheelColor\":156,\"modDoorSpeaker\":-1,\"modRoof\":-1,\"modTrunk\":-1,\"color2\":89,\"modPlateHolder\":-1,\"bodyHealth\":1000.0,\"modHydrolic\":-1,\"modStruts\":-1,\"modDashboard\":-1,\"modSuspension\":3,\"modShifterLeavers\":-1,\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modTransmission\":2,\"modFrontWheels\":-1,\"modSeats\":-1,\"plate\":\"FUE 911\",\"modGrille\":-1,\"modArchCover\":-1,\"color1\":159,\"dirtLevel\":8.5}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001172af33b', 0, 'FYS 550', '{\"modSteeringWheel\":-1,\"modSpeakers\":-1,\"modSuspension\":-1,\"modHorns\":-1,\"modVanityPlate\":-1,\"modTransmission\":-1,\"plate\":\"FYS 550\",\"modFrontWheels\":-1,\"modEngine\":-1,\"modHydrolic\":-1,\"modGrille\":-1,\"modFender\":-1,\"modTrimB\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modTrimA\":-1,\"modExhaust\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modXenon\":false,\"color1\":128,\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"modRightFender\":-1,\"modWindows\":-1,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"modFrontBumper\":-1,\"modPlateHolder\":-1,\"modTurbo\":false,\"pearlescentColor\":0,\"modArchCover\":-1,\"extras\":{\"3\":true,\"10\":true,\"11\":false,\"2\":true},\"color2\":128,\"modAerials\":-1,\"engineHealth\":1000.0,\"plateIndex\":4,\"modSpoilers\":-1,\"modRoof\":-1,\"tyreSmokeColor\":[255,255,255],\"modBrakes\":-1,\"modArmor\":-1,\"modSeats\":-1,\"modTank\":-1,\"wheelColor\":96,\"wheels\":0,\"modSmokeEnabled\":false,\"modRearBumper\":-1,\"dirtLevel\":1.0,\"modHood\":-1,\"modSideSkirt\":-1,\"modLivery\":0,\"modStruts\":-1,\"modAirFilter\":-1,\"fuelLevel\":47.0,\"windowTint\":-1,\"modDial\":-1,\"bodyHealth\":1000.0,\"model\":121217782,\"modFrame\":-1,\"modDashboard\":-1,\"modAPlate\":-1}', 'car', 'police', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001172af33b', 0, 'FYZ 091', '{\"engineHealth\":1000.0,\"modTrimB\":-1,\"modFrontBumper\":-1,\"modGrille\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"modAirFilter\":-1,\"modHorns\":-1,\"modFrame\":-1,\"extras\":[],\"modStruts\":-1,\"modShifterLeavers\":-1,\"modAerials\":-1,\"tyreSmokeColor\":[255,255,255],\"modTransmission\":-1,\"modBackWheels\":-1,\"modTurbo\":false,\"modSmokeEnabled\":1,\"wheelColor\":96,\"modWindows\":-1,\"model\":1999409339,\"modArchCover\":-1,\"modFender\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modRearBumper\":-1,\"modDial\":-1,\"pearlescentColor\":0,\"modSteeringWheel\":-1,\"modLivery\":0,\"modRightFender\":-1,\"modPlateHolder\":-1,\"modXenon\":false,\"plateIndex\":4,\"modHydrolic\":-1,\"modFrontWheels\":-1,\"neonEnabled\":[false,false,false,false],\"wheels\":7,\"modSuspension\":-1,\"fuelLevel\":40.0,\"modRoof\":-1,\"dirtLevel\":5.0,\"modArmor\":-1,\"modSpoilers\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modSpeakers\":-1,\"modEngine\":-1,\"modHood\":-1,\"modOrnaments\":-1,\"plate\":\"FYZ 091\",\"modTank\":-1,\"modAPlate\":-1,\"color1\":224,\"modBrakes\":-1,\"modDashboard\":-1,\"color2\":112,\"modSideSkirt\":-1,\"bodyHealth\":1000.0,\"modSeats\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000011899ea0f', 0, 'FZC 738', '{\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"modTurbo\":false,\"modTrimB\":-1,\"wheels\":7,\"extras\":[],\"wheelColor\":156,\"modEngineBlock\":-1,\"plateIndex\":3,\"modTrunk\":-1,\"modHood\":-1,\"engineHealth\":886.3,\"modTransmission\":-1,\"modWindows\":-1,\"modBrakes\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modExhaust\":-1,\"windowTint\":-1,\"bodyHealth\":845.6,\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"modRearBumper\":-1,\"color2\":134,\"fuelLevel\":46.0,\"modTrimA\":-1,\"modPlateHolder\":-1,\"modDial\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modAPlate\":-1,\"dirtLevel\":15.0,\"model\":338562499,\"modLivery\":-1,\"modRoof\":-1,\"modArmor\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"modXenon\":false,\"modSuspension\":-1,\"modSmokeEnabled\":1,\"modVanityPlate\":-1,\"pearlescentColor\":0,\"modAerials\":-1,\"modHorns\":-1,\"modHydrolic\":-1,\"modTank\":-1,\"modSideSkirt\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"color1\":134,\"neonColor\":[255,0,255],\"modDashboard\":-1,\"modArchCover\":-1,\"plate\":\"FZC 738\",\"modEngine\":-1,\"modSpeakers\":-1,\"modStruts\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001172af33b', 1, 'GLV 676', '{\"modTrimA\":-1,\"modSpeakers\":-1,\"modWindows\":-1,\"modRightFender\":-1,\"modDoorSpeaker\":-1,\"plate\":\"GLV 676\",\"modHood\":-1,\"modAerials\":-1,\"modXenon\":false,\"bodyHealth\":1000.0,\"modSeats\":-1,\"modTransmission\":-1,\"color1\":192,\"modTrunk\":-1,\"modSmokeEnabled\":false,\"model\":1800114772,\"pearlescentColor\":0,\"modEngine\":-1,\"modBrakes\":-1,\"modAirFilter\":-1,\"modBackWheels\":-1,\"extras\":{\"1\":true},\"modVanityPlate\":-1,\"modArchCover\":-1,\"modDashboard\":-1,\"modRearBumper\":-1,\"color2\":160,\"modGrille\":-1,\"modFrame\":-1,\"modTank\":-1,\"modPlateHolder\":-1,\"dirtLevel\":2.0,\"modFrontWheels\":-1,\"modFrontBumper\":-1,\"wheels\":7,\"modSpoilers\":-1,\"engineHealth\":1000.0,\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modTurbo\":false,\"modRoof\":-1,\"fuelLevel\":16.0,\"modDial\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"modArmor\":-1,\"modSteeringWheel\":-1,\"modStruts\":-1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"modTrimB\":-1,\"modLivery\":-1,\"modHorns\":-1,\"modAPlate\":-1,\"wheelColor\":96,\"modSideSkirt\":-1,\"windowTint\":-1,\"modShifterLeavers\":-1,\"plateIndex\":4,\"modHydrolic\":-1}', 'car', 'police', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000013bd36b18', 0, 'GMR 650', '{\"modArchCover\":-1,\"fuelLevel\":100.0,\"modSteeringWheel\":-1,\"windowTint\":-1,\"modSeats\":-1,\"modAPlate\":-1,\"modTrimA\":-1,\"modEngine\":-1,\"modTrunk\":-1,\"modSpoilers\":-1,\"modFrame\":-1,\"wheelColor\":156,\"modLivery\":0,\"plate\":\"GMR 650\",\"modAerials\":-1,\"modArmor\":-1,\"modStruts\":-1,\"modHydrolic\":-1,\"modFrontWheels\":-1,\"modFender\":-1,\"modGrille\":-1,\"modDoorSpeaker\":-1,\"modVanityPlate\":-1,\"modEngineBlock\":-1,\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modBackWheels\":-1,\"dirtLevel\":6.0,\"modSmokeEnabled\":false,\"modFrontBumper\":-1,\"bodyHealth\":1000.0,\"modRearBumper\":-1,\"color1\":134,\"modDial\":-1,\"wheels\":0,\"modShifterLeavers\":-1,\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"engineHealth\":1000.0,\"extras\":{\"2\":true,\"10\":true,\"1\":true,\"11\":true,\"7\":true},\"modTransmission\":-1,\"model\":353883353,\"modXenon\":false,\"modTurbo\":false,\"modBrakes\":-1,\"modSpeakers\":-1,\"modAirFilter\":-1,\"modWindows\":-1,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modHood\":-1,\"pearlescentColor\":112,\"tyreSmokeColor\":[255,255,255],\"modTank\":-1,\"modPlateHolder\":-1,\"modRoof\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"color2\":0,\"plateIndex\":4}', 'helicopter', 'police', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000132555dfb', 0, 'GNE 817', '{\"modArchCover\":-1,\"fuelLevel\":57.0,\"modSteeringWheel\":-1,\"windowTint\":-1,\"modSeats\":-1,\"plate\":\"GNE 817\",\"modStruts\":-1,\"modEngine\":-1,\"modTrunk\":-1,\"modSpoilers\":-1,\"modDial\":-1,\"wheelColor\":156,\"modLivery\":7,\"model\":1912215274,\"modAerials\":-1,\"plateIndex\":4,\"color1\":111,\"bodyHealth\":1000.0,\"modXenon\":false,\"modFender\":-1,\"modGrille\":-1,\"modDoorSpeaker\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"modExhaust\":-1,\"wheels\":0,\"modBackWheels\":-1,\"dirtLevel\":3.0,\"modAPlate\":-1,\"modVanityPlate\":-1,\"modFrontBumper\":-1,\"modArmor\":-1,\"modShifterLeavers\":-1,\"modFrontWheels\":-1,\"neonColor\":[255,0,255],\"modFrame\":-1,\"modTurbo\":false,\"modHorns\":-1,\"pearlescentColor\":1,\"modSuspension\":-1,\"engineHealth\":1000.0,\"extras\":{\"12\":false,\"1\":true},\"modTransmission\":-1,\"modSideSkirt\":-1,\"modSmokeEnabled\":false,\"modWindows\":-1,\"modRearBumper\":-1,\"modSpeakers\":-1,\"neonEnabled\":[false,false,false,false],\"modDashboard\":-1,\"modHydrolic\":-1,\"modRightFender\":-1,\"modHood\":-1,\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"modTank\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"color2\":0,\"modPlateHolder\":-1}', 'car', 'police', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000134728f22', 0, 'GZJ 603', '{\"modFrontBumper\":-1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modTank\":-1,\"modTransmission\":2,\"modSmokeEnabled\":1,\"modDial\":-1,\"modPlateHolder\":-1,\"windowTint\":-1,\"modAirFilter\":-1,\"pearlescentColor\":53,\"engineHealth\":1000.0,\"modVanityPlate\":-1,\"extras\":[],\"neonEnabled\":[false,false,false,false],\"modXenon\":false,\"color2\":64,\"modArmor\":-1,\"modBrakes\":-1,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"modSpeakers\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"modLivery\":-1,\"modSeats\":-1,\"bodyHealth\":1000.0,\"dirtLevel\":0.0,\"modGrille\":-1,\"color1\":64,\"modFender\":-1,\"modTrimB\":-1,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":-1,\"plateIndex\":3,\"modExhaust\":-1,\"modHorns\":-1,\"modTrunk\":-1,\"modArchCover\":-1,\"fuelLevel\":30.0,\"modFrontWheels\":-1,\"modSideSkirt\":-1,\"modHydrolic\":-1,\"model\":-344943009,\"modShifterLeavers\":-1,\"wheelColor\":156,\"plate\":\"GZJ 603\",\"modSpoilers\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"modRearBumper\":-1,\"modAPlate\":-1,\"wheels\":0,\"modBackWheels\":-1,\"modHood\":-1,\"modTurbo\":false,\"neonColor\":[255,0,255],\"modAerials\":-1,\"modStruts\":-1,\"modRoof\":-1,\"modEngine\":1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000013c2b297a', 0, 'GZN 449', '{\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"modTurbo\":false,\"modTrimB\":-1,\"wheels\":7,\"extras\":{\"1\":false},\"wheelColor\":111,\"modEngineBlock\":-1,\"plateIndex\":0,\"modTrunk\":-1,\"modSmokeEnabled\":false,\"modHood\":-1,\"modTransmission\":-1,\"modWindows\":-1,\"modBrakes\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modArchCover\":-1,\"windowTint\":-1,\"bodyHealth\":994.5,\"modSuspension\":-1,\"modHorns\":-1,\"modSpoilers\":-1,\"color2\":5,\"fuelLevel\":12.0,\"modTrimA\":-1,\"modPlateHolder\":-1,\"modDial\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":38,\"model\":819197656,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":8.5,\"modFrontWheels\":-1,\"engineHealth\":992.5,\"modRoof\":-1,\"modArmor\":-1,\"modTank\":-1,\"modGrille\":-1,\"modXenon\":false,\"tyreSmokeColor\":[255,255,255],\"modDoorSpeaker\":-1,\"modExhaust\":-1,\"modLivery\":-1,\"modAerials\":-1,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modSeats\":-1,\"modSideSkirt\":-1,\"neonColor\":[255,0,255],\"modFrame\":-1,\"color1\":27,\"modOrnaments\":-1,\"modDashboard\":-1,\"modAPlate\":-1,\"plate\":\"GZN 449\",\"modEngine\":-1,\"modSpeakers\":-1,\"modStruts\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000103072384', 1, 'HGE 780', '{\"modBrakes\":2,\"modGrille\":-1,\"neonEnabled\":[false,false,false,false],\"color1\":27,\"modLivery\":-1,\"modFender\":-1,\"modTrimA\":-1,\"modExhaust\":1,\"plate\":\"HGE 780\",\"modTurbo\":1,\"modTrunk\":-1,\"modFrame\":-1,\"modRightFender\":-1,\"bodyHealth\":997.8,\"dirtLevel\":3.4,\"fuelLevel\":47.0,\"plateIndex\":1,\"extras\":[],\"modBackWheels\":-1,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"wheelColor\":156,\"modAerials\":-1,\"color2\":28,\"modEngine\":2,\"modSideSkirt\":0,\"modHydrolic\":-1,\"modSpeakers\":-1,\"modRoof\":-1,\"pearlescentColor\":28,\"modArmor\":4,\"modAirFilter\":-1,\"modDashboard\":-1,\"modSeats\":-1,\"modPlateHolder\":-1,\"modTank\":-1,\"modEngineBlock\":-1,\"modDial\":-1,\"modSteeringWheel\":-1,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"modRearBumper\":-1,\"model\":-344943009,\"modSuspension\":3,\"modFrontWheels\":-1,\"modSpoilers\":2,\"modTransmission\":2,\"engineHealth\":997.0,\"modTrimB\":-1,\"modAPlate\":-1,\"modOrnaments\":-1,\"tyreSmokeColor\":[255,10,10],\"modFrontBumper\":-1,\"wheels\":0,\"modHorns\":-1,\"neonColor\":[255,0,255],\"windowTint\":3,\"modXenon\":1,\"modWindows\":-1,\"modHood\":0}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000010c502cb5', 1, 'HOQ 784', '{\"modFrontBumper\":-1,\"modDashboard\":-1,\"modRearBumper\":-1,\"modGrille\":-1,\"dirtLevel\":4.3,\"modAPlate\":-1,\"neonColor\":[255,0,255],\"modFender\":-1,\"modFrontWheels\":-1,\"modEngine\":-1,\"modArmor\":-1,\"modHydrolic\":-1,\"modExhaust\":-1,\"windowTint\":-1,\"modHood\":-1,\"modSteeringWheel\":-1,\"wheelColor\":111,\"modArchCover\":-1,\"engineHealth\":999.6,\"pearlescentColor\":5,\"bodyHealth\":979.1,\"modSpeakers\":-1,\"modAerials\":-1,\"modDoorSpeaker\":-1,\"modTurbo\":false,\"modVanityPlate\":-1,\"plateIndex\":0,\"modSideSkirt\":-1,\"tyreSmokeColor\":[255,255,255],\"modBackWheels\":-1,\"fuelLevel\":56.0,\"modPlateHolder\":-1,\"model\":345756458,\"modXenon\":false,\"color2\":12,\"modSpoilers\":-1,\"modTank\":-1,\"modTrunk\":-1,\"modAirFilter\":-1,\"modStruts\":-1,\"modDial\":-1,\"extras\":{\"5\":true,\"4\":true,\"3\":true,\"2\":true,\"1\":true,\"7\":true,\"6\":true},\"plate\":\"HOQ 784\",\"wheels\":0,\"modRoof\":-1,\"modTrimA\":-1,\"color1\":12,\"modBrakes\":-1,\"modTransmission\":-1,\"modOrnaments\":-1,\"modSeats\":-1,\"modEngineBlock\":-1,\"modShifterLeavers\":-1,\"modSuspension\":-1,\"modSmokeEnabled\":false,\"modLivery\":-1,\"modWindows\":-1,\"modFrame\":-1,\"modHorns\":-1,\"neonEnabled\":[false,false,false,false],\"modTrimB\":-1,\"modRightFender\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001172af33b', 0, 'IOS 625', '{\"modSteeringWheel\":-1,\"modSuspension\":-1,\"neonColor\":[255,0,255],\"modFrontWheels\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modDashboard\":-1,\"modOrnaments\":-1,\"modHood\":-1,\"pearlescentColor\":0,\"modLivery\":-1,\"modGrille\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"10\":false,\"5\":false,\"7\":true,\"2\":false,\"12\":true},\"modFender\":-1,\"modHorns\":-1,\"modEngineBlock\":-1,\"modTurbo\":false,\"modTrimB\":-1,\"modAPlate\":-1,\"modEngine\":-1,\"modAerials\":-1,\"engineHealth\":1000.0,\"modHydrolic\":-1,\"neonEnabled\":[false,false,false,false],\"modSideSkirt\":-1,\"fuelLevel\":54.0,\"windowTint\":-1,\"model\":-974922913,\"color2\":134,\"modFrame\":-1,\"modShifterLeavers\":-1,\"modPlateHolder\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"modArmor\":-1,\"modBackWheels\":-1,\"modSpoilers\":-1,\"modSmokeEnabled\":false,\"modRoof\":-1,\"modSeats\":-1,\"modRearBumper\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"bodyHealth\":1000.0,\"wheels\":0,\"wheelColor\":0,\"modBrakes\":-1,\"dirtLevel\":6.0,\"modFrontBumper\":-1,\"modVanityPlate\":-1,\"modAirFilter\":-1,\"modDial\":-1,\"modXenon\":false,\"plateIndex\":4,\"tyreSmokeColor\":[255,255,255],\"modArchCover\":-1,\"plate\":\"IOS 625\",\"color1\":134,\"modSpeakers\":-1,\"modRightFender\":-1,\"modTank\":-1}', 'car', 'ambulance', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000010c502cb5', 1, 'ITH 058', '{\"dirtLevel\":9.4,\"modStruts\":-1,\"modHood\":-1,\"modDoorSpeaker\":-1,\"modTransmission\":2,\"modBackWheels\":-1,\"modFender\":-1,\"plate\":\"ITH 058\",\"modFrontWheels\":0,\"modDial\":-1,\"modRightFender\":-1,\"color1\":148,\"modArmor\":4,\"modTrimB\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modSmokeEnabled\":1,\"extras\":{\"10\":false},\"modEngine\":2,\"plateIndex\":0,\"pearlescentColor\":95,\"modHorns\":10,\"windowTint\":1,\"modAerials\":-1,\"model\":1348744438,\"modOrnaments\":-1,\"modSideSkirt\":-1,\"modLivery\":-1,\"modTrimA\":-1,\"modBrakes\":2,\"modArchCover\":-1,\"modGrille\":-1,\"modXenon\":1,\"modPlateHolder\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"engineHealth\":1000.0,\"tyreSmokeColor\":[254,254,254],\"modFrame\":-1,\"modDashboard\":-1,\"modExhaust\":-1,\"modSpoilers\":-1,\"modWindows\":-1,\"modTank\":-1,\"modFrontBumper\":-1,\"modEngineBlock\":-1,\"wheels\":0,\"wheelColor\":112,\"modTrunk\":-1,\"modTurbo\":1,\"modRoof\":-1,\"modAirFilter\":-1,\"modHydrolic\":-1,\"modSuspension\":3,\"modShifterLeavers\":-1,\"bodyHealth\":1000.0,\"neonEnabled\":[1,1,1,1],\"neonColor\":[0,150,255],\"modVanityPlate\":-1,\"modRearBumper\":-1,\"fuelLevel\":30.0,\"color2\":0}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000135a51347', 0, 'IXM 267', '{\"color1\":134,\"modHydrolic\":-1,\"color2\":134,\"engineHealth\":1000.0,\"modVanityPlate\":-1,\"modTurbo\":false,\"modHood\":-1,\"neonColor\":[255,0,255],\"modGrille\":-1,\"modAirFilter\":-1,\"modSpoilers\":-1,\"plate\":\"IXM 267\",\"modStruts\":-1,\"modSteeringWheel\":-1,\"modLivery\":0,\"modXenon\":false,\"modFender\":-1,\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"modBrakes\":-1,\"extras\":{\"2\":true,\"1\":false},\"modArchCover\":-1,\"modSpeakers\":-1,\"modEngine\":-1,\"windowTint\":-1,\"fuelLevel\":46.0,\"modTrunk\":-1,\"tyreSmokeColor\":[255,255,255],\"modTank\":-1,\"modOrnaments\":-1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"modAerials\":-1,\"modArmor\":-1,\"modSmokeEnabled\":false,\"modHorns\":-1,\"modFrontBumper\":-1,\"modEngineBlock\":-1,\"modAPlate\":-1,\"modDial\":-1,\"modTransmission\":-1,\"pearlescentColor\":0,\"wheels\":1,\"modDashboard\":-1,\"wheelColor\":156,\"modTrimB\":-1,\"modFrame\":-1,\"modTrimA\":-1,\"model\":2046537925,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"modSeats\":-1,\"plateIndex\":4,\"dirtLevel\":3.0,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modRoof\":-1,\"modWindows\":-1,\"bodyHealth\":1000.0,\"modRightFender\":-1,\"modSideSkirt\":-1,\"modFrontWheels\":-1}', 'car', 'police', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001172af33b', 1, 'IYY 691', '{\"modEngine\":-1,\"modDial\":-1,\"modTurbo\":false,\"modRoof\":-1,\"modStruts\":-1,\"modBackWheels\":-1,\"modSteeringWheel\":-1,\"modArmor\":-1,\"modFrontWheels\":-1,\"engineHealth\":996.0,\"color2\":1,\"modFrontBumper\":-1,\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"modHydrolic\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"modOrnaments\":-1,\"modBrakes\":-1,\"modXenon\":false,\"modAerials\":-1,\"tyreSmokeColor\":[255,255,255],\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"fuelLevel\":52.0,\"modLivery\":-1,\"plate\":\"IYY 691\",\"modSpeakers\":-1,\"modAirFilter\":-1,\"modExhaust\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"modSideSkirt\":-1,\"modEngineBlock\":-1,\"modWindows\":-1,\"pearlescentColor\":1,\"modDashboard\":-1,\"modTrunk\":-1,\"modShifterLeavers\":-1,\"modRearBumper\":-1,\"modGrille\":-1,\"modSmokeEnabled\":1,\"bodyHealth\":989.9,\"modFrame\":-1,\"color1\":42,\"model\":1886712733,\"wheels\":0,\"modRightFender\":-1,\"modSuspension\":-1,\"dirtLevel\":7.6,\"extras\":[],\"modFender\":-1,\"modTank\":-1,\"modAPlate\":-1,\"modHood\":-1,\"modSpoilers\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"modVanityPlate\":-1,\"plateIndex\":3,\"modPlateHolder\":-1,\"wheelColor\":156}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000132555dfb', 0, 'JIV 464', '{\"plate\":\"JIV 464\",\"modWindows\":-1,\"modSideSkirt\":-1,\"model\":121217782,\"modTurbo\":false,\"modGrille\":-1,\"modShifterLeavers\":-1,\"modXenon\":false,\"wheelColor\":96,\"modFrontBumper\":-1,\"modArmor\":-1,\"modHood\":-1,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modRoof\":-1,\"wheels\":0,\"modExhaust\":-1,\"modDashboard\":-1,\"modTank\":-1,\"fuelLevel\":57.0,\"modTrimA\":-1,\"modTransmission\":-1,\"color2\":176,\"modAPlate\":-1,\"modSuspension\":-1,\"modSpeakers\":-1,\"modFrame\":-1,\"modFrontWheels\":-1,\"modTrimB\":-1,\"dirtLevel\":15.0,\"modSpoilers\":-1,\"modSeats\":-1,\"modTrunk\":-1,\"modSteeringWheel\":-1,\"modSmokeEnabled\":1,\"modVanityPlate\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modBrakes\":-1,\"pearlescentColor\":0,\"modBackWheels\":-1,\"color1\":128,\"modDial\":-1,\"modRearBumper\":-1,\"engineHealth\":875.0,\"modPlateHolder\":-1,\"modHydrolic\":-1,\"modEngineBlock\":-1,\"modFender\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"windowTint\":-1,\"extras\":{\"11\":false,\"10\":true,\"2\":false,\"3\":false},\"bodyHealth\":900.0,\"modArchCover\":-1,\"modLivery\":0,\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"plateIndex\":4,\"modHorns\":-1,\"neonColor\":[255,0,255],\"modAerials\":-1}', 'car', 'police', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001172af33b', 1, 'JPQ 706', '{\"modXenon\":false,\"modSideSkirt\":-1,\"modTransmission\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modAPlate\":-1,\"modAerials\":-1,\"modEngine\":-1,\"modArmor\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"color2\":4,\"modVanityPlate\":-1,\"modTrunk\":-1,\"fuelLevel\":55.0,\"modFrontBumper\":-1,\"modTank\":-1,\"modFrame\":-1,\"modRightFender\":-1,\"model\":1549126457,\"modSuspension\":-1,\"bodyHealth\":966.5,\"modStruts\":-1,\"modTrimB\":-1,\"engineHealth\":963.1,\"modOrnaments\":-1,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"modRoof\":-1,\"modDial\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"plateIndex\":0,\"modEngineBlock\":-1,\"color1\":0,\"modTrimA\":-1,\"wheelColor\":112,\"windowTint\":-1,\"modHood\":-1,\"modGrille\":-1,\"modFrontWheels\":-1,\"modSmokeEnabled\":1,\"modSteeringWheel\":-1,\"modHorns\":-1,\"modShifterLeavers\":-1,\"modTurbo\":false,\"modRearBumper\":-1,\"extras\":[],\"dirtLevel\":14.2,\"modExhaust\":-1,\"plate\":\"JPQ 706\",\"modLivery\":-1,\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"wheels\":5,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"pearlescentColor\":5,\"modPlateHolder\":-1,\"modSpoilers\":-1,\"modWindows\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000103072384', 1, 'KDX 888', '{\"modRightFender\":-1,\"modShifterLeavers\":-1,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"modHorns\":33,\"bodyHealth\":997.0,\"modSuspension\":3,\"wheels\":5,\"modAerials\":-1,\"model\":1723137093,\"modHood\":-1,\"modTrimA\":-1,\"modTurbo\":1,\"wheelColor\":156,\"modAPlate\":-1,\"modPlateHolder\":-1,\"modGrille\":-1,\"color2\":147,\"modExhaust\":-1,\"modLivery\":-1,\"modSteeringWheel\":-1,\"modRoof\":-1,\"modArchCover\":-1,\"modBrakes\":2,\"tyreSmokeColor\":[255,255,50],\"modTrunk\":-1,\"plate\":\"KDX 888\",\"modArmor\":4,\"plateIndex\":2,\"modSideSkirt\":-1,\"dirtLevel\":2.3,\"windowTint\":4,\"modFender\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"engineHealth\":1000.0,\"fuelLevel\":48.0,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modHydrolic\":-1,\"modEngineBlock\":-1,\"modDial\":-1,\"modVanityPlate\":-1,\"modSmokeEnabled\":1,\"modFrame\":-1,\"neonEnabled\":[1,1,1,1],\"modXenon\":1,\"pearlescentColor\":147,\"modStruts\":-1,\"modDashboard\":-1,\"modTransmission\":2,\"neonColor\":[204,204,0],\"modTank\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"color1\":89,\"extras\":{\"12\":true},\"modRearBumper\":-1,\"modSpoilers\":-1,\"modEngine\":2,\"modBackWheels\":-1,\"modDoorSpeaker\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001170fb22c', 0, 'LEV 661', '{\"modAerials\":-1,\"modTurbo\":false,\"modPlateHolder\":-1,\"modHood\":-1,\"modAirFilter\":-1,\"modSpoilers\":-1,\"fuelLevel\":50.0,\"modSideSkirt\":-1,\"modSpeakers\":-1,\"modTrunk\":-1,\"model\":-1809822327,\"modFrontBumper\":-1,\"neonColor\":[255,0,255],\"modSeats\":-1,\"modVanityPlate\":-1,\"modXenon\":false,\"modEngine\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"engineHealth\":1000.0,\"modLivery\":-1,\"bodyHealth\":1000.0,\"modStruts\":-1,\"modSuspension\":-1,\"modBackWheels\":-1,\"windowTint\":-1,\"color1\":4,\"modRoof\":-1,\"modShifterLeavers\":-1,\"modGrille\":-1,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modDial\":-1,\"modTrimB\":-1,\"modSteeringWheel\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"wheelColor\":156,\"modHydrolic\":-1,\"neonEnabled\":[false,false,false,false],\"tyreSmokeColor\":[255,255,255],\"modDoorSpeaker\":-1,\"modExhaust\":-1,\"modAPlate\":-1,\"plateIndex\":0,\"modSmokeEnabled\":false,\"modTank\":-1,\"extras\":{\"11\":true,\"10\":false},\"modWindows\":-1,\"modFender\":-1,\"pearlescentColor\":111,\"modDashboard\":-1,\"modArchCover\":-1,\"modTransmission\":-1,\"modBrakes\":-1,\"modArmor\":-1,\"wheels\":5,\"modRightFender\":-1,\"modRearBumper\":-1,\"color2\":4,\"dirtLevel\":5.0,\"plate\":\"LEV 661\"}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000103072384', 1, 'LYR 486', '{\"modShifterLeavers\":-1,\"modEngine\":2,\"dirtLevel\":15.0,\"extras\":[],\"modAirFilter\":7,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modSteeringWheel\":-1,\"modTank\":-1,\"modVanityPlate\":-1,\"modTransmission\":2,\"modExhaust\":4,\"modWindows\":-1,\"modFrontWheels\":16,\"modFrame\":1,\"modArchCover\":-1,\"plate\":\"LYR 486\",\"modAPlate\":-1,\"wheelColor\":29,\"fuelLevel\":13.0,\"model\":-295689028,\"modTrunk\":-1,\"bodyHealth\":999.5,\"color1\":89,\"modTrimA\":-1,\"color2\":89,\"modHorns\":1,\"modTurbo\":1,\"modFender\":-1,\"modSpeakers\":-1,\"modArmor\":4,\"modBackWheels\":-1,\"modStruts\":11,\"neonEnabled\":[1,1,1,1],\"modSuspension\":3,\"modSpoilers\":10,\"plateIndex\":0,\"modEngineBlock\":3,\"modSmokeEnabled\":1,\"modSeats\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"engineHealth\":999.3,\"modTrimB\":1,\"modSideSkirt\":-1,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modDashboard\":-1,\"modRoof\":-1,\"neonColor\":[204,204,0],\"modXenon\":1,\"tyreSmokeColor\":[255,255,50],\"modLivery\":-1,\"modFrontBumper\":3,\"modHood\":8,\"modGrille\":3,\"wheels\":7,\"modAerials\":1,\"modBrakes\":2,\"modDial\":-1,\"pearlescentColor\":89,\"windowTint\":4}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001172af33b', 0, 'MFS 858', '{\"modSpeakers\":-1,\"modDial\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modDashboard\":-1,\"modAirFilter\":-1,\"modTank\":-1,\"modSideSkirt\":-1,\"neonColor\":[255,0,255],\"windowTint\":-1,\"modTrimA\":-1,\"modBackWheels\":-1,\"modTrunk\":-1,\"modRearBumper\":-1,\"modSmokeEnabled\":1,\"bodyHealth\":1000.0,\"color2\":134,\"modFender\":-1,\"modShifterLeavers\":-1,\"plate\":\"MFS 858\",\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"modVanityPlate\":-1,\"model\":2046537925,\"modSuspension\":-1,\"plateIndex\":4,\"modXenon\":false,\"engineHealth\":1000.0,\"modSpoilers\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"wheelColor\":156,\"modGrille\":-1,\"modHood\":-1,\"wheels\":1,\"modFrame\":-1,\"modOrnaments\":-1,\"modTransmission\":-1,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"modSteeringWheel\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modEngine\":-1,\"color1\":134,\"modTrimB\":-1,\"modLivery\":1,\"dirtLevel\":4.1,\"modBrakes\":-1,\"modAPlate\":-1,\"modTurbo\":false,\"modStruts\":-1,\"modFrontBumper\":-1,\"modArmor\":-1,\"pearlescentColor\":0,\"extras\":{\"2\":true,\"1\":false},\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"fuelLevel\":55.0,\"modRightFender\":-1}', 'car', 'police', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001172af33b', 0, 'MUW 791', '{\"modSpoilers\":-1,\"modHorns\":-1,\"modRoof\":-1,\"modAPlate\":-1,\"modStruts\":-1,\"wheelColor\":96,\"plate\":\"MUW 791\",\"modArchCover\":-1,\"color1\":128,\"modHydrolic\":-1,\"modWindows\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modSteeringWheel\":-1,\"modFrontBumper\":-1,\"modFrame\":-1,\"neonColor\":[255,0,255],\"modRightFender\":-1,\"pearlescentColor\":0,\"color2\":112,\"modTank\":-1,\"modTrimB\":-1,\"modFender\":-1,\"modSpeakers\":-1,\"modAirFilter\":-1,\"modXenon\":false,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modDoorSpeaker\":-1,\"modGrille\":-1,\"modSmokeEnabled\":1,\"modShifterLeavers\":-1,\"extras\":{\"1\":false,\"2\":false,\"3\":true,\"4\":false},\"modPlateHolder\":-1,\"tyreSmokeColor\":[255,255,255],\"modDial\":-1,\"modEngine\":-1,\"windowTint\":-1,\"modSeats\":-1,\"modDashboard\":-1,\"modArmor\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modTurbo\":false,\"dirtLevel\":15.0,\"bodyHealth\":1000.0,\"modSuspension\":-1,\"modFrontWheels\":-1,\"modLivery\":-1,\"modVanityPlate\":-1,\"modTrunk\":-1,\"modOrnaments\":-1,\"modHood\":-1,\"modBrakes\":-1,\"modEngineBlock\":-1,\"model\":-1343173752,\"engineHealth\":1000.0,\"wheels\":3,\"fuelLevel\":45.0,\"plateIndex\":4}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000103072384', 1, 'MXF 149', '{\"modShifterLeavers\":-1,\"modEngine\":2,\"dirtLevel\":0.3,\"extras\":{\"1\":true},\"modAirFilter\":-1,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modSteeringWheel\":-1,\"modTank\":-1,\"modVanityPlate\":-1,\"modTransmission\":2,\"modExhaust\":0,\"modWindows\":-1,\"modFrontWheels\":-1,\"modFrame\":0,\"modArchCover\":-1,\"plate\":\"MXF 149\",\"modAPlate\":-1,\"wheelColor\":3,\"fuelLevel\":59.0,\"model\":-1800170043,\"modTrunk\":-1,\"bodyHealth\":973.8,\"color1\":27,\"modTrimA\":-1,\"color2\":28,\"modHorns\":18,\"modTurbo\":1,\"modFender\":2,\"modSpeakers\":-1,\"modArmor\":4,\"modBackWheels\":-1,\"modStruts\":-1,\"neonEnabled\":[1,1,1,1],\"modSuspension\":3,\"modSpoilers\":1,\"plateIndex\":4,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modSeats\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"engineHealth\":984.9,\"modTrimB\":-1,\"modSideSkirt\":0,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modDashboard\":-1,\"modRoof\":-1,\"neonColor\":[255,0,0],\"modXenon\":1,\"tyreSmokeColor\":[255,10,10],\"modLivery\":-1,\"modFrontBumper\":5,\"modHood\":6,\"modGrille\":0,\"wheels\":1,\"modAerials\":-1,\"modBrakes\":2,\"modDial\":-1,\"pearlescentColor\":28,\"windowTint\":2}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001170fb22c', 0, 'NTU 290', '{\"modRearBumper\":-1,\"dirtLevel\":2.2,\"modGrille\":-1,\"modTurbo\":false,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modEngine\":-1,\"modExhaust\":-1,\"model\":-1763555241,\"windowTint\":-1,\"modLivery\":-1,\"modBrakes\":-1,\"modTrimB\":-1,\"modVanityPlate\":-1,\"modSideSkirt\":-1,\"modWindows\":-1,\"extras\":[],\"modBackWheels\":-1,\"modEngineBlock\":-1,\"modArmor\":-1,\"modHorns\":-1,\"modSteeringWheel\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"color1\":64,\"modSpoilers\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"modFrame\":-1,\"modTank\":-1,\"modHydrolic\":-1,\"color2\":112,\"fuelLevel\":37.0,\"modSmokeEnabled\":false,\"modShifterLeavers\":-1,\"modRoof\":-1,\"modRightFender\":-1,\"modStruts\":-1,\"modAerials\":-1,\"tyreSmokeColor\":[255,255,255],\"pearlescentColor\":70,\"modOrnaments\":-1,\"modHood\":-1,\"wheelColor\":111,\"modTrimA\":-1,\"bodyHealth\":993.8,\"modDashboard\":-1,\"engineHealth\":995.4,\"plateIndex\":0,\"modTransmission\":-1,\"modSeats\":-1,\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"modAirFilter\":-1,\"modFender\":-1,\"wheels\":0,\"modDial\":-1,\"plate\":\"NTU 290\"}', 'aircraft', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000115517b6d', 0, 'OFB 116', '{\"modFrontWheels\":-1,\"modTurbo\":false,\"engineHealth\":1000.0,\"neonEnabled\":[false,false,false,false],\"windowTint\":-1,\"modFrame\":-1,\"modHydrolic\":-1,\"modRoof\":-1,\"modLivery\":-1,\"plateIndex\":0,\"modArmor\":-1,\"modArchCover\":-1,\"modAerials\":-1,\"modHood\":-1,\"modEngine\":-1,\"extras\":{\"11\":false,\"10\":true},\"modSuspension\":-1,\"modSteeringWheel\":-1,\"modFrontBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrunk\":-1,\"modExhaust\":-1,\"plate\":\"OFB 116\",\"modSmokeEnabled\":1,\"modTransmission\":-1,\"color2\":0,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"modGrille\":-1,\"wheels\":3,\"modTrimA\":-1,\"modSpoilers\":-1,\"bodyHealth\":1000.0,\"modDoorSpeaker\":-1,\"modAirFilter\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modPlateHolder\":-1,\"pearlescentColor\":111,\"modWindows\":-1,\"modAPlate\":-1,\"modXenon\":false,\"modSeats\":-1,\"modRightFender\":-1,\"model\":-16948145,\"modFender\":-1,\"modTrimB\":-1,\"neonColor\":[255,0,255],\"fuelLevel\":17.0,\"modDashboard\":-1,\"modTank\":-1,\"color1\":4,\"modRearBumper\":-1,\"modBackWheels\":-1,\"dirtLevel\":8.2,\"modDial\":-1,\"modBrakes\":-1,\"modSideSkirt\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"wheelColor\":156}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001172af33b', 1, 'OWO 794', '{\"modEngine\":-1,\"modDial\":-1,\"modTurbo\":false,\"modRoof\":-1,\"modStruts\":-1,\"modBackWheels\":-1,\"modSteeringWheel\":-1,\"modArmor\":-1,\"modFrontWheels\":-1,\"engineHealth\":999.6,\"color2\":160,\"modFrontBumper\":-1,\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"modHydrolic\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"modOrnaments\":-1,\"modBrakes\":-1,\"modXenon\":false,\"modAerials\":-1,\"tyreSmokeColor\":[255,255,255],\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"fuelLevel\":10.0,\"modLivery\":4,\"plate\":\"OWO 794\",\"modSpeakers\":-1,\"modAirFilter\":-1,\"modExhaust\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"modSideSkirt\":-1,\"modEngineBlock\":-1,\"modWindows\":-1,\"pearlescentColor\":0,\"modDashboard\":-1,\"modTrunk\":-1,\"modShifterLeavers\":-1,\"modRearBumper\":-1,\"modGrille\":-1,\"modSmokeEnabled\":1,\"bodyHealth\":997.3,\"modFrame\":-1,\"color1\":224,\"model\":228698904,\"wheels\":0,\"modRightFender\":-1,\"modSuspension\":-1,\"dirtLevel\":3.1,\"extras\":{\"3\":false,\"4\":false,\"1\":false,\"2\":false,\"10\":true,\"9\":false,\"7\":true,\"8\":false,\"11\":false},\"modFender\":-1,\"modTank\":-1,\"modAPlate\":-1,\"modHood\":-1,\"modSpoilers\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"modVanityPlate\":-1,\"plateIndex\":4,\"modPlateHolder\":-1,\"wheelColor\":96}', 'car', 'police', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000117b4ecd8', 0, 'QAU 326', '{\"modTurbo\":false,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modFrame\":-1,\"modAerials\":-1,\"modArmor\":-1,\"modTrunk\":-1,\"modLivery\":-1,\"modRightFender\":-1,\"modGrille\":-1,\"modSmokeEnabled\":false,\"modEngine\":-1,\"modRoof\":-1,\"modDial\":-1,\"modDashboard\":-1,\"modTrimB\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modStruts\":-1,\"modHood\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"wheels\":7,\"modBackWheels\":-1,\"dirtLevel\":4.0,\"bodyHealth\":1000.0,\"modBrakes\":-1,\"neonEnabled\":[false,false,false,false],\"modArchCover\":-1,\"pearlescentColor\":0,\"fuelLevel\":58.0,\"modSeats\":-1,\"modRearBumper\":-1,\"modFrontBumper\":-1,\"modSuspension\":-1,\"modExhaust\":-1,\"modPlateHolder\":-1,\"extras\":[],\"modEngineBlock\":-1,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"modSpeakers\":-1,\"windowTint\":-1,\"modWindows\":-1,\"wheelColor\":156,\"modAPlate\":-1,\"engineHealth\":1000.0,\"modSteeringWheel\":-1,\"plate\":\"QAU 326\",\"modAirFilter\":-1,\"color2\":134,\"modXenon\":false,\"modFrontWheels\":-1,\"modOrnaments\":-1,\"modTrimA\":-1,\"plateIndex\":3,\"modHydrolic\":-1,\"modHorns\":-1,\"neonColor\":[255,0,255],\"color1\":134,\"modShifterLeavers\":-1,\"model\":338562499}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000013c2b297a', 0, 'QFZ 454', '{\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"modTurbo\":false,\"modTrimB\":-1,\"wheels\":7,\"extras\":[],\"wheelColor\":160,\"modEngineBlock\":-1,\"plateIndex\":4,\"modTrunk\":-1,\"modSmokeEnabled\":1,\"modHood\":-1,\"modTransmission\":-1,\"modWindows\":-1,\"modBrakes\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modArchCover\":-1,\"windowTint\":-1,\"bodyHealth\":1000.0,\"modSuspension\":-1,\"modHorns\":-1,\"modSpoilers\":-1,\"color2\":112,\"fuelLevel\":42.0,\"modTrimA\":-1,\"modPlateHolder\":-1,\"modDial\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":0,\"model\":1999409339,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":0.0,\"modFrontWheels\":-1,\"engineHealth\":1000.0,\"modRoof\":-1,\"modArmor\":-1,\"modTank\":-1,\"modGrille\":-1,\"modXenon\":false,\"tyreSmokeColor\":[255,255,255],\"modDoorSpeaker\":-1,\"modExhaust\":-1,\"modLivery\":0,\"modAerials\":-1,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modSeats\":-1,\"modSideSkirt\":-1,\"neonColor\":[255,0,255],\"modFrame\":-1,\"color1\":36,\"modOrnaments\":-1,\"modDashboard\":-1,\"modAPlate\":-1,\"plate\":\"QFZ 454\",\"modEngine\":-1,\"modSpeakers\":-1,\"modStruts\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000010c502cb5', 1, 'RCU 323', '{\"modSmokeEnabled\":1,\"modTank\":-1,\"modFrame\":-1,\"neonColor\":[204,204,0],\"modBackWheels\":-1,\"modAirFilter\":-1,\"plate\":\"RCU 323\",\"modHood\":-1,\"tyreSmokeColor\":[254,254,254],\"neonEnabled\":[1,1,1,1],\"plateIndex\":1,\"modTurbo\":1,\"modArchCover\":-1,\"modSpoilers\":-1,\"modHorns\":-1,\"color2\":80,\"modTrimB\":-1,\"pearlescentColor\":0,\"extras\":{\"2\":true,\"1\":true},\"modFrontWheels\":-1,\"modDial\":-1,\"bodyHealth\":1000.0,\"modRightFender\":-1,\"modDashboard\":-1,\"fuelLevel\":23.0,\"color1\":160,\"modTrimA\":-1,\"modAerials\":-1,\"model\":1696740208,\"modEngineBlock\":-1,\"modGrille\":-1,\"modVanityPlate\":-1,\"modFender\":-1,\"modWindows\":-1,\"modTransmission\":-1,\"modSteeringWheel\":-1,\"modFrontBumper\":-1,\"modSuspension\":-1,\"modSpeakers\":-1,\"modOrnaments\":-1,\"modSideSkirt\":-1,\"modStruts\":-1,\"dirtLevel\":11.5,\"engineHealth\":1000.0,\"modAPlate\":-1,\"modShifterLeavers\":-1,\"modEngine\":-1,\"modXenon\":1,\"modExhaust\":-1,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"modPlateHolder\":-1,\"wheels\":0,\"modTrunk\":-1,\"modSeats\":-1,\"modArmor\":-1,\"wheelColor\":96,\"windowTint\":1,\"modHydrolic\":-1,\"modRearBumper\":-1,\"modLivery\":1,\"modBrakes\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000103072384', 1, 'RNK 441', '{\"modBrakes\":-1,\"modGrille\":-1,\"neonEnabled\":[1,1,1,1],\"color1\":88,\"modLivery\":-1,\"modFender\":-1,\"modTrimA\":-1,\"modExhaust\":-1,\"plate\":\"RNK 441\",\"modTurbo\":false,\"modTrunk\":-1,\"modFrame\":-1,\"modRightFender\":-1,\"bodyHealth\":0.0,\"dirtLevel\":4.6,\"fuelLevel\":59.0,\"plateIndex\":1,\"extras\":{\"2\":false,\"5\":false,\"10\":false,\"3\":false},\"modBackWheels\":-1,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"wheelColor\":96,\"modAerials\":-1,\"color2\":88,\"modEngine\":-1,\"modSideSkirt\":-1,\"modHydrolic\":-1,\"modSpeakers\":-1,\"modRoof\":-1,\"pearlescentColor\":88,\"modArmor\":-1,\"modAirFilter\":-1,\"modDashboard\":-1,\"modSeats\":-1,\"modPlateHolder\":-1,\"modTank\":-1,\"modEngineBlock\":-1,\"modDial\":-1,\"modSteeringWheel\":-1,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"modRearBumper\":-1,\"model\":-1437054386,\"modSuspension\":-1,\"modFrontWheels\":-1,\"modSpoilers\":-1,\"modTransmission\":-1,\"engineHealth\":625.3,\"modTrimB\":-1,\"modAPlate\":-1,\"modOrnaments\":-1,\"tyreSmokeColor\":[255,153,51],\"modFrontBumper\":-1,\"wheels\":0,\"modHorns\":-1,\"neonColor\":[255,255,0],\"windowTint\":0,\"modXenon\":false,\"modWindows\":-1,\"modHood\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000013c2b297a', 0, 'ROP 863', '{\"modFrontWheels\":-1,\"modRoof\":-1,\"modShifterLeavers\":-1,\"neonColor\":[255,0,255],\"modSeats\":-1,\"modSpoilers\":-1,\"modGrille\":-1,\"modExhaust\":-1,\"modTrunk\":-1,\"modHood\":-1,\"tyreSmokeColor\":[255,255,255],\"plateIndex\":4,\"modEngineBlock\":-1,\"wheels\":0,\"modArchCover\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"modTransmission\":-1,\"modRightFender\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"modStruts\":-1,\"modBrakes\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"pearlescentColor\":5,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modXenon\":false,\"modFender\":-1,\"color1\":3,\"modPlateHolder\":-1,\"modTurbo\":false,\"modTrimA\":-1,\"extras\":{\"1\":true,\"2\":true,\"7\":true},\"modDial\":-1,\"modArmor\":-1,\"modLivery\":-1,\"modHorns\":-1,\"modTank\":-1,\"modFrontBumper\":-1,\"bodyHealth\":994.8,\"modTrimB\":-1,\"engineHealth\":997.7,\"wheelColor\":156,\"color2\":1,\"fuelLevel\":41.0,\"modSmokeEnabled\":false,\"modSpeakers\":-1,\"modVanityPlate\":-1,\"modEngine\":-1,\"modWindows\":-1,\"modAPlate\":-1,\"modDoorSpeaker\":-1,\"dirtLevel\":3.4,\"modOrnaments\":-1,\"model\":-1671539132,\"plate\":\"ROP 863\",\"modFrame\":-1,\"modHydrolic\":-1,\"windowTint\":-1}', 'aircraft', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000103072384', 1, 'SBW 675', '{\"modBrakes\":-1,\"modGrille\":-1,\"neonEnabled\":[1,1,1,1],\"color1\":89,\"modLivery\":2,\"modFender\":-1,\"modTrimA\":-1,\"modExhaust\":-1,\"plate\":\"SBW 675\",\"modTurbo\":1,\"modTrunk\":-1,\"modFrame\":-1,\"modRightFender\":-1,\"bodyHealth\":1000.0,\"dirtLevel\":0.3,\"fuelLevel\":30.0,\"plateIndex\":4,\"extras\":{\"2\":false,\"1\":false,\"4\":true},\"modBackWheels\":-1,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"wheelColor\":28,\"modAerials\":-1,\"color2\":89,\"modEngine\":-1,\"modSideSkirt\":-1,\"modHydrolic\":-1,\"modSpeakers\":-1,\"modRoof\":-1,\"pearlescentColor\":89,\"modArmor\":-1,\"modAirFilter\":-1,\"modDashboard\":-1,\"modSeats\":-1,\"modPlateHolder\":-1,\"modTank\":-1,\"modEngineBlock\":-1,\"modDial\":-1,\"modSteeringWheel\":-1,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"modRearBumper\":-1,\"model\":939131970,\"modSuspension\":-1,\"modFrontWheels\":-1,\"modSpoilers\":-1,\"modTransmission\":-1,\"engineHealth\":1000.0,\"modTrimB\":-1,\"modAPlate\":-1,\"modOrnaments\":-1,\"tyreSmokeColor\":[255,255,50],\"modFrontBumper\":-1,\"wheels\":0,\"modHorns\":-1,\"neonColor\":[255,255,255],\"windowTint\":0,\"modXenon\":1,\"modWindows\":-1,\"modHood\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000103072384', 1, 'SIS 723', '{\"dirtLevel\":12.6,\"modStruts\":-1,\"modHood\":-1,\"modDoorSpeaker\":-1,\"modTransmission\":-1,\"bodyHealth\":1000.0,\"tyreSmokeColor\":[0,150,255],\"plate\":\"SIS 723\",\"modFrontWheels\":-1,\"modDial\":-1,\"modShifterLeavers\":-1,\"color1\":64,\"modRightFender\":-1,\"modTrimB\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modTank\":-1,\"extras\":{\"1\":false},\"modAerials\":-1,\"plateIndex\":4,\"fuelLevel\":65.0,\"modHorns\":-1,\"neonEnabled\":[1,1,1,1],\"modAirFilter\":-1,\"modSpoilers\":-1,\"modOrnaments\":-1,\"modSideSkirt\":-1,\"modLivery\":-1,\"modDashboard\":-1,\"modBackWheels\":-1,\"modArchCover\":-1,\"modArmor\":-1,\"modXenon\":false,\"modEngine\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"pearlescentColor\":64,\"engineHealth\":1000.0,\"model\":329848940,\"modExhaust\":-1,\"modFrame\":-1,\"modWindows\":-1,\"modBrakes\":-1,\"modFender\":-1,\"modEngineBlock\":-1,\"wheels\":0,\"modRoof\":-1,\"modTrunk\":-1,\"modTurbo\":false,\"wheelColor\":96,\"modPlateHolder\":-1,\"modHydrolic\":-1,\"modSuspension\":-1,\"modTrimA\":-1,\"color2\":64,\"modGrille\":-1,\"neonColor\":[255,255,255],\"modVanityPlate\":-1,\"modSmokeEnabled\":1,\"modFrontBumper\":-1,\"windowTint\":0}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000103072384', 1, 'SNH 274', '{\"modRightFender\":-1,\"modTrimB\":-1,\"modSuspension\":-1,\"modSpeakers\":-1,\"model\":329848940,\"modVanityPlate\":-1,\"modHydrolic\":-1,\"modStruts\":-1,\"modFrame\":-1,\"modSideSkirt\":-1,\"modFender\":-1,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modBackWheels\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"engineHealth\":1000.0,\"modDoorSpeaker\":-1,\"extras\":{\"1\":true},\"modSmokeEnabled\":1,\"modAPlate\":-1,\"modDial\":-1,\"plate\":\"SNH 274\",\"fuelLevel\":37.0,\"modGrille\":-1,\"modHood\":-1,\"modXenon\":false,\"modRoof\":-1,\"modFrontWheels\":-1,\"color2\":64,\"modTransmission\":-1,\"modShifterLeavers\":-1,\"modAerials\":-1,\"tyreSmokeColor\":[0,150,255],\"windowTint\":0,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"dirtLevel\":0.3,\"bodyHealth\":954.5,\"modLivery\":-1,\"modWindows\":-1,\"modArmor\":-1,\"modTrunk\":-1,\"modArchCover\":-1,\"modEngine\":-1,\"modTurbo\":1,\"color1\":64,\"wheelColor\":96,\"modTrimA\":-1,\"modOrnaments\":-1,\"wheels\":0,\"plateIndex\":4,\"modExhaust\":-1,\"modBrakes\":-1,\"pearlescentColor\":64,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"modDashboard\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001170fb22c', 0, 'SNV 371', '{\"modGrille\":-1,\"plateIndex\":3,\"modRearBumper\":-1,\"modSpeakers\":-1,\"bodyHealth\":948.3,\"modArmor\":-1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"modHorns\":-1,\"modXenon\":false,\"color2\":2,\"modDashboard\":-1,\"modSideSkirt\":-1,\"pearlescentColor\":134,\"modOrnaments\":-1,\"modRightFender\":-1,\"modShifterLeavers\":-1,\"modTransmission\":2,\"modTurbo\":1,\"color1\":2,\"plate\":\"SNV 371\",\"modRoof\":-1,\"modSuspension\":3,\"modAPlate\":-1,\"modBackWheels\":-1,\"modDial\":-1,\"modFender\":-1,\"modTank\":-1,\"modSpoilers\":-1,\"modHydrolic\":-1,\"modTrimB\":-1,\"modBrakes\":2,\"modWindows\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modExhaust\":-1,\"modHood\":-1,\"modSmokeEnabled\":1,\"modAirFilter\":-1,\"fuelLevel\":31.0,\"modSeats\":-1,\"wheels\":0,\"modLivery\":-1,\"windowTint\":-1,\"modPlateHolder\":-1,\"modFrontBumper\":-1,\"dirtLevel\":15.0,\"neonColor\":[255,0,255],\"modEngine\":3,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modArchCover\":-1,\"model\":-344943009,\"modFrontWheels\":39,\"wheelColor\":2,\"modVanityPlate\":-1,\"extras\":[],\"modEngineBlock\":-1,\"neonEnabled\":[false,false,false,false],\"modTrimA\":-1,\"engineHealth\":977.5}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000117b4ecd8', 0, 'SSR 784', '{\"modTransmission\":-1,\"modSideSkirt\":-1,\"windowTint\":-1,\"extras\":{\"11\":false,\"10\":true,\"1\":true},\"wheels\":3,\"modFrontBumper\":-1,\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"plateIndex\":0,\"fuelLevel\":24.0,\"modFrontWheels\":-1,\"modGrille\":-1,\"tyreSmokeColor\":[255,255,255],\"bodyHealth\":1000.0,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modHood\":-1,\"color2\":116,\"model\":-1775728740,\"pearlescentColor\":109,\"modVanityPlate\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"modOrnaments\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"modRoof\":-1,\"modTurbo\":false,\"modSpeakers\":-1,\"modSmokeEnabled\":1,\"modPlateHolder\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modExhaust\":-1,\"modFrame\":-1,\"modXenon\":false,\"modAirFilter\":-1,\"wheelColor\":156,\"modLivery\":-1,\"modTrimA\":-1,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"plate\":\"SSR 784\",\"dirtLevel\":9.9,\"modAPlate\":-1,\"modEngine\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modWindows\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"engineHealth\":1000.0,\"modSpoilers\":-1,\"color1\":116,\"modAerials\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modRearBumper\":-1,\"modStruts\":-1,\"modArmor\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000013716cde4', 0, 'SSW 824', '{\"modGrille\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modSpeakers\":-1,\"bodyHealth\":706.2,\"modArmor\":-1,\"modBrakes\":-1,\"modSteeringWheel\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"color2\":88,\"modSuspension\":-1,\"modTransmission\":-1,\"pearlescentColor\":38,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modShifterLeavers\":-1,\"modFrontWheels\":-1,\"modHood\":-1,\"color1\":27,\"plate\":\"SSW 824\",\"modTurbo\":false,\"modHydrolic\":-1,\"modAPlate\":-1,\"modBackWheels\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modTank\":-1,\"modSpoilers\":-1,\"modWindows\":-1,\"modTrimB\":-1,\"modSmokeEnabled\":1,\"modLivery\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modDoorSpeaker\":-1,\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"modRoof\":-1,\"modAirFilter\":-1,\"fuelLevel\":22.0,\"modStruts\":-1,\"wheels\":7,\"modSeats\":-1,\"windowTint\":-1,\"modPlateHolder\":-1,\"modFrontBumper\":-1,\"dirtLevel\":3.7,\"neonColor\":[255,0,255],\"modEngine\":1,\"modTrunk\":-1,\"model\":1426219628,\"modArchCover\":-1,\"modOrnaments\":-1,\"modDial\":-1,\"wheelColor\":156,\"modVanityPlate\":-1,\"extras\":[],\"modXenon\":false,\"neonEnabled\":[false,false,false,false],\"modTrimA\":-1,\"engineHealth\":931.2}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000013301b85a', 0, 'SWY 171', '{\"modArchCover\":-1,\"fuelLevel\":34.0,\"modSteeringWheel\":-1,\"windowTint\":-1,\"modSeats\":-1,\"modVanityPlate\":-1,\"plate\":\"SWY 171\",\"modEngine\":-1,\"modTrunk\":-1,\"modSpoilers\":-1,\"modDial\":-1,\"wheelColor\":156,\"modLivery\":3,\"modStruts\":-1,\"modAerials\":-1,\"modTrimA\":-1,\"modSideSkirt\":-1,\"modPlateHolder\":-1,\"modXenon\":false,\"modFender\":-1,\"modGrille\":-1,\"modDoorSpeaker\":-1,\"pearlescentColor\":0,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modHydrolic\":-1,\"modBackWheels\":-1,\"dirtLevel\":1.0,\"modAPlate\":-1,\"modBrakes\":-1,\"bodyHealth\":1000.0,\"modArmor\":-1,\"modShifterLeavers\":-1,\"neonEnabled\":[false,false,false,false],\"modFrame\":-1,\"modTurbo\":false,\"neonColor\":[255,0,255],\"modHorns\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"engineHealth\":1000.0,\"extras\":{\"2\":false,\"1\":true},\"modTransmission\":-1,\"modSmokeEnabled\":false,\"modRearBumper\":-1,\"modWindows\":-1,\"wheels\":1,\"modSpeakers\":-1,\"modAirFilter\":-1,\"color1\":134,\"model\":2046537925,\"modRightFender\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modTank\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"color2\":134,\"plateIndex\":4}', 'car', 'police', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000010c502cb5', 1, 'TBY 431', '{\"modDoorSpeaker\":-1,\"modSpoilers\":13,\"modRearBumper\":-1,\"modStruts\":11,\"modSteeringWheel\":-1,\"modSmokeEnabled\":1,\"modEngine\":2,\"modAPlate\":-1,\"modDashboard\":-1,\"modFrontWheels\":0,\"modSpeakers\":-1,\"modTank\":-1,\"modPlateHolder\":-1,\"modVanityPlate\":-1,\"modRoof\":-1,\"modTrunk\":-1,\"modBackWheels\":-1,\"color1\":28,\"bodyHealth\":1000.0,\"modRightFender\":-1,\"modExhaust\":-1,\"modBrakes\":2,\"modSideSkirt\":-1,\"modLivery\":-1,\"color2\":1,\"plateIndex\":1,\"modXenon\":1,\"modFender\":-1,\"modArchCover\":5,\"neonEnabled\":[1,1,1,1],\"extras\":[],\"modSuspension\":3,\"pearlescentColor\":70,\"model\":-295689028,\"modFrontBumper\":1,\"modSeats\":-1,\"modDial\":-1,\"modTrimA\":-1,\"modEngineBlock\":3,\"modGrille\":3,\"modHydrolic\":-1,\"modAerials\":-1,\"wheelColor\":112,\"modOrnaments\":-1,\"engineHealth\":1000.0,\"modTurbo\":1,\"tyreSmokeColor\":[255,255,255],\"dirtLevel\":0.3,\"modFrame\":0,\"modWindows\":-1,\"modHorns\":14,\"fuelLevel\":61.0,\"windowTint\":1,\"modShifterLeavers\":-1,\"wheels\":7,\"modTrimB\":-1,\"plate\":\"TBY 431\",\"neonColor\":[255,0,255],\"modTransmission\":2,\"modHood\":-1,\"modArmor\":4,\"modAirFilter\":7}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000013bd36b18', 0, 'TQP 022', '{\"modSuspension\":-1,\"modHydrolic\":-1,\"dirtLevel\":5.1,\"modEngine\":-1,\"modTransmission\":-1,\"color1\":134,\"modStruts\":-1,\"modBackWheels\":-1,\"modFrame\":-1,\"modFender\":-1,\"modFrontBumper\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modSeats\":-1,\"engineHealth\":1000.0,\"wheelColor\":156,\"plate\":\"TQP 022\",\"windowTint\":-1,\"modAerials\":-1,\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"modWindows\":-1,\"modShifterLeavers\":-1,\"fuelLevel\":46.0,\"extras\":{\"1\":false,\"2\":true},\"modExhaust\":-1,\"modRightFender\":-1,\"modHorns\":-1,\"modHood\":-1,\"modVanityPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"modArchCover\":-1,\"modOrnaments\":-1,\"modRoof\":-1,\"modSideSkirt\":-1,\"modTrimB\":-1,\"bodyHealth\":1000.0,\"neonEnabled\":[false,false,false,false],\"pearlescentColor\":0,\"modDial\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modTrimA\":-1,\"modEngineBlock\":-1,\"modAirFilter\":-1,\"color2\":134,\"modSpeakers\":-1,\"modXenon\":false,\"modBrakes\":-1,\"modSmokeEnabled\":1,\"modLivery\":0,\"modGrille\":-1,\"modRearBumper\":-1,\"modTurbo\":false,\"model\":2046537925,\"modPlateHolder\":-1,\"modDashboard\":-1,\"modAPlate\":-1,\"modDoorSpeaker\":-1,\"wheels\":1}', 'car', 'police', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000013c2b297a', 0, 'TRA 562', '{\"modGrille\":-1,\"plateIndex\":4,\"modRearBumper\":-1,\"modSpeakers\":-1,\"bodyHealth\":996.0,\"modArmor\":-1,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"modHorns\":-1,\"modXenon\":false,\"color2\":112,\"modSuspension\":-1,\"modWindows\":-1,\"pearlescentColor\":0,\"modDial\":-1,\"modRightFender\":-1,\"modShifterLeavers\":-1,\"modSmokeEnabled\":1,\"modHydrolic\":-1,\"color1\":128,\"plate\":\"TRA 562\",\"neonColor\":[255,0,255],\"modDashboard\":-1,\"modAPlate\":-1,\"modBackWheels\":-1,\"modTrimB\":-1,\"modFender\":-1,\"modTank\":-1,\"modSpoilers\":-1,\"modDoorSpeaker\":-1,\"modTrunk\":-1,\"modFrame\":-1,\"modLivery\":-1,\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"modRoof\":-1,\"modAirFilter\":-1,\"fuelLevel\":13.0,\"modSeats\":-1,\"wheels\":7,\"modTurbo\":false,\"windowTint\":-1,\"modPlateHolder\":-1,\"modFrontBumper\":-1,\"dirtLevel\":9.1,\"modTransmission\":-1,\"modEngine\":-1,\"modSideSkirt\":-1,\"model\":-143695728,\"modArchCover\":-1,\"modBrakes\":-1,\"modHood\":-1,\"wheelColor\":16,\"modVanityPlate\":-1,\"extras\":[],\"modStruts\":-1,\"neonEnabled\":[false,false,false,false],\"modTrimA\":-1,\"engineHealth\":999.3}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001172af33b', 0, 'UQS 330', '{\"modFrontBumper\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"fuelLevel\":52.0,\"neonEnabled\":[false,false,false,false],\"modOrnaments\":-1,\"modSeats\":-1,\"neonColor\":[255,0,255],\"modAirFilter\":-1,\"modTurbo\":false,\"modRoof\":-1,\"modHydrolic\":-1,\"wheelColor\":156,\"color1\":36,\"modTrunk\":-1,\"modHorns\":-1,\"dirtLevel\":8.0,\"bodyHealth\":1000.0,\"modPlateHolder\":-1,\"model\":-1177863319,\"modWindows\":-1,\"wheels\":0,\"modHood\":-1,\"modArmor\":-1,\"modSmokeEnabled\":1,\"modEngine\":-1,\"modBackWheels\":-1,\"modSteeringWheel\":-1,\"windowTint\":-1,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"modFrame\":-1,\"modFender\":-1,\"modVanityPlate\":-1,\"modArchCover\":-1,\"modSuspension\":-1,\"extras\":{\"11\":true},\"modRearBumper\":-1,\"modAPlate\":-1,\"modTransmission\":-1,\"modEngineBlock\":-1,\"modXenon\":false,\"modExhaust\":-1,\"modAerials\":-1,\"modGrille\":-1,\"modDial\":-1,\"modTrimB\":-1,\"modBrakes\":-1,\"modLivery\":-1,\"modDashboard\":-1,\"tyreSmokeColor\":[255,255,255],\"color2\":4,\"modTrimA\":-1,\"engineHealth\":1000.0,\"modStruts\":-1,\"plateIndex\":3,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"modRightFender\":-1,\"modShifterLeavers\":-1,\"plate\":\"UQS 330\",\"pearlescentColor\":38}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000013c2b297a', 0, 'VAF 045', '{\"modGrille\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modSpeakers\":-1,\"bodyHealth\":300.0,\"modArmor\":-1,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"modHorns\":-1,\"modXenon\":false,\"color2\":13,\"modSuspension\":-1,\"modWindows\":-1,\"pearlescentColor\":18,\"modDial\":-1,\"modRightFender\":-1,\"modShifterLeavers\":-1,\"modSmokeEnabled\":1,\"modHydrolic\":-1,\"color1\":111,\"plate\":\"VAF 045\",\"neonColor\":[255,0,255],\"modDashboard\":-1,\"modAPlate\":-1,\"modBackWheels\":-1,\"modTrimB\":-1,\"modFender\":-1,\"modTank\":-1,\"modSpoilers\":-1,\"modDoorSpeaker\":-1,\"modTrunk\":-1,\"modFrame\":-1,\"modLivery\":-1,\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"modRoof\":-1,\"modAirFilter\":-1,\"fuelLevel\":35.0,\"modSeats\":-1,\"wheels\":0,\"modTurbo\":false,\"windowTint\":-1,\"modPlateHolder\":-1,\"modFrontBumper\":-1,\"dirtLevel\":8.6,\"modTransmission\":-1,\"modEngine\":1,\"modSideSkirt\":-1,\"model\":177270108,\"modArchCover\":-1,\"modBrakes\":-1,\"modHood\":-1,\"wheelColor\":156,\"modVanityPlate\":-1,\"extras\":[],\"modStruts\":-1,\"neonEnabled\":[false,false,false,false],\"modTrimA\":-1,\"engineHealth\":997.0}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000013301b85a', 0, 'VAX 011', '{\"modArchCover\":-1,\"fuelLevel\":53.0,\"modSteeringWheel\":-1,\"windowTint\":-1,\"modSeats\":-1,\"modVanityPlate\":-1,\"plate\":\"VAX 011\",\"modEngine\":-1,\"modTrunk\":-1,\"modSpoilers\":-1,\"modDial\":-1,\"wheelColor\":156,\"modLivery\":0,\"modStruts\":-1,\"modAerials\":-1,\"modTrimA\":-1,\"modSideSkirt\":-1,\"modPlateHolder\":-1,\"modXenon\":false,\"modFender\":-1,\"modGrille\":-1,\"modDoorSpeaker\":-1,\"pearlescentColor\":123,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modHydrolic\":-1,\"modBackWheels\":-1,\"dirtLevel\":5.0,\"modAPlate\":-1,\"modBrakes\":-1,\"bodyHealth\":1000.0,\"modArmor\":-1,\"modShifterLeavers\":-1,\"neonEnabled\":[false,false,false,false],\"modFrame\":-1,\"modTurbo\":false,\"neonColor\":[255,0,255],\"modHorns\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"engineHealth\":1000.0,\"extras\":[],\"modTransmission\":-1,\"modSmokeEnabled\":false,\"modRearBumper\":-1,\"modWindows\":-1,\"wheels\":1,\"modSpeakers\":-1,\"modAirFilter\":-1,\"color1\":123,\"model\":-1683328900,\"modRightFender\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modTank\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"color2\":123,\"plateIndex\":0}', 'car', 'police', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000103072384', 1, 'VBB 470', '{\"modHydrolic\":-1,\"wheelColor\":29,\"modTank\":-1,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modSeats\":-1,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modSmokeEnabled\":1,\"tyreSmokeColor\":[255,255,50],\"modTrunk\":-1,\"modArmor\":-1,\"modExhaust\":-1,\"modRightFender\":-1,\"modBackWheels\":-1,\"model\":216350205,\"engineHealth\":934.5,\"bodyHealth\":935.5,\"modShifterLeavers\":-1,\"modBrakes\":-1,\"modFrontWheels\":-1,\"fuelLevel\":25.0,\"color2\":89,\"modSpoilers\":-1,\"modEngineBlock\":-1,\"plateIndex\":4,\"modHood\":-1,\"modAPlate\":-1,\"modRoof\":-1,\"dirtLevel\":9.0,\"neonEnabled\":[1,1,1,1],\"modVanityPlate\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"modLivery\":-1,\"plate\":\"VBB 470\",\"modEngine\":-1,\"modFrame\":-1,\"modSpeakers\":-1,\"modXenon\":1,\"modStruts\":-1,\"modTrimA\":-1,\"modTransmission\":-1,\"pearlescentColor\":89,\"windowTint\":0,\"modTurbo\":1,\"modRearBumper\":-1,\"neonColor\":[255,255,0],\"modAerials\":-1,\"modDashboard\":-1,\"color1\":89,\"modSteeringWheel\":-1,\"modPlateHolder\":-1,\"modHorns\":-1,\"wheels\":0,\"modSideSkirt\":-1,\"extras\":{\"6\":true},\"modDial\":-1,\"modGrille\":-1,\"modTrimB\":-1,\"modSuspension\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001172af33b', 0, 'VHP 360', '{\"modAerials\":-1,\"tyreSmokeColor\":[255,255,255],\"modSmokeEnabled\":false,\"modWindows\":-1,\"windowTint\":-1,\"modShifterLeavers\":-1,\"modHood\":-1,\"color1\":192,\"modOrnaments\":-1,\"wheelColor\":96,\"modSeats\":-1,\"modTrunk\":-1,\"modBackWheels\":-1,\"modArmor\":-1,\"modFrontBumper\":-1,\"modTransmission\":-1,\"modSuspension\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"modRightFender\":-1,\"modFrame\":-1,\"extras\":[],\"modGrille\":-1,\"pearlescentColor\":0,\"modDial\":-1,\"modExhaust\":-1,\"modHorns\":-1,\"modStruts\":-1,\"modArchCover\":-1,\"modSpoilers\":-1,\"modXenon\":false,\"modEngine\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"dirtLevel\":8.2,\"color2\":112,\"model\":984901306,\"modAPlate\":-1,\"modTank\":-1,\"modFender\":-1,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"plate\":\"VHP 360\",\"fuelLevel\":51.0,\"modBrakes\":-1,\"modSteeringWheel\":-1,\"plateIndex\":4,\"engineHealth\":998.3,\"modLivery\":0,\"neonColor\":[255,0,255],\"modSideSkirt\":-1,\"wheels\":1,\"modDoorSpeaker\":-1,\"modTurbo\":false,\"modHydrolic\":-1,\"modTrimB\":-1,\"modDashboard\":-1,\"bodyHealth\":958.1,\"neonEnabled\":[false,false,false,false],\"modPlateHolder\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000103072384', 1, 'VJK 310', '{\"modSeats\":-1,\"modArchCover\":-1,\"engineHealth\":1000.0,\"modBackWheels\":-1,\"extras\":[],\"modDoorSpeaker\":-1,\"modTrimA\":-1,\"neonColor\":[255,0,255],\"windowTint\":0,\"modTrimB\":-1,\"color1\":224,\"plate\":\"VJK 310\",\"modRightFender\":-1,\"modSpeakers\":-1,\"bodyHealth\":1000.0,\"modTrunk\":-1,\"modAPlate\":-1,\"modHydrolic\":-1,\"modFender\":-1,\"plateIndex\":4,\"neonEnabled\":[false,false,false,false],\"dirtLevel\":9.3,\"modHorns\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"pearlescentColor\":0,\"wheels\":7,\"modHood\":-1,\"color2\":80,\"modArmor\":-1,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modSideSkirt\":-1,\"modXenon\":false,\"modTransmission\":-1,\"modTurbo\":1,\"modLivery\":0,\"modFrame\":-1,\"modAerials\":-1,\"modOrnaments\":-1,\"modSmokeEnabled\":false,\"modTank\":-1,\"modBrakes\":-1,\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"modEngine\":-1,\"modSteeringWheel\":-1,\"modDashboard\":-1,\"wheelColor\":96,\"fuelLevel\":28.0,\"modWindows\":-1,\"modRoof\":-1,\"modFrontWheels\":-1,\"model\":1999409339,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"modFrontBumper\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000013716cde4', 0, 'VYP 290', '{\"modGrille\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modSpeakers\":-1,\"bodyHealth\":987.0,\"modArmor\":-1,\"modBrakes\":-1,\"modSteeringWheel\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"color2\":112,\"modSuspension\":-1,\"modTransmission\":-1,\"pearlescentColor\":134,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modShifterLeavers\":-1,\"modFrontWheels\":-1,\"modHood\":-1,\"color1\":112,\"plate\":\"VYP 290\",\"modTurbo\":false,\"modHydrolic\":-1,\"modAPlate\":-1,\"modBackWheels\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modTank\":-1,\"modSpoilers\":-1,\"modWindows\":-1,\"modTrimB\":-1,\"modSmokeEnabled\":false,\"modLivery\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modDoorSpeaker\":-1,\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"modRoof\":-1,\"modAirFilter\":-1,\"fuelLevel\":54.0,\"modStruts\":-1,\"wheels\":7,\"modSeats\":-1,\"windowTint\":-1,\"modPlateHolder\":-1,\"modFrontBumper\":-1,\"dirtLevel\":1.4,\"neonColor\":[255,0,255],\"modEngine\":-1,\"modTrunk\":-1,\"model\":-1930048799,\"modArchCover\":-1,\"modOrnaments\":-1,\"modDial\":-1,\"wheelColor\":0,\"modVanityPlate\":-1,\"extras\":[],\"modXenon\":false,\"neonEnabled\":[false,false,false,false],\"modTrimA\":-1,\"engineHealth\":997.0}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:1100001350a4e14', 0, 'WGD 803', '{\"modGrille\":-1,\"plateIndex\":3,\"modRearBumper\":-1,\"modSpeakers\":-1,\"bodyHealth\":825.0,\"modDial\":-1,\"modBrakes\":-1,\"modSteeringWheel\":-1,\"modHorns\":-1,\"modEngineBlock\":-1,\"color2\":134,\"modSuspension\":-1,\"modArmor\":-1,\"pearlescentColor\":0,\"modSpoilers\":-1,\"modRightFender\":-1,\"modShifterLeavers\":-1,\"modTrimB\":-1,\"modXenon\":false,\"color1\":134,\"plate\":\"WGD 803\",\"modOrnaments\":-1,\"modWindows\":-1,\"modAPlate\":-1,\"modBackWheels\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"modFrontWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modLivery\":-1,\"modAerials\":-1,\"neonEnabled\":[false,false,false,false],\"neonColor\":[255,0,255],\"modExhaust\":-1,\"modHydrolic\":-1,\"modSmokeEnabled\":1,\"modAirFilter\":-1,\"fuelLevel\":60.0,\"modTransmission\":-1,\"wheels\":7,\"modRoof\":-1,\"windowTint\":-1,\"modPlateHolder\":-1,\"modFrontBumper\":-1,\"dirtLevel\":0.9,\"modStruts\":-1,\"modEngine\":-1,\"modTrunk\":-1,\"model\":338562499,\"modArchCover\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"wheelColor\":156,\"modVanityPlate\":-1,\"extras\":[],\"modHood\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"engineHealth\":0.0}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000135a51347', 0, 'WHG 380', '{\"modFrame\":-1,\"modTrunk\":-1,\"modArchCover\":-1,\"neonEnabled\":[false,false,false,false],\"modSpeakers\":-1,\"modExhaust\":-1,\"modPlateHolder\":-1,\"plate\":\"WHG 380\",\"plateIndex\":0,\"modOrnaments\":-1,\"modWindows\":-1,\"modTrimB\":-1,\"modHood\":-1,\"modGrille\":-1,\"wheels\":1,\"modDial\":-1,\"modShifterLeavers\":-1,\"modEngineBlock\":-1,\"modRightFender\":-1,\"modAerials\":-1,\"modSpoilers\":-1,\"dirtLevel\":8.0,\"modDoorSpeaker\":-1,\"modArmor\":-1,\"modStruts\":-1,\"modTank\":-1,\"color2\":134,\"modDashboard\":-1,\"tyreSmokeColor\":[255,255,255],\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modSmokeEnabled\":false,\"extras\":[],\"engineHealth\":1000.0,\"fuelLevel\":37.0,\"modAPlate\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"modEngine\":-1,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"neonColor\":[255,0,255],\"modRoof\":-1,\"modSuspension\":-1,\"bodyHealth\":1000.0,\"wheelColor\":156,\"modBackWheels\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"model\":-1683328900,\"modHydrolic\":-1,\"modSeats\":-1,\"modFrontBumper\":-1,\"modFrontWheels\":-1,\"modFender\":-1,\"pearlescentColor\":134,\"modXenon\":false,\"modLivery\":1,\"modSteeringWheel\":-1,\"color1\":134,\"modTransmission\":-1,\"windowTint\":-1}', 'car', 'police', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000103072384', 1, 'YGC 544', '{\"modBrakes\":-1,\"modGrille\":-1,\"neonEnabled\":[false,false,false,false],\"color1\":111,\"modLivery\":0,\"modFender\":-1,\"modTrimA\":-1,\"modExhaust\":-1,\"plate\":\"YGC 544\",\"modTurbo\":1,\"modTrunk\":-1,\"modFrame\":-1,\"modRightFender\":-1,\"bodyHealth\":987.8,\"dirtLevel\":7.6,\"fuelLevel\":38.0,\"plateIndex\":4,\"extras\":[],\"modBackWheels\":-1,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"wheelColor\":96,\"modAerials\":-1,\"color2\":28,\"modEngine\":-1,\"modSideSkirt\":-1,\"modHydrolic\":-1,\"modSpeakers\":-1,\"modRoof\":-1,\"pearlescentColor\":28,\"modArmor\":-1,\"modAirFilter\":-1,\"modDashboard\":-1,\"modSeats\":-1,\"modPlateHolder\":-1,\"modTank\":-1,\"modEngineBlock\":-1,\"modDial\":-1,\"modSteeringWheel\":-1,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"modRearBumper\":-1,\"model\":1311724675,\"modSuspension\":-1,\"modFrontWheels\":-1,\"modSpoilers\":-1,\"modTransmission\":-1,\"engineHealth\":998.5,\"modTrimB\":-1,\"modAPlate\":-1,\"modOrnaments\":-1,\"tyreSmokeColor\":[254,254,254],\"modFrontBumper\":-1,\"wheels\":1,\"modHorns\":-1,\"neonColor\":[255,0,255],\"windowTint\":0,\"modXenon\":1,\"modWindows\":-1,\"modHood\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000011899ea0f', 0, 'YMO 924', '{\"plate\":\"YMO 924\",\"modWindows\":-1,\"modSideSkirt\":-1,\"modHorns\":-1,\"modTurbo\":false,\"modGrille\":-1,\"modShifterLeavers\":-1,\"modXenon\":false,\"modTank\":-1,\"modFrontBumper\":-1,\"modArmor\":-1,\"wheelColor\":128,\"modArchCover\":-1,\"modEngine\":-1,\"modRoof\":-1,\"modEngineBlock\":-1,\"modExhaust\":-1,\"modDashboard\":-1,\"modAirFilter\":-1,\"fuelLevel\":54.0,\"modTrimA\":-1,\"modTransmission\":-1,\"color2\":112,\"modAPlate\":-1,\"modSuspension\":-1,\"modSpeakers\":-1,\"modFrame\":-1,\"modFrontWheels\":-1,\"modTrimB\":-1,\"dirtLevel\":9.4,\"modSpoilers\":-1,\"modSeats\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"modSmokeEnabled\":1,\"modVanityPlate\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modBackWheels\":-1,\"pearlescentColor\":0,\"color1\":128,\"modRearBumper\":-1,\"modDial\":-1,\"wheels\":7,\"engineHealth\":1000.0,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"modRightFender\":-1,\"modSteeringWheel\":-1,\"modPlateHolder\":-1,\"tyreSmokeColor\":[255,255,255],\"windowTint\":-1,\"extras\":[],\"bodyHealth\":996.8,\"model\":-143695728,\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"modHood\":-1,\"plateIndex\":4,\"modFender\":-1,\"neonColor\":[255,0,255],\"modAerials\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000013bd36b18', 0, 'YUV 830', '{\"modGrille\":-1,\"modBrakes\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"neonColor\":[255,0,255],\"fuelLevel\":49.0,\"modRearBumper\":-1,\"modDashboard\":-1,\"modFender\":-1,\"model\":2046537925,\"modAPlate\":-1,\"dirtLevel\":4.0,\"modAirFilter\":-1,\"plateIndex\":4,\"color1\":134,\"modStruts\":-1,\"modPlateHolder\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrimB\":-1,\"modSmokeEnabled\":false,\"modEngineBlock\":-1,\"modTurbo\":false,\"modSpeakers\":-1,\"modEngine\":-1,\"modFrontWheels\":-1,\"modSpoilers\":-1,\"windowTint\":-1,\"modXenon\":false,\"modTransmission\":-1,\"modSteeringWheel\":-1,\"modTank\":-1,\"modExhaust\":-1,\"modRightFender\":-1,\"color2\":134,\"plate\":\"YUV 830\",\"neonEnabled\":[false,false,false,false],\"modDoorSpeaker\":-1,\"modOrnaments\":-1,\"extras\":{\"1\":false,\"2\":true},\"modAerials\":-1,\"modArchCover\":-1,\"modHood\":-1,\"modVanityPlate\":-1,\"wheelColor\":156,\"modHydrolic\":-1,\"modShifterLeavers\":-1,\"modWindows\":-1,\"modSeats\":-1,\"modFrontBumper\":-1,\"engineHealth\":1000.0,\"modSuspension\":-1,\"modSideSkirt\":-1,\"wheels\":1,\"pearlescentColor\":0,\"modTrimA\":-1,\"bodyHealth\":1000.0,\"modLivery\":0,\"modBackWheels\":-1,\"modRoof\":-1,\"modHorns\":-1,\"modDial\":-1,\"modArmor\":-1}', 'car', 'police', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:11000010c502cb5', 1, 'YXC 048', '{\"modShifterLeavers\":-1,\"modEngine\":-1,\"modBackWheels\":-1,\"extras\":[],\"dirtLevel\":3.0,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modSteeringWheel\":-1,\"modAirFilter\":-1,\"modFender\":-1,\"modTransmission\":-1,\"modExhaust\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"modSideSkirt\":-1,\"modArchCover\":-1,\"modTrimA\":-1,\"modAPlate\":-1,\"modStruts\":-1,\"fuelLevel\":32.0,\"modDial\":-1,\"modBrakes\":-1,\"bodyHealth\":1000.0,\"wheelColor\":111,\"modFrame\":-1,\"color2\":120,\"modHorns\":-1,\"modTurbo\":false,\"model\":6774487,\"modHood\":-1,\"modArmor\":-1,\"modTrunk\":-1,\"modTank\":-1,\"neonEnabled\":[false,false,false,false],\"modOrnaments\":-1,\"modSpoilers\":-1,\"plateIndex\":0,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modRightFender\":-1,\"color1\":62,\"modAerials\":-1,\"engineHealth\":1000.0,\"plate\":\"YXC 048\",\"modSpeakers\":-1,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modDashboard\":-1,\"modRoof\":-1,\"neonColor\":[255,0,255],\"modXenon\":false,\"tyreSmokeColor\":[255,255,255],\"modLivery\":-1,\"modSeats\":-1,\"pearlescentColor\":70,\"modTrimB\":-1,\"wheels\":4,\"modSuspension\":-1,\"modGrille\":-1,\"modVanityPlate\":-1,\"modFrontBumper\":-1,\"windowTint\":-1}', 'car', '', 1);
INSERT INTO `owned_vehicles` VALUES ('steam:110000115517b6d', 0, 'ZPX 621', '{\"plate\":\"ZPX 621\",\"modWindows\":-1,\"modSideSkirt\":-1,\"modHorns\":-1,\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"modShifterLeavers\":-1,\"modXenon\":false,\"modHydrolic\":-1,\"modFrontBumper\":-1,\"modArmor\":-1,\"modTank\":-1,\"color2\":134,\"modEngine\":-1,\"modRoof\":-1,\"modSpeakers\":-1,\"modExhaust\":-1,\"modDashboard\":-1,\"modBrakes\":-1,\"fuelLevel\":25.0,\"modTrimA\":-1,\"modTransmission\":-1,\"modBackWheels\":-1,\"modAPlate\":-1,\"modSuspension\":-1,\"modSeats\":-1,\"modFrame\":-1,\"modFrontWheels\":-1,\"modTrimB\":-1,\"dirtLevel\":6.6,\"modSpoilers\":-1,\"modVanityPlate\":-1,\"modTrunk\":-1,\"modSteeringWheel\":-1,\"modSmokeEnabled\":1,\"modRightFender\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"color1\":134,\"pearlescentColor\":0,\"modRearBumper\":-1,\"wheelColor\":156,\"modDial\":-1,\"wheels\":7,\"engineHealth\":864.8,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modEngineBlock\":-1,\"extras\":[],\"modAirFilter\":-1,\"tyreSmokeColor\":[255,255,255],\"windowTint\":-1,\"modArchCover\":-1,\"bodyHealth\":690.0,\"model\":338562499,\"modLivery\":-1,\"modTurbo\":false,\"modFender\":-1,\"plateIndex\":3,\"modHood\":-1,\"neonColor\":[255,0,255],\"modAerials\":-1}', 'car', '', 1);

-- ----------------------------
-- Table structure for phone_app_chat
-- ----------------------------
DROP TABLE IF EXISTS `phone_app_chat`;
CREATE TABLE `phone_app_chat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phone_app_chat
-- ----------------------------

-- ----------------------------
-- Table structure for phone_calls
-- ----------------------------
DROP TABLE IF EXISTS `phone_calls`;
CREATE TABLE `phone_calls`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l\'origine de l\'appels',
  `time` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 164 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phone_calls
-- ----------------------------
INSERT INTO `phone_calls` VALUES (122, '0761743164', 'police', 1, '2019-09-29 17:57:12', 0);
INSERT INTO `phone_calls` VALUES (123, '0761743164', '123', 1, '2019-10-07 10:13:04', 0);
INSERT INTO `phone_calls` VALUES (124, '0779187011', '110', 1, '2019-12-24 17:59:14', 0);
INSERT INTO `phone_calls` VALUES (125, '0601782226', 'police', 1, '2020-01-29 17:48:41', 0);
INSERT INTO `phone_calls` VALUES (126, '0689135742', '1', 1, '2020-01-29 18:54:08', 0);
INSERT INTO `phone_calls` VALUES (127, '0749316406', '001', 1, '2020-01-29 21:56:11', 0);
INSERT INTO `phone_calls` VALUES (128, '0749316406', '0742095947', 1, '2020-01-29 21:58:03', 0);
INSERT INTO `phone_calls` VALUES (129, '0742095947', '0749316406', 0, '2020-01-29 21:58:03', 0);
INSERT INTO `phone_calls` VALUES (130, '0742095947', 'mechanic', 1, '2020-01-30 14:47:16', 0);
INSERT INTO `phone_calls` VALUES (131, '0749316406', '0742095947', 1, '2020-02-01 00:25:19', 0);
INSERT INTO `phone_calls` VALUES (132, '0742095947', '0749316406', 0, '2020-02-01 00:25:19', 0);
INSERT INTO `phone_calls` VALUES (133, '0675573730', '0749316406', 1, '2020-02-01 12:25:08', 0);
INSERT INTO `phone_calls` VALUES (134, '0749316406', '0675573730', 0, '2020-02-01 12:25:08', 0);
INSERT INTO `phone_calls` VALUES (135, '0675573730', '0749316406', 1, '2020-02-01 13:45:26', 0);
INSERT INTO `phone_calls` VALUES (136, '0749316406', '0675573730', 0, '2020-02-01 13:45:26', 0);
INSERT INTO `phone_calls` VALUES (137, '0749316406', '0675573730', 1, '2020-02-01 13:45:35', 1);
INSERT INTO `phone_calls` VALUES (138, '0675573730', '0749316406', 0, '2020-02-01 13:45:35', 1);
INSERT INTO `phone_calls` VALUES (139, '0749316406', '0675573730', 1, '2020-02-01 13:47:46', 1);
INSERT INTO `phone_calls` VALUES (140, '0675573730', '0749316406', 0, '2020-02-01 13:47:46', 1);
INSERT INTO `phone_calls` VALUES (141, '0675573730', '0749316406', 1, '2020-02-01 14:28:44', 0);
INSERT INTO `phone_calls` VALUES (142, '0749316406', '0675573730', 0, '2020-02-01 14:28:44', 0);
INSERT INTO `phone_calls` VALUES (143, '0675573730', '0749316406', 1, '2020-02-01 15:11:41', 0);
INSERT INTO `phone_calls` VALUES (144, '0749316406', '0675573730', 0, '2020-02-01 15:11:41', 0);
INSERT INTO `phone_calls` VALUES (145, '0749316406', '0675573730', 1, '2020-02-01 15:13:03', 1);
INSERT INTO `phone_calls` VALUES (146, '0675573730', '0749316406', 0, '2020-02-01 15:13:03', 1);
INSERT INTO `phone_calls` VALUES (147, '0675573730', '0749316406', 1, '2020-02-01 15:13:33', 1);
INSERT INTO `phone_calls` VALUES (148, '0749316406', '0675573730', 0, '2020-02-01 15:13:33', 1);
INSERT INTO `phone_calls` VALUES (149, '0675573730', '0749316406', 1, '2020-02-01 15:18:11', 0);
INSERT INTO `phone_calls` VALUES (150, '0749316406', '0675573730', 0, '2020-02-01 15:18:11', 0);
INSERT INTO `phone_calls` VALUES (151, '0675573730', '0749316406', 1, '2020-02-01 15:35:17', 0);
INSERT INTO `phone_calls` VALUES (152, '0749316406', '0675573730', 0, '2020-02-01 15:35:17', 0);
INSERT INTO `phone_calls` VALUES (153, '0675573730', '0706329345', 1, '2020-02-01 15:38:30', 0);
INSERT INTO `phone_calls` VALUES (154, '0706329345', '0675573730', 0, '2020-02-01 15:38:30', 0);
INSERT INTO `phone_calls` VALUES (155, '0600933837', '666', 1, '2020-02-01 17:17:34', 0);
INSERT INTO `phone_calls` VALUES (156, '0675573730', '0749316406', 1, '2020-02-01 18:41:32', 1);
INSERT INTO `phone_calls` VALUES (157, '0749316406', '0675573730', 0, '2020-02-01 18:41:32', 1);
INSERT INTO `phone_calls` VALUES (158, '0732604980', 'ambulance', 1, '2020-02-02 11:16:34', 0);
INSERT INTO `phone_calls` VALUES (159, '0732604980', 'mechanic', 1, '2020-02-02 11:16:56', 0);
INSERT INTO `phone_calls` VALUES (160, '0749316406', '1', 1, '2020-02-02 11:41:49', 0);
INSERT INTO `phone_calls` VALUES (161, '0732604980', 'mechanic', 1, '2020-02-02 12:06:45', 0);
INSERT INTO `phone_calls` VALUES (162, '0732604980', '1255', 1, '2020-02-02 17:23:47', 0);
INSERT INTO `phone_calls` VALUES (163, '0732604980', 'mechanic', 1, '2020-02-02 17:47:45', 0);

-- ----------------------------
-- Table structure for phone_messages
-- ----------------------------
DROP TABLE IF EXISTS `phone_messages`;
CREATE TABLE `phone_messages`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receiver` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `time` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 271 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phone_messages
-- ----------------------------
INSERT INTO `phone_messages` VALUES (106, 'ambulance', '0761743164', 'De #0761743164 : GPS: 272.79837036133, -1358.7974853516', '2019-10-06 11:34:00', 1, 0);
INSERT INTO `phone_messages` VALUES (107, 'ambulance', '0761743164', 'GPS: 272.79837036133, -1358.7974853516', '2019-10-06 11:34:00', 1, 1);
INSERT INTO `phone_messages` VALUES (108, 'ambulance', '0761743164', 'De #0761743164 : Medical attention required: unconscious citizen! vector3(1117.402, 1237.666, 188.44), 1237.6658935547', '2019-10-06 22:24:59', 1, 0);
INSERT INTO `phone_messages` VALUES (109, 'ambulance', '0761743164', 'De #0761743164 : 需要医疗护理：无意识公民！ 272.71569824219, -1359.1815185547', '2019-10-14 17:32:16', 1, 0);
INSERT INTO `phone_messages` VALUES (110, 'ambulance', '0716998291', 'GPS: -372.22729492188, -153.77368164063', '2019-10-16 17:15:11', 1, 1);
INSERT INTO `phone_messages` VALUES (111, 'police', '0779187011', 'De #0779187011 : Shop robbery at the cai\'s shop 380.74, 331.94', '2019-12-20 13:18:59', 1, 0);
INSERT INTO `phone_messages` VALUES (112, 'police', '0779187011', 'De #0779187011 : Shop robbery at the cai\'s shop 380.74, 331.94', '2019-12-20 13:19:09', 1, 0);
INSERT INTO `phone_messages` VALUES (113, 'police', '0779187011', 'De #0779187011 : Shop robbery at the cai\'s shop 380.74, 331.94', '2019-12-20 13:19:19', 1, 0);
INSERT INTO `phone_messages` VALUES (114, 'police', '0779187011', 'De #0779187011 : Shop robbery at the cai\'s shop 380.74, 331.94', '2019-12-20 13:19:40', 1, 0);
INSERT INTO `phone_messages` VALUES (115, 'police', '0779187011', 'De #0779187011 : Shop robbery at the cai\'s shop 380.74, 331.94', '2019-12-20 13:22:10', 1, 0);
INSERT INTO `phone_messages` VALUES (116, 'police', '0779187011', 'De #0779187011 : Shop robbery at the cai\'s shop 380.74, 331.94', '2019-12-20 13:22:37', 1, 0);
INSERT INTO `phone_messages` VALUES (117, 'police', '0779187011', 'De #0779187011 : Shop robbery at the cai\'s shop 380.74, 331.94', '2019-12-20 13:23:56', 1, 0);
INSERT INTO `phone_messages` VALUES (118, 'police', '0779187011', 'De #0779187011 : Shop robbery at the cai\'s shop 380.74, 331.94', '2019-12-20 13:24:01', 1, 0);
INSERT INTO `phone_messages` VALUES (119, 'police', '0779187011', 'De #0779187011 : Shop robbery at the cai\'s shop 380.74, 331.94', '2019-12-20 13:24:02', 1, 0);
INSERT INTO `phone_messages` VALUES (120, 'police', '0779187011', 'De #0779187011 : Shop robbery at the cai\'s shop 380.74, 331.94', '2019-12-20 13:24:03', 1, 0);
INSERT INTO `phone_messages` VALUES (121, 'police', '0779187011', 'De #0779187011 : Shop robbery at the cai\'s shop 380.74, 331.94', '2019-12-20 13:24:03', 1, 0);
INSERT INTO `phone_messages` VALUES (122, 'police', '0779187011', 'GPS: 440.61349487305, -978.95788574219', '2019-12-24 17:59:31', 1, 1);
INSERT INTO `phone_messages` VALUES (123, 'police', '0779187011', 'De #0779187011 : GPS: 440.7643737793, -978.84674072266', '2019-12-24 17:59:53', 1, 0);
INSERT INTO `phone_messages` VALUES (124, 'police', '0779187011', 'GPS: 440.7643737793, -978.84674072266', '2019-12-24 17:59:53', 1, 1);
INSERT INTO `phone_messages` VALUES (125, 'police', '0779187011', 'De #0779187011 : Shop robbery at the cai\'s shop 380.74, 331.94', '2019-12-26 11:44:25', 1, 0);
INSERT INTO `phone_messages` VALUES (126, 'police', '0779187011', 'De #0779187011 : Shop robbery at the lili\'s shop -3047.88, 588.16', '2019-12-26 11:47:39', 1, 0);
INSERT INTO `phone_messages` VALUES (127, 'mechanic', '0779187011', 'De #0779187011 : GPS: -3042.6491699219, 599.62158203125', '2020-01-02 10:15:12', 1, 0);
INSERT INTO `phone_messages` VALUES (128, 'mechanic', '0779187011', 'GPS: -3042.6491699219, 599.62158203125', '2020-01-02 10:15:12', 1, 1);
INSERT INTO `phone_messages` VALUES (129, 'mechanic', '0779187011', 'De #0779187011 : 在吗', '2020-01-02 10:15:56', 1, 0);
INSERT INTO `phone_messages` VALUES (130, 'mechanic', '0779187011', '在吗', '2020-01-02 10:15:56', 1, 1);
INSERT INTO `phone_messages` VALUES (131, 'ambulance', '0779187011', 'GPS: -2098.1779785156, -324.34429931641', '2020-01-02 10:19:46', 1, 1);
INSERT INTO `phone_messages` VALUES (132, 'mechanic', '0779187011', 'De #0779187011 : GPS: -2098.1779785156, -324.34429931641', '2020-01-02 10:19:52', 1, 0);
INSERT INTO `phone_messages` VALUES (133, 'mechanic', '0779187011', 'GPS: -2098.1779785156, -324.34429931641', '2020-01-02 10:19:52', 1, 1);
INSERT INTO `phone_messages` VALUES (134, 'police', '0779187011', 'De #0779187011 : Shop robbery at the lili\'s shop -3047.88, 588.16', '2020-01-02 10:37:18', 1, 0);
INSERT INTO `phone_messages` VALUES (135, 'ambulance', '0779187011', 'De #0779187011 : Interventtion requise: citoyen inconscient! 1193.5428466797, -1099.9549560547', '2020-01-02 11:55:39', 1, 0);
INSERT INTO `phone_messages` VALUES (136, 'police', '0779187011', 'De #0779187011 : GPS: 346.51998901367, -1013.1903076172', '2020-01-06 16:54:28', 1, 0);
INSERT INTO `phone_messages` VALUES (137, 'police', '0779187011', 'GPS: 346.51998901367, -1013.1903076172', '2020-01-06 16:54:28', 1, 1);
INSERT INTO `phone_messages` VALUES (138, 'police', '0779187011', 'De #0779187011 : A burglary has been detected at\n Grove Street 1 126.73, -1930.2', '2020-01-06 16:54:40', 1, 0);
INSERT INTO `phone_messages` VALUES (139, 'police', '0779187011', 'De #0779187011 : A burglary has been detected at\n Grove Street 1 126.73, -1930.2', '2020-01-06 17:37:08', 1, 0);
INSERT INTO `phone_messages` VALUES (140, 'police', '0779187011', 'De #0779187011 : GPS: 374.15591430664, 327.27142333984', '2020-01-08 13:43:35', 1, 0);
INSERT INTO `phone_messages` VALUES (141, 'police', '0779187011', 'GPS: 374.15591430664, 327.27142333984', '2020-01-08 13:43:35', 1, 1);
INSERT INTO `phone_messages` VALUES (142, 'police', '0779187011', 'De #0779187011 : Shop robbery at the ?\'s shop 380.74, 331.94', '2020-01-08 13:43:50', 1, 0);
INSERT INTO `phone_messages` VALUES (143, 'police', '0779187011', 'De #0779187011 : Shop robbery at the ?\'s shop 380.74, 331.94', '2020-01-11 09:20:56', 1, 0);
INSERT INTO `phone_messages` VALUES (144, 'police', '0779187011', 'De #0779187011 : Shop robbery at the ?\'s shop 380.74, 331.94', '2020-01-11 09:27:23', 1, 0);
INSERT INTO `phone_messages` VALUES (145, 'police', '0779187011', 'De #0779187011 : Shop robbery at the ?\'s shop 380.74, 331.94', '2020-01-11 09:32:02', 1, 0);
INSERT INTO `phone_messages` VALUES (146, 'police', '0779187011', 'De #0779187011 : A burglary has been detected at\n Grove Street 2 85.58, -1959.38', '2020-01-13 10:33:37', 1, 0);
INSERT INTO `phone_messages` VALUES (147, 'ambulance', '0779187011', 'GPS: 215.48532104492, -820.16467285156', '2020-01-16 13:34:08', 1, 1);
INSERT INTO `phone_messages` VALUES (148, 'ambulance', '0779187011', 'GPS: 215.48532104492, -820.16467285156', '2020-01-16 13:34:32', 1, 1);
INSERT INTO `phone_messages` VALUES (149, 'ambulance', '0779187011', 'De #0779187011 : GPS: 212.69052124023, -811.75665283203', '2020-01-16 13:42:34', 1, 0);
INSERT INTO `phone_messages` VALUES (150, 'ambulance', '0779187011', 'GPS: 212.69052124023, -811.75665283203', '2020-01-16 13:42:34', 1, 1);
INSERT INTO `phone_messages` VALUES (151, 'ambulance', '0779187011', 'De #0779187011 : 需要医疗: 无意识的公民! 347.58184814453, -862.96173095703', '2020-01-16 13:46:11', 1, 0);
INSERT INTO `phone_messages` VALUES (152, 'police', '0779187011', 'De #0779187011 : A burglary has been detected at\n Grove Street 2 85.58, -1959.38', '2020-01-21 17:11:34', 1, 0);
INSERT INTO `phone_messages` VALUES (153, 'ambulance', '0779187011', 'De #0779187011 : 需要医疗: 无意识的公民! -22.157709121704, -916.45153808594', '2020-01-25 14:37:37', 1, 0);
INSERT INTO `phone_messages` VALUES (154, 'ambulance', '0779187011', 'De #0771783447 : 需要医疗: 无意识的公民! 289.83343505859, -14.58701133728', '2020-01-29 14:14:25', 1, 0);
INSERT INTO `phone_messages` VALUES (155, 'mechanic', '0771783447', 'De #0602996826 : lai', '2020-01-29 14:46:03', 1, 0);
INSERT INTO `phone_messages` VALUES (156, 'mechanic', '0602996826', 'lai', '2020-01-29 14:46:03', 1, 1);
INSERT INTO `phone_messages` VALUES (159, 'mechanic', '0771783447', 'De #0602996826 : GPS: -1089.2139892578, -2019.4545898438', '2020-01-29 14:50:49', 1, 0);
INSERT INTO `phone_messages` VALUES (160, 'mechanic', '0602996826', 'GPS: -1089.2139892578, -2019.4545898438', '2020-01-29 14:50:49', 1, 1);
INSERT INTO `phone_messages` VALUES (161, 'police', '0779187011', 'De #0749316406 : A burglary has been detected at\n Grove Street 1 126.73, -1930.2', '2020-01-29 16:27:18', 0, 0);
INSERT INTO `phone_messages` VALUES (162, 'police', '0779187011', 'De #0749316406 : A burglary has been detected at\n Grove Street 2 85.58, -1959.38', '2020-01-29 16:30:55', 0, 0);
INSERT INTO `phone_messages` VALUES (163, 'police', '0779187011', 'De #0749316406 : A burglary has been detected at\n Robban 1229.1, -725.47', '2020-01-29 16:35:43', 0, 0);
INSERT INTO `phone_messages` VALUES (164, 'police', '0779187011', 'De #0749316406 : A burglary has been detected at\n Robban 1229.1, -725.47', '2020-01-29 16:35:56', 0, 0);
INSERT INTO `phone_messages` VALUES (165, '0749316406', '0742095947', 'GPS: -592.76788330078, -1617.9409179688', '2020-01-29 19:29:53', 1, 0);
INSERT INTO `phone_messages` VALUES (166, '0742095947', '0749316406', 'GPS: -592.76788330078, -1617.9409179688', '2020-01-29 19:29:53', 1, 1);
INSERT INTO `phone_messages` VALUES (167, 'police', '0689135742', 'De #0764562988 : A burglary has been detected at\n Grove Street 2 85.58, -1959.38', '2020-01-29 19:33:04', 1, 0);
INSERT INTO `phone_messages` VALUES (168, '0749316406', '0742095947', 'GPS: 1754.1442871094, -1649.0872802734', '2020-01-29 20:15:56', 1, 0);
INSERT INTO `phone_messages` VALUES (169, '0742095947', '0749316406', 'GPS: 1754.1442871094, -1649.0872802734', '2020-01-29 20:15:57', 1, 1);
INSERT INTO `phone_messages` VALUES (170, 'police', '0601782226', 'De #0771783447 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:21:52', 0, 0);
INSERT INTO `phone_messages` VALUES (171, 'police', '0689135742', 'De #0771783447 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:21:52', 1, 0);
INSERT INTO `phone_messages` VALUES (172, 'police', '0601782226', 'De #0660388183 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:22:14', 0, 0);
INSERT INTO `phone_messages` VALUES (173, 'police', '0689135742', 'De #0660388183 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:22:14', 1, 0);
INSERT INTO `phone_messages` VALUES (174, 'police', '0601782226', 'De #0660388183 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:22:44', 0, 0);
INSERT INTO `phone_messages` VALUES (175, 'police', '0689135742', 'De #0660388183 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:22:44', 1, 0);
INSERT INTO `phone_messages` VALUES (176, 'police', '0601782226', 'De #0771783447 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:34:26', 0, 0);
INSERT INTO `phone_messages` VALUES (177, 'police', '0689135742', 'De #0771783447 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:34:26', 1, 0);
INSERT INTO `phone_messages` VALUES (178, 'police', '0601782226', 'De #0771783447 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:37:04', 0, 0);
INSERT INTO `phone_messages` VALUES (179, 'police', '0689135742', 'De #0771783447 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:37:04', 1, 0);
INSERT INTO `phone_messages` VALUES (180, 'police', '0601782226', 'De #0660388183 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:42:22', 0, 0);
INSERT INTO `phone_messages` VALUES (181, 'police', '0689135742', 'De #0660388183 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:42:22', 1, 0);
INSERT INTO `phone_messages` VALUES (182, 'police', '0601782226', 'De #0775189208 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:42:44', 0, 0);
INSERT INTO `phone_messages` VALUES (183, 'police', '0689135742', 'De #0775189208 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:42:44', 1, 0);
INSERT INTO `phone_messages` VALUES (184, 'police', '0689135742', 'De #0660388183 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:43:28', 1, 0);
INSERT INTO `phone_messages` VALUES (185, 'police', '0601782226', 'De #0660388183 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:43:28', 0, 0);
INSERT INTO `phone_messages` VALUES (186, 'police', '0601782226', 'De #0775189208 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:44:32', 0, 0);
INSERT INTO `phone_messages` VALUES (187, 'police', '0689135742', 'De #0775189208 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:44:32', 0, 0);
INSERT INTO `phone_messages` VALUES (188, 'police', '0779187011', 'De #0775189208 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:45:42', 0, 0);
INSERT INTO `phone_messages` VALUES (189, 'police', '0601782226', 'De #0775189208 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:45:42', 0, 0);
INSERT INTO `phone_messages` VALUES (190, 'police', '0689135742', 'De #0775189208 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:45:42', 0, 0);
INSERT INTO `phone_messages` VALUES (191, 'police', '0779187011', 'De #0775189208 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:47:41', 0, 0);
INSERT INTO `phone_messages` VALUES (192, 'police', '0601782226', 'De #0775189208 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:47:41', 0, 0);
INSERT INTO `phone_messages` VALUES (193, 'police', '0689135742', 'De #0775189208 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:47:41', 0, 0);
INSERT INTO `phone_messages` VALUES (194, 'police', '0601782226', 'De #0771783447 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:50:48', 0, 0);
INSERT INTO `phone_messages` VALUES (195, 'police', '0689135742', 'De #0771783447 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:50:48', 0, 0);
INSERT INTO `phone_messages` VALUES (196, 'police', '0601782226', 'De #0660388183 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:51:21', 0, 0);
INSERT INTO `phone_messages` VALUES (197, 'police', '0689135742', 'De #0660388183 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:51:21', 0, 0);
INSERT INTO `phone_messages` VALUES (198, 'police', '0601782226', 'De #0660388183 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:53:21', 0, 0);
INSERT INTO `phone_messages` VALUES (199, 'police', '0689135742', 'De #0660388183 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 21:53:21', 0, 0);
INSERT INTO `phone_messages` VALUES (200, 'police', '0601782226', 'De #0771783447 : A burglary has been detected at\n Grove Street 2 85.58, -1959.38', '2020-01-29 21:59:05', 0, 0);
INSERT INTO `phone_messages` VALUES (201, 'police', '0689135742', 'De #0771783447 : A burglary has been detected at\n Grove Street 2 85.58, -1959.38', '2020-01-29 21:59:05', 0, 0);
INSERT INTO `phone_messages` VALUES (202, 'police', '0601782226', 'De #0660388183 : A burglary has been detected at\n Grove Street 1 126.73, -1930.2', '2020-01-29 21:59:22', 0, 0);
INSERT INTO `phone_messages` VALUES (203, 'police', '0689135742', 'De #0660388183 : A burglary has been detected at\n Grove Street 1 126.73, -1930.2', '2020-01-29 21:59:22', 0, 0);
INSERT INTO `phone_messages` VALUES (204, 'police', '0601782226', 'De #0601782226 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 22:12:34', 0, 0);
INSERT INTO `phone_messages` VALUES (205, 'police', '0689135742', 'De #0601782226 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 22:12:34', 0, 0);
INSERT INTO `phone_messages` VALUES (206, 'police', '0601782226', 'De #0601782226 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 22:13:40', 0, 0);
INSERT INTO `phone_messages` VALUES (207, 'police', '0689135742', 'De #0601782226 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 22:13:40', 0, 0);
INSERT INTO `phone_messages` VALUES (208, 'police', '0601782226', 'De #0601782226 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 22:14:43', 0, 0);
INSERT INTO `phone_messages` VALUES (209, 'police', '0689135742', 'De #0601782226 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 22:14:43', 0, 0);
INSERT INTO `phone_messages` VALUES (210, 'police', '0601782226', 'De #0601782226 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 22:17:06', 0, 0);
INSERT INTO `phone_messages` VALUES (211, 'police', '0689135742', 'De #0601782226 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 22:17:06', 0, 0);
INSERT INTO `phone_messages` VALUES (212, 'police', '0601782226', 'De #0601782226 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 22:17:06', 0, 0);
INSERT INTO `phone_messages` VALUES (213, 'police', '0689135742', 'De #0601782226 : Shop robbery at the lulu\'s shop 380.74, 331.94', '2020-01-29 22:17:06', 0, 0);
INSERT INTO `phone_messages` VALUES (214, 'mechanic', '0771783447', 'De #0742095947 : .', '2020-01-29 22:21:24', 1, 0);
INSERT INTO `phone_messages` VALUES (215, 'mechanic', '0660388183', 'De #0742095947 : .', '2020-01-29 22:21:24', 1, 0);
INSERT INTO `phone_messages` VALUES (216, 'mechanic', '0742095947', '.', '2020-01-29 22:21:24', 1, 1);
INSERT INTO `phone_messages` VALUES (217, 'mechanic', '0771783447', 'De #0742095947 : 22', '2020-01-29 22:21:40', 1, 0);
INSERT INTO `phone_messages` VALUES (218, 'mechanic', '0660388183', 'De #0742095947 : 22', '2020-01-29 22:21:40', 1, 0);
INSERT INTO `phone_messages` VALUES (219, 'mechanic', '0742095947', '22', '2020-01-29 22:21:40', 1, 1);
INSERT INTO `phone_messages` VALUES (220, 'mechanic', '0660388183', 'De #0742095947 : GPS: 903.77825927734, 6497.5981445313', '2020-01-29 22:22:01', 1, 0);
INSERT INTO `phone_messages` VALUES (221, 'mechanic', '0771783447', 'De #0742095947 : GPS: 903.77825927734, 6497.5981445313', '2020-01-29 22:22:01', 1, 0);
INSERT INTO `phone_messages` VALUES (222, 'mechanic', '0742095947', 'GPS: 903.77825927734, 6497.5981445313', '2020-01-29 22:22:01', 1, 1);
INSERT INTO `phone_messages` VALUES (223, 'police', '0660797119', 'De #0660388183 : Shop robbery at the Best Car Shop\'s shop 30.45, -1339.88', '2020-01-30 00:19:31', 1, 0);
INSERT INTO `phone_messages` VALUES (224, 'police', '0689135742', 'De #0660388183 : Shop robbery at the Best Car Shop\'s shop 30.45, -1339.88', '2020-01-30 00:19:31', 0, 0);
INSERT INTO `phone_messages` VALUES (225, 'police', '0660797119', 'De #0660388183 : Shop robbery at the Auto SHOP\'s shop -708.12, -904.24', '2020-01-30 01:02:00', 1, 0);
INSERT INTO `phone_messages` VALUES (226, 'police', '0601782226', 'De #0660388183 : Shop robbery at the Auto SHOP\'s shop -708.12, -904.24', '2020-01-30 01:02:00', 0, 0);
INSERT INTO `phone_messages` VALUES (227, 'police', '0689135742', 'De #0660388183 : Shop robbery at the Auto SHOP\'s shop -708.12, -904.24', '2020-01-30 01:02:00', 0, 0);
INSERT INTO `phone_messages` VALUES (228, 'ambulance', '0660797119', 'De #0689135742 : 需要医疗: 无意识的公民! -52.619724273682, -582.59814453125', '2020-01-30 01:08:03', 1, 0);
INSERT INTO `phone_messages` VALUES (229, 'police', '0601782226', 'De #0660388183 : Shop robbery at the PIGG.food\'s shop -1478.97, -374.36', '2020-01-30 01:12:45', 0, 0);
INSERT INTO `phone_messages` VALUES (230, 'police', '0689135742', 'De #0660388183 : Shop robbery at the PIGG.food\'s shop -1478.97, -374.36', '2020-01-30 01:12:45', 0, 0);
INSERT INTO `phone_messages` VALUES (231, 'police', '0601782226', 'De #0689135742 : Shop robbery at the 0\'s shop 1160.77, -314.03', '2020-01-30 01:23:12', 0, 0);
INSERT INTO `phone_messages` VALUES (232, 'police', '0689135742', 'De #0689135742 : Shop robbery at the 0\'s shop 1160.77, -314.03', '2020-01-30 01:23:12', 0, 0);
INSERT INTO `phone_messages` VALUES (233, 'ambulance', '0660797119', 'De #0689135742 : 需要医疗: 无意识的公民! 979.30798339844, -168.97218322754', '2020-01-30 01:28:00', 1, 0);
INSERT INTO `phone_messages` VALUES (234, 'ambulance', '0660797119', 'De #0689135742 : 需要医疗: 无意识的公民! 977.28454589844, -167.943359375', '2020-01-30 01:32:54', 1, 0);
INSERT INTO `phone_messages` VALUES (235, 'ambulance', '0660797119', 'De #0601782226 : 需要医疗: 无意识的公民! -124.85567474365, -27.73850440979', '2020-01-30 01:43:25', 1, 0);
INSERT INTO `phone_messages` VALUES (236, '0749316406', '0742095947', 'GPS: 1201.8916015625, -3085.9704589844', '2020-01-30 02:41:21', 1, 0);
INSERT INTO `phone_messages` VALUES (237, '0742095947', '0749316406', 'GPS: 1201.8916015625, -3085.9704589844', '2020-01-30 02:41:22', 1, 1);
INSERT INTO `phone_messages` VALUES (238, '0749316406', '0742095947', 'GPS: 305.26846313477, -1089.3333740234', '2020-01-30 03:40:40', 1, 0);
INSERT INTO `phone_messages` VALUES (239, '0742095947', '0749316406', 'GPS: 305.26846313477, -1089.3333740234', '2020-01-30 03:40:40', 1, 1);
INSERT INTO `phone_messages` VALUES (240, 'ambulance', '0779187011', 'De #0633245849 : 需要医疗: 无意识的公民! -367.79586791992, -2233.5766601563', '2020-01-30 11:45:46', 1, 0);
INSERT INTO `phone_messages` VALUES (241, 'ambulance', '0660797119', 'De #0633245849 : 需要医疗: 无意识的公民! -1772.7525634766, 443.9626159668', '2020-01-30 12:37:35', 1, 0);
INSERT INTO `phone_messages` VALUES (242, 'ambulance', '0660797119', 'De #0675573730 : 需要医疗: 无意识的公民! -1760.8408203125, 430.98309326172', '2020-01-30 12:40:56', 1, 0);
INSERT INTO `phone_messages` VALUES (243, 'ambulance', '0660797119', 'De #0633245849 : 需要医疗: 无意识的公民! -38.073101043701, -1105.9084472656', '2020-01-30 14:26:53', 1, 0);
INSERT INTO `phone_messages` VALUES (244, '0749316406', '0742095947', 'GPS: 28.419107437134, -738.90167236328', '2020-01-30 14:57:59', 1, 0);
INSERT INTO `phone_messages` VALUES (245, '0742095947', '0749316406', 'GPS: 28.419107437134, -738.90167236328', '2020-01-30 14:57:59', 1, 1);
INSERT INTO `phone_messages` VALUES (246, 'ambulance', '0602996826', 'lai', '2020-01-30 15:26:17', 1, 1);
INSERT INTO `phone_messages` VALUES (247, 'ambulance', '0602996826', 'GPS: 29.798234939575, -1356.9782714844', '2020-01-30 15:26:42', 1, 1);
INSERT INTO `phone_messages` VALUES (248, '0764562988', '0749316406', 'GPS: -41.305290222168, -1112.91796875', '2020-01-30 16:59:14', 1, 0);
INSERT INTO `phone_messages` VALUES (249, '0749316406', '0764562988', 'GPS: -41.305290222168, -1112.91796875', '2020-01-30 16:59:14', 1, 1);
INSERT INTO `phone_messages` VALUES (250, '0742095947', '0749316406', 'GPS: -1119.3952636719, -1407.5565185547', '2020-01-31 01:41:00', 1, 0);
INSERT INTO `phone_messages` VALUES (251, '0749316406', '0742095947', 'GPS: -1119.3952636719, -1407.5565185547', '2020-01-31 01:41:00', 1, 1);
INSERT INTO `phone_messages` VALUES (252, '0742095947', '0749316406', 'GPS: -2432.3916015625, 3832.6853027344', '2020-01-31 06:58:01', 1, 0);
INSERT INTO `phone_messages` VALUES (253, '0749316406', '0742095947', 'GPS: -2432.3916015625, 3832.6853027344', '2020-01-31 06:58:01', 1, 1);
INSERT INTO `phone_messages` VALUES (254, '0742095947', '0749316406', 'GPS: -2742.6052246094, 2261.5393066406', '2020-01-31 07:07:33', 1, 0);
INSERT INTO `phone_messages` VALUES (255, '0749316406', '0742095947', 'GPS: -2742.6052246094, 2261.5393066406', '2020-01-31 07:07:33', 1, 1);
INSERT INTO `phone_messages` VALUES (256, 'police', '0600933837', 'De #0749316406 : GPS: 461.76928710938, -986.30285644531', '2020-01-31 21:11:50', 1, 0);
INSERT INTO `phone_messages` VALUES (257, 'police', '0749316406', 'GPS: 461.76928710938, -986.30285644531', '2020-01-31 21:11:50', 1, 1);
INSERT INTO `phone_messages` VALUES (258, 'ambulance', '0749316406', '可卡有68个成品  你来取吧', '2020-01-31 22:31:25', 1, 1);
INSERT INTO `phone_messages` VALUES (259, 'ambulance', '0749316406', 'GPS: 130.01103210449, 571.73937988281', '2020-01-31 22:32:10', 1, 1);
INSERT INTO `phone_messages` VALUES (260, 'mechanic', '0742095947', 'GPS: -547.55346679688, 24.195259094238', '2020-02-01 10:04:37', 1, 1);
INSERT INTO `phone_messages` VALUES (261, 'mechanic', '0629461669', 'De #0742095947 : GPS: -547.25128173828, 25.029308319092', '2020-02-01 10:08:44', 1, 0);
INSERT INTO `phone_messages` VALUES (262, 'mechanic', '0742095947', 'GPS: -547.25128173828, 25.029308319092', '2020-02-01 10:08:44', 1, 1);
INSERT INTO `phone_messages` VALUES (263, 'mechanic', '0742095947', 'GPS: 72.67993927002, -712.17608642578', '2020-02-01 10:14:37', 1, 1);
INSERT INTO `phone_messages` VALUES (264, 'mechanic', '0742095947', 'GPS: -212.17324829102, -1011.9868164063', '2020-02-01 10:23:11', 1, 1);
INSERT INTO `phone_messages` VALUES (265, 'mechanic', '0742095947', 'GPS: -212.17324829102, -1011.9868164063', '2020-02-01 10:23:14', 1, 1);
INSERT INTO `phone_messages` VALUES (266, 'police', '0629461669', 'De #0742095947 : GPS: -218.75836181641, -1021.149230957', '2020-02-01 10:23:53', 1, 0);
INSERT INTO `phone_messages` VALUES (267, 'police', '0600933837', 'De #0742095947 : GPS: -218.75836181641, -1021.149230957', '2020-02-01 10:23:53', 1, 0);
INSERT INTO `phone_messages` VALUES (268, 'police', '0742095947', 'GPS: -218.75836181641, -1021.149230957', '2020-02-01 10:23:53', 1, 1);
INSERT INTO `phone_messages` VALUES (269, '0675573730', '0706329345', 'GPS: 1998.6121826172, -1821.8110351563', '2020-02-01 14:49:38', 1, 0);
INSERT INTO `phone_messages` VALUES (270, '0706329345', '0675573730', 'GPS: 1998.6121826172, -1821.8110351563', '2020-02-01 14:49:38', 1, 1);

-- ----------------------------
-- Table structure for phone_users_contacts
-- ----------------------------
DROP TABLE IF EXISTS `phone_users_contacts`;
CREATE TABLE `phone_users_contacts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phone_users_contacts
-- ----------------------------
INSERT INTO `phone_users_contacts` VALUES (7, 'steam:110000117b4ecd8', '0742095947', '大厨');
INSERT INTO `phone_users_contacts` VALUES (8, 'steam:110000115517b6d', '0749316406', '洗钱');
INSERT INTO `phone_users_contacts` VALUES (9, 'steam:11000013716cde4', '0749316406', 'pai li');
INSERT INTO `phone_users_contacts` VALUES (10, 'steam:11000013716cde4', '0706329345', 'CHEN GOU DER');
INSERT INTO `phone_users_contacts` VALUES (11, 'steam:1100001350a4e14', '', '新联系人');

-- ----------------------------
-- Table structure for properties
-- ----------------------------
DROP TABLE IF EXISTS `properties`;
CREATE TABLE `properties`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `label` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `entering` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `exit` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inside` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `outside` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ipls` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '[]',
  `gateway` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_single` int(11) NULL DEFAULT NULL,
  `is_room` int(11) NULL DEFAULT NULL,
  `is_gateway` int(11) NULL DEFAULT NULL,
  `room_menu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of properties
-- ----------------------------
INSERT INTO `properties` VALUES (1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000);
INSERT INTO `properties` VALUES (2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000);
INSERT INTO `properties` VALUES (3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000);
INSERT INTO `properties` VALUES (4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000);
INSERT INTO `properties` VALUES (5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000);
INSERT INTO `properties` VALUES (6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000);
INSERT INTO `properties` VALUES (7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500);
INSERT INTO `properties` VALUES (8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000);
INSERT INTO `properties` VALUES (9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000);
INSERT INTO `properties` VALUES (10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000);
INSERT INTO `properties` VALUES (11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000);
INSERT INTO `properties` VALUES (12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO `properties` VALUES (13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000);
INSERT INTO `properties` VALUES (14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000);
INSERT INTO `properties` VALUES (15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000);
INSERT INTO `properties` VALUES (16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000);
INSERT INTO `properties` VALUES (17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000);
INSERT INTO `properties` VALUES (18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000);
INSERT INTO `properties` VALUES (19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000);
INSERT INTO `properties` VALUES (20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000);
INSERT INTO `properties` VALUES (21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000);
INSERT INTO `properties` VALUES (22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000);
INSERT INTO `properties` VALUES (23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000);
INSERT INTO `properties` VALUES (24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000);
INSERT INTO `properties` VALUES (25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000);
INSERT INTO `properties` VALUES (26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000);
INSERT INTO `properties` VALUES (27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000);
INSERT INTO `properties` VALUES (28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000);
INSERT INTO `properties` VALUES (29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000);
INSERT INTO `properties` VALUES (30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000);
INSERT INTO `properties` VALUES (31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000);
INSERT INTO `properties` VALUES (32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000);
INSERT INTO `properties` VALUES (33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000);
INSERT INTO `properties` VALUES (34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000);
INSERT INTO `properties` VALUES (35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000);
INSERT INTO `properties` VALUES (36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000);
INSERT INTO `properties` VALUES (37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO `properties` VALUES (38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000);
INSERT INTO `properties` VALUES (39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000);
INSERT INTO `properties` VALUES (40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO `properties` VALUES (41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000);
INSERT INTO `properties` VALUES (42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000);

-- ----------------------------
-- Table structure for record_multi
-- ----------------------------
DROP TABLE IF EXISTS `record_multi`;
CREATE TABLE `record_multi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `race` int(11) NOT NULL,
  `record` int(11) NOT NULL,
  `vehicle` int(11) NOT NULL,
  `nb_laps` int(11) NOT NULL,
  `multi_race_id` int(11) NOT NULL,
  `ended` tinyint(1) NOT NULL,
  `record_date` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record_multi
-- ----------------------------
INSERT INTO `record_multi` VALUES (1, 'a967f0f3ba981cc580644ede83cf0a52', 2, 159401, 20, 1, 2, 0, 1571659312);
INSERT INTO `record_multi` VALUES (2, '613028daac6749c0bd32ef44b34c520b', 2, 284138, 20, 1, 2, 0, 1571659435);
INSERT INTO `record_multi` VALUES (3, '6c315bdcaa50aaacc0a5e0f32195184d', 2, 285808, 20, 1, 2, 0, 1571659437);
INSERT INTO `record_multi` VALUES (4, 'a967f0f3ba981cc580644ede83cf0a52', 2, 140733, 20, 1, 3, 0, 1571660131);
INSERT INTO `record_multi` VALUES (5, '613028daac6749c0bd32ef44b34c520b', 2, 202249, 8, 1, 3, 1, 1571660192);
INSERT INTO `record_multi` VALUES (6, '6c315bdcaa50aaacc0a5e0f32195184d', 2, 250366, 8, 1, 3, 1, 1571660240);
INSERT INTO `record_multi` VALUES (7, '6c315bdcaa50aaacc0a5e0f32195184d', 4, 166328, 20, 1, 5, 0, 1571662102);
INSERT INTO `record_multi` VALUES (8, '6c315bdcaa50aaacc0a5e0f32195184d', 6, 75078, 3, 2, 6, 1, 1572160827);
INSERT INTO `record_multi` VALUES (9, '613028daac6749c0bd32ef44b34c520b', 6, 75299, 7, 2, 6, 1, 1572160827);
INSERT INTO `record_multi` VALUES (10, '613028daac6749c0bd32ef44b34c520b', 6, 58382, 7, 2, 7, 1, 1572160985);
INSERT INTO `record_multi` VALUES (11, '6c315bdcaa50aaacc0a5e0f32195184d', 6, 65503, 3, 2, 7, 1, 1572160992);
INSERT INTO `record_multi` VALUES (12, '6c315bdcaa50aaacc0a5e0f32195184d', 4, 313303, 3, 2, 8, 1, 1572162002);
INSERT INTO `record_multi` VALUES (13, '613028daac6749c0bd32ef44b34c520b', 4, 379956, 20, 2, 8, 0, 1572162069);
INSERT INTO `record_multi` VALUES (14, '6c315bdcaa50aaacc0a5e0f32195184d', 4, 188286, 7, 1, 9, 1, 1572944526);
INSERT INTO `record_multi` VALUES (15, '613028daac6749c0bd32ef44b34c520b', 4, 208188, 7, 1, 9, 1, 1572944546);
INSERT INTO `record_multi` VALUES (16, '613028daac6749c0bd32ef44b34c520b', 4, 131778, 7, 1, 10, 1, 1572944751);
INSERT INTO `record_multi` VALUES (17, '6c315bdcaa50aaacc0a5e0f32195184d', 4, 156144, 7, 1, 10, 1, 1572944775);
INSERT INTO `record_multi` VALUES (18, '6c315bdcaa50aaacc0a5e0f32195184d', 4, 252575, 7, 1, 11, 1, 1572945091);
INSERT INTO `record_multi` VALUES (19, '613028daac6749c0bd32ef44b34c520b', 4, 268227, 7, 1, 11, 1, 1572945107);

-- ----------------------------
-- Table structure for rented_vehicles
-- ----------------------------
DROP TABLE IF EXISTS `rented_vehicles`;
CREATE TABLE `rented_vehicles`  (
  `vehicle` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `player_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`plate`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rented_vehicles
-- ----------------------------

-- ----------------------------
-- Table structure for shipments
-- ----------------------------
DROP TABLE IF EXISTS `shipments`;
CREATE TABLE `shipments`  (
  `id` int(11) NULL DEFAULT NULL,
  `identifier` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `label` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `item` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `count` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `time` int(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shipments
-- ----------------------------
INSERT INTO `shipments` VALUES (1, 'steam:1100001172af33b', 'Water', 'water', '5', '100', 1577180080);

-- ----------------------------
-- Table structure for shops
-- ----------------------------
DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops`  (
  `ShopNumber` int(11) NOT NULL DEFAULT 0,
  `src` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` int(11) NOT NULL,
  `item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shops
-- ----------------------------
INSERT INTO `shops` VALUES (1, 'img/box.png', 1, 'lockpick', 50000, '盗窃钥匙');
INSERT INTO `shops` VALUES (15, 'img/box.png', 50, 'meth', 1000, '冰毒');
INSERT INTO `shops` VALUES (10, 'img/box.png', 1, 'camera', 400, '相机');
INSERT INTO `shops` VALUES (10, 'img/box.png', 1, 'goldNecklace', 100000, '金项链');
INSERT INTO `shops` VALUES (1, 'img/box.png', 1, 'nitrocannister', 50000, '氮气罐');
INSERT INTO `shops` VALUES (4, 'img/box.png', 580, 'cocacola', 800, '可口可乐');
INSERT INTO `shops` VALUES (4, 'img/box.png', 445, 'lettuce', 500, '生菜');
INSERT INTO `shops` VALUES (4, 'img/bottle.png', 278, 'water', 500, '百岁山');
INSERT INTO `shops` VALUES (16, 'img/box.png', 41, 'sciroppo', 15000, '止咳糖浆');
INSERT INTO `shops` VALUES (16, 'img/box.png', 9, 'antibiotico', 18000, '胃药');
INSERT INTO `shops` VALUES (16, 'img/box.png', 50, 'antibioticorosacea', 7000, '皮肤美颜霜');
INSERT INTO `shops` VALUES (16, 'img/box.png', 87, 'medikit', 25000, '医疗箱');
INSERT INTO `shops` VALUES (2, 'img/box.png', 1, 'cocacola', 1000, '可口可乐');
INSERT INTO `shops` VALUES (15, 'img/box.png', 254, 'vhamburger', 1750, '素汉堡');
INSERT INTO `shops` VALUES (15, 'img/bottle.png', 55, 'water', 650, '百岁山');
INSERT INTO `shops` VALUES (15, 'img/box.png', 8, 'potato', 100, '土豆');
INSERT INTO `shops` VALUES (15, 'img/box.png', 4, 'cheese', 200, '芝士');
INSERT INTO `shops` VALUES (15, 'img/box.png', 9, 'tomato', 100, '番茄');
INSERT INTO `shops` VALUES (15, 'img/box.png', 9, 'lettuce', 100, '生菜');
INSERT INTO `shops` VALUES (11, 'img/box.png', 165, 'juice_orage', 1000, '成品果汁');
INSERT INTO `shops` VALUES (11, 'img/box.png', 66, 'coke_pooch', 3000, '可卡因粉');
INSERT INTO `shops` VALUES (4, 'img/box.png', 14, 'nugget', 800, '金块');
INSERT INTO `shops` VALUES (4, 'img/box.png', 609, 'vhamburger', 1688, '素汉堡');
INSERT INTO `shops` VALUES (4, 'img/box.png', 305, 'hamburger', 1988, '汉堡');
INSERT INTO `shops` VALUES (1, 'img/box.png', 20, 'carokit', 30000, '快速修车包');
INSERT INTO `shops` VALUES (1, 'img/box.png', 14, 'medikit', 50000, '医疗箱');

-- ----------------------------
-- Table structure for society_moneywash
-- ----------------------------
DROP TABLE IF EXISTS `society_moneywash`;
CREATE TABLE `society_moneywash`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of society_moneywash
-- ----------------------------

-- ----------------------------
-- Table structure for sody_clubs
-- ----------------------------
DROP TABLE IF EXISTS `sody_clubs`;
CREATE TABLE `sody_clubs`  (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sody_clubs
-- ----------------------------
INSERT INTO `sody_clubs` VALUES ('lmc', 'Lost Motorcycle Club');

-- ----------------------------
-- Table structure for sody_clubs_ranks
-- ----------------------------
DROP TABLE IF EXISTS `sody_clubs_ranks`;
CREATE TABLE `sody_clubs_ranks`  (
  `id` tinyint(5) NOT NULL,
  `club_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `club_rank` tinyint(5) NOT NULL,
  `club_rank_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `club_rank_label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pay` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sody_clubs_ranks
-- ----------------------------
INSERT INTO `sody_clubs_ranks` VALUES (0, 'lmc', 0, 'biker', 'Biker', 1500);
INSERT INTO `sody_clubs_ranks` VALUES (0, 'lmc', 1, 'saa', 'Sergeant at Arms', 2000);
INSERT INTO `sody_clubs_ranks` VALUES (0, 'lmc', 2, 'vicepresident', 'Vice President', 2000);
INSERT INTO `sody_clubs_ranks` VALUES (0, 'lmc', 3, 'treasurer', 'Treasurer', 2400);
INSERT INTO `sody_clubs_ranks` VALUES (0, 'lmc', 4, 'owner', 'President', 200000);

-- ----------------------------
-- Table structure for solo_race
-- ----------------------------
DROP TABLE IF EXISTS `solo_race`;
CREATE TABLE `solo_race`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `record` int(11) NOT NULL,
  `race` int(11) NOT NULL,
  `vehicle` int(11) NOT NULL,
  `record_date` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of solo_race
-- ----------------------------
INSERT INTO `solo_race` VALUES (1, '6c315bdcaa50aaacc0a5e0f32195184d', 25057, 3, 6, 1571584599);
INSERT INTO `solo_race` VALUES (2, '6c315bdcaa50aaacc0a5e0f32195184d', 234049, 2, 3, 1571585564);
INSERT INTO `solo_race` VALUES (3, '6c315bdcaa50aaacc0a5e0f32195184d', 25005, 6, 7, 1572005960);
INSERT INTO `solo_race` VALUES (4, 'afdcdf225bcd1eba0df7d97d0dbdb068', 23380, 3, 7, 1577617541);
INSERT INTO `solo_race` VALUES (5, 'b0502a700ca109fc5a575d3d1e9cc236', 32314, 3, 6, 1580266417);

-- ----------------------------
-- Table structure for truck_categories
-- ----------------------------
DROP TABLE IF EXISTS `truck_categories`;
CREATE TABLE `truck_categories`  (
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `label` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of truck_categories
-- ----------------------------
INSERT INTO `truck_categories` VALUES ('box', '盒装卡车');
INSERT INTO `truck_categories` VALUES ('haul', '运输车');
INSERT INTO `truck_categories` VALUES ('other', '其他卡车');
INSERT INTO `truck_categories` VALUES ('trans', '运输卡车');

-- ----------------------------
-- Table structure for trucks
-- ----------------------------
DROP TABLE IF EXISTS `trucks`;
CREATE TABLE `trucks`  (
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`model`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trucks
-- ----------------------------
INSERT INTO `trucks` VALUES ('Airport Bus', 'airbus', 1000000, 'trans');
INSERT INTO `trucks` VALUES ('Benson', 'benson', 1000000, 'box');
INSERT INTO `trucks` VALUES ('Biff', 'biff', 3000000, 'other');
INSERT INTO `trucks` VALUES ('Boxville 1', 'boxville', 4500000, 'box');
INSERT INTO `trucks` VALUES ('Boxville 2', 'boxville2', 4500000, 'box');
INSERT INTO `trucks` VALUES ('Boxville 3', 'boxville3', 4500000, 'box');
INSERT INTO `trucks` VALUES ('Boxville 4', 'boxville4', 4500000, 'box');
INSERT INTO `trucks` VALUES ('Dozer', 'bulldozer', 2000000, 'other');
INSERT INTO `trucks` VALUES ('Bus', 'bus', 5000000, 'trans');
INSERT INTO `trucks` VALUES ('Dashound', 'coach', 5000000, 'trans');
INSERT INTO `trucks` VALUES ('Hauler', 'hauler', 10000000, 'haul');
INSERT INTO `trucks` VALUES ('Mixer 1', 'mixer', 1000000, 'other');
INSERT INTO `trucks` VALUES ('Mixer 2', 'mixer2', 800000, 'other');
INSERT INTO `trucks` VALUES ('Mule 1', 'mule', 1000000, 'box');
INSERT INTO `trucks` VALUES ('Mule 2', 'mule2', 1000000, 'box');
INSERT INTO `trucks` VALUES ('Mule 3', 'mule3', 1500000, 'box');
INSERT INTO `trucks` VALUES ('Packer', 'packer', 1200000, 'haul');
INSERT INTO `trucks` VALUES ('Festival Bus', 'pbus2', 1250000, 'trans');
INSERT INTO `trucks` VALUES ('Phantom', 'phantom', 1050000, 'haul');
INSERT INTO `trucks` VALUES ('Phantom Custom', 'phantom3', 1100000, 'haul');
INSERT INTO `trucks` VALUES ('Pounder', 'pounder', 1230000, 'box');
INSERT INTO `trucks` VALUES ('Rental Bus', 'rentalbus', 3500000, 'trans');
INSERT INTO `trucks` VALUES ('Rubble', 'rubble', 3000000, 'other');
INSERT INTO `trucks` VALUES ('Scrap Truck', 'scrap', 1500000, 'other');
INSERT INTO `trucks` VALUES ('Tipper 1', 'tiptruck', 3000000, 'other');
INSERT INTO `trucks` VALUES ('Tipper 2', 'tiptruck2', 3000000, 'other');
INSERT INTO `trucks` VALUES ('Tour Bus', 'tourbus', 3500000, 'trans');
INSERT INTO `trucks` VALUES ('Field Master', 'tractor2', 1500000, 'other');

-- ----------------------------
-- Table structure for trunk_inventory
-- ----------------------------
DROP TABLE IF EXISTS `trunk_inventory`;
CREATE TABLE `trunk_inventory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `data` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `plate`(`plate`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trunk_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for twitter_accounts
-- ----------------------------
DROP TABLE IF EXISTS `twitter_accounts`;
CREATE TABLE `twitter_accounts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of twitter_accounts
-- ----------------------------
INSERT INTO `twitter_accounts` VALUES (38, 'aaaa', 'aaaaaa', NULL);

-- ----------------------------
-- Table structure for twitter_likes
-- ----------------------------
DROP TABLE IF EXISTS `twitter_likes`;
CREATE TABLE `twitter_likes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NULL DEFAULT NULL,
  `tweetId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_twitter_likes_twitter_accounts`(`authorId`) USING BTREE,
  INDEX `FK_twitter_likes_twitter_tweets`(`tweetId`) USING BTREE,
  CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 137 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of twitter_likes
-- ----------------------------

-- ----------------------------
-- Table structure for twitter_tweets
-- ----------------------------
DROP TABLE IF EXISTS `twitter_tweets`;
CREATE TABLE `twitter_tweets`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `message` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_twitter_tweets_twitter_accounts`(`authorId`) USING BTREE,
  CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 171 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of twitter_tweets
-- ----------------------------
INSERT INTO `twitter_tweets` VALUES (170, 38, 'steam:110000132555dfb', '牛皮！', '2020-02-01 17:18:21', 0);

-- ----------------------------
-- Table structure for user_accounts
-- ----------------------------
DROP TABLE IF EXISTS `user_accounts`;
CREATE TABLE `user_accounts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `money` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_accounts
-- ----------------------------
INSERT INTO `user_accounts` VALUES (1, 'steam:11000010c502cb5', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (2, 'steam:110000103072384', 'black_money', 20230);
INSERT INTO `user_accounts` VALUES (3, 'steam:110000115d13e50', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (4, 'steam:1100001337e0dcf', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (5, 'steam:1100001172af33b', 'black_money', 4080900);
INSERT INTO `user_accounts` VALUES (6, 'steam:1100001170fb22c', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (7, 'steam:110000115517b6d', 'black_money', 18080);
INSERT INTO `user_accounts` VALUES (8, 'steam:110000117b4ecd8', 'black_money', -2700);
INSERT INTO `user_accounts` VALUES (9, 'steam:11000011899ea0f', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (10, 'steam:11000011bdbdc1a', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (11, 'steam:11000010722d120', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (12, 'steam:110000106f5ce70', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (13, 'steam:11000013bd36b18', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (14, 'steam:110000135a51347', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (15, 'steam:110000134728f22', 'black_money', 11908);
INSERT INTO `user_accounts` VALUES (16, 'steam:11000011745d699', 'black_money', 24000);
INSERT INTO `user_accounts` VALUES (17, 'steam:11000013c2b297a', 'black_money', 2400);
INSERT INTO `user_accounts` VALUES (18, 'steam:110000103f407b5', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (19, 'steam:1100001172d233d', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (20, 'steam:11000013f295673', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (21, 'steam:11000013716cde4', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (22, 'steam:1100001321585b7', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (23, 'steam:11000013301b85a', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (24, 'steam:11000011a0816e8', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (25, 'steam:11000011bfb9181', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (26, 'steam:110000132555dfb', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (27, 'steam:1100001350a4e14', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (28, 'steam:1100001154d67f5', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (29, 'steam:11000010c72c48b', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (30, 'steam:11000013efb45a5', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (31, 'steam:11000013f403e65', 'black_money', 0);
INSERT INTO `user_accounts` VALUES (32, 'steam:110000117caaf4e', 'black_money', 0);

-- ----------------------------
-- Table structure for user_inventory
-- ----------------------------
DROP TABLE IF EXISTS `user_inventory`;
CREATE TABLE `user_inventory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3128 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_inventory
-- ----------------------------
INSERT INTO `user_inventory` VALUES (1, 'steam:11000010c502cb5', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (2, 'steam:11000010c502cb5', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (3, 'steam:11000010c502cb5', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (4, 'steam:11000010c502cb5', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (5, 'steam:11000010c502cb5', 'sandwich', 4);
INSERT INTO `user_inventory` VALUES (6, 'steam:11000010c502cb5', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (7, 'steam:11000010c502cb5', 'milk', 0);
INSERT INTO `user_inventory` VALUES (8, 'steam:11000010c502cb5', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (9, 'steam:11000010c502cb5', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (10, 'steam:11000010c502cb5', 'beer', 0);
INSERT INTO `user_inventory` VALUES (11, 'steam:11000010c502cb5', 'wine', 0);
INSERT INTO `user_inventory` VALUES (12, 'steam:11000010c502cb5', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (13, 'steam:11000010c502cb5', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (14, 'steam:11000010c502cb5', 'water', 11);
INSERT INTO `user_inventory` VALUES (15, 'steam:11000010c502cb5', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (16, 'steam:11000010c502cb5', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (17, 'steam:11000010c502cb5', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (18, 'steam:11000010c502cb5', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (19, 'steam:11000010c502cb5', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (20, 'steam:11000010c502cb5', 'chips', 0);
INSERT INTO `user_inventory` VALUES (21, 'steam:11000010c502cb5', 'bread', 10);
INSERT INTO `user_inventory` VALUES (22, 'steam:11000010c502cb5', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (23, 'steam:11000010c502cb5', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (24, 'steam:11000010c502cb5', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (25, 'steam:11000010c502cb5', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (26, 'steam:11000010c502cb5', 'fish', 0);
INSERT INTO `user_inventory` VALUES (27, 'steam:11000010c502cb5', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (28, 'steam:11000010c502cb5', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (29, 'steam:11000010c502cb5', 'wood', 0);
INSERT INTO `user_inventory` VALUES (30, 'steam:11000010c502cb5', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (31, 'steam:11000010c502cb5', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (32, 'steam:11000010c502cb5', 'wool', 0);
INSERT INTO `user_inventory` VALUES (33, 'steam:11000010c502cb5', 'copper', 0);
INSERT INTO `user_inventory` VALUES (34, 'steam:11000010c502cb5', 'stone', 0);
INSERT INTO `user_inventory` VALUES (35, 'steam:11000010c502cb5', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (36, 'steam:11000010c502cb5', 'essence', 0);
INSERT INTO `user_inventory` VALUES (37, 'steam:11000010c502cb5', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (38, 'steam:11000010c502cb5', 'iron', 0);
INSERT INTO `user_inventory` VALUES (39, 'steam:11000010c502cb5', 'gold', 0);
INSERT INTO `user_inventory` VALUES (40, 'steam:11000010c502cb5', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (41, 'steam:11000010c502cb5', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (42, 'steam:11000010c502cb5', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (43, 'steam:11000010c502cb5', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (44, 'steam:11000010c502cb5', 'meth', 0);
INSERT INTO `user_inventory` VALUES (45, 'steam:11000010c502cb5', 'weed', 5);
INSERT INTO `user_inventory` VALUES (46, 'steam:11000010c502cb5', 'coke', 0);
INSERT INTO `user_inventory` VALUES (47, 'steam:11000010c502cb5', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (48, 'steam:11000010c502cb5', 'opium', 0);
INSERT INTO `user_inventory` VALUES (49, 'steam:110000103072384', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (50, 'steam:110000103072384', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (51, 'steam:110000103072384', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (52, 'steam:110000103072384', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (53, 'steam:110000103072384', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (54, 'steam:110000103072384', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (55, 'steam:110000103072384', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (56, 'steam:110000103072384', 'wool', 0);
INSERT INTO `user_inventory` VALUES (57, 'steam:110000103072384', 'fish', 0);
INSERT INTO `user_inventory` VALUES (58, 'steam:110000103072384', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (59, 'steam:110000103072384', 'copper', 0);
INSERT INTO `user_inventory` VALUES (60, 'steam:110000103072384', 'coke', 0);
INSERT INTO `user_inventory` VALUES (61, 'steam:110000103072384', 'chips', 0);
INSERT INTO `user_inventory` VALUES (62, 'steam:110000103072384', 'wine', 0);
INSERT INTO `user_inventory` VALUES (63, 'steam:110000103072384', 'weed', 0);
INSERT INTO `user_inventory` VALUES (64, 'steam:110000103072384', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (65, 'steam:110000103072384', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (66, 'steam:110000103072384', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (67, 'steam:110000103072384', 'wood', 0);
INSERT INTO `user_inventory` VALUES (68, 'steam:110000103072384', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (69, 'steam:110000103072384', 'water', 8);
INSERT INTO `user_inventory` VALUES (70, 'steam:110000103072384', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (71, 'steam:110000103072384', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (72, 'steam:110000103072384', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (73, 'steam:110000103072384', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (74, 'steam:110000103072384', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (75, 'steam:110000103072384', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (76, 'steam:110000103072384', 'bread', 7);
INSERT INTO `user_inventory` VALUES (77, 'steam:110000103072384', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (78, 'steam:110000103072384', 'iron', 0);
INSERT INTO `user_inventory` VALUES (79, 'steam:110000103072384', 'stone', 0);
INSERT INTO `user_inventory` VALUES (80, 'steam:110000103072384', 'meth', 0);
INSERT INTO `user_inventory` VALUES (81, 'steam:110000103072384', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (82, 'steam:110000103072384', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (83, 'steam:110000103072384', 'gold', 0);
INSERT INTO `user_inventory` VALUES (84, 'steam:110000103072384', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (85, 'steam:110000103072384', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (86, 'steam:110000103072384', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (87, 'steam:110000103072384', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (88, 'steam:110000103072384', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (89, 'steam:110000103072384', 'beer', 0);
INSERT INTO `user_inventory` VALUES (90, 'steam:110000103072384', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (91, 'steam:110000103072384', 'milk', 0);
INSERT INTO `user_inventory` VALUES (92, 'steam:110000103072384', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (93, 'steam:110000103072384', 'opium', 0);
INSERT INTO `user_inventory` VALUES (94, 'steam:110000103072384', 'essence', 0);
INSERT INTO `user_inventory` VALUES (95, 'steam:110000103072384', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (96, 'steam:110000103072384', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (97, 'steam:11000010c502cb5', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (98, 'steam:11000010c502cb5', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (99, 'steam:110000103072384', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (100, 'steam:110000103072384', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (101, 'steam:11000010c502cb5', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (102, 'steam:11000010c502cb5', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (103, 'steam:11000010c502cb5', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (104, 'steam:11000010c502cb5', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (105, 'steam:11000010c502cb5', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (106, 'steam:11000010c502cb5', 'fixkit', 5);
INSERT INTO `user_inventory` VALUES (107, 'steam:110000103072384', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (108, 'steam:110000103072384', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (109, 'steam:110000103072384', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (110, 'steam:110000103072384', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (111, 'steam:110000103072384', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (112, 'steam:110000103072384', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (113, 'steam:110000115d13e50', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (114, 'steam:110000115d13e50', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (115, 'steam:110000115d13e50', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (116, 'steam:110000115d13e50', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (117, 'steam:110000115d13e50', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (118, 'steam:110000115d13e50', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (119, 'steam:110000115d13e50', 'weed', 0);
INSERT INTO `user_inventory` VALUES (120, 'steam:110000115d13e50', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (121, 'steam:110000115d13e50', 'essence', 0);
INSERT INTO `user_inventory` VALUES (122, 'steam:110000115d13e50', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (123, 'steam:110000115d13e50', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (124, 'steam:110000115d13e50', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (125, 'steam:110000115d13e50', 'beer', 0);
INSERT INTO `user_inventory` VALUES (126, 'steam:110000115d13e50', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (127, 'steam:110000115d13e50', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (128, 'steam:110000115d13e50', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (129, 'steam:110000115d13e50', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (130, 'steam:110000115d13e50', 'fish', 0);
INSERT INTO `user_inventory` VALUES (131, 'steam:110000115d13e50', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (132, 'steam:110000115d13e50', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (133, 'steam:110000115d13e50', 'coke', 0);
INSERT INTO `user_inventory` VALUES (134, 'steam:110000115d13e50', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (135, 'steam:110000115d13e50', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (136, 'steam:110000115d13e50', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (137, 'steam:110000115d13e50', 'copper', 0);
INSERT INTO `user_inventory` VALUES (138, 'steam:110000115d13e50', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (139, 'steam:110000115d13e50', 'wine', 0);
INSERT INTO `user_inventory` VALUES (140, 'steam:110000115d13e50', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (141, 'steam:110000115d13e50', 'water', 0);
INSERT INTO `user_inventory` VALUES (142, 'steam:110000115d13e50', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (143, 'steam:110000115d13e50', 'chips', 0);
INSERT INTO `user_inventory` VALUES (144, 'steam:110000115d13e50', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (145, 'steam:110000115d13e50', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (146, 'steam:110000115d13e50', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (147, 'steam:110000115d13e50', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (148, 'steam:110000115d13e50', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (149, 'steam:110000115d13e50', 'meth', 0);
INSERT INTO `user_inventory` VALUES (150, 'steam:110000115d13e50', 'bread', 0);
INSERT INTO `user_inventory` VALUES (151, 'steam:110000115d13e50', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (152, 'steam:110000115d13e50', 'opium', 0);
INSERT INTO `user_inventory` VALUES (153, 'steam:110000115d13e50', 'milk', 0);
INSERT INTO `user_inventory` VALUES (154, 'steam:110000115d13e50', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (155, 'steam:110000115d13e50', 'wool', 0);
INSERT INTO `user_inventory` VALUES (156, 'steam:110000115d13e50', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (157, 'steam:110000115d13e50', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (158, 'steam:110000115d13e50', 'iron', 0);
INSERT INTO `user_inventory` VALUES (159, 'steam:110000115d13e50', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (160, 'steam:110000115d13e50', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (161, 'steam:110000115d13e50', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (162, 'steam:110000115d13e50', 'gold', 0);
INSERT INTO `user_inventory` VALUES (163, 'steam:110000115d13e50', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (164, 'steam:110000115d13e50', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (165, 'steam:110000115d13e50', 'wood', 0);
INSERT INTO `user_inventory` VALUES (166, 'steam:110000115d13e50', 'stone', 0);
INSERT INTO `user_inventory` VALUES (167, 'steam:110000115d13e50', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (168, 'steam:110000115d13e50', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (169, 'steam:1100001337e0dcf', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (170, 'steam:1100001337e0dcf', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (171, 'steam:1100001337e0dcf', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (172, 'steam:1100001337e0dcf', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (173, 'steam:1100001337e0dcf', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (174, 'steam:1100001337e0dcf', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (175, 'steam:1100001337e0dcf', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (176, 'steam:1100001337e0dcf', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (177, 'steam:1100001337e0dcf', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (178, 'steam:1100001337e0dcf', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (179, 'steam:1100001337e0dcf', 'wool', 0);
INSERT INTO `user_inventory` VALUES (180, 'steam:1100001337e0dcf', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (181, 'steam:1100001337e0dcf', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (182, 'steam:1100001337e0dcf', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (183, 'steam:1100001337e0dcf', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (184, 'steam:1100001337e0dcf', 'coke', 0);
INSERT INTO `user_inventory` VALUES (185, 'steam:1100001337e0dcf', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (186, 'steam:1100001337e0dcf', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (187, 'steam:1100001337e0dcf', 'wine', 0);
INSERT INTO `user_inventory` VALUES (188, 'steam:1100001337e0dcf', 'iron', 0);
INSERT INTO `user_inventory` VALUES (189, 'steam:1100001337e0dcf', 'opium', 0);
INSERT INTO `user_inventory` VALUES (190, 'steam:1100001337e0dcf', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (191, 'steam:1100001337e0dcf', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (192, 'steam:1100001337e0dcf', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (193, 'steam:1100001337e0dcf', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (194, 'steam:1100001337e0dcf', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (195, 'steam:1100001337e0dcf', 'wood', 0);
INSERT INTO `user_inventory` VALUES (196, 'steam:1100001337e0dcf', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (197, 'steam:1100001337e0dcf', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (198, 'steam:1100001337e0dcf', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (199, 'steam:1100001337e0dcf', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (200, 'steam:1100001337e0dcf', 'fish', 0);
INSERT INTO `user_inventory` VALUES (201, 'steam:1100001337e0dcf', 'chips', 0);
INSERT INTO `user_inventory` VALUES (202, 'steam:1100001337e0dcf', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (203, 'steam:1100001337e0dcf', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (204, 'steam:1100001337e0dcf', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (205, 'steam:1100001337e0dcf', 'milk', 0);
INSERT INTO `user_inventory` VALUES (206, 'steam:1100001337e0dcf', 'gold', 0);
INSERT INTO `user_inventory` VALUES (207, 'steam:1100001337e0dcf', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (208, 'steam:1100001337e0dcf', 'stone', 0);
INSERT INTO `user_inventory` VALUES (209, 'steam:1100001337e0dcf', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (210, 'steam:1100001337e0dcf', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (211, 'steam:1100001337e0dcf', 'copper', 0);
INSERT INTO `user_inventory` VALUES (212, 'steam:1100001337e0dcf', 'bread', 0);
INSERT INTO `user_inventory` VALUES (213, 'steam:1100001337e0dcf', 'beer', 0);
INSERT INTO `user_inventory` VALUES (214, 'steam:1100001337e0dcf', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (215, 'steam:1100001337e0dcf', 'weed', 0);
INSERT INTO `user_inventory` VALUES (216, 'steam:1100001337e0dcf', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (217, 'steam:1100001337e0dcf', 'meth', 0);
INSERT INTO `user_inventory` VALUES (218, 'steam:1100001337e0dcf', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (219, 'steam:1100001337e0dcf', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (220, 'steam:1100001337e0dcf', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (221, 'steam:1100001337e0dcf', 'water', 0);
INSERT INTO `user_inventory` VALUES (222, 'steam:1100001337e0dcf', 'essence', 0);
INSERT INTO `user_inventory` VALUES (223, 'steam:1100001337e0dcf', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (224, 'steam:1100001337e0dcf', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (225, 'steam:1100001172af33b', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (226, 'steam:1100001172af33b', 'weed_pooch', 6);
INSERT INTO `user_inventory` VALUES (227, 'steam:1100001172af33b', 'meth', 0);
INSERT INTO `user_inventory` VALUES (228, 'steam:1100001172af33b', 'fish', 0);
INSERT INTO `user_inventory` VALUES (229, 'steam:1100001172af33b', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (230, 'steam:1100001172af33b', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (231, 'steam:1100001172af33b', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (232, 'steam:1100001172af33b', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (233, 'steam:1100001172af33b', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (234, 'steam:1100001172af33b', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (235, 'steam:1100001172af33b', 'wine', 0);
INSERT INTO `user_inventory` VALUES (236, 'steam:1100001172af33b', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (237, 'steam:1100001172af33b', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (238, 'steam:1100001172af33b', 'iron', 79);
INSERT INTO `user_inventory` VALUES (239, 'steam:1100001172af33b', 'beer', 1000);
INSERT INTO `user_inventory` VALUES (240, 'steam:1100001172af33b', 'coke_pooch', 94);
INSERT INTO `user_inventory` VALUES (241, 'steam:1100001172af33b', 'wool', 1);
INSERT INTO `user_inventory` VALUES (242, 'steam:1100001172af33b', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (243, 'steam:1100001172af33b', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (244, 'steam:1100001172af33b', 'chips', 0);
INSERT INTO `user_inventory` VALUES (245, 'steam:1100001172af33b', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (246, 'steam:1100001172af33b', 'essence', 11);
INSERT INTO `user_inventory` VALUES (247, 'steam:1100001172af33b', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (248, 'steam:1100001172af33b', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (249, 'steam:1100001172af33b', 'bread', 54);
INSERT INTO `user_inventory` VALUES (250, 'steam:1100001172af33b', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (251, 'steam:1100001172af33b', 'weed', 0);
INSERT INTO `user_inventory` VALUES (252, 'steam:1100001172af33b', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (253, 'steam:1100001172af33b', 'coke', 6);
INSERT INTO `user_inventory` VALUES (254, 'steam:1100001172af33b', 'water', 3244);
INSERT INTO `user_inventory` VALUES (255, 'steam:1100001172af33b', 'wood', 188);
INSERT INTO `user_inventory` VALUES (256, 'steam:1100001172af33b', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (257, 'steam:1100001172af33b', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (258, 'steam:1100001172af33b', 'stone', 0);
INSERT INTO `user_inventory` VALUES (259, 'steam:1100001172af33b', 'petrol_raffin', 9);
INSERT INTO `user_inventory` VALUES (260, 'steam:1100001172af33b', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (261, 'steam:1100001172af33b', 'packaged_plank', 10);
INSERT INTO `user_inventory` VALUES (262, 'steam:1100001172af33b', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (263, 'steam:1100001172af33b', 'opium', 0);
INSERT INTO `user_inventory` VALUES (264, 'steam:1100001172af33b', 'carotool', 99);
INSERT INTO `user_inventory` VALUES (265, 'steam:1100001172af33b', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (266, 'steam:1100001172af33b', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (267, 'steam:1100001172af33b', 'carokit', 9);
INSERT INTO `user_inventory` VALUES (268, 'steam:1100001172af33b', 'gazbottle', 20);
INSERT INTO `user_inventory` VALUES (269, 'steam:1100001172af33b', 'coffe', 90);
INSERT INTO `user_inventory` VALUES (270, 'steam:1100001172af33b', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (271, 'steam:1100001172af33b', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (272, 'steam:1100001172af33b', 'milk', 27);
INSERT INTO `user_inventory` VALUES (273, 'steam:1100001172af33b', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (274, 'steam:1100001172af33b', 'gold', 0);
INSERT INTO `user_inventory` VALUES (275, 'steam:1100001172af33b', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (276, 'steam:1100001172af33b', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (277, 'steam:1100001172af33b', 'copper', 0);
INSERT INTO `user_inventory` VALUES (278, 'steam:1100001172af33b', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (279, 'steam:1100001172af33b', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (280, 'steam:1100001172af33b', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (281, 'steam:1100001170fb22c', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (282, 'steam:1100001170fb22c', 'iron', 0);
INSERT INTO `user_inventory` VALUES (283, 'steam:1100001170fb22c', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (284, 'steam:1100001170fb22c', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (285, 'steam:1100001170fb22c', 'milk', 0);
INSERT INTO `user_inventory` VALUES (286, 'steam:1100001170fb22c', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (287, 'steam:1100001170fb22c', 'fish', 0);
INSERT INTO `user_inventory` VALUES (288, 'steam:1100001170fb22c', 'stone', 0);
INSERT INTO `user_inventory` VALUES (289, 'steam:1100001170fb22c', 'copper', 0);
INSERT INTO `user_inventory` VALUES (290, 'steam:1100001170fb22c', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (291, 'steam:1100001170fb22c', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (292, 'steam:1100001170fb22c', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (293, 'steam:1100001170fb22c', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (294, 'steam:1100001170fb22c', 'wood', 0);
INSERT INTO `user_inventory` VALUES (295, 'steam:1100001170fb22c', 'meth', 0);
INSERT INTO `user_inventory` VALUES (296, 'steam:1100001170fb22c', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (297, 'steam:1100001170fb22c', 'gold', 0);
INSERT INTO `user_inventory` VALUES (298, 'steam:1100001170fb22c', 'wool', 0);
INSERT INTO `user_inventory` VALUES (299, 'steam:1100001170fb22c', 'carotool', 6);
INSERT INTO `user_inventory` VALUES (300, 'steam:1100001170fb22c', 'opium', 0);
INSERT INTO `user_inventory` VALUES (301, 'steam:1100001170fb22c', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (302, 'steam:1100001170fb22c', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (303, 'steam:1100001170fb22c', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (304, 'steam:1100001170fb22c', 'wine', 0);
INSERT INTO `user_inventory` VALUES (305, 'steam:1100001170fb22c', 'chips', 0);
INSERT INTO `user_inventory` VALUES (306, 'steam:1100001170fb22c', 'coke', 0);
INSERT INTO `user_inventory` VALUES (307, 'steam:1100001170fb22c', 'weed_pooch', 3);
INSERT INTO `user_inventory` VALUES (308, 'steam:1100001170fb22c', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (309, 'steam:1100001170fb22c', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (310, 'steam:1100001170fb22c', 'beer', 0);
INSERT INTO `user_inventory` VALUES (311, 'steam:1100001170fb22c', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (312, 'steam:1100001170fb22c', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (313, 'steam:1100001170fb22c', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (314, 'steam:1100001170fb22c', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (315, 'steam:1100001170fb22c', 'gazbottle', 4);
INSERT INTO `user_inventory` VALUES (316, 'steam:1100001170fb22c', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (317, 'steam:1100001170fb22c', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (318, 'steam:1100001170fb22c', 'coke_pooch', 4);
INSERT INTO `user_inventory` VALUES (319, 'steam:1100001170fb22c', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (320, 'steam:1100001170fb22c', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (321, 'steam:1100001170fb22c', 'essence', 0);
INSERT INTO `user_inventory` VALUES (322, 'steam:1100001170fb22c', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (323, 'steam:1100001170fb22c', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (324, 'steam:1100001170fb22c', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (325, 'steam:1100001170fb22c', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (326, 'steam:1100001170fb22c', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (327, 'steam:1100001170fb22c', 'water', 5);
INSERT INTO `user_inventory` VALUES (328, 'steam:1100001170fb22c', 'bread', 0);
INSERT INTO `user_inventory` VALUES (329, 'steam:1100001170fb22c', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (330, 'steam:1100001170fb22c', 'weed', 0);
INSERT INTO `user_inventory` VALUES (331, 'steam:1100001170fb22c', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (332, 'steam:1100001170fb22c', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (333, 'steam:1100001170fb22c', 'fixtool', 7);
INSERT INTO `user_inventory` VALUES (334, 'steam:1100001170fb22c', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (335, 'steam:1100001170fb22c', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (336, 'steam:1100001170fb22c', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (337, 'steam:11000010c502cb5', 'solo_key', 3);
INSERT INTO `user_inventory` VALUES (338, 'steam:11000010c502cb5', 'multi_key', 4);
INSERT INTO `user_inventory` VALUES (339, 'steam:1100001170fb22c', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (340, 'steam:1100001170fb22c', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (341, 'steam:1100001337e0dcf', 'solo_key', 8);
INSERT INTO `user_inventory` VALUES (342, 'steam:1100001337e0dcf', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (343, 'steam:110000115d13e50', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (344, 'steam:110000115d13e50', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (345, 'steam:110000103072384', 'multi_key', 7);
INSERT INTO `user_inventory` VALUES (346, 'steam:110000103072384', 'solo_key', 6);
INSERT INTO `user_inventory` VALUES (347, 'steam:11000010c502cb5', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (348, 'steam:110000103072384', 'raspa', 2);
INSERT INTO `user_inventory` VALUES (349, 'steam:110000103072384', 'firstaidkit', 2);
INSERT INTO `user_inventory` VALUES (350, 'steam:110000103072384', 'clip', 0);
INSERT INTO `user_inventory` VALUES (351, 'steam:110000103072384', 'darknet', 0);
INSERT INTO `user_inventory` VALUES (352, 'steam:110000103072384', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (353, 'steam:110000103072384', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (354, 'steam:11000010c502cb5', 'firstaidkit', 2);
INSERT INTO `user_inventory` VALUES (355, 'steam:11000010c502cb5', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (356, 'steam:11000010c502cb5', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (357, 'steam:11000010c502cb5', 'clip', 0);
INSERT INTO `user_inventory` VALUES (358, 'steam:11000010c502cb5', 'darknet', 0);
INSERT INTO `user_inventory` VALUES (359, 'steam:1100001337e0dcf', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (360, 'steam:1100001337e0dcf', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (361, 'steam:1100001337e0dcf', 'darknet', 0);
INSERT INTO `user_inventory` VALUES (362, 'steam:1100001337e0dcf', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (363, 'steam:1100001337e0dcf', 'clip', 0);
INSERT INTO `user_inventory` VALUES (364, 'steam:1100001337e0dcf', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (365, 'steam:11000010c502cb5', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (366, 'steam:11000010c502cb5', 'orage', 0);
INSERT INTO `user_inventory` VALUES (367, 'steam:1100001172af33b', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (368, 'steam:1100001172af33b', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (369, 'steam:1100001172af33b', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (370, 'steam:1100001172af33b', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (371, 'steam:1100001172af33b', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (372, 'steam:1100001172af33b', 'orage', 0);
INSERT INTO `user_inventory` VALUES (373, 'steam:1100001172af33b', 'clip', 63);
INSERT INTO `user_inventory` VALUES (374, 'steam:1100001172af33b', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (375, 'steam:1100001172af33b', 'bulletproof', 5);
INSERT INTO `user_inventory` VALUES (376, 'steam:1100001172af33b', 'HashKey', 1);
INSERT INTO `user_inventory` VALUES (377, 'steam:1100001172af33b', 'Warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (378, 'steam:1100001172af33b', 'warehouse_key', 19);
INSERT INTO `user_inventory` VALUES (379, 'steam:1100001172af33b', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (380, 'steam:1100001172af33b', 'rubberband', 1);
INSERT INTO `user_inventory` VALUES (381, 'steam:1100001172af33b', 'WeaponAmm', 0);
INSERT INTO `user_inventory` VALUES (382, 'steam:1100001172af33b', 'weapon_', 0);
INSERT INTO `user_inventory` VALUES (383, 'steam:1100001172af33b', 'cerebro', 19);
INSERT INTO `user_inventory` VALUES (384, 'steam:1100001172af33b', 'instestinos', 25);
INSERT INTO `user_inventory` VALUES (385, 'steam:1100001172af33b', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (386, 'steam:1100001172af33b', 'medulas', 4);
INSERT INTO `user_inventory` VALUES (387, 'steam:1100001172af33b', 'huesos', 35);
INSERT INTO `user_inventory` VALUES (388, 'steam:1100001172af33b', 'corazon', 21);
INSERT INTO `user_inventory` VALUES (389, 'steam:1100001172af33b', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (390, 'steam:1100001172af33b', 'toothpaste', 0);
INSERT INTO `user_inventory` VALUES (391, 'steam:1100001172af33b', 'saffron', 1);
INSERT INTO `user_inventory` VALUES (392, 'steam:1100001172af33b', 'hat', 0);
INSERT INTO `user_inventory` VALUES (393, 'steam:1100001172af33b', 'speaker', 1);
INSERT INTO `user_inventory` VALUES (394, 'steam:1100001172af33b', 'laptop', 4);
INSERT INTO `user_inventory` VALUES (395, 'steam:1100001172af33b', 'shoes', 0);
INSERT INTO `user_inventory` VALUES (396, 'steam:1100001172af33b', 'shirt', 0);
INSERT INTO `user_inventory` VALUES (397, 'steam:1100001172af33b', 'lotteryticket', 0);
INSERT INTO `user_inventory` VALUES (398, 'steam:1100001172af33b', 'book', 2);
INSERT INTO `user_inventory` VALUES (399, 'steam:1100001172af33b', 'pants', 0);
INSERT INTO `user_inventory` VALUES (400, 'steam:1100001172af33b', 'coupon', 1);
INSERT INTO `user_inventory` VALUES (401, 'steam:1100001172af33b', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (402, 'steam:1100001172af33b', 'ring', 0);
INSERT INTO `user_inventory` VALUES (403, 'steam:1100001172af33b', 'goldNecklace', 1);
INSERT INTO `user_inventory` VALUES (404, 'steam:1100001172af33b', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (405, 'steam:1100001172af33b', 'camera', 0);
INSERT INTO `user_inventory` VALUES (406, 'steam:1100001172af33b', 'carnep', 0);
INSERT INTO `user_inventory` VALUES (407, 'steam:1100001172af33b', 'ovoes', 0);
INSERT INTO `user_inventory` VALUES (408, 'steam:1100001172af33b', 'alho', 18);
INSERT INTO `user_inventory` VALUES (409, 'steam:1100001172af33b', 'vitelaass', 0);
INSERT INTO `user_inventory` VALUES (410, 'steam:1100001172af33b', 'hamb', 0);
INSERT INTO `user_inventory` VALUES (411, 'steam:1100001172af33b', 'tomate', 0);
INSERT INTO `user_inventory` VALUES (412, 'steam:1100001172af33b', 'queijo', 1);
INSERT INTO `user_inventory` VALUES (413, 'steam:1100001172af33b', 'polvogre', 0);
INSERT INTO `user_inventory` VALUES (414, 'steam:1100001172af33b', 'manteiga', 2);
INSERT INTO `user_inventory` VALUES (415, 'steam:1100001172af33b', 'polvo', 16);
INSERT INTO `user_inventory` VALUES (416, 'steam:1100001172af33b', 'alface', 17);
INSERT INTO `user_inventory` VALUES (417, 'steam:1100001172af33b', 'vitela', 6);
INSERT INTO `user_inventory` VALUES (418, 'steam:1100001172af33b', 'ovo', 13);
INSERT INTO `user_inventory` VALUES (419, 'steam:1100001172af33b', 'oregaos', 5);
INSERT INTO `user_inventory` VALUES (420, 'steam:1100001172af33b', 'nugget', 1);
INSERT INTO `user_inventory` VALUES (421, 'steam:1100001172af33b', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (422, 'steam:1100001172af33b', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (423, 'steam:1100001172af33b', 'ctomato', 4);
INSERT INTO `user_inventory` VALUES (424, 'steam:1100001172af33b', 'ccheese', 8);
INSERT INTO `user_inventory` VALUES (425, 'steam:1100001172af33b', 'fvburger', 7);
INSERT INTO `user_inventory` VALUES (426, 'steam:1100001172af33b', 'cheese', 5);
INSERT INTO `user_inventory` VALUES (427, 'steam:1100001172af33b', 'fburger', 10);
INSERT INTO `user_inventory` VALUES (428, 'steam:1100001172af33b', 'vhamburger', 42);
INSERT INTO `user_inventory` VALUES (429, 'steam:1100001172af33b', 'vbread', 6);
INSERT INTO `user_inventory` VALUES (430, 'steam:1100001172af33b', 'tomato', 8);
INSERT INTO `user_inventory` VALUES (431, 'steam:1100001172af33b', 'shamburger', 1);
INSERT INTO `user_inventory` VALUES (432, 'steam:1100001172af33b', 'potato', 7);
INSERT INTO `user_inventory` VALUES (433, 'steam:1100001172af33b', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (434, 'steam:1100001172af33b', 'lettuce', 20);
INSERT INTO `user_inventory` VALUES (435, 'steam:1100001172af33b', 'nitrocannister', 1);
INSERT INTO `user_inventory` VALUES (436, 'steam:1100001172af33b', 'wrench', 9);
INSERT INTO `user_inventory` VALUES (437, 'steam:1100001172af33b', 'moneywashid', 1);
INSERT INTO `user_inventory` VALUES (438, 'steam:110000115517b6d', 'diamond', 4);
INSERT INTO `user_inventory` VALUES (439, 'steam:110000115517b6d', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (440, 'steam:110000115517b6d', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (441, 'steam:110000115517b6d', 'stone', 0);
INSERT INTO `user_inventory` VALUES (442, 'steam:110000115517b6d', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (443, 'steam:110000115517b6d', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (444, 'steam:110000115517b6d', 'iron', 0);
INSERT INTO `user_inventory` VALUES (445, 'steam:110000115517b6d', 'beer', 0);
INSERT INTO `user_inventory` VALUES (446, 'steam:110000115517b6d', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (447, 'steam:110000115517b6d', 'gold', 0);
INSERT INTO `user_inventory` VALUES (448, 'steam:110000115517b6d', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (449, 'steam:110000115517b6d', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (450, 'steam:110000115517b6d', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (451, 'steam:110000115517b6d', 'ring', 0);
INSERT INTO `user_inventory` VALUES (452, 'steam:110000115517b6d', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (453, 'steam:110000115517b6d', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (454, 'steam:110000115517b6d', 'wood', 0);
INSERT INTO `user_inventory` VALUES (455, 'steam:110000115517b6d', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (456, 'steam:110000115517b6d', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (457, 'steam:110000115517b6d', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (458, 'steam:110000115517b6d', 'coke', 0);
INSERT INTO `user_inventory` VALUES (459, 'steam:110000115517b6d', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (460, 'steam:110000115517b6d', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (461, 'steam:110000115517b6d', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (462, 'steam:110000115517b6d', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (463, 'steam:110000115517b6d', 'lockpick', 1);
INSERT INTO `user_inventory` VALUES (464, 'steam:110000115517b6d', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (465, 'steam:110000115517b6d', 'chips', 0);
INSERT INTO `user_inventory` VALUES (466, 'steam:110000115517b6d', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (467, 'steam:110000115517b6d', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (468, 'steam:110000115517b6d', 'opium', 0);
INSERT INTO `user_inventory` VALUES (469, 'steam:110000115517b6d', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (470, 'steam:110000115517b6d', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (471, 'steam:110000115517b6d', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (472, 'steam:110000115517b6d', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (473, 'steam:110000115517b6d', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (474, 'steam:110000115517b6d', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (475, 'steam:110000115517b6d', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (476, 'steam:110000115517b6d', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (477, 'steam:110000115517b6d', 'weed', 4);
INSERT INTO `user_inventory` VALUES (478, 'steam:110000115517b6d', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (479, 'steam:110000115517b6d', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (480, 'steam:110000115517b6d', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (481, 'steam:110000115517b6d', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (482, 'steam:110000115517b6d', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (483, 'steam:110000115517b6d', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (484, 'steam:110000115517b6d', 'camera', 0);
INSERT INTO `user_inventory` VALUES (485, 'steam:110000115517b6d', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (486, 'steam:110000115517b6d', 'vhamburger', 3);
INSERT INTO `user_inventory` VALUES (487, 'steam:110000115517b6d', 'meth', 0);
INSERT INTO `user_inventory` VALUES (488, 'steam:110000115517b6d', 'water', 8);
INSERT INTO `user_inventory` VALUES (489, 'steam:110000115517b6d', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (490, 'steam:110000115517b6d', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (491, 'steam:110000115517b6d', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (492, 'steam:110000115517b6d', 'wine', 0);
INSERT INTO `user_inventory` VALUES (493, 'steam:110000115517b6d', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (494, 'steam:110000115517b6d', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (495, 'steam:110000115517b6d', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (496, 'steam:110000115517b6d', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (497, 'steam:110000115517b6d', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (498, 'steam:110000115517b6d', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (499, 'steam:110000115517b6d', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (500, 'steam:110000115517b6d', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (501, 'steam:110000115517b6d', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (502, 'steam:110000115517b6d', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (503, 'steam:110000115517b6d', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (504, 'steam:110000115517b6d', 'fish', 0);
INSERT INTO `user_inventory` VALUES (505, 'steam:110000115517b6d', 'multi_key', 3);
INSERT INTO `user_inventory` VALUES (506, 'steam:110000115517b6d', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (507, 'steam:110000115517b6d', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (508, 'steam:110000115517b6d', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (509, 'steam:110000115517b6d', 'orage', 0);
INSERT INTO `user_inventory` VALUES (510, 'steam:110000115517b6d', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (511, 'steam:110000115517b6d', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (512, 'steam:110000115517b6d', 'wool', 0);
INSERT INTO `user_inventory` VALUES (513, 'steam:110000115517b6d', 'clip', 0);
INSERT INTO `user_inventory` VALUES (514, 'steam:110000115517b6d', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (515, 'steam:110000115517b6d', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (516, 'steam:110000115517b6d', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (517, 'steam:110000115517b6d', 'copper', 0);
INSERT INTO `user_inventory` VALUES (518, 'steam:110000115517b6d', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (519, 'steam:110000115517b6d', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (520, 'steam:110000115517b6d', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (521, 'steam:110000115517b6d', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (522, 'steam:110000115517b6d', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (523, 'steam:110000115517b6d', 'essence', 0);
INSERT INTO `user_inventory` VALUES (524, 'steam:110000115517b6d', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (525, 'steam:110000115517b6d', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (526, 'steam:110000115517b6d', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (527, 'steam:110000115517b6d', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (528, 'steam:110000115517b6d', 'cuerpo', 60);
INSERT INTO `user_inventory` VALUES (529, 'steam:110000115517b6d', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (530, 'steam:110000115517b6d', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (531, 'steam:110000115517b6d', 'potato', 0);
INSERT INTO `user_inventory` VALUES (532, 'steam:110000115517b6d', 'bread', 0);
INSERT INTO `user_inventory` VALUES (533, 'steam:110000115517b6d', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (534, 'steam:110000115517b6d', 'milk', 0);
INSERT INTO `user_inventory` VALUES (535, 'steam:110000115517b6d', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (536, 'steam:110000115517b6d', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (537, 'steam:110000117b4ecd8', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (538, 'steam:110000117b4ecd8', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (539, 'steam:110000117b4ecd8', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (540, 'steam:110000117b4ecd8', 'clip', 0);
INSERT INTO `user_inventory` VALUES (541, 'steam:110000117b4ecd8', 'coke', 0);
INSERT INTO `user_inventory` VALUES (542, 'steam:110000117b4ecd8', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (543, 'steam:110000117b4ecd8', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (544, 'steam:110000117b4ecd8', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (545, 'steam:110000117b4ecd8', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (546, 'steam:110000117b4ecd8', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (547, 'steam:110000117b4ecd8', 'medikit', 2);
INSERT INTO `user_inventory` VALUES (548, 'steam:110000117b4ecd8', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (549, 'steam:110000117b4ecd8', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (550, 'steam:110000117b4ecd8', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (551, 'steam:110000117b4ecd8', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (552, 'steam:110000117b4ecd8', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (553, 'steam:110000117b4ecd8', 'fish', 0);
INSERT INTO `user_inventory` VALUES (554, 'steam:110000117b4ecd8', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (555, 'steam:110000117b4ecd8', 'gold', 0);
INSERT INTO `user_inventory` VALUES (556, 'steam:110000117b4ecd8', 'camera', 0);
INSERT INTO `user_inventory` VALUES (557, 'steam:110000117b4ecd8', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (558, 'steam:110000117b4ecd8', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (559, 'steam:110000117b4ecd8', 'moneywashid', 1);
INSERT INTO `user_inventory` VALUES (560, 'steam:110000117b4ecd8', 'warehouse_key', 1);
INSERT INTO `user_inventory` VALUES (561, 'steam:110000117b4ecd8', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (562, 'steam:110000117b4ecd8', 'lockpick', 1);
INSERT INTO `user_inventory` VALUES (563, 'steam:110000117b4ecd8', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (564, 'steam:110000117b4ecd8', 'fixtool', 10);
INSERT INTO `user_inventory` VALUES (565, 'steam:110000117b4ecd8', 'wool', 0);
INSERT INTO `user_inventory` VALUES (566, 'steam:110000117b4ecd8', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (567, 'steam:110000117b4ecd8', 'wood', 0);
INSERT INTO `user_inventory` VALUES (568, 'steam:110000117b4ecd8', 'wine', 0);
INSERT INTO `user_inventory` VALUES (569, 'steam:110000117b4ecd8', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (570, 'steam:110000117b4ecd8', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (571, 'steam:110000117b4ecd8', 'carokit', 5);
INSERT INTO `user_inventory` VALUES (572, 'steam:110000117b4ecd8', 'water', 25);
INSERT INTO `user_inventory` VALUES (573, 'steam:110000117b4ecd8', 'meth', 0);
INSERT INTO `user_inventory` VALUES (574, 'steam:110000117b4ecd8', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (575, 'steam:110000117b4ecd8', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (576, 'steam:110000117b4ecd8', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (577, 'steam:110000117b4ecd8', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (578, 'steam:110000117b4ecd8', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (579, 'steam:110000117b4ecd8', 'vhamburger', 69);
INSERT INTO `user_inventory` VALUES (580, 'steam:110000117b4ecd8', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (581, 'steam:110000117b4ecd8', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (582, 'steam:110000117b4ecd8', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (583, 'steam:110000117b4ecd8', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (584, 'steam:110000117b4ecd8', 'slaughtered_chicken', 20);
INSERT INTO `user_inventory` VALUES (585, 'steam:110000117b4ecd8', 'copper', 0);
INSERT INTO `user_inventory` VALUES (586, 'steam:110000117b4ecd8', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (587, 'steam:110000117b4ecd8', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (588, 'steam:110000117b4ecd8', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (589, 'steam:110000117b4ecd8', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (590, 'steam:110000117b4ecd8', 'opium', 0);
INSERT INTO `user_inventory` VALUES (591, 'steam:110000117b4ecd8', 'coke_pooch', 1);
INSERT INTO `user_inventory` VALUES (592, 'steam:110000117b4ecd8', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (593, 'steam:110000117b4ecd8', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (594, 'steam:110000117b4ecd8', 'potato', 0);
INSERT INTO `user_inventory` VALUES (595, 'steam:110000117b4ecd8', 'ring', 0);
INSERT INTO `user_inventory` VALUES (596, 'steam:110000117b4ecd8', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (597, 'steam:110000117b4ecd8', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (598, 'steam:110000117b4ecd8', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (599, 'steam:110000117b4ecd8', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (600, 'steam:110000117b4ecd8', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (601, 'steam:110000117b4ecd8', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (602, 'steam:110000117b4ecd8', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (603, 'steam:110000117b4ecd8', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (604, 'steam:110000117b4ecd8', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (605, 'steam:110000117b4ecd8', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (606, 'steam:110000117b4ecd8', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (607, 'steam:110000117b4ecd8', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (608, 'steam:110000117b4ecd8', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (609, 'steam:110000117b4ecd8', 'bread', 0);
INSERT INTO `user_inventory` VALUES (610, 'steam:110000117b4ecd8', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (611, 'steam:110000117b4ecd8', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (612, 'steam:110000117b4ecd8', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (613, 'steam:110000117b4ecd8', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (614, 'steam:110000117b4ecd8', 'milk', 0);
INSERT INTO `user_inventory` VALUES (615, 'steam:110000117b4ecd8', 'beer', 0);
INSERT INTO `user_inventory` VALUES (616, 'steam:110000117b4ecd8', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (617, 'steam:110000117b4ecd8', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (618, 'steam:110000117b4ecd8', 'weed', 0);
INSERT INTO `user_inventory` VALUES (619, 'steam:110000117b4ecd8', 'iron', 0);
INSERT INTO `user_inventory` VALUES (620, 'steam:110000117b4ecd8', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (621, 'steam:110000117b4ecd8', 'stone', 0);
INSERT INTO `user_inventory` VALUES (622, 'steam:110000117b4ecd8', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (623, 'steam:110000117b4ecd8', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (624, 'steam:110000117b4ecd8', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (625, 'steam:110000117b4ecd8', 'cuerpo', 1);
INSERT INTO `user_inventory` VALUES (626, 'steam:110000117b4ecd8', 'essence', 0);
INSERT INTO `user_inventory` VALUES (627, 'steam:110000117b4ecd8', 'orage', 4);
INSERT INTO `user_inventory` VALUES (628, 'steam:110000117b4ecd8', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (629, 'steam:110000117b4ecd8', 'chips', 0);
INSERT INTO `user_inventory` VALUES (630, 'steam:110000117b4ecd8', 'bandage', 4);
INSERT INTO `user_inventory` VALUES (631, 'steam:110000117b4ecd8', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (632, 'steam:110000117b4ecd8', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (633, 'steam:110000117b4ecd8', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (634, 'steam:110000117b4ecd8', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (635, 'steam:110000117b4ecd8', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (636, 'steam:11000011899ea0f', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (637, 'steam:11000011899ea0f', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (638, 'steam:11000011899ea0f', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (639, 'steam:11000011899ea0f', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (640, 'steam:11000011899ea0f', 'weed', 0);
INSERT INTO `user_inventory` VALUES (641, 'steam:11000011899ea0f', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (642, 'steam:11000011899ea0f', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (643, 'steam:11000011899ea0f', 'fburger', -129);
INSERT INTO `user_inventory` VALUES (644, 'steam:11000011899ea0f', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (645, 'steam:11000011899ea0f', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (646, 'steam:11000011899ea0f', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (647, 'steam:11000011899ea0f', 'meth', 0);
INSERT INTO `user_inventory` VALUES (648, 'steam:11000011899ea0f', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (649, 'steam:11000011899ea0f', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (650, 'steam:11000011899ea0f', 'vhamburger', 17);
INSERT INTO `user_inventory` VALUES (651, 'steam:11000011899ea0f', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (652, 'steam:11000011899ea0f', 'cocacola', 15);
INSERT INTO `user_inventory` VALUES (653, 'steam:11000011899ea0f', 'potato', 1);
INSERT INTO `user_inventory` VALUES (654, 'steam:11000011899ea0f', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (655, 'steam:11000011899ea0f', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (656, 'steam:11000011899ea0f', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (657, 'steam:11000011899ea0f', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (658, 'steam:11000011899ea0f', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (659, 'steam:11000011899ea0f', 'gold', 0);
INSERT INTO `user_inventory` VALUES (660, 'steam:11000011899ea0f', 'cutted_wood', 9);
INSERT INTO `user_inventory` VALUES (661, 'steam:11000011899ea0f', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (662, 'steam:11000011899ea0f', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (663, 'steam:11000011899ea0f', 'orage', 0);
INSERT INTO `user_inventory` VALUES (664, 'steam:11000011899ea0f', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (665, 'steam:11000011899ea0f', 'camera', 0);
INSERT INTO `user_inventory` VALUES (666, 'steam:11000011899ea0f', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (667, 'steam:11000011899ea0f', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (668, 'steam:11000011899ea0f', 'wool', 0);
INSERT INTO `user_inventory` VALUES (669, 'steam:11000011899ea0f', 'wood', 0);
INSERT INTO `user_inventory` VALUES (670, 'steam:11000011899ea0f', 'wine', 0);
INSERT INTO `user_inventory` VALUES (671, 'steam:11000011899ea0f', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (672, 'steam:11000011899ea0f', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (673, 'steam:11000011899ea0f', 'chips', 0);
INSERT INTO `user_inventory` VALUES (674, 'steam:11000011899ea0f', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (675, 'steam:11000011899ea0f', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (676, 'steam:11000011899ea0f', 'fvburger', -125);
INSERT INTO `user_inventory` VALUES (677, 'steam:11000011899ea0f', 'water', 0);
INSERT INTO `user_inventory` VALUES (678, 'steam:11000011899ea0f', 'milk', 0);
INSERT INTO `user_inventory` VALUES (679, 'steam:11000011899ea0f', 'cheese', -79);
INSERT INTO `user_inventory` VALUES (680, 'steam:11000011899ea0f', 'beer', 0);
INSERT INTO `user_inventory` VALUES (681, 'steam:11000011899ea0f', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (682, 'steam:11000011899ea0f', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (683, 'steam:11000011899ea0f', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (684, 'steam:11000011899ea0f', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (685, 'steam:11000011899ea0f', 'vbread', -125);
INSERT INTO `user_inventory` VALUES (686, 'steam:11000011899ea0f', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (687, 'steam:11000011899ea0f', 'bread', -129);
INSERT INTO `user_inventory` VALUES (688, 'steam:11000011899ea0f', 'tomato', -80);
INSERT INTO `user_inventory` VALUES (689, 'steam:11000011899ea0f', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (690, 'steam:11000011899ea0f', 'copper', 0);
INSERT INTO `user_inventory` VALUES (691, 'steam:11000011899ea0f', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (692, 'steam:11000011899ea0f', 'iron', 0);
INSERT INTO `user_inventory` VALUES (693, 'steam:11000011899ea0f', 'opium', 0);
INSERT INTO `user_inventory` VALUES (694, 'steam:11000011899ea0f', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (695, 'steam:11000011899ea0f', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (696, 'steam:11000011899ea0f', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (697, 'steam:11000011899ea0f', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (698, 'steam:11000011899ea0f', 'ring', 0);
INSERT INTO `user_inventory` VALUES (699, 'steam:11000011899ea0f', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (700, 'steam:11000011899ea0f', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (701, 'steam:11000011899ea0f', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (702, 'steam:11000011899ea0f', 'fish', 0);
INSERT INTO `user_inventory` VALUES (703, 'steam:11000011899ea0f', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (704, 'steam:11000011899ea0f', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (705, 'steam:11000011899ea0f', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (706, 'steam:11000011899ea0f', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (707, 'steam:11000011899ea0f', 'nitrocannister', 1);
INSERT INTO `user_inventory` VALUES (708, 'steam:11000011899ea0f', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (709, 'steam:11000011899ea0f', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (710, 'steam:11000011899ea0f', 'clip', 0);
INSERT INTO `user_inventory` VALUES (711, 'steam:11000011899ea0f', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (712, 'steam:11000011899ea0f', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (713, 'steam:11000011899ea0f', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (714, 'steam:11000011899ea0f', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (715, 'steam:11000011899ea0f', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (716, 'steam:11000011899ea0f', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (717, 'steam:11000011899ea0f', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (718, 'steam:11000011899ea0f', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (719, 'steam:11000011899ea0f', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (720, 'steam:11000011899ea0f', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (721, 'steam:11000011899ea0f', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (722, 'steam:11000011899ea0f', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (723, 'steam:11000011899ea0f', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (724, 'steam:11000011899ea0f', 'essence', 0);
INSERT INTO `user_inventory` VALUES (725, 'steam:11000011899ea0f', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (726, 'steam:11000011899ea0f', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (727, 'steam:11000011899ea0f', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (728, 'steam:11000011899ea0f', 'lettuce', -76);
INSERT INTO `user_inventory` VALUES (729, 'steam:11000011899ea0f', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (730, 'steam:11000011899ea0f', 'coke', 0);
INSERT INTO `user_inventory` VALUES (731, 'steam:11000011899ea0f', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (732, 'steam:11000011899ea0f', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (733, 'steam:11000011899ea0f', 'stone', 0);
INSERT INTO `user_inventory` VALUES (734, 'steam:11000011899ea0f', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (735, 'steam:11000011bdbdc1a', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (736, 'steam:11000011bdbdc1a', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (737, 'steam:11000011bdbdc1a', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (738, 'steam:11000011bdbdc1a', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (739, 'steam:11000011bdbdc1a', 'wine', 0);
INSERT INTO `user_inventory` VALUES (740, 'steam:11000011bdbdc1a', 'orage', 0);
INSERT INTO `user_inventory` VALUES (741, 'steam:11000011bdbdc1a', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (742, 'steam:11000011bdbdc1a', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (743, 'steam:11000011bdbdc1a', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (744, 'steam:11000011bdbdc1a', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (745, 'steam:11000011bdbdc1a', 'chips', 0);
INSERT INTO `user_inventory` VALUES (746, 'steam:11000011bdbdc1a', 'bread', 0);
INSERT INTO `user_inventory` VALUES (747, 'steam:11000011bdbdc1a', 'fish', 0);
INSERT INTO `user_inventory` VALUES (748, 'steam:11000011bdbdc1a', 'stone', 0);
INSERT INTO `user_inventory` VALUES (749, 'steam:11000011bdbdc1a', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (750, 'steam:11000011bdbdc1a', 'beer', 0);
INSERT INTO `user_inventory` VALUES (751, 'steam:11000011bdbdc1a', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (752, 'steam:11000011bdbdc1a', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (753, 'steam:11000011bdbdc1a', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (754, 'steam:11000011bdbdc1a', 'gold', 0);
INSERT INTO `user_inventory` VALUES (755, 'steam:11000011bdbdc1a', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (756, 'steam:11000011bdbdc1a', 'wood', 0);
INSERT INTO `user_inventory` VALUES (757, 'steam:11000011bdbdc1a', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (758, 'steam:11000011bdbdc1a', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (759, 'steam:11000011bdbdc1a', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (760, 'steam:11000011bdbdc1a', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (761, 'steam:11000011bdbdc1a', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (762, 'steam:11000011bdbdc1a', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (763, 'steam:11000011bdbdc1a', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (764, 'steam:11000011bdbdc1a', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (765, 'steam:11000011bdbdc1a', 'potato', 0);
INSERT INTO `user_inventory` VALUES (766, 'steam:11000011bdbdc1a', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (767, 'steam:11000011bdbdc1a', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (768, 'steam:11000011bdbdc1a', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (769, 'steam:11000011bdbdc1a', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (770, 'steam:11000011bdbdc1a', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (771, 'steam:11000011bdbdc1a', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (772, 'steam:11000011bdbdc1a', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (773, 'steam:11000011bdbdc1a', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (774, 'steam:11000011bdbdc1a', 'coke', 0);
INSERT INTO `user_inventory` VALUES (775, 'steam:11000011bdbdc1a', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (776, 'steam:11000011bdbdc1a', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (777, 'steam:11000011bdbdc1a', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (778, 'steam:11000011bdbdc1a', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (779, 'steam:11000011bdbdc1a', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (780, 'steam:11000011bdbdc1a', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (781, 'steam:11000011bdbdc1a', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (782, 'steam:11000011bdbdc1a', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (783, 'steam:11000011bdbdc1a', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (784, 'steam:11000011bdbdc1a', 'wool', 0);
INSERT INTO `user_inventory` VALUES (785, 'steam:11000011bdbdc1a', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (786, 'steam:11000011bdbdc1a', 'milk', 0);
INSERT INTO `user_inventory` VALUES (787, 'steam:11000011bdbdc1a', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (788, 'steam:11000011bdbdc1a', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (789, 'steam:11000011bdbdc1a', 'weed', 0);
INSERT INTO `user_inventory` VALUES (790, 'steam:11000011bdbdc1a', 'water', 0);
INSERT INTO `user_inventory` VALUES (791, 'steam:11000011bdbdc1a', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (792, 'steam:11000011bdbdc1a', 'vhamburger', 0);
INSERT INTO `user_inventory` VALUES (793, 'steam:11000011bdbdc1a', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (794, 'steam:11000011bdbdc1a', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (795, 'steam:11000011bdbdc1a', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (796, 'steam:11000011bdbdc1a', 'camera', 0);
INSERT INTO `user_inventory` VALUES (797, 'steam:11000011bdbdc1a', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (798, 'steam:11000011bdbdc1a', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (799, 'steam:11000011bdbdc1a', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (800, 'steam:11000011bdbdc1a', 'essence', 0);
INSERT INTO `user_inventory` VALUES (801, 'steam:11000011bdbdc1a', 'iron', 0);
INSERT INTO `user_inventory` VALUES (802, 'steam:11000011bdbdc1a', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (803, 'steam:11000011bdbdc1a', 'ring', 0);
INSERT INTO `user_inventory` VALUES (804, 'steam:11000011bdbdc1a', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (805, 'steam:11000011bdbdc1a', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (806, 'steam:11000011bdbdc1a', 'copper', 0);
INSERT INTO `user_inventory` VALUES (807, 'steam:11000011bdbdc1a', 'clip', 0);
INSERT INTO `user_inventory` VALUES (808, 'steam:11000011bdbdc1a', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (809, 'steam:11000011bdbdc1a', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (810, 'steam:11000011bdbdc1a', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (811, 'steam:11000011bdbdc1a', 'opium', 0);
INSERT INTO `user_inventory` VALUES (812, 'steam:11000011bdbdc1a', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (813, 'steam:11000011bdbdc1a', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (814, 'steam:11000011bdbdc1a', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (815, 'steam:11000011bdbdc1a', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (816, 'steam:11000011bdbdc1a', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (817, 'steam:11000011bdbdc1a', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (818, 'steam:11000011bdbdc1a', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (819, 'steam:11000011bdbdc1a', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (820, 'steam:11000011bdbdc1a', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (821, 'steam:11000011bdbdc1a', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (822, 'steam:11000011bdbdc1a', 'meth', 0);
INSERT INTO `user_inventory` VALUES (823, 'steam:11000011bdbdc1a', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (824, 'steam:11000011bdbdc1a', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (825, 'steam:11000011bdbdc1a', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (826, 'steam:11000011bdbdc1a', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (827, 'steam:11000011bdbdc1a', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (828, 'steam:11000011bdbdc1a', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (829, 'steam:11000011bdbdc1a', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (830, 'steam:11000011bdbdc1a', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (831, 'steam:11000011bdbdc1a', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (832, 'steam:11000011bdbdc1a', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (833, 'steam:11000011bdbdc1a', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (834, 'steam:1100001170fb22c', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (835, 'steam:1100001170fb22c', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (836, 'steam:1100001170fb22c', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (837, 'steam:1100001170fb22c', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (838, 'steam:1100001170fb22c', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (839, 'steam:1100001170fb22c', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (840, 'steam:1100001170fb22c', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (841, 'steam:1100001170fb22c', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (842, 'steam:1100001170fb22c', 'vhamburger', 4);
INSERT INTO `user_inventory` VALUES (843, 'steam:1100001170fb22c', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (844, 'steam:1100001170fb22c', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (845, 'steam:1100001170fb22c', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (846, 'steam:1100001170fb22c', 'ring', 0);
INSERT INTO `user_inventory` VALUES (847, 'steam:1100001170fb22c', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (848, 'steam:1100001170fb22c', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (849, 'steam:1100001170fb22c', 'camera', 0);
INSERT INTO `user_inventory` VALUES (850, 'steam:1100001170fb22c', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (851, 'steam:1100001170fb22c', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (852, 'steam:1100001170fb22c', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (853, 'steam:1100001170fb22c', 'wrench', 1);
INSERT INTO `user_inventory` VALUES (854, 'steam:1100001170fb22c', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (855, 'steam:1100001170fb22c', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (856, 'steam:1100001170fb22c', 'clip', 0);
INSERT INTO `user_inventory` VALUES (857, 'steam:1100001170fb22c', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (858, 'steam:1100001170fb22c', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (859, 'steam:1100001170fb22c', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (860, 'steam:1100001170fb22c', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (861, 'steam:1100001170fb22c', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (862, 'steam:1100001170fb22c', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (863, 'steam:1100001170fb22c', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (864, 'steam:1100001170fb22c', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (865, 'steam:1100001170fb22c', 'potato', 0);
INSERT INTO `user_inventory` VALUES (866, 'steam:1100001170fb22c', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (867, 'steam:1100001170fb22c', 'orage', 0);
INSERT INTO `user_inventory` VALUES (868, 'steam:1100001170fb22c', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (869, 'steam:1100001170fb22c', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (870, 'steam:1100001170fb22c', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (871, 'steam:1100001170fb22c', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (872, 'steam:1100001170fb22c', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (873, 'steam:1100001170fb22c', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (874, 'steam:1100001170fb22c', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (875, 'steam:11000010722d120', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (876, 'steam:11000010722d120', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (877, 'steam:11000010722d120', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (878, 'steam:11000010722d120', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (879, 'steam:11000010722d120', 'opium', 0);
INSERT INTO `user_inventory` VALUES (880, 'steam:11000010722d120', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (881, 'steam:11000010722d120', 'gold', 0);
INSERT INTO `user_inventory` VALUES (882, 'steam:11000010722d120', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (883, 'steam:11000010722d120', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (884, 'steam:11000010722d120', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (885, 'steam:11000010722d120', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (886, 'steam:11000010722d120', 'iron', 0);
INSERT INTO `user_inventory` VALUES (887, 'steam:11000010722d120', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (888, 'steam:11000010722d120', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (889, 'steam:11000010722d120', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (890, 'steam:11000010722d120', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (891, 'steam:11000010722d120', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (892, 'steam:11000010722d120', 'vhamburger', 5);
INSERT INTO `user_inventory` VALUES (893, 'steam:11000010722d120', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (894, 'steam:11000010722d120', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (895, 'steam:11000010722d120', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (896, 'steam:11000010722d120', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (897, 'steam:11000010722d120', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (898, 'steam:11000010722d120', 'bread', 0);
INSERT INTO `user_inventory` VALUES (899, 'steam:11000010722d120', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (900, 'steam:11000010722d120', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (901, 'steam:11000010722d120', 'coke', 0);
INSERT INTO `user_inventory` VALUES (902, 'steam:11000010722d120', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (903, 'steam:11000010722d120', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (904, 'steam:11000010722d120', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (905, 'steam:11000010722d120', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (906, 'steam:11000010722d120', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (907, 'steam:11000010722d120', 'ring', 0);
INSERT INTO `user_inventory` VALUES (908, 'steam:11000010722d120', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (909, 'steam:11000010722d120', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (910, 'steam:11000010722d120', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (911, 'steam:11000010722d120', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (912, 'steam:11000010722d120', 'milk', 0);
INSERT INTO `user_inventory` VALUES (913, 'steam:11000010722d120', 'camera', 0);
INSERT INTO `user_inventory` VALUES (914, 'steam:11000010722d120', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (915, 'steam:11000010722d120', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (916, 'steam:11000010722d120', 'lettuce', 5);
INSERT INTO `user_inventory` VALUES (917, 'steam:11000010722d120', 'essence', 0);
INSERT INTO `user_inventory` VALUES (918, 'steam:11000010722d120', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (919, 'steam:11000010722d120', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (920, 'steam:11000010722d120', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (921, 'steam:11000010722d120', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (922, 'steam:11000010722d120', 'wool', 0);
INSERT INTO `user_inventory` VALUES (923, 'steam:11000010722d120', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (924, 'steam:11000010722d120', 'wine', 0);
INSERT INTO `user_inventory` VALUES (925, 'steam:11000010722d120', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (926, 'steam:11000010722d120', 'meth', 0);
INSERT INTO `user_inventory` VALUES (927, 'steam:11000010722d120', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (928, 'steam:11000010722d120', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (929, 'steam:11000010722d120', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (930, 'steam:11000010722d120', 'clip', 0);
INSERT INTO `user_inventory` VALUES (931, 'steam:11000010722d120', 'fish', 0);
INSERT INTO `user_inventory` VALUES (932, 'steam:11000010722d120', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (933, 'steam:11000010722d120', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (934, 'steam:11000010722d120', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (935, 'steam:11000010722d120', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (936, 'steam:11000010722d120', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (937, 'steam:11000010722d120', 'stone', 0);
INSERT INTO `user_inventory` VALUES (938, 'steam:11000010722d120', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (939, 'steam:11000010722d120', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (940, 'steam:11000010722d120', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (941, 'steam:11000010722d120', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (942, 'steam:11000010722d120', 'cocacola', 5);
INSERT INTO `user_inventory` VALUES (943, 'steam:11000010722d120', 'wood', 0);
INSERT INTO `user_inventory` VALUES (944, 'steam:11000010722d120', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (945, 'steam:11000010722d120', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (946, 'steam:11000010722d120', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (947, 'steam:11000010722d120', 'potato', 0);
INSERT INTO `user_inventory` VALUES (948, 'steam:11000010722d120', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (949, 'steam:11000010722d120', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (950, 'steam:11000010722d120', 'orage', 0);
INSERT INTO `user_inventory` VALUES (951, 'steam:11000010722d120', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (952, 'steam:11000010722d120', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (953, 'steam:11000010722d120', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (954, 'steam:11000010722d120', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (955, 'steam:11000010722d120', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (956, 'steam:11000010722d120', 'chips', 0);
INSERT INTO `user_inventory` VALUES (957, 'steam:11000010722d120', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (958, 'steam:11000010722d120', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (959, 'steam:11000010722d120', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (960, 'steam:11000010722d120', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (961, 'steam:11000010722d120', 'copper', 0);
INSERT INTO `user_inventory` VALUES (962, 'steam:11000010722d120', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (963, 'steam:11000010722d120', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (964, 'steam:11000010722d120', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (965, 'steam:11000010722d120', 'weed', 0);
INSERT INTO `user_inventory` VALUES (966, 'steam:11000010722d120', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (967, 'steam:11000010722d120', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (968, 'steam:11000010722d120', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (969, 'steam:11000010722d120', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (970, 'steam:11000010722d120', 'beer', 0);
INSERT INTO `user_inventory` VALUES (971, 'steam:11000010722d120', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (972, 'steam:11000010722d120', 'water', 10);
INSERT INTO `user_inventory` VALUES (973, 'steam:11000010722d120', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (974, 'steam:110000106f5ce70', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (975, 'steam:110000106f5ce70', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (976, 'steam:110000106f5ce70', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (977, 'steam:110000106f5ce70', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (978, 'steam:110000106f5ce70', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (979, 'steam:110000106f5ce70', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (980, 'steam:110000106f5ce70', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (981, 'steam:110000106f5ce70', 'camera', 0);
INSERT INTO `user_inventory` VALUES (982, 'steam:110000106f5ce70', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (983, 'steam:110000106f5ce70', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (984, 'steam:110000106f5ce70', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (985, 'steam:110000106f5ce70', 'wool', 0);
INSERT INTO `user_inventory` VALUES (986, 'steam:110000106f5ce70', 'coke', 0);
INSERT INTO `user_inventory` VALUES (987, 'steam:110000106f5ce70', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (988, 'steam:110000106f5ce70', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (989, 'steam:110000106f5ce70', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (990, 'steam:110000106f5ce70', 'ring', 0);
INSERT INTO `user_inventory` VALUES (991, 'steam:110000106f5ce70', 'chips', 0);
INSERT INTO `user_inventory` VALUES (992, 'steam:110000106f5ce70', 'milk', 0);
INSERT INTO `user_inventory` VALUES (993, 'steam:110000106f5ce70', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (994, 'steam:110000106f5ce70', 'bread', 0);
INSERT INTO `user_inventory` VALUES (995, 'steam:110000106f5ce70', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (996, 'steam:110000106f5ce70', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (997, 'steam:110000106f5ce70', 'orage', 0);
INSERT INTO `user_inventory` VALUES (998, 'steam:110000106f5ce70', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (999, 'steam:110000106f5ce70', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (1000, 'steam:110000106f5ce70', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (1001, 'steam:110000106f5ce70', 'beer', 0);
INSERT INTO `user_inventory` VALUES (1002, 'steam:110000106f5ce70', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (1003, 'steam:110000106f5ce70', 'clip', 0);
INSERT INTO `user_inventory` VALUES (1004, 'steam:110000106f5ce70', 'opium', 0);
INSERT INTO `user_inventory` VALUES (1005, 'steam:110000106f5ce70', 'copper', 0);
INSERT INTO `user_inventory` VALUES (1006, 'steam:110000106f5ce70', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (1007, 'steam:110000106f5ce70', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (1008, 'steam:110000106f5ce70', 'gold', 0);
INSERT INTO `user_inventory` VALUES (1009, 'steam:110000106f5ce70', 'water', 0);
INSERT INTO `user_inventory` VALUES (1010, 'steam:110000106f5ce70', 'potato', 0);
INSERT INTO `user_inventory` VALUES (1011, 'steam:110000106f5ce70', 'wine', 0);
INSERT INTO `user_inventory` VALUES (1012, 'steam:110000106f5ce70', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (1013, 'steam:110000106f5ce70', 'wood', 0);
INSERT INTO `user_inventory` VALUES (1014, 'steam:110000106f5ce70', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (1015, 'steam:110000106f5ce70', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (1016, 'steam:110000106f5ce70', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (1017, 'steam:110000106f5ce70', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (1018, 'steam:110000106f5ce70', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (1019, 'steam:110000106f5ce70', 'vhamburger', 0);
INSERT INTO `user_inventory` VALUES (1020, 'steam:110000106f5ce70', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (1021, 'steam:110000106f5ce70', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (1022, 'steam:110000106f5ce70', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (1023, 'steam:110000106f5ce70', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (1024, 'steam:110000106f5ce70', 'stone', 0);
INSERT INTO `user_inventory` VALUES (1025, 'steam:110000106f5ce70', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (1026, 'steam:110000106f5ce70', 'meth', 0);
INSERT INTO `user_inventory` VALUES (1027, 'steam:110000106f5ce70', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (1028, 'steam:110000106f5ce70', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (1029, 'steam:110000106f5ce70', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (1030, 'steam:110000106f5ce70', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (1031, 'steam:110000106f5ce70', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (1032, 'steam:110000106f5ce70', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (1033, 'steam:110000106f5ce70', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (1034, 'steam:110000106f5ce70', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (1035, 'steam:110000106f5ce70', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (1036, 'steam:110000106f5ce70', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (1037, 'steam:110000106f5ce70', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (1038, 'steam:110000106f5ce70', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (1039, 'steam:110000106f5ce70', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (1040, 'steam:110000106f5ce70', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (1041, 'steam:110000106f5ce70', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (1042, 'steam:110000106f5ce70', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (1043, 'steam:110000106f5ce70', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (1044, 'steam:110000106f5ce70', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (1045, 'steam:110000106f5ce70', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (1046, 'steam:110000106f5ce70', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (1047, 'steam:110000106f5ce70', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (1048, 'steam:110000106f5ce70', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (1049, 'steam:110000106f5ce70', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (1050, 'steam:110000106f5ce70', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (1051, 'steam:110000106f5ce70', 'weed', 0);
INSERT INTO `user_inventory` VALUES (1052, 'steam:110000106f5ce70', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (1053, 'steam:110000106f5ce70', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (1054, 'steam:110000106f5ce70', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (1055, 'steam:110000106f5ce70', 'essence', 0);
INSERT INTO `user_inventory` VALUES (1056, 'steam:110000106f5ce70', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (1057, 'steam:110000106f5ce70', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (1058, 'steam:110000106f5ce70', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (1059, 'steam:110000106f5ce70', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (1060, 'steam:110000106f5ce70', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (1061, 'steam:110000106f5ce70', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (1062, 'steam:110000106f5ce70', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (1063, 'steam:110000106f5ce70', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (1064, 'steam:110000106f5ce70', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (1065, 'steam:110000106f5ce70', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (1066, 'steam:110000106f5ce70', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (1067, 'steam:110000106f5ce70', 'fish', 0);
INSERT INTO `user_inventory` VALUES (1068, 'steam:110000106f5ce70', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (1069, 'steam:110000106f5ce70', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (1070, 'steam:110000106f5ce70', 'iron', 0);
INSERT INTO `user_inventory` VALUES (1071, 'steam:110000106f5ce70', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (1072, 'steam:110000106f5ce70', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (1073, 'steam:11000013bd36b18', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (1074, 'steam:11000013bd36b18', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (1075, 'steam:11000013bd36b18', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (1076, 'steam:11000013bd36b18', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (1077, 'steam:11000013bd36b18', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (1078, 'steam:11000013bd36b18', 'camera', 0);
INSERT INTO `user_inventory` VALUES (1079, 'steam:11000013bd36b18', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (1080, 'steam:11000013bd36b18', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (1081, 'steam:11000013bd36b18', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (1082, 'steam:11000013bd36b18', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (1083, 'steam:11000013bd36b18', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (1084, 'steam:11000013bd36b18', 'wool', 0);
INSERT INTO `user_inventory` VALUES (1085, 'steam:11000013bd36b18', 'coke', 0);
INSERT INTO `user_inventory` VALUES (1086, 'steam:11000013bd36b18', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (1087, 'steam:11000013bd36b18', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (1088, 'steam:11000013bd36b18', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (1089, 'steam:11000013bd36b18', 'ring', 0);
INSERT INTO `user_inventory` VALUES (1090, 'steam:11000013bd36b18', 'chips', 0);
INSERT INTO `user_inventory` VALUES (1091, 'steam:11000013bd36b18', 'milk', 0);
INSERT INTO `user_inventory` VALUES (1092, 'steam:11000013bd36b18', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (1093, 'steam:11000013bd36b18', 'bread', 0);
INSERT INTO `user_inventory` VALUES (1094, 'steam:11000013bd36b18', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (1095, 'steam:11000013bd36b18', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (1096, 'steam:11000013bd36b18', 'orage', 0);
INSERT INTO `user_inventory` VALUES (1097, 'steam:11000013bd36b18', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (1098, 'steam:11000013bd36b18', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (1099, 'steam:11000013bd36b18', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (1100, 'steam:11000013bd36b18', 'beer', 0);
INSERT INTO `user_inventory` VALUES (1101, 'steam:11000013bd36b18', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (1102, 'steam:11000013bd36b18', 'clip', 0);
INSERT INTO `user_inventory` VALUES (1103, 'steam:11000013bd36b18', 'opium', 0);
INSERT INTO `user_inventory` VALUES (1104, 'steam:11000013bd36b18', 'copper', 0);
INSERT INTO `user_inventory` VALUES (1105, 'steam:11000013bd36b18', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (1106, 'steam:11000013bd36b18', 'gold', 0);
INSERT INTO `user_inventory` VALUES (1107, 'steam:11000013bd36b18', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (1108, 'steam:11000013bd36b18', 'water', 3);
INSERT INTO `user_inventory` VALUES (1109, 'steam:11000013bd36b18', 'potato', 0);
INSERT INTO `user_inventory` VALUES (1110, 'steam:11000013bd36b18', 'wine', 0);
INSERT INTO `user_inventory` VALUES (1111, 'steam:11000013bd36b18', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (1112, 'steam:11000013bd36b18', 'wood', 0);
INSERT INTO `user_inventory` VALUES (1113, 'steam:11000013bd36b18', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (1114, 'steam:11000013bd36b18', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (1115, 'steam:11000013bd36b18', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (1116, 'steam:11000013bd36b18', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (1117, 'steam:11000013bd36b18', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (1118, 'steam:11000013bd36b18', 'vhamburger', 3);
INSERT INTO `user_inventory` VALUES (1119, 'steam:11000013bd36b18', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (1120, 'steam:11000013bd36b18', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (1121, 'steam:11000013bd36b18', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (1122, 'steam:11000013bd36b18', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (1123, 'steam:11000013bd36b18', 'stone', 0);
INSERT INTO `user_inventory` VALUES (1124, 'steam:11000013bd36b18', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (1125, 'steam:11000013bd36b18', 'meth', 0);
INSERT INTO `user_inventory` VALUES (1126, 'steam:11000013bd36b18', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (1127, 'steam:11000013bd36b18', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (1128, 'steam:11000013bd36b18', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (1129, 'steam:11000013bd36b18', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (1130, 'steam:11000013bd36b18', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (1131, 'steam:11000013bd36b18', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (1132, 'steam:11000013bd36b18', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (1133, 'steam:11000013bd36b18', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (1134, 'steam:11000013bd36b18', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (1135, 'steam:11000013bd36b18', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (1136, 'steam:11000013bd36b18', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (1137, 'steam:11000013bd36b18', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (1138, 'steam:11000013bd36b18', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (1139, 'steam:11000013bd36b18', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (1140, 'steam:11000013bd36b18', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (1141, 'steam:11000013bd36b18', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (1142, 'steam:11000013bd36b18', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (1143, 'steam:11000013bd36b18', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (1144, 'steam:11000013bd36b18', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (1145, 'steam:11000013bd36b18', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (1146, 'steam:11000013bd36b18', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (1147, 'steam:11000013bd36b18', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (1148, 'steam:11000013bd36b18', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (1149, 'steam:11000013bd36b18', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (1150, 'steam:11000013bd36b18', 'weed', 0);
INSERT INTO `user_inventory` VALUES (1151, 'steam:11000013bd36b18', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (1152, 'steam:11000013bd36b18', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (1153, 'steam:11000013bd36b18', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (1154, 'steam:11000013bd36b18', 'essence', 0);
INSERT INTO `user_inventory` VALUES (1155, 'steam:11000013bd36b18', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (1156, 'steam:11000013bd36b18', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (1157, 'steam:11000013bd36b18', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (1158, 'steam:11000013bd36b18', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (1159, 'steam:11000013bd36b18', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (1160, 'steam:11000013bd36b18', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (1161, 'steam:11000013bd36b18', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (1162, 'steam:11000013bd36b18', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (1163, 'steam:11000013bd36b18', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (1164, 'steam:11000013bd36b18', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (1165, 'steam:11000013bd36b18', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (1166, 'steam:11000013bd36b18', 'fish', 0);
INSERT INTO `user_inventory` VALUES (1167, 'steam:11000013bd36b18', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (1168, 'steam:11000013bd36b18', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (1169, 'steam:11000013bd36b18', 'iron', 0);
INSERT INTO `user_inventory` VALUES (1170, 'steam:11000013bd36b18', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (1171, 'steam:11000013bd36b18', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (1172, 'steam:110000135a51347', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (1173, 'steam:110000135a51347', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (1174, 'steam:110000135a51347', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (1175, 'steam:110000135a51347', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (1176, 'steam:110000135a51347', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (1177, 'steam:110000135a51347', 'camera', 0);
INSERT INTO `user_inventory` VALUES (1178, 'steam:110000135a51347', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (1179, 'steam:110000135a51347', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (1180, 'steam:110000135a51347', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (1181, 'steam:110000135a51347', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (1182, 'steam:110000135a51347', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (1183, 'steam:110000135a51347', 'wool', 0);
INSERT INTO `user_inventory` VALUES (1184, 'steam:110000135a51347', 'coke', 0);
INSERT INTO `user_inventory` VALUES (1185, 'steam:110000135a51347', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (1186, 'steam:110000135a51347', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (1187, 'steam:110000135a51347', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (1188, 'steam:110000135a51347', 'ring', 0);
INSERT INTO `user_inventory` VALUES (1189, 'steam:110000135a51347', 'chips', 0);
INSERT INTO `user_inventory` VALUES (1190, 'steam:110000135a51347', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (1191, 'steam:110000135a51347', 'milk', 0);
INSERT INTO `user_inventory` VALUES (1192, 'steam:110000135a51347', 'bread', 0);
INSERT INTO `user_inventory` VALUES (1193, 'steam:110000135a51347', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (1194, 'steam:110000135a51347', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (1195, 'steam:110000135a51347', 'orage', 0);
INSERT INTO `user_inventory` VALUES (1196, 'steam:110000135a51347', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (1197, 'steam:110000135a51347', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (1198, 'steam:110000135a51347', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (1199, 'steam:110000135a51347', 'beer', 0);
INSERT INTO `user_inventory` VALUES (1200, 'steam:110000135a51347', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (1201, 'steam:110000135a51347', 'clip', 0);
INSERT INTO `user_inventory` VALUES (1202, 'steam:110000135a51347', 'opium', 0);
INSERT INTO `user_inventory` VALUES (1203, 'steam:110000135a51347', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (1204, 'steam:110000135a51347', 'copper', 0);
INSERT INTO `user_inventory` VALUES (1205, 'steam:110000135a51347', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (1206, 'steam:110000135a51347', 'gold', 0);
INSERT INTO `user_inventory` VALUES (1207, 'steam:110000135a51347', 'water', 3);
INSERT INTO `user_inventory` VALUES (1208, 'steam:110000135a51347', 'potato', 0);
INSERT INTO `user_inventory` VALUES (1209, 'steam:110000135a51347', 'wine', 0);
INSERT INTO `user_inventory` VALUES (1210, 'steam:110000135a51347', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (1211, 'steam:110000135a51347', 'wood', 0);
INSERT INTO `user_inventory` VALUES (1212, 'steam:110000135a51347', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (1213, 'steam:110000135a51347', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (1214, 'steam:110000135a51347', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (1215, 'steam:110000135a51347', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (1216, 'steam:110000135a51347', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (1217, 'steam:110000135a51347', 'vhamburger', 2);
INSERT INTO `user_inventory` VALUES (1218, 'steam:110000135a51347', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (1219, 'steam:110000135a51347', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (1220, 'steam:110000135a51347', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (1221, 'steam:110000135a51347', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (1222, 'steam:110000135a51347', 'stone', 0);
INSERT INTO `user_inventory` VALUES (1223, 'steam:110000135a51347', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (1224, 'steam:110000135a51347', 'meth', 0);
INSERT INTO `user_inventory` VALUES (1225, 'steam:110000135a51347', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (1226, 'steam:110000135a51347', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (1227, 'steam:110000135a51347', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (1228, 'steam:110000135a51347', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (1229, 'steam:110000135a51347', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (1230, 'steam:110000135a51347', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (1231, 'steam:110000135a51347', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (1232, 'steam:110000135a51347', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (1233, 'steam:110000135a51347', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (1234, 'steam:110000135a51347', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (1235, 'steam:110000135a51347', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (1236, 'steam:110000135a51347', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (1237, 'steam:110000135a51347', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (1238, 'steam:110000135a51347', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (1239, 'steam:110000135a51347', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (1240, 'steam:110000135a51347', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (1241, 'steam:110000135a51347', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (1242, 'steam:110000135a51347', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (1243, 'steam:110000135a51347', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (1244, 'steam:110000135a51347', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (1245, 'steam:110000135a51347', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (1246, 'steam:110000135a51347', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (1247, 'steam:110000135a51347', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (1248, 'steam:110000135a51347', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (1249, 'steam:110000135a51347', 'weed', 0);
INSERT INTO `user_inventory` VALUES (1250, 'steam:110000135a51347', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (1251, 'steam:110000135a51347', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (1252, 'steam:110000135a51347', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (1253, 'steam:110000135a51347', 'essence', 0);
INSERT INTO `user_inventory` VALUES (1254, 'steam:110000135a51347', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (1255, 'steam:110000135a51347', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (1256, 'steam:110000135a51347', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (1257, 'steam:110000135a51347', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (1258, 'steam:110000135a51347', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (1259, 'steam:110000135a51347', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (1260, 'steam:110000135a51347', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (1261, 'steam:110000135a51347', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (1262, 'steam:110000135a51347', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (1263, 'steam:110000135a51347', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (1264, 'steam:110000135a51347', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (1265, 'steam:110000135a51347', 'fish', 0);
INSERT INTO `user_inventory` VALUES (1266, 'steam:110000135a51347', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (1267, 'steam:110000135a51347', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (1268, 'steam:110000135a51347', 'iron', 0);
INSERT INTO `user_inventory` VALUES (1269, 'steam:110000135a51347', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (1270, 'steam:110000135a51347', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (1271, 'steam:110000134728f22', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (1272, 'steam:110000134728f22', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (1273, 'steam:110000134728f22', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (1274, 'steam:110000134728f22', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (1275, 'steam:110000134728f22', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (1276, 'steam:110000134728f22', 'camera', 0);
INSERT INTO `user_inventory` VALUES (1277, 'steam:110000134728f22', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (1278, 'steam:110000134728f22', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (1279, 'steam:110000134728f22', 'fixkit', 5);
INSERT INTO `user_inventory` VALUES (1280, 'steam:110000134728f22', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (1281, 'steam:110000134728f22', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (1282, 'steam:110000134728f22', 'wool', 0);
INSERT INTO `user_inventory` VALUES (1283, 'steam:110000134728f22', 'coke', 0);
INSERT INTO `user_inventory` VALUES (1284, 'steam:110000134728f22', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (1285, 'steam:110000134728f22', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (1286, 'steam:110000134728f22', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (1287, 'steam:110000134728f22', 'ring', 0);
INSERT INTO `user_inventory` VALUES (1288, 'steam:110000134728f22', 'chips', 0);
INSERT INTO `user_inventory` VALUES (1289, 'steam:110000134728f22', 'milk', 0);
INSERT INTO `user_inventory` VALUES (1290, 'steam:110000134728f22', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (1291, 'steam:110000134728f22', 'bread', 0);
INSERT INTO `user_inventory` VALUES (1292, 'steam:110000134728f22', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (1293, 'steam:110000134728f22', 'gazbottle', 2);
INSERT INTO `user_inventory` VALUES (1294, 'steam:110000134728f22', 'orage', 0);
INSERT INTO `user_inventory` VALUES (1295, 'steam:110000134728f22', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (1296, 'steam:110000134728f22', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (1297, 'steam:110000134728f22', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (1298, 'steam:110000134728f22', 'beer', 0);
INSERT INTO `user_inventory` VALUES (1299, 'steam:110000134728f22', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (1300, 'steam:110000134728f22', 'clip', 0);
INSERT INTO `user_inventory` VALUES (1301, 'steam:110000134728f22', 'opium', 0);
INSERT INTO `user_inventory` VALUES (1302, 'steam:110000134728f22', 'copper', 0);
INSERT INTO `user_inventory` VALUES (1303, 'steam:110000134728f22', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (1304, 'steam:110000134728f22', 'gold', 0);
INSERT INTO `user_inventory` VALUES (1305, 'steam:110000134728f22', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (1306, 'steam:110000134728f22', 'water', 0);
INSERT INTO `user_inventory` VALUES (1307, 'steam:110000134728f22', 'potato', 0);
INSERT INTO `user_inventory` VALUES (1308, 'steam:110000134728f22', 'wine', 0);
INSERT INTO `user_inventory` VALUES (1309, 'steam:110000134728f22', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (1310, 'steam:110000134728f22', 'wood', 0);
INSERT INTO `user_inventory` VALUES (1311, 'steam:110000134728f22', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (1312, 'steam:110000134728f22', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (1313, 'steam:110000134728f22', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (1314, 'steam:110000134728f22', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (1315, 'steam:110000134728f22', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (1316, 'steam:110000134728f22', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (1317, 'steam:110000134728f22', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (1318, 'steam:110000134728f22', 'vhamburger', 6);
INSERT INTO `user_inventory` VALUES (1319, 'steam:110000134728f22', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (1320, 'steam:110000134728f22', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (1321, 'steam:110000134728f22', 'stone', 0);
INSERT INTO `user_inventory` VALUES (1322, 'steam:110000134728f22', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (1323, 'steam:110000134728f22', 'meth', 0);
INSERT INTO `user_inventory` VALUES (1324, 'steam:110000134728f22', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (1325, 'steam:110000134728f22', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (1326, 'steam:110000134728f22', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (1327, 'steam:110000134728f22', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (1328, 'steam:110000134728f22', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (1329, 'steam:110000134728f22', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (1330, 'steam:110000134728f22', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (1331, 'steam:110000134728f22', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (1332, 'steam:110000134728f22', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (1333, 'steam:110000134728f22', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (1334, 'steam:110000134728f22', 'fixtool', 4);
INSERT INTO `user_inventory` VALUES (1335, 'steam:110000134728f22', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (1336, 'steam:110000134728f22', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (1337, 'steam:110000134728f22', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (1338, 'steam:110000134728f22', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (1339, 'steam:110000134728f22', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (1340, 'steam:110000134728f22', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (1341, 'steam:110000134728f22', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (1342, 'steam:110000134728f22', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (1343, 'steam:110000134728f22', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (1344, 'steam:110000134728f22', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (1345, 'steam:110000134728f22', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (1346, 'steam:110000134728f22', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (1347, 'steam:110000134728f22', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (1348, 'steam:110000134728f22', 'weed', 0);
INSERT INTO `user_inventory` VALUES (1349, 'steam:110000134728f22', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (1350, 'steam:110000134728f22', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (1351, 'steam:110000134728f22', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (1352, 'steam:110000134728f22', 'essence', 0);
INSERT INTO `user_inventory` VALUES (1353, 'steam:110000134728f22', 'carotool', 20);
INSERT INTO `user_inventory` VALUES (1354, 'steam:110000134728f22', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (1355, 'steam:110000134728f22', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (1356, 'steam:110000134728f22', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (1357, 'steam:110000134728f22', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (1358, 'steam:110000134728f22', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (1359, 'steam:110000134728f22', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (1360, 'steam:110000134728f22', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (1361, 'steam:110000134728f22', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (1362, 'steam:110000134728f22', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (1363, 'steam:110000134728f22', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (1364, 'steam:110000134728f22', 'fish', 0);
INSERT INTO `user_inventory` VALUES (1365, 'steam:110000134728f22', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (1366, 'steam:110000134728f22', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (1367, 'steam:110000134728f22', 'iron', 0);
INSERT INTO `user_inventory` VALUES (1368, 'steam:110000134728f22', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (1369, 'steam:110000134728f22', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (1370, 'steam:11000011745d699', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (1371, 'steam:11000011745d699', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (1372, 'steam:11000011745d699', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (1373, 'steam:11000011745d699', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (1374, 'steam:11000011745d699', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (1375, 'steam:11000011745d699', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (1376, 'steam:11000011745d699', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (1377, 'steam:11000011745d699', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (1378, 'steam:11000011745d699', 'camera', 0);
INSERT INTO `user_inventory` VALUES (1379, 'steam:11000011745d699', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (1380, 'steam:11000011745d699', 'shamburger', 5);
INSERT INTO `user_inventory` VALUES (1381, 'steam:11000011745d699', 'wool', 0);
INSERT INTO `user_inventory` VALUES (1382, 'steam:11000011745d699', 'coke', 0);
INSERT INTO `user_inventory` VALUES (1383, 'steam:11000011745d699', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (1384, 'steam:11000011745d699', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (1385, 'steam:11000011745d699', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (1386, 'steam:11000011745d699', 'ring', 0);
INSERT INTO `user_inventory` VALUES (1387, 'steam:11000011745d699', 'chips', 0);
INSERT INTO `user_inventory` VALUES (1388, 'steam:11000011745d699', 'milk', 0);
INSERT INTO `user_inventory` VALUES (1389, 'steam:11000011745d699', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (1390, 'steam:11000011745d699', 'bread', 0);
INSERT INTO `user_inventory` VALUES (1391, 'steam:11000011745d699', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (1392, 'steam:11000011745d699', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (1393, 'steam:11000011745d699', 'orage', 0);
INSERT INTO `user_inventory` VALUES (1394, 'steam:11000011745d699', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (1395, 'steam:11000011745d699', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (1396, 'steam:11000011745d699', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (1397, 'steam:11000011745d699', 'beer', 0);
INSERT INTO `user_inventory` VALUES (1398, 'steam:11000011745d699', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (1399, 'steam:11000011745d699', 'clip', 0);
INSERT INTO `user_inventory` VALUES (1400, 'steam:11000011745d699', 'opium', 0);
INSERT INTO `user_inventory` VALUES (1401, 'steam:11000011745d699', 'copper', 0);
INSERT INTO `user_inventory` VALUES (1402, 'steam:11000011745d699', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (1403, 'steam:11000011745d699', 'gold', 0);
INSERT INTO `user_inventory` VALUES (1404, 'steam:11000011745d699', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (1405, 'steam:11000011745d699', 'water', 0);
INSERT INTO `user_inventory` VALUES (1406, 'steam:11000011745d699', 'potato', 0);
INSERT INTO `user_inventory` VALUES (1407, 'steam:11000011745d699', 'wine', 0);
INSERT INTO `user_inventory` VALUES (1408, 'steam:11000011745d699', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (1409, 'steam:11000011745d699', 'wood', 0);
INSERT INTO `user_inventory` VALUES (1410, 'steam:11000011745d699', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (1411, 'steam:11000011745d699', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (1412, 'steam:11000011745d699', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (1413, 'steam:11000011745d699', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (1414, 'steam:11000011745d699', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (1415, 'steam:11000011745d699', 'vhamburger', 0);
INSERT INTO `user_inventory` VALUES (1416, 'steam:11000011745d699', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (1417, 'steam:11000011745d699', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (1418, 'steam:11000011745d699', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (1419, 'steam:11000011745d699', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (1420, 'steam:11000011745d699', 'stone', 0);
INSERT INTO `user_inventory` VALUES (1421, 'steam:11000011745d699', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (1422, 'steam:11000011745d699', 'meth', 0);
INSERT INTO `user_inventory` VALUES (1423, 'steam:11000011745d699', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (1424, 'steam:11000011745d699', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (1425, 'steam:11000011745d699', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (1426, 'steam:11000011745d699', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (1427, 'steam:11000011745d699', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (1428, 'steam:11000011745d699', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (1429, 'steam:11000011745d699', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (1430, 'steam:11000011745d699', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (1431, 'steam:11000011745d699', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (1432, 'steam:11000011745d699', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (1433, 'steam:11000011745d699', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (1434, 'steam:11000011745d699', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (1435, 'steam:11000011745d699', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (1436, 'steam:11000011745d699', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (1437, 'steam:11000011745d699', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (1438, 'steam:11000011745d699', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (1439, 'steam:11000011745d699', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (1440, 'steam:11000011745d699', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (1441, 'steam:11000011745d699', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (1442, 'steam:11000011745d699', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (1443, 'steam:11000011745d699', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (1444, 'steam:11000011745d699', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (1445, 'steam:11000011745d699', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (1446, 'steam:11000011745d699', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (1447, 'steam:11000011745d699', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (1448, 'steam:11000011745d699', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (1449, 'steam:11000011745d699', 'weed', 0);
INSERT INTO `user_inventory` VALUES (1450, 'steam:11000011745d699', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (1451, 'steam:11000011745d699', 'essence', 0);
INSERT INTO `user_inventory` VALUES (1452, 'steam:11000011745d699', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (1453, 'steam:11000011745d699', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (1454, 'steam:11000011745d699', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (1455, 'steam:11000011745d699', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (1456, 'steam:11000011745d699', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (1457, 'steam:11000011745d699', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (1458, 'steam:11000011745d699', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (1459, 'steam:11000011745d699', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (1460, 'steam:11000011745d699', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (1461, 'steam:11000011745d699', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (1462, 'steam:11000011745d699', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (1463, 'steam:11000011745d699', 'fish', 0);
INSERT INTO `user_inventory` VALUES (1464, 'steam:11000011745d699', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (1465, 'steam:11000011745d699', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (1466, 'steam:11000011745d699', 'iron', 0);
INSERT INTO `user_inventory` VALUES (1467, 'steam:11000011745d699', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (1468, 'steam:11000011745d699', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (1469, 'steam:11000013c2b297a', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (1470, 'steam:11000013c2b297a', 'wine', 0);
INSERT INTO `user_inventory` VALUES (1471, 'steam:11000013c2b297a', 'beer', 0);
INSERT INTO `user_inventory` VALUES (1472, 'steam:11000013c2b297a', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (1473, 'steam:11000013c2b297a', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (1474, 'steam:11000013c2b297a', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (1475, 'steam:11000013c2b297a', 'potato', 0);
INSERT INTO `user_inventory` VALUES (1476, 'steam:11000013c2b297a', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (1477, 'steam:11000013c2b297a', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (1478, 'steam:11000013c2b297a', 'chips', 0);
INSERT INTO `user_inventory` VALUES (1479, 'steam:11000013c2b297a', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (1480, 'steam:11000013c2b297a', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (1481, 'steam:11000013c2b297a', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (1482, 'steam:11000013c2b297a', 'lettuce', 1286);
INSERT INTO `user_inventory` VALUES (1483, 'steam:11000013c2b297a', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (1484, 'steam:11000013c2b297a', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (1485, 'steam:11000013c2b297a', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (1486, 'steam:11000013c2b297a', 'hamburger', 6);
INSERT INTO `user_inventory` VALUES (1487, 'steam:11000013c2b297a', 'vhamburger', 78);
INSERT INTO `user_inventory` VALUES (1488, 'steam:11000013c2b297a', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (1489, 'steam:11000013c2b297a', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (1490, 'steam:11000013c2b297a', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (1491, 'steam:11000013c2b297a', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (1492, 'steam:11000013c2b297a', 'essence', 0);
INSERT INTO `user_inventory` VALUES (1493, 'steam:11000013c2b297a', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (1494, 'steam:11000013c2b297a', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (1495, 'steam:11000013c2b297a', 'copper', 25);
INSERT INTO `user_inventory` VALUES (1496, 'steam:11000013c2b297a', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (1497, 'steam:11000013c2b297a', 'wool', 0);
INSERT INTO `user_inventory` VALUES (1498, 'steam:11000013c2b297a', 'wood', 0);
INSERT INTO `user_inventory` VALUES (1499, 'steam:11000013c2b297a', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (1500, 'steam:11000013c2b297a', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (1501, 'steam:11000013c2b297a', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (1502, 'steam:11000013c2b297a', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (1503, 'steam:11000013c2b297a', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (1504, 'steam:11000013c2b297a', 'weed', 0);
INSERT INTO `user_inventory` VALUES (1505, 'steam:11000013c2b297a', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (1506, 'steam:11000013c2b297a', 'fish', 50);
INSERT INTO `user_inventory` VALUES (1507, 'steam:11000013c2b297a', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (1508, 'steam:11000013c2b297a', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (1509, 'steam:11000013c2b297a', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (1510, 'steam:11000013c2b297a', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (1511, 'steam:11000013c2b297a', 'milk', 0);
INSERT INTO `user_inventory` VALUES (1512, 'steam:11000013c2b297a', 'stone', 0);
INSERT INTO `user_inventory` VALUES (1513, 'steam:11000013c2b297a', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (1514, 'steam:11000013c2b297a', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (1515, 'steam:11000013c2b297a', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (1516, 'steam:11000013c2b297a', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (1517, 'steam:11000013c2b297a', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (1518, 'steam:11000013c2b297a', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (1519, 'steam:11000013c2b297a', 'gold', 0);
INSERT INTO `user_inventory` VALUES (1520, 'steam:11000013c2b297a', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (1521, 'steam:11000013c2b297a', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (1522, 'steam:11000013c2b297a', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (1523, 'steam:11000013c2b297a', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (1524, 'steam:11000013c2b297a', 'slaughtered_chicken', 2);
INSERT INTO `user_inventory` VALUES (1525, 'steam:11000013c2b297a', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (1526, 'steam:11000013c2b297a', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (1527, 'steam:11000013c2b297a', 'clip', 9);
INSERT INTO `user_inventory` VALUES (1528, 'steam:11000013c2b297a', 'iron', 0);
INSERT INTO `user_inventory` VALUES (1529, 'steam:11000013c2b297a', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (1530, 'steam:11000013c2b297a', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (1531, 'steam:11000013c2b297a', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (1532, 'steam:11000013c2b297a', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (1533, 'steam:11000013c2b297a', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (1534, 'steam:11000013c2b297a', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (1535, 'steam:11000013c2b297a', 'water', 1224);
INSERT INTO `user_inventory` VALUES (1536, 'steam:11000013c2b297a', 'orage', 4);
INSERT INTO `user_inventory` VALUES (1537, 'steam:11000013c2b297a', 'ring', 0);
INSERT INTO `user_inventory` VALUES (1538, 'steam:11000013c2b297a', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (1539, 'steam:11000013c2b297a', 'coke', 0);
INSERT INTO `user_inventory` VALUES (1540, 'steam:11000013c2b297a', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (1541, 'steam:11000013c2b297a', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (1542, 'steam:11000013c2b297a', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (1543, 'steam:11000013c2b297a', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (1544, 'steam:11000013c2b297a', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (1545, 'steam:11000013c2b297a', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (1546, 'steam:11000013c2b297a', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (1547, 'steam:11000013c2b297a', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (1548, 'steam:11000013c2b297a', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (1549, 'steam:11000013c2b297a', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (1550, 'steam:11000013c2b297a', 'medikit', 370);
INSERT INTO `user_inventory` VALUES (1551, 'steam:11000013c2b297a', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (1552, 'steam:11000013c2b297a', 'juice_orage', 33);
INSERT INTO `user_inventory` VALUES (1553, 'steam:11000013c2b297a', 'meth', 0);
INSERT INTO `user_inventory` VALUES (1554, 'steam:11000013c2b297a', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (1555, 'steam:11000013c2b297a', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (1556, 'steam:11000013c2b297a', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (1557, 'steam:11000013c2b297a', 'camera', 0);
INSERT INTO `user_inventory` VALUES (1558, 'steam:11000013c2b297a', 'alive_chicken', 20);
INSERT INTO `user_inventory` VALUES (1559, 'steam:11000013c2b297a', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (1560, 'steam:11000013c2b297a', 'bread', 0);
INSERT INTO `user_inventory` VALUES (1561, 'steam:11000013c2b297a', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (1562, 'steam:11000013c2b297a', 'opium', 50);
INSERT INTO `user_inventory` VALUES (1563, 'steam:11000013c2b297a', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (1564, 'steam:11000013c2b297a', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (1565, 'steam:11000013c2b297a', 'packaged_chicken', 50);
INSERT INTO `user_inventory` VALUES (1566, 'steam:11000013c2b297a', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (1567, 'steam:11000013c2b297a', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (1568, 'steam:110000103f407b5', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (1569, 'steam:110000103f407b5', 'fish', 0);
INSERT INTO `user_inventory` VALUES (1570, 'steam:110000103f407b5', 'iron', 0);
INSERT INTO `user_inventory` VALUES (1571, 'steam:110000103f407b5', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (1572, 'steam:110000103f407b5', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (1573, 'steam:110000103f407b5', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (1574, 'steam:110000103f407b5', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (1575, 'steam:110000103f407b5', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (1576, 'steam:110000103f407b5', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (1577, 'steam:110000103f407b5', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (1578, 'steam:110000103f407b5', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (1579, 'steam:110000103f407b5', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (1580, 'steam:110000103f407b5', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (1581, 'steam:110000103f407b5', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (1582, 'steam:110000103f407b5', 'meth', 0);
INSERT INTO `user_inventory` VALUES (1583, 'steam:110000103f407b5', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (1584, 'steam:110000103f407b5', 'beer', 0);
INSERT INTO `user_inventory` VALUES (1585, 'steam:110000103f407b5', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (1586, 'steam:110000103f407b5', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (1587, 'steam:110000103f407b5', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (1588, 'steam:110000103f407b5', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (1589, 'steam:110000103f407b5', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (1590, 'steam:110000103f407b5', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (1591, 'steam:110000103f407b5', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (1592, 'steam:110000103f407b5', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (1593, 'steam:110000103f407b5', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (1594, 'steam:110000103f407b5', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (1595, 'steam:110000103f407b5', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (1596, 'steam:110000103f407b5', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (1597, 'steam:110000103f407b5', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (1598, 'steam:110000103f407b5', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (1599, 'steam:110000103f407b5', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (1600, 'steam:110000103f407b5', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (1601, 'steam:110000103f407b5', 'ring', 0);
INSERT INTO `user_inventory` VALUES (1602, 'steam:110000103f407b5', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (1603, 'steam:110000103f407b5', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (1604, 'steam:110000103f407b5', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (1605, 'steam:110000103f407b5', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (1606, 'steam:110000103f407b5', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (1607, 'steam:110000103f407b5', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (1608, 'steam:110000103f407b5', 'clip', 0);
INSERT INTO `user_inventory` VALUES (1609, 'steam:110000103f407b5', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (1610, 'steam:110000103f407b5', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (1611, 'steam:110000103f407b5', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (1612, 'steam:110000103f407b5', 'wool', 0);
INSERT INTO `user_inventory` VALUES (1613, 'steam:110000103f407b5', 'wood', 0);
INSERT INTO `user_inventory` VALUES (1614, 'steam:110000103f407b5', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (1615, 'steam:110000103f407b5', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (1616, 'steam:110000103f407b5', 'essence', 0);
INSERT INTO `user_inventory` VALUES (1617, 'steam:110000103f407b5', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (1618, 'steam:110000103f407b5', 'weed', 0);
INSERT INTO `user_inventory` VALUES (1619, 'steam:110000103f407b5', 'water', 0);
INSERT INTO `user_inventory` VALUES (1620, 'steam:110000103f407b5', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (1621, 'steam:110000103f407b5', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (1622, 'steam:110000103f407b5', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (1623, 'steam:110000103f407b5', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (1624, 'steam:110000103f407b5', 'opium', 0);
INSERT INTO `user_inventory` VALUES (1625, 'steam:110000103f407b5', 'copper', 0);
INSERT INTO `user_inventory` VALUES (1626, 'steam:110000103f407b5', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (1627, 'steam:110000103f407b5', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (1628, 'steam:110000103f407b5', 'potato', 0);
INSERT INTO `user_inventory` VALUES (1629, 'steam:110000103f407b5', 'milk', 0);
INSERT INTO `user_inventory` VALUES (1630, 'steam:110000103f407b5', 'wine', 0);
INSERT INTO `user_inventory` VALUES (1631, 'steam:110000103f407b5', 'vhamburger', 0);
INSERT INTO `user_inventory` VALUES (1632, 'steam:110000103f407b5', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (1633, 'steam:110000103f407b5', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (1634, 'steam:110000103f407b5', 'stone', 0);
INSERT INTO `user_inventory` VALUES (1635, 'steam:110000103f407b5', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (1636, 'steam:110000103f407b5', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (1637, 'steam:110000103f407b5', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (1638, 'steam:110000103f407b5', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (1639, 'steam:110000103f407b5', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (1640, 'steam:110000103f407b5', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (1641, 'steam:110000103f407b5', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (1642, 'steam:110000103f407b5', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (1643, 'steam:110000103f407b5', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (1644, 'steam:110000103f407b5', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (1645, 'steam:110000103f407b5', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (1646, 'steam:110000103f407b5', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (1647, 'steam:110000103f407b5', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (1648, 'steam:110000103f407b5', 'orage', 0);
INSERT INTO `user_inventory` VALUES (1649, 'steam:110000103f407b5', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (1650, 'steam:110000103f407b5', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (1651, 'steam:110000103f407b5', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (1652, 'steam:110000103f407b5', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (1653, 'steam:110000103f407b5', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (1654, 'steam:110000103f407b5', 'chips', 0);
INSERT INTO `user_inventory` VALUES (1655, 'steam:110000103f407b5', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (1656, 'steam:110000103f407b5', 'coke', 0);
INSERT INTO `user_inventory` VALUES (1657, 'steam:110000103f407b5', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (1658, 'steam:110000103f407b5', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (1659, 'steam:110000103f407b5', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (1660, 'steam:110000103f407b5', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (1661, 'steam:110000103f407b5', 'bread', 0);
INSERT INTO `user_inventory` VALUES (1662, 'steam:110000103f407b5', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (1663, 'steam:110000103f407b5', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (1664, 'steam:110000103f407b5', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (1665, 'steam:110000103f407b5', 'gold', 0);
INSERT INTO `user_inventory` VALUES (1666, 'steam:110000103f407b5', 'camera', 0);
INSERT INTO `user_inventory` VALUES (1667, 'steam:1100001172d233d', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (1668, 'steam:1100001172d233d', 'fish', 0);
INSERT INTO `user_inventory` VALUES (1669, 'steam:1100001172d233d', 'iron', 0);
INSERT INTO `user_inventory` VALUES (1670, 'steam:1100001172d233d', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (1671, 'steam:1100001172d233d', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (1672, 'steam:1100001172d233d', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (1673, 'steam:1100001172d233d', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (1674, 'steam:1100001172d233d', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (1675, 'steam:1100001172d233d', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (1676, 'steam:1100001172d233d', 'huesos', 993);
INSERT INTO `user_inventory` VALUES (1677, 'steam:1100001172d233d', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (1678, 'steam:1100001172d233d', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (1679, 'steam:1100001172d233d', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (1680, 'steam:1100001172d233d', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (1681, 'steam:1100001172d233d', 'meth', 0);
INSERT INTO `user_inventory` VALUES (1682, 'steam:1100001172d233d', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (1683, 'steam:1100001172d233d', 'beer', 0);
INSERT INTO `user_inventory` VALUES (1684, 'steam:1100001172d233d', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (1685, 'steam:1100001172d233d', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (1686, 'steam:1100001172d233d', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (1687, 'steam:1100001172d233d', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (1688, 'steam:1100001172d233d', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (1689, 'steam:1100001172d233d', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (1690, 'steam:1100001172d233d', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (1691, 'steam:1100001172d233d', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (1692, 'steam:1100001172d233d', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (1693, 'steam:1100001172d233d', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (1694, 'steam:1100001172d233d', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (1695, 'steam:1100001172d233d', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (1696, 'steam:1100001172d233d', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (1697, 'steam:1100001172d233d', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (1698, 'steam:1100001172d233d', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (1699, 'steam:1100001172d233d', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (1700, 'steam:1100001172d233d', 'ring', 0);
INSERT INTO `user_inventory` VALUES (1701, 'steam:1100001172d233d', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (1702, 'steam:1100001172d233d', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (1703, 'steam:1100001172d233d', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (1704, 'steam:1100001172d233d', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (1705, 'steam:1100001172d233d', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (1706, 'steam:1100001172d233d', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (1707, 'steam:1100001172d233d', 'clip', 0);
INSERT INTO `user_inventory` VALUES (1708, 'steam:1100001172d233d', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (1709, 'steam:1100001172d233d', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (1710, 'steam:1100001172d233d', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (1711, 'steam:1100001172d233d', 'wool', 0);
INSERT INTO `user_inventory` VALUES (1712, 'steam:1100001172d233d', 'wood', 0);
INSERT INTO `user_inventory` VALUES (1713, 'steam:1100001172d233d', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (1714, 'steam:1100001172d233d', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (1715, 'steam:1100001172d233d', 'essence', 0);
INSERT INTO `user_inventory` VALUES (1716, 'steam:1100001172d233d', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (1717, 'steam:1100001172d233d', 'weed', 0);
INSERT INTO `user_inventory` VALUES (1718, 'steam:1100001172d233d', 'water', 49);
INSERT INTO `user_inventory` VALUES (1719, 'steam:1100001172d233d', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (1720, 'steam:1100001172d233d', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (1721, 'steam:1100001172d233d', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (1722, 'steam:1100001172d233d', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (1723, 'steam:1100001172d233d', 'opium', 0);
INSERT INTO `user_inventory` VALUES (1724, 'steam:1100001172d233d', 'copper', 0);
INSERT INTO `user_inventory` VALUES (1725, 'steam:1100001172d233d', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (1726, 'steam:1100001172d233d', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (1727, 'steam:1100001172d233d', 'potato', 0);
INSERT INTO `user_inventory` VALUES (1728, 'steam:1100001172d233d', 'milk', 0);
INSERT INTO `user_inventory` VALUES (1729, 'steam:1100001172d233d', 'wine', 0);
INSERT INTO `user_inventory` VALUES (1730, 'steam:1100001172d233d', 'vhamburger', 43);
INSERT INTO `user_inventory` VALUES (1731, 'steam:1100001172d233d', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (1732, 'steam:1100001172d233d', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (1733, 'steam:1100001172d233d', 'stone', 0);
INSERT INTO `user_inventory` VALUES (1734, 'steam:1100001172d233d', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (1735, 'steam:1100001172d233d', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (1736, 'steam:1100001172d233d', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (1737, 'steam:1100001172d233d', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (1738, 'steam:1100001172d233d', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (1739, 'steam:1100001172d233d', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (1740, 'steam:1100001172d233d', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (1741, 'steam:1100001172d233d', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (1742, 'steam:1100001172d233d', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (1743, 'steam:1100001172d233d', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (1744, 'steam:1100001172d233d', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (1745, 'steam:1100001172d233d', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (1746, 'steam:1100001172d233d', 'vbread', 1);
INSERT INTO `user_inventory` VALUES (1747, 'steam:1100001172d233d', 'orage', 4);
INSERT INTO `user_inventory` VALUES (1748, 'steam:1100001172d233d', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (1749, 'steam:1100001172d233d', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (1750, 'steam:1100001172d233d', 'medulas', 75623);
INSERT INTO `user_inventory` VALUES (1751, 'steam:1100001172d233d', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (1752, 'steam:1100001172d233d', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (1753, 'steam:1100001172d233d', 'chips', 0);
INSERT INTO `user_inventory` VALUES (1754, 'steam:1100001172d233d', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (1755, 'steam:1100001172d233d', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (1756, 'steam:1100001172d233d', 'coke', 0);
INSERT INTO `user_inventory` VALUES (1757, 'steam:1100001172d233d', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (1758, 'steam:1100001172d233d', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (1759, 'steam:1100001172d233d', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (1760, 'steam:1100001172d233d', 'bread', 0);
INSERT INTO `user_inventory` VALUES (1761, 'steam:1100001172d233d', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (1762, 'steam:1100001172d233d', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (1763, 'steam:1100001172d233d', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (1764, 'steam:1100001172d233d', 'gold', 0);
INSERT INTO `user_inventory` VALUES (1765, 'steam:1100001172d233d', 'camera', 0);
INSERT INTO `user_inventory` VALUES (1766, 'steam:1100001172af33b', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (1767, 'steam:1100001172af33b', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (1768, 'steam:1100001172af33b', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (1769, 'steam:11000010722d120', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (1770, 'steam:11000010722d120', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (1771, 'steam:11000010722d120', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (1772, 'steam:110000115517b6d', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (1773, 'steam:110000115517b6d', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (1774, 'steam:110000115517b6d', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (1775, 'steam:11000013f295673', 'copper', 0);
INSERT INTO `user_inventory` VALUES (1776, 'steam:11000013f295673', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (1777, 'steam:11000013f295673', 'wine', 0);
INSERT INTO `user_inventory` VALUES (1778, 'steam:11000013f295673', 'opium', 0);
INSERT INTO `user_inventory` VALUES (1779, 'steam:11000013f295673', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (1780, 'steam:11000013f295673', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (1781, 'steam:11000013f295673', 'bread', 0);
INSERT INTO `user_inventory` VALUES (1782, 'steam:11000013f295673', 'iron', 0);
INSERT INTO `user_inventory` VALUES (1783, 'steam:11000013f295673', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (1784, 'steam:11000013f295673', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (1785, 'steam:11000013f295673', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (1786, 'steam:11000013f295673', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (1787, 'steam:11000013f295673', 'coke', 40);
INSERT INTO `user_inventory` VALUES (1788, 'steam:11000013f295673', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (1789, 'steam:11000013f295673', 'fish', 0);
INSERT INTO `user_inventory` VALUES (1790, 'steam:11000013f295673', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (1791, 'steam:11000013f295673', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (1792, 'steam:11000013f295673', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (1793, 'steam:11000013f295673', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (1794, 'steam:11000013f295673', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (1795, 'steam:11000013f295673', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (1796, 'steam:11000013f295673', 'water', 7);
INSERT INTO `user_inventory` VALUES (1797, 'steam:11000013f295673', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (1798, 'steam:11000013f295673', 'ring', 0);
INSERT INTO `user_inventory` VALUES (1799, 'steam:11000013f295673', 'potato', 0);
INSERT INTO `user_inventory` VALUES (1800, 'steam:11000013f295673', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (1801, 'steam:11000013f295673', 'chips', 0);
INSERT INTO `user_inventory` VALUES (1802, 'steam:11000013f295673', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (1803, 'steam:11000013f295673', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (1804, 'steam:11000013f295673', 'solo_key', 6);
INSERT INTO `user_inventory` VALUES (1805, 'steam:11000013f295673', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (1806, 'steam:11000013f295673', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (1807, 'steam:11000013f295673', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (1808, 'steam:11000013f295673', 'clip', 0);
INSERT INTO `user_inventory` VALUES (1809, 'steam:11000013f295673', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (1810, 'steam:11000013f295673', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (1811, 'steam:11000013f295673', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (1812, 'steam:11000013f295673', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (1813, 'steam:11000013f295673', 'vhamburger', 8);
INSERT INTO `user_inventory` VALUES (1814, 'steam:11000013f295673', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (1815, 'steam:11000013f295673', 'wood', 0);
INSERT INTO `user_inventory` VALUES (1816, 'steam:11000013f295673', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (1817, 'steam:11000013f295673', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (1818, 'steam:11000013f295673', 'wool', 0);
INSERT INTO `user_inventory` VALUES (1819, 'steam:11000013f295673', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (1820, 'steam:11000013f295673', 'weed', 50);
INSERT INTO `user_inventory` VALUES (1821, 'steam:11000013f295673', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (1822, 'steam:11000013f295673', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (1823, 'steam:11000013f295673', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (1824, 'steam:11000013f295673', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (1825, 'steam:11000013f295673', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (1826, 'steam:11000013f295673', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (1827, 'steam:11000013f295673', 'milk', 0);
INSERT INTO `user_inventory` VALUES (1828, 'steam:11000013f295673', 'stone', 0);
INSERT INTO `user_inventory` VALUES (1829, 'steam:11000013f295673', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (1830, 'steam:11000013f295673', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (1831, 'steam:11000013f295673', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (1832, 'steam:11000013f295673', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (1833, 'steam:11000013f295673', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (1834, 'steam:11000013f295673', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (1835, 'steam:11000013f295673', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (1836, 'steam:11000013f295673', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (1837, 'steam:11000013f295673', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (1838, 'steam:11000013f295673', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (1839, 'steam:11000013f295673', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (1840, 'steam:11000013f295673', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (1841, 'steam:11000013f295673', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (1842, 'steam:11000013f295673', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (1843, 'steam:11000013f295673', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (1844, 'steam:11000013f295673', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (1845, 'steam:11000013f295673', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (1846, 'steam:11000013f295673', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (1847, 'steam:11000013f295673', 'orage', 0);
INSERT INTO `user_inventory` VALUES (1848, 'steam:11000013f295673', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (1849, 'steam:11000013f295673', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (1850, 'steam:11000013f295673', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (1851, 'steam:11000013f295673', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (1852, 'steam:11000013f295673', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (1853, 'steam:11000013f295673', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (1854, 'steam:11000013f295673', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (1855, 'steam:11000013f295673', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (1856, 'steam:11000013f295673', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (1857, 'steam:11000013f295673', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (1858, 'steam:11000013f295673', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (1859, 'steam:11000013f295673', 'beer', 0);
INSERT INTO `user_inventory` VALUES (1860, 'steam:11000013f295673', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (1861, 'steam:11000013f295673', 'meth', 0);
INSERT INTO `user_inventory` VALUES (1862, 'steam:11000013f295673', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (1863, 'steam:11000013f295673', 'gold', 0);
INSERT INTO `user_inventory` VALUES (1864, 'steam:11000013f295673', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (1865, 'steam:11000013f295673', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (1866, 'steam:11000013f295673', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (1867, 'steam:11000013f295673', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (1868, 'steam:11000013f295673', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (1869, 'steam:11000013f295673', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (1870, 'steam:11000013f295673', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (1871, 'steam:11000013f295673', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (1872, 'steam:11000013f295673', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (1873, 'steam:11000013f295673', 'camera', 0);
INSERT INTO `user_inventory` VALUES (1874, 'steam:11000013f295673', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (1875, 'steam:11000013f295673', 'essence', 0);
INSERT INTO `user_inventory` VALUES (1876, 'steam:11000013f295673', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (1877, 'steam:11000013716cde4', 'copper', 0);
INSERT INTO `user_inventory` VALUES (1878, 'steam:11000013716cde4', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (1879, 'steam:11000013716cde4', 'wine', 0);
INSERT INTO `user_inventory` VALUES (1880, 'steam:11000013716cde4', 'opium', 0);
INSERT INTO `user_inventory` VALUES (1881, 'steam:11000013716cde4', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (1882, 'steam:11000013716cde4', 'bread', 0);
INSERT INTO `user_inventory` VALUES (1883, 'steam:11000013716cde4', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (1884, 'steam:11000013716cde4', 'iron', 0);
INSERT INTO `user_inventory` VALUES (1885, 'steam:11000013716cde4', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (1886, 'steam:11000013716cde4', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (1887, 'steam:11000013716cde4', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (1888, 'steam:11000013716cde4', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (1889, 'steam:11000013716cde4', 'coke', 0);
INSERT INTO `user_inventory` VALUES (1890, 'steam:11000013716cde4', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (1891, 'steam:11000013716cde4', 'fish', 0);
INSERT INTO `user_inventory` VALUES (1892, 'steam:11000013716cde4', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (1893, 'steam:11000013716cde4', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (1894, 'steam:11000013716cde4', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (1895, 'steam:11000013716cde4', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (1896, 'steam:11000013716cde4', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (1897, 'steam:11000013716cde4', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (1898, 'steam:11000013716cde4', 'water', 0);
INSERT INTO `user_inventory` VALUES (1899, 'steam:11000013716cde4', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (1900, 'steam:11000013716cde4', 'ring', 0);
INSERT INTO `user_inventory` VALUES (1901, 'steam:11000013716cde4', 'potato', 0);
INSERT INTO `user_inventory` VALUES (1902, 'steam:11000013716cde4', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (1903, 'steam:11000013716cde4', 'chips', 0);
INSERT INTO `user_inventory` VALUES (1904, 'steam:11000013716cde4', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (1905, 'steam:11000013716cde4', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (1906, 'steam:11000013716cde4', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (1907, 'steam:11000013716cde4', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (1908, 'steam:11000013716cde4', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (1909, 'steam:11000013716cde4', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (1910, 'steam:11000013716cde4', 'clip', 0);
INSERT INTO `user_inventory` VALUES (1911, 'steam:11000013716cde4', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (1912, 'steam:11000013716cde4', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (1913, 'steam:11000013716cde4', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (1914, 'steam:11000013716cde4', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (1915, 'steam:11000013716cde4', 'vhamburger', 0);
INSERT INTO `user_inventory` VALUES (1916, 'steam:11000013716cde4', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (1917, 'steam:11000013716cde4', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (1918, 'steam:11000013716cde4', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (1919, 'steam:11000013716cde4', 'wool', 0);
INSERT INTO `user_inventory` VALUES (1920, 'steam:11000013716cde4', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (1921, 'steam:11000013716cde4', 'wood', 0);
INSERT INTO `user_inventory` VALUES (1922, 'steam:11000013716cde4', 'weed', 0);
INSERT INTO `user_inventory` VALUES (1923, 'steam:11000013716cde4', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (1924, 'steam:11000013716cde4', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (1925, 'steam:11000013716cde4', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (1926, 'steam:11000013716cde4', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (1927, 'steam:11000013716cde4', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (1928, 'steam:11000013716cde4', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (1929, 'steam:11000013716cde4', 'stone', 0);
INSERT INTO `user_inventory` VALUES (1930, 'steam:11000013716cde4', 'milk', 0);
INSERT INTO `user_inventory` VALUES (1931, 'steam:11000013716cde4', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (1932, 'steam:11000013716cde4', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (1933, 'steam:11000013716cde4', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (1934, 'steam:11000013716cde4', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (1935, 'steam:11000013716cde4', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (1936, 'steam:11000013716cde4', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (1937, 'steam:11000013716cde4', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (1938, 'steam:11000013716cde4', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (1939, 'steam:11000013716cde4', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (1940, 'steam:11000013716cde4', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (1941, 'steam:11000013716cde4', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (1942, 'steam:11000013716cde4', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (1943, 'steam:11000013716cde4', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (1944, 'steam:11000013716cde4', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (1945, 'steam:11000013716cde4', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (1946, 'steam:11000013716cde4', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (1947, 'steam:11000013716cde4', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (1948, 'steam:11000013716cde4', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (1949, 'steam:11000013716cde4', 'orage', 50);
INSERT INTO `user_inventory` VALUES (1950, 'steam:11000013716cde4', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (1951, 'steam:11000013716cde4', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (1952, 'steam:11000013716cde4', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (1953, 'steam:11000013716cde4', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (1954, 'steam:11000013716cde4', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (1955, 'steam:11000013716cde4', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (1956, 'steam:11000013716cde4', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (1957, 'steam:11000013716cde4', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (1958, 'steam:11000013716cde4', 'cocacola', 1);
INSERT INTO `user_inventory` VALUES (1959, 'steam:11000013716cde4', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (1960, 'steam:11000013716cde4', 'beer', 0);
INSERT INTO `user_inventory` VALUES (1961, 'steam:11000013716cde4', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (1962, 'steam:11000013716cde4', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (1963, 'steam:11000013716cde4', 'meth', 0);
INSERT INTO `user_inventory` VALUES (1964, 'steam:11000013716cde4', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (1965, 'steam:11000013716cde4', 'gold', 0);
INSERT INTO `user_inventory` VALUES (1966, 'steam:11000013716cde4', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (1967, 'steam:11000013716cde4', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (1968, 'steam:11000013716cde4', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (1969, 'steam:11000013716cde4', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (1970, 'steam:11000013716cde4', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (1971, 'steam:11000013716cde4', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (1972, 'steam:11000013716cde4', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (1973, 'steam:11000013716cde4', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (1974, 'steam:11000013716cde4', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (1975, 'steam:11000013716cde4', 'camera', 0);
INSERT INTO `user_inventory` VALUES (1976, 'steam:11000013716cde4', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (1977, 'steam:11000013716cde4', 'essence', 0);
INSERT INTO `user_inventory` VALUES (1978, 'steam:11000013716cde4', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (1979, 'steam:1100001321585b7', 'copper', 0);
INSERT INTO `user_inventory` VALUES (1980, 'steam:1100001321585b7', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (1981, 'steam:1100001321585b7', 'wine', 0);
INSERT INTO `user_inventory` VALUES (1982, 'steam:1100001321585b7', 'opium', 0);
INSERT INTO `user_inventory` VALUES (1983, 'steam:1100001321585b7', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (1984, 'steam:1100001321585b7', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (1985, 'steam:1100001321585b7', 'bread', 0);
INSERT INTO `user_inventory` VALUES (1986, 'steam:1100001321585b7', 'iron', 0);
INSERT INTO `user_inventory` VALUES (1987, 'steam:1100001321585b7', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (1988, 'steam:1100001321585b7', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (1989, 'steam:1100001321585b7', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (1990, 'steam:1100001321585b7', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (1991, 'steam:1100001321585b7', 'coke', 0);
INSERT INTO `user_inventory` VALUES (1992, 'steam:1100001321585b7', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (1993, 'steam:1100001321585b7', 'fish', 0);
INSERT INTO `user_inventory` VALUES (1994, 'steam:1100001321585b7', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (1995, 'steam:1100001321585b7', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (1996, 'steam:1100001321585b7', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (1997, 'steam:1100001321585b7', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (1998, 'steam:1100001321585b7', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (1999, 'steam:1100001321585b7', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (2000, 'steam:1100001321585b7', 'water', 0);
INSERT INTO `user_inventory` VALUES (2001, 'steam:1100001321585b7', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (2002, 'steam:1100001321585b7', 'ring', 0);
INSERT INTO `user_inventory` VALUES (2003, 'steam:1100001321585b7', 'potato', 0);
INSERT INTO `user_inventory` VALUES (2004, 'steam:1100001321585b7', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (2005, 'steam:1100001321585b7', 'chips', 0);
INSERT INTO `user_inventory` VALUES (2006, 'steam:1100001321585b7', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (2007, 'steam:1100001321585b7', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (2008, 'steam:1100001321585b7', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (2009, 'steam:1100001321585b7', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (2010, 'steam:1100001321585b7', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (2011, 'steam:1100001321585b7', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (2012, 'steam:1100001321585b7', 'clip', 0);
INSERT INTO `user_inventory` VALUES (2013, 'steam:1100001321585b7', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (2014, 'steam:1100001321585b7', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (2015, 'steam:1100001321585b7', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (2016, 'steam:1100001321585b7', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (2017, 'steam:1100001321585b7', 'vhamburger', 1);
INSERT INTO `user_inventory` VALUES (2018, 'steam:1100001321585b7', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (2019, 'steam:1100001321585b7', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (2020, 'steam:1100001321585b7', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (2021, 'steam:1100001321585b7', 'wool', 0);
INSERT INTO `user_inventory` VALUES (2022, 'steam:1100001321585b7', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2023, 'steam:1100001321585b7', 'wood', 0);
INSERT INTO `user_inventory` VALUES (2024, 'steam:1100001321585b7', 'weed', 0);
INSERT INTO `user_inventory` VALUES (2025, 'steam:1100001321585b7', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (2026, 'steam:1100001321585b7', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (2027, 'steam:1100001321585b7', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (2028, 'steam:1100001321585b7', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (2029, 'steam:1100001321585b7', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (2030, 'steam:1100001321585b7', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (2031, 'steam:1100001321585b7', 'milk', 0);
INSERT INTO `user_inventory` VALUES (2032, 'steam:1100001321585b7', 'stone', 0);
INSERT INTO `user_inventory` VALUES (2033, 'steam:1100001321585b7', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (2034, 'steam:1100001321585b7', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (2035, 'steam:1100001321585b7', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (2036, 'steam:1100001321585b7', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (2037, 'steam:1100001321585b7', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (2038, 'steam:1100001321585b7', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (2039, 'steam:1100001321585b7', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (2040, 'steam:1100001321585b7', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (2041, 'steam:1100001321585b7', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (2042, 'steam:1100001321585b7', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (2043, 'steam:1100001321585b7', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (2044, 'steam:1100001321585b7', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (2045, 'steam:1100001321585b7', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (2046, 'steam:1100001321585b7', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2047, 'steam:1100001321585b7', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (2048, 'steam:1100001321585b7', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (2049, 'steam:1100001321585b7', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (2050, 'steam:1100001321585b7', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (2051, 'steam:1100001321585b7', 'orage', 0);
INSERT INTO `user_inventory` VALUES (2052, 'steam:1100001321585b7', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (2053, 'steam:1100001321585b7', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (2054, 'steam:1100001321585b7', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (2055, 'steam:1100001321585b7', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (2056, 'steam:1100001321585b7', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (2057, 'steam:1100001321585b7', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (2058, 'steam:1100001321585b7', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (2059, 'steam:1100001321585b7', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (2060, 'steam:1100001321585b7', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (2061, 'steam:1100001321585b7', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (2062, 'steam:1100001321585b7', 'beer', 0);
INSERT INTO `user_inventory` VALUES (2063, 'steam:1100001321585b7', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (2064, 'steam:1100001321585b7', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (2065, 'steam:1100001321585b7', 'meth', 0);
INSERT INTO `user_inventory` VALUES (2066, 'steam:1100001321585b7', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (2067, 'steam:1100001321585b7', 'gold', 0);
INSERT INTO `user_inventory` VALUES (2068, 'steam:1100001321585b7', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (2069, 'steam:1100001321585b7', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (2070, 'steam:1100001321585b7', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (2071, 'steam:1100001321585b7', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (2072, 'steam:1100001321585b7', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (2073, 'steam:1100001321585b7', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (2074, 'steam:1100001321585b7', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (2075, 'steam:1100001321585b7', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (2076, 'steam:1100001321585b7', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (2077, 'steam:1100001321585b7', 'camera', 0);
INSERT INTO `user_inventory` VALUES (2078, 'steam:1100001321585b7', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (2079, 'steam:1100001321585b7', 'essence', 0);
INSERT INTO `user_inventory` VALUES (2080, 'steam:1100001321585b7', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (2081, 'steam:11000013c2b297a', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2082, 'steam:11000013c2b297a', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (2083, 'steam:11000013c2b297a', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2084, 'steam:11000011899ea0f', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2085, 'steam:11000011899ea0f', 'sciroppo', 1);
INSERT INTO `user_inventory` VALUES (2086, 'steam:11000011899ea0f', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2087, 'steam:11000013301b85a', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (2088, 'steam:11000013301b85a', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (2089, 'steam:11000013301b85a', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (2090, 'steam:11000013301b85a', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (2091, 'steam:11000013301b85a', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (2092, 'steam:11000013301b85a', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (2093, 'steam:11000013301b85a', 'water', 0);
INSERT INTO `user_inventory` VALUES (2094, 'steam:11000013301b85a', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (2095, 'steam:11000013301b85a', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (2096, 'steam:11000013301b85a', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (2097, 'steam:11000013301b85a', 'beer', 0);
INSERT INTO `user_inventory` VALUES (2098, 'steam:11000013301b85a', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (2099, 'steam:11000013301b85a', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2100, 'steam:11000013301b85a', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (2101, 'steam:11000013301b85a', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (2102, 'steam:11000013301b85a', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (2103, 'steam:11000013301b85a', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (2104, 'steam:11000013301b85a', 'wine', 0);
INSERT INTO `user_inventory` VALUES (2105, 'steam:11000013301b85a', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (2106, 'steam:11000013301b85a', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (2107, 'steam:11000013301b85a', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (2108, 'steam:11000013301b85a', 'chips', 0);
INSERT INTO `user_inventory` VALUES (2109, 'steam:11000013301b85a', 'coke', 0);
INSERT INTO `user_inventory` VALUES (2110, 'steam:11000013301b85a', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (2111, 'steam:11000013301b85a', 'vhamburger', 0);
INSERT INTO `user_inventory` VALUES (2112, 'steam:11000013301b85a', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (2113, 'steam:11000013301b85a', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (2114, 'steam:11000013301b85a', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (2115, 'steam:11000013301b85a', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (2116, 'steam:11000013301b85a', 'camera', 0);
INSERT INTO `user_inventory` VALUES (2117, 'steam:11000013301b85a', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (2118, 'steam:11000013301b85a', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (2119, 'steam:11000013301b85a', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (2120, 'steam:11000013301b85a', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (2121, 'steam:11000013301b85a', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (2122, 'steam:11000013301b85a', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2123, 'steam:11000013301b85a', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (2124, 'steam:11000013301b85a', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (2125, 'steam:11000013301b85a', 'wool', 0);
INSERT INTO `user_inventory` VALUES (2126, 'steam:11000013301b85a', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (2127, 'steam:11000013301b85a', 'wood', 0);
INSERT INTO `user_inventory` VALUES (2128, 'steam:11000013301b85a', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (2129, 'steam:11000013301b85a', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (2130, 'steam:11000013301b85a', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (2131, 'steam:11000013301b85a', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (2132, 'steam:11000013301b85a', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (2133, 'steam:11000013301b85a', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (2134, 'steam:11000013301b85a', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (2135, 'steam:11000013301b85a', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (2136, 'steam:11000013301b85a', 'weed', 0);
INSERT INTO `user_inventory` VALUES (2137, 'steam:11000013301b85a', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (2138, 'steam:11000013301b85a', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (2139, 'steam:11000013301b85a', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (2140, 'steam:11000013301b85a', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (2141, 'steam:11000013301b85a', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (2142, 'steam:11000013301b85a', 'milk', 0);
INSERT INTO `user_inventory` VALUES (2143, 'steam:11000013301b85a', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (2144, 'steam:11000013301b85a', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (2145, 'steam:11000013301b85a', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (2146, 'steam:11000013301b85a', 'stone', 0);
INSERT INTO `user_inventory` VALUES (2147, 'steam:11000013301b85a', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (2148, 'steam:11000013301b85a', 'opium', 0);
INSERT INTO `user_inventory` VALUES (2149, 'steam:11000013301b85a', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (2150, 'steam:11000013301b85a', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (2151, 'steam:11000013301b85a', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (2152, 'steam:11000013301b85a', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (2153, 'steam:11000013301b85a', 'ring', 0);
INSERT INTO `user_inventory` VALUES (2154, 'steam:11000013301b85a', 'potato', 0);
INSERT INTO `user_inventory` VALUES (2155, 'steam:11000013301b85a', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (2156, 'steam:11000013301b85a', 'copper', 0);
INSERT INTO `user_inventory` VALUES (2157, 'steam:11000013301b85a', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (2158, 'steam:11000013301b85a', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (2159, 'steam:11000013301b85a', 'orage', 0);
INSERT INTO `user_inventory` VALUES (2160, 'steam:11000013301b85a', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (2161, 'steam:11000013301b85a', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (2162, 'steam:11000013301b85a', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (2163, 'steam:11000013301b85a', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (2164, 'steam:11000013301b85a', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (2165, 'steam:11000013301b85a', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (2166, 'steam:11000013301b85a', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (2167, 'steam:11000013301b85a', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (2168, 'steam:11000013301b85a', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (2169, 'steam:11000013301b85a', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (2170, 'steam:11000013301b85a', 'essence', 0);
INSERT INTO `user_inventory` VALUES (2171, 'steam:11000013301b85a', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (2172, 'steam:11000013301b85a', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (2173, 'steam:11000013301b85a', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (2174, 'steam:11000013301b85a', 'gold', 0);
INSERT INTO `user_inventory` VALUES (2175, 'steam:11000013301b85a', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (2176, 'steam:11000013301b85a', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (2177, 'steam:11000013301b85a', 'meth', 0);
INSERT INTO `user_inventory` VALUES (2178, 'steam:11000013301b85a', 'bread', 0);
INSERT INTO `user_inventory` VALUES (2179, 'steam:11000013301b85a', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (2180, 'steam:11000013301b85a', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (2181, 'steam:11000013301b85a', 'iron', 0);
INSERT INTO `user_inventory` VALUES (2182, 'steam:11000013301b85a', 'clip', 0);
INSERT INTO `user_inventory` VALUES (2183, 'steam:11000013301b85a', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (2184, 'steam:11000013301b85a', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (2185, 'steam:11000013301b85a', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (2186, 'steam:11000013301b85a', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (2187, 'steam:11000013301b85a', 'fish', 0);
INSERT INTO `user_inventory` VALUES (2188, 'steam:11000013301b85a', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (2189, 'steam:1100001172d233d', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2190, 'steam:1100001172d233d', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (2191, 'steam:1100001172d233d', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2192, 'steam:110000117b4ecd8', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2193, 'steam:110000117b4ecd8', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2194, 'steam:110000117b4ecd8', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (2195, 'steam:11000011a0816e8', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (2196, 'steam:11000011a0816e8', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (2197, 'steam:11000011a0816e8', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (2198, 'steam:11000011a0816e8', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (2199, 'steam:11000011a0816e8', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (2200, 'steam:11000011a0816e8', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (2201, 'steam:11000011a0816e8', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (2202, 'steam:11000011a0816e8', 'water', 0);
INSERT INTO `user_inventory` VALUES (2203, 'steam:11000011a0816e8', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (2204, 'steam:11000011a0816e8', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (2205, 'steam:11000011a0816e8', 'beer', 0);
INSERT INTO `user_inventory` VALUES (2206, 'steam:11000011a0816e8', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (2207, 'steam:11000011a0816e8', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2208, 'steam:11000011a0816e8', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (2209, 'steam:11000011a0816e8', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (2210, 'steam:11000011a0816e8', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (2211, 'steam:11000011a0816e8', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (2212, 'steam:11000011a0816e8', 'wine', 0);
INSERT INTO `user_inventory` VALUES (2213, 'steam:11000011a0816e8', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (2214, 'steam:11000011a0816e8', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (2215, 'steam:11000011a0816e8', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (2216, 'steam:11000011a0816e8', 'chips', 0);
INSERT INTO `user_inventory` VALUES (2217, 'steam:11000011a0816e8', 'coke', 0);
INSERT INTO `user_inventory` VALUES (2218, 'steam:11000011a0816e8', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (2219, 'steam:11000011a0816e8', 'vhamburger', 0);
INSERT INTO `user_inventory` VALUES (2220, 'steam:11000011a0816e8', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (2221, 'steam:11000011a0816e8', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (2222, 'steam:11000011a0816e8', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (2223, 'steam:11000011a0816e8', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (2224, 'steam:11000011a0816e8', 'camera', 0);
INSERT INTO `user_inventory` VALUES (2225, 'steam:11000011a0816e8', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (2226, 'steam:11000011a0816e8', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (2227, 'steam:11000011a0816e8', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (2228, 'steam:11000011a0816e8', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (2229, 'steam:11000011a0816e8', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (2230, 'steam:11000011a0816e8', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2231, 'steam:11000011a0816e8', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (2232, 'steam:11000011a0816e8', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (2233, 'steam:11000011a0816e8', 'wool', 0);
INSERT INTO `user_inventory` VALUES (2234, 'steam:11000011a0816e8', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (2235, 'steam:11000011a0816e8', 'wood', 0);
INSERT INTO `user_inventory` VALUES (2236, 'steam:11000011a0816e8', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (2237, 'steam:11000011a0816e8', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (2238, 'steam:11000011a0816e8', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (2239, 'steam:11000011a0816e8', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (2240, 'steam:11000011a0816e8', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (2241, 'steam:11000011a0816e8', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (2242, 'steam:11000011a0816e8', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (2243, 'steam:11000011a0816e8', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (2244, 'steam:11000011a0816e8', 'weed', 0);
INSERT INTO `user_inventory` VALUES (2245, 'steam:11000011a0816e8', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (2246, 'steam:11000011a0816e8', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (2247, 'steam:11000011a0816e8', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (2248, 'steam:11000011a0816e8', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (2249, 'steam:11000011a0816e8', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (2250, 'steam:11000011a0816e8', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (2251, 'steam:11000011a0816e8', 'milk', 0);
INSERT INTO `user_inventory` VALUES (2252, 'steam:11000011a0816e8', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (2253, 'steam:11000011a0816e8', 'stone', 0);
INSERT INTO `user_inventory` VALUES (2254, 'steam:11000011a0816e8', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (2255, 'steam:11000011a0816e8', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (2256, 'steam:11000011a0816e8', 'opium', 0);
INSERT INTO `user_inventory` VALUES (2257, 'steam:11000011a0816e8', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (2258, 'steam:11000011a0816e8', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (2259, 'steam:11000011a0816e8', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (2260, 'steam:11000011a0816e8', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (2261, 'steam:11000011a0816e8', 'ring', 0);
INSERT INTO `user_inventory` VALUES (2262, 'steam:11000011a0816e8', 'potato', 0);
INSERT INTO `user_inventory` VALUES (2263, 'steam:11000011a0816e8', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (2264, 'steam:11000011a0816e8', 'copper', 0);
INSERT INTO `user_inventory` VALUES (2265, 'steam:11000011a0816e8', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (2266, 'steam:11000011a0816e8', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (2267, 'steam:11000011a0816e8', 'orage', 0);
INSERT INTO `user_inventory` VALUES (2268, 'steam:11000011a0816e8', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (2269, 'steam:11000011a0816e8', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (2270, 'steam:11000011a0816e8', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (2271, 'steam:11000011a0816e8', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (2272, 'steam:11000011a0816e8', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (2273, 'steam:11000011a0816e8', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (2274, 'steam:11000011a0816e8', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (2275, 'steam:11000011a0816e8', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (2276, 'steam:11000011a0816e8', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (2277, 'steam:11000011a0816e8', 'essence', 0);
INSERT INTO `user_inventory` VALUES (2278, 'steam:11000011a0816e8', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (2279, 'steam:11000011a0816e8', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (2280, 'steam:11000011a0816e8', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (2281, 'steam:11000011a0816e8', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (2282, 'steam:11000011a0816e8', 'gold', 0);
INSERT INTO `user_inventory` VALUES (2283, 'steam:11000011a0816e8', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (2284, 'steam:11000011a0816e8', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (2285, 'steam:11000011a0816e8', 'meth', 0);
INSERT INTO `user_inventory` VALUES (2286, 'steam:11000011a0816e8', 'bread', 0);
INSERT INTO `user_inventory` VALUES (2287, 'steam:11000011a0816e8', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (2288, 'steam:11000011a0816e8', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (2289, 'steam:11000011a0816e8', 'iron', 0);
INSERT INTO `user_inventory` VALUES (2290, 'steam:11000011a0816e8', 'clip', 0);
INSERT INTO `user_inventory` VALUES (2291, 'steam:11000011a0816e8', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (2292, 'steam:11000011a0816e8', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (2293, 'steam:11000011a0816e8', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (2294, 'steam:11000011a0816e8', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (2295, 'steam:11000011a0816e8', 'fish', 0);
INSERT INTO `user_inventory` VALUES (2296, 'steam:11000011a0816e8', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (2297, 'steam:11000011745d699', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (2298, 'steam:11000011745d699', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2299, 'steam:11000011745d699', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2300, 'steam:110000135a51347', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (2301, 'steam:110000135a51347', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2302, 'steam:110000135a51347', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2303, 'steam:11000013bd36b18', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (2304, 'steam:11000013bd36b18', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2305, 'steam:11000013bd36b18', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2306, 'steam:1100001170fb22c', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (2307, 'steam:1100001170fb22c', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2308, 'steam:1100001170fb22c', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2309, 'steam:11000011bfb9181', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (2310, 'steam:11000011bfb9181', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (2311, 'steam:11000011bfb9181', 'fish', 0);
INSERT INTO `user_inventory` VALUES (2312, 'steam:11000011bfb9181', 'iron', 0);
INSERT INTO `user_inventory` VALUES (2313, 'steam:11000011bfb9181', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (2314, 'steam:11000011bfb9181', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (2315, 'steam:11000011bfb9181', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (2316, 'steam:11000011bfb9181', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (2317, 'steam:11000011bfb9181', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (2318, 'steam:11000011bfb9181', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (2319, 'steam:11000011bfb9181', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (2320, 'steam:11000011bfb9181', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (2321, 'steam:11000011bfb9181', 'cheese', 4);
INSERT INTO `user_inventory` VALUES (2322, 'steam:11000011bfb9181', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (2323, 'steam:11000011bfb9181', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (2324, 'steam:11000011bfb9181', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (2325, 'steam:11000011bfb9181', 'opium', 0);
INSERT INTO `user_inventory` VALUES (2326, 'steam:11000011bfb9181', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (2327, 'steam:11000011bfb9181', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (2328, 'steam:11000011bfb9181', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (2329, 'steam:11000011bfb9181', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (2330, 'steam:11000011bfb9181', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (2331, 'steam:11000011bfb9181', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (2332, 'steam:11000011bfb9181', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (2333, 'steam:11000011bfb9181', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (2334, 'steam:11000011bfb9181', 'clip', 0);
INSERT INTO `user_inventory` VALUES (2335, 'steam:11000011bfb9181', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (2336, 'steam:11000011bfb9181', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (2337, 'steam:11000011bfb9181', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (2338, 'steam:11000011bfb9181', 'camera', 0);
INSERT INTO `user_inventory` VALUES (2339, 'steam:11000011bfb9181', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (2340, 'steam:11000011bfb9181', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (2341, 'steam:11000011bfb9181', 'gold', 0);
INSERT INTO `user_inventory` VALUES (2342, 'steam:11000011bfb9181', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (2343, 'steam:11000011bfb9181', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (2344, 'steam:11000011bfb9181', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (2345, 'steam:11000011bfb9181', 'wood', 0);
INSERT INTO `user_inventory` VALUES (2346, 'steam:11000011bfb9181', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (2347, 'steam:11000011bfb9181', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (2348, 'steam:11000011bfb9181', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (2349, 'steam:11000011bfb9181', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (2350, 'steam:11000011bfb9181', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (2351, 'steam:11000011bfb9181', 'weed', 0);
INSERT INTO `user_inventory` VALUES (2352, 'steam:11000011bfb9181', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (2353, 'steam:11000011bfb9181', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (2354, 'steam:11000011bfb9181', 'water', 4);
INSERT INTO `user_inventory` VALUES (2355, 'steam:11000011bfb9181', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (2356, 'steam:11000011bfb9181', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (2357, 'steam:11000011bfb9181', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (2358, 'steam:11000011bfb9181', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (2359, 'steam:11000011bfb9181', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (2360, 'steam:11000011bfb9181', 'vhamburger', 0);
INSERT INTO `user_inventory` VALUES (2361, 'steam:11000011bfb9181', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (2362, 'steam:11000011bfb9181', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (2363, 'steam:11000011bfb9181', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (2364, 'steam:11000011bfb9181', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (2365, 'steam:11000011bfb9181', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (2366, 'steam:11000011bfb9181', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (2367, 'steam:11000011bfb9181', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (2368, 'steam:11000011bfb9181', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (2369, 'steam:11000011bfb9181', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (2370, 'steam:11000011bfb9181', 'ring', 0);
INSERT INTO `user_inventory` VALUES (2371, 'steam:11000011bfb9181', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (2372, 'steam:11000011bfb9181', 'stone', 0);
INSERT INTO `user_inventory` VALUES (2373, 'steam:11000011bfb9181', 'beer', 0);
INSERT INTO `user_inventory` VALUES (2374, 'steam:11000011bfb9181', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (2375, 'steam:11000011bfb9181', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (2376, 'steam:11000011bfb9181', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (2377, 'steam:11000011bfb9181', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (2378, 'steam:11000011bfb9181', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (2379, 'steam:11000011bfb9181', 'orage', 0);
INSERT INTO `user_inventory` VALUES (2380, 'steam:11000011bfb9181', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (2381, 'steam:11000011bfb9181', 'meth', 0);
INSERT INTO `user_inventory` VALUES (2382, 'steam:11000011bfb9181', 'wool', 0);
INSERT INTO `user_inventory` VALUES (2383, 'steam:11000011bfb9181', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (2384, 'steam:11000011bfb9181', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (2385, 'steam:11000011bfb9181', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (2386, 'steam:11000011bfb9181', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (2387, 'steam:11000011bfb9181', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (2388, 'steam:11000011bfb9181', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (2389, 'steam:11000011bfb9181', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (2390, 'steam:11000011bfb9181', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (2391, 'steam:11000011bfb9181', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (2392, 'steam:11000011bfb9181', 'essence', 0);
INSERT INTO `user_inventory` VALUES (2393, 'steam:11000011bfb9181', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (2394, 'steam:11000011bfb9181', 'chips', 0);
INSERT INTO `user_inventory` VALUES (2395, 'steam:11000011bfb9181', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (2396, 'steam:11000011bfb9181', 'copper', 0);
INSERT INTO `user_inventory` VALUES (2397, 'steam:11000011bfb9181', 'milk', 0);
INSERT INTO `user_inventory` VALUES (2398, 'steam:11000011bfb9181', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (2399, 'steam:11000011bfb9181', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (2400, 'steam:11000011bfb9181', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (2401, 'steam:11000011bfb9181', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (2402, 'steam:11000011bfb9181', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (2403, 'steam:11000011bfb9181', 'bread', 0);
INSERT INTO `user_inventory` VALUES (2404, 'steam:11000011bfb9181', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2405, 'steam:11000011bfb9181', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (2406, 'steam:11000011bfb9181', 'coke', 0);
INSERT INTO `user_inventory` VALUES (2407, 'steam:11000011bfb9181', 'wine', 0);
INSERT INTO `user_inventory` VALUES (2408, 'steam:11000011bfb9181', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2409, 'steam:11000011bfb9181', 'potato', 0);
INSERT INTO `user_inventory` VALUES (2410, 'steam:11000011bfb9181', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (2411, 'steam:110000134728f22', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (2412, 'steam:110000134728f22', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2413, 'steam:110000134728f22', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2414, 'steam:110000132555dfb', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (2415, 'steam:110000132555dfb', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (2416, 'steam:110000132555dfb', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (2417, 'steam:110000132555dfb', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (2418, 'steam:110000132555dfb', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (2419, 'steam:110000132555dfb', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (2420, 'steam:110000132555dfb', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (2421, 'steam:110000132555dfb', 'copper', 0);
INSERT INTO `user_inventory` VALUES (2422, 'steam:110000132555dfb', 'orage', 0);
INSERT INTO `user_inventory` VALUES (2423, 'steam:110000132555dfb', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (2424, 'steam:110000132555dfb', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (2425, 'steam:110000132555dfb', 'gold', 0);
INSERT INTO `user_inventory` VALUES (2426, 'steam:110000132555dfb', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (2427, 'steam:110000132555dfb', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (2428, 'steam:110000132555dfb', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2429, 'steam:110000132555dfb', 'beer', 0);
INSERT INTO `user_inventory` VALUES (2430, 'steam:110000132555dfb', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (2431, 'steam:110000132555dfb', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (2432, 'steam:110000132555dfb', 'fish', 0);
INSERT INTO `user_inventory` VALUES (2433, 'steam:110000132555dfb', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (2434, 'steam:110000132555dfb', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (2435, 'steam:110000132555dfb', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (2436, 'steam:110000132555dfb', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (2437, 'steam:110000132555dfb', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (2438, 'steam:110000132555dfb', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2439, 'steam:110000132555dfb', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (2440, 'steam:110000132555dfb', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (2441, 'steam:110000132555dfb', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (2442, 'steam:110000132555dfb', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (2443, 'steam:110000132555dfb', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (2444, 'steam:110000132555dfb', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (2445, 'steam:110000132555dfb', 'clip', 0);
INSERT INTO `user_inventory` VALUES (2446, 'steam:110000132555dfb', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (2447, 'steam:110000132555dfb', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (2448, 'steam:110000132555dfb', 'essence', 0);
INSERT INTO `user_inventory` VALUES (2449, 'steam:110000132555dfb', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (2450, 'steam:110000132555dfb', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (2451, 'steam:110000132555dfb', 'wool', 0);
INSERT INTO `user_inventory` VALUES (2452, 'steam:110000132555dfb', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (2453, 'steam:110000132555dfb', 'wood', 0);
INSERT INTO `user_inventory` VALUES (2454, 'steam:110000132555dfb', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (2455, 'steam:110000132555dfb', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (2456, 'steam:110000132555dfb', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (2457, 'steam:110000132555dfb', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (2458, 'steam:110000132555dfb', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (2459, 'steam:110000132555dfb', 'weed', 0);
INSERT INTO `user_inventory` VALUES (2460, 'steam:110000132555dfb', 'water', 12);
INSERT INTO `user_inventory` VALUES (2461, 'steam:110000132555dfb', 'wine', 0);
INSERT INTO `user_inventory` VALUES (2462, 'steam:110000132555dfb', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (2463, 'steam:110000132555dfb', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (2464, 'steam:110000132555dfb', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (2465, 'steam:110000132555dfb', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (2466, 'steam:110000132555dfb', 'iron', 0);
INSERT INTO `user_inventory` VALUES (2467, 'steam:110000132555dfb', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (2468, 'steam:110000132555dfb', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (2469, 'steam:110000132555dfb', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (2470, 'steam:110000132555dfb', 'milk', 0);
INSERT INTO `user_inventory` VALUES (2471, 'steam:110000132555dfb', 'stone', 0);
INSERT INTO `user_inventory` VALUES (2472, 'steam:110000132555dfb', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (2473, 'steam:110000132555dfb', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (2474, 'steam:110000132555dfb', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (2475, 'steam:110000132555dfb', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (2476, 'steam:110000132555dfb', 'meth', 0);
INSERT INTO `user_inventory` VALUES (2477, 'steam:110000132555dfb', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (2478, 'steam:110000132555dfb', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (2479, 'steam:110000132555dfb', 'vhamburger', 12);
INSERT INTO `user_inventory` VALUES (2480, 'steam:110000132555dfb', 'opium', 0);
INSERT INTO `user_inventory` VALUES (2481, 'steam:110000132555dfb', 'ring', 0);
INSERT INTO `user_inventory` VALUES (2482, 'steam:110000132555dfb', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (2483, 'steam:110000132555dfb', 'chips', 0);
INSERT INTO `user_inventory` VALUES (2484, 'steam:110000132555dfb', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (2485, 'steam:110000132555dfb', 'potato', 0);
INSERT INTO `user_inventory` VALUES (2486, 'steam:110000132555dfb', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (2487, 'steam:110000132555dfb', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (2488, 'steam:110000132555dfb', 'bread', 0);
INSERT INTO `user_inventory` VALUES (2489, 'steam:110000132555dfb', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (2490, 'steam:110000132555dfb', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (2491, 'steam:110000132555dfb', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (2492, 'steam:110000132555dfb', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (2493, 'steam:110000132555dfb', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (2494, 'steam:110000132555dfb', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (2495, 'steam:110000132555dfb', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (2496, 'steam:110000132555dfb', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (2497, 'steam:110000132555dfb', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (2498, 'steam:110000132555dfb', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (2499, 'steam:110000132555dfb', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (2500, 'steam:110000132555dfb', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (2501, 'steam:110000132555dfb', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (2502, 'steam:110000132555dfb', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (2503, 'steam:110000132555dfb', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (2504, 'steam:110000132555dfb', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (2505, 'steam:110000132555dfb', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (2506, 'steam:110000132555dfb', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (2507, 'steam:110000132555dfb', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (2508, 'steam:110000132555dfb', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (2509, 'steam:110000132555dfb', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (2510, 'steam:110000132555dfb', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (2511, 'steam:110000132555dfb', 'coke', 0);
INSERT INTO `user_inventory` VALUES (2512, 'steam:110000132555dfb', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (2513, 'steam:110000132555dfb', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (2514, 'steam:110000132555dfb', 'camera', 0);
INSERT INTO `user_inventory` VALUES (2515, 'steam:110000132555dfb', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (2516, 'steam:1100001350a4e14', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (2517, 'steam:1100001350a4e14', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (2518, 'steam:1100001350a4e14', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (2519, 'steam:1100001350a4e14', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (2520, 'steam:1100001350a4e14', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (2521, 'steam:1100001350a4e14', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (2522, 'steam:1100001350a4e14', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (2523, 'steam:1100001350a4e14', 'copper', 0);
INSERT INTO `user_inventory` VALUES (2524, 'steam:1100001350a4e14', 'orage', 32);
INSERT INTO `user_inventory` VALUES (2525, 'steam:1100001350a4e14', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (2526, 'steam:1100001350a4e14', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (2527, 'steam:1100001350a4e14', 'gold', 0);
INSERT INTO `user_inventory` VALUES (2528, 'steam:1100001350a4e14', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (2529, 'steam:1100001350a4e14', 'huesos', 101);
INSERT INTO `user_inventory` VALUES (2530, 'steam:1100001350a4e14', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2531, 'steam:1100001350a4e14', 'beer', 0);
INSERT INTO `user_inventory` VALUES (2532, 'steam:1100001350a4e14', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (2533, 'steam:1100001350a4e14', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (2534, 'steam:1100001350a4e14', 'fish', 0);
INSERT INTO `user_inventory` VALUES (2535, 'steam:1100001350a4e14', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (2536, 'steam:1100001350a4e14', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (2537, 'steam:1100001350a4e14', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (2538, 'steam:1100001350a4e14', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (2539, 'steam:1100001350a4e14', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2540, 'steam:1100001350a4e14', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (2541, 'steam:1100001350a4e14', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (2542, 'steam:1100001350a4e14', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (2543, 'steam:1100001350a4e14', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (2544, 'steam:1100001350a4e14', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (2545, 'steam:1100001350a4e14', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (2546, 'steam:1100001350a4e14', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (2547, 'steam:1100001350a4e14', 'clip', 0);
INSERT INTO `user_inventory` VALUES (2548, 'steam:1100001350a4e14', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (2549, 'steam:1100001350a4e14', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (2550, 'steam:1100001350a4e14', 'essence', 0);
INSERT INTO `user_inventory` VALUES (2551, 'steam:1100001350a4e14', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (2552, 'steam:1100001350a4e14', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (2553, 'steam:1100001350a4e14', 'wool', 0);
INSERT INTO `user_inventory` VALUES (2554, 'steam:1100001350a4e14', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (2555, 'steam:1100001350a4e14', 'wood', 0);
INSERT INTO `user_inventory` VALUES (2556, 'steam:1100001350a4e14', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (2557, 'steam:1100001350a4e14', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (2558, 'steam:1100001350a4e14', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (2559, 'steam:1100001350a4e14', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (2560, 'steam:1100001350a4e14', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (2561, 'steam:1100001350a4e14', 'weed', 0);
INSERT INTO `user_inventory` VALUES (2562, 'steam:1100001350a4e14', 'water', 2);
INSERT INTO `user_inventory` VALUES (2563, 'steam:1100001350a4e14', 'wine', 0);
INSERT INTO `user_inventory` VALUES (2564, 'steam:1100001350a4e14', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (2565, 'steam:1100001350a4e14', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (2566, 'steam:1100001350a4e14', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (2567, 'steam:1100001350a4e14', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (2568, 'steam:1100001350a4e14', 'iron', 0);
INSERT INTO `user_inventory` VALUES (2569, 'steam:1100001350a4e14', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (2570, 'steam:1100001350a4e14', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (2571, 'steam:1100001350a4e14', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (2572, 'steam:1100001350a4e14', 'milk', 0);
INSERT INTO `user_inventory` VALUES (2573, 'steam:1100001350a4e14', 'stone', 0);
INSERT INTO `user_inventory` VALUES (2574, 'steam:1100001350a4e14', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (2575, 'steam:1100001350a4e14', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (2576, 'steam:1100001350a4e14', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (2577, 'steam:1100001350a4e14', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (2578, 'steam:1100001350a4e14', 'meth', 0);
INSERT INTO `user_inventory` VALUES (2579, 'steam:1100001350a4e14', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (2580, 'steam:1100001350a4e14', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (2581, 'steam:1100001350a4e14', 'vhamburger', 3);
INSERT INTO `user_inventory` VALUES (2582, 'steam:1100001350a4e14', 'opium', 0);
INSERT INTO `user_inventory` VALUES (2583, 'steam:1100001350a4e14', 'ring', 0);
INSERT INTO `user_inventory` VALUES (2584, 'steam:1100001350a4e14', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (2585, 'steam:1100001350a4e14', 'chips', 0);
INSERT INTO `user_inventory` VALUES (2586, 'steam:1100001350a4e14', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (2587, 'steam:1100001350a4e14', 'potato', 0);
INSERT INTO `user_inventory` VALUES (2588, 'steam:1100001350a4e14', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (2589, 'steam:1100001350a4e14', 'bread', 0);
INSERT INTO `user_inventory` VALUES (2590, 'steam:1100001350a4e14', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (2591, 'steam:1100001350a4e14', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (2592, 'steam:1100001350a4e14', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (2593, 'steam:1100001350a4e14', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (2594, 'steam:1100001350a4e14', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (2595, 'steam:1100001350a4e14', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (2596, 'steam:1100001350a4e14', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (2597, 'steam:1100001350a4e14', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (2598, 'steam:1100001350a4e14', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (2599, 'steam:1100001350a4e14', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (2600, 'steam:1100001350a4e14', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (2601, 'steam:1100001350a4e14', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (2602, 'steam:1100001350a4e14', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (2603, 'steam:1100001350a4e14', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (2604, 'steam:1100001350a4e14', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (2605, 'steam:1100001350a4e14', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (2606, 'steam:1100001350a4e14', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (2607, 'steam:1100001350a4e14', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (2608, 'steam:1100001350a4e14', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (2609, 'steam:1100001350a4e14', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (2610, 'steam:1100001350a4e14', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (2611, 'steam:1100001350a4e14', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (2612, 'steam:1100001350a4e14', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (2613, 'steam:1100001350a4e14', 'coke', 0);
INSERT INTO `user_inventory` VALUES (2614, 'steam:1100001350a4e14', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (2615, 'steam:1100001350a4e14', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (2616, 'steam:1100001350a4e14', 'camera', 0);
INSERT INTO `user_inventory` VALUES (2617, 'steam:1100001350a4e14', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (2618, 'steam:1100001154d67f5', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (2619, 'steam:1100001154d67f5', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (2620, 'steam:1100001154d67f5', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (2621, 'steam:1100001154d67f5', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (2622, 'steam:1100001154d67f5', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (2623, 'steam:1100001154d67f5', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (2624, 'steam:1100001154d67f5', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (2625, 'steam:1100001154d67f5', 'copper', 0);
INSERT INTO `user_inventory` VALUES (2626, 'steam:1100001154d67f5', 'orage', 0);
INSERT INTO `user_inventory` VALUES (2627, 'steam:1100001154d67f5', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (2628, 'steam:1100001154d67f5', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (2629, 'steam:1100001154d67f5', 'gold', 0);
INSERT INTO `user_inventory` VALUES (2630, 'steam:1100001154d67f5', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (2631, 'steam:1100001154d67f5', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (2632, 'steam:1100001154d67f5', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2633, 'steam:1100001154d67f5', 'beer', 0);
INSERT INTO `user_inventory` VALUES (2634, 'steam:1100001154d67f5', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (2635, 'steam:1100001154d67f5', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (2636, 'steam:1100001154d67f5', 'fish', 0);
INSERT INTO `user_inventory` VALUES (2637, 'steam:1100001154d67f5', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (2638, 'steam:1100001154d67f5', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (2639, 'steam:1100001154d67f5', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (2640, 'steam:1100001154d67f5', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (2641, 'steam:1100001154d67f5', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (2642, 'steam:1100001154d67f5', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2643, 'steam:1100001154d67f5', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (2644, 'steam:1100001154d67f5', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (2645, 'steam:1100001154d67f5', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (2646, 'steam:1100001154d67f5', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (2647, 'steam:1100001154d67f5', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (2648, 'steam:1100001154d67f5', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (2649, 'steam:1100001154d67f5', 'clip', 0);
INSERT INTO `user_inventory` VALUES (2650, 'steam:1100001154d67f5', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (2651, 'steam:1100001154d67f5', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (2652, 'steam:1100001154d67f5', 'essence', 0);
INSERT INTO `user_inventory` VALUES (2653, 'steam:1100001154d67f5', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (2654, 'steam:1100001154d67f5', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (2655, 'steam:1100001154d67f5', 'wool', 0);
INSERT INTO `user_inventory` VALUES (2656, 'steam:1100001154d67f5', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (2657, 'steam:1100001154d67f5', 'wood', 0);
INSERT INTO `user_inventory` VALUES (2658, 'steam:1100001154d67f5', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (2659, 'steam:1100001154d67f5', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (2660, 'steam:1100001154d67f5', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (2661, 'steam:1100001154d67f5', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (2662, 'steam:1100001154d67f5', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (2663, 'steam:1100001154d67f5', 'weed', 0);
INSERT INTO `user_inventory` VALUES (2664, 'steam:1100001154d67f5', 'water', 0);
INSERT INTO `user_inventory` VALUES (2665, 'steam:1100001154d67f5', 'wine', 0);
INSERT INTO `user_inventory` VALUES (2666, 'steam:1100001154d67f5', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (2667, 'steam:1100001154d67f5', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (2668, 'steam:1100001154d67f5', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (2669, 'steam:1100001154d67f5', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (2670, 'steam:1100001154d67f5', 'iron', 0);
INSERT INTO `user_inventory` VALUES (2671, 'steam:1100001154d67f5', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (2672, 'steam:1100001154d67f5', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (2673, 'steam:1100001154d67f5', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (2674, 'steam:1100001154d67f5', 'milk', 0);
INSERT INTO `user_inventory` VALUES (2675, 'steam:1100001154d67f5', 'stone', 0);
INSERT INTO `user_inventory` VALUES (2676, 'steam:1100001154d67f5', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (2677, 'steam:1100001154d67f5', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (2678, 'steam:1100001154d67f5', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (2679, 'steam:1100001154d67f5', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (2680, 'steam:1100001154d67f5', 'meth', 0);
INSERT INTO `user_inventory` VALUES (2681, 'steam:1100001154d67f5', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (2682, 'steam:1100001154d67f5', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (2683, 'steam:1100001154d67f5', 'vhamburger', 0);
INSERT INTO `user_inventory` VALUES (2684, 'steam:1100001154d67f5', 'opium', 0);
INSERT INTO `user_inventory` VALUES (2685, 'steam:1100001154d67f5', 'ring', 0);
INSERT INTO `user_inventory` VALUES (2686, 'steam:1100001154d67f5', 'cuerpo', 180);
INSERT INTO `user_inventory` VALUES (2687, 'steam:1100001154d67f5', 'chips', 0);
INSERT INTO `user_inventory` VALUES (2688, 'steam:1100001154d67f5', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (2689, 'steam:1100001154d67f5', 'potato', 0);
INSERT INTO `user_inventory` VALUES (2690, 'steam:1100001154d67f5', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (2691, 'steam:1100001154d67f5', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (2692, 'steam:1100001154d67f5', 'bread', 0);
INSERT INTO `user_inventory` VALUES (2693, 'steam:1100001154d67f5', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (2694, 'steam:1100001154d67f5', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (2695, 'steam:1100001154d67f5', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (2696, 'steam:1100001154d67f5', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (2697, 'steam:1100001154d67f5', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (2698, 'steam:1100001154d67f5', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (2699, 'steam:1100001154d67f5', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (2700, 'steam:1100001154d67f5', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (2701, 'steam:1100001154d67f5', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (2702, 'steam:1100001154d67f5', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (2703, 'steam:1100001154d67f5', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (2704, 'steam:1100001154d67f5', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (2705, 'steam:1100001154d67f5', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (2706, 'steam:1100001154d67f5', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (2707, 'steam:1100001154d67f5', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (2708, 'steam:1100001154d67f5', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (2709, 'steam:1100001154d67f5', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (2710, 'steam:1100001154d67f5', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (2711, 'steam:1100001154d67f5', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (2712, 'steam:1100001154d67f5', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (2713, 'steam:1100001154d67f5', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (2714, 'steam:1100001154d67f5', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (2715, 'steam:1100001154d67f5', 'coke', 0);
INSERT INTO `user_inventory` VALUES (2716, 'steam:1100001154d67f5', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (2717, 'steam:1100001154d67f5', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (2718, 'steam:1100001154d67f5', 'camera', 0);
INSERT INTO `user_inventory` VALUES (2719, 'steam:1100001154d67f5', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (2720, 'steam:11000010c72c48b', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (2721, 'steam:11000010c72c48b', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (2722, 'steam:11000010c72c48b', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (2723, 'steam:11000010c72c48b', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (2724, 'steam:11000010c72c48b', 'bread', 0);
INSERT INTO `user_inventory` VALUES (2725, 'steam:11000010c72c48b', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (2726, 'steam:11000010c72c48b', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (2727, 'steam:11000010c72c48b', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (2728, 'steam:11000010c72c48b', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (2729, 'steam:11000010c72c48b', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (2730, 'steam:11000010c72c48b', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (2731, 'steam:11000010c72c48b', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (2732, 'steam:11000010c72c48b', 'vhamburger', 0);
INSERT INTO `user_inventory` VALUES (2733, 'steam:11000010c72c48b', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (2734, 'steam:11000010c72c48b', 'copper', 0);
INSERT INTO `user_inventory` VALUES (2735, 'steam:11000010c72c48b', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (2736, 'steam:11000010c72c48b', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (2737, 'steam:11000010c72c48b', 'beer', 0);
INSERT INTO `user_inventory` VALUES (2738, 'steam:11000010c72c48b', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (2739, 'steam:11000010c72c48b', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (2740, 'steam:11000010c72c48b', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (2741, 'steam:11000010c72c48b', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (2742, 'steam:11000010c72c48b', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (2743, 'steam:11000010c72c48b', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (2744, 'steam:11000010c72c48b', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (2745, 'steam:11000010c72c48b', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (2746, 'steam:11000010c72c48b', 'camera', 0);
INSERT INTO `user_inventory` VALUES (2747, 'steam:11000010c72c48b', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (2748, 'steam:11000010c72c48b', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2749, 'steam:11000010c72c48b', 'iron', 0);
INSERT INTO `user_inventory` VALUES (2750, 'steam:11000010c72c48b', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (2751, 'steam:11000010c72c48b', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (2752, 'steam:11000010c72c48b', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (2753, 'steam:11000010c72c48b', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (2754, 'steam:11000010c72c48b', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2755, 'steam:11000010c72c48b', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (2756, 'steam:11000010c72c48b', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (2757, 'steam:11000010c72c48b', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (2758, 'steam:11000010c72c48b', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (2759, 'steam:11000010c72c48b', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (2760, 'steam:11000010c72c48b', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (2761, 'steam:11000010c72c48b', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (2762, 'steam:11000010c72c48b', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (2763, 'steam:11000010c72c48b', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (2764, 'steam:11000010c72c48b', 'orage', 0);
INSERT INTO `user_inventory` VALUES (2765, 'steam:11000010c72c48b', 'wood', 0);
INSERT INTO `user_inventory` VALUES (2766, 'steam:11000010c72c48b', 'wine', 0);
INSERT INTO `user_inventory` VALUES (2767, 'steam:11000010c72c48b', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (2768, 'steam:11000010c72c48b', 'clip', 0);
INSERT INTO `user_inventory` VALUES (2769, 'steam:11000010c72c48b', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (2770, 'steam:11000010c72c48b', 'chips', 0);
INSERT INTO `user_inventory` VALUES (2771, 'steam:11000010c72c48b', 'weed', 0);
INSERT INTO `user_inventory` VALUES (2772, 'steam:11000010c72c48b', 'water', 0);
INSERT INTO `user_inventory` VALUES (2773, 'steam:11000010c72c48b', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (2774, 'steam:11000010c72c48b', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (2775, 'steam:11000010c72c48b', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (2776, 'steam:11000010c72c48b', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (2777, 'steam:11000010c72c48b', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (2778, 'steam:11000010c72c48b', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (2779, 'steam:11000010c72c48b', 'stone', 0);
INSERT INTO `user_inventory` VALUES (2780, 'steam:11000010c72c48b', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (2781, 'steam:11000010c72c48b', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (2782, 'steam:11000010c72c48b', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (2783, 'steam:11000010c72c48b', 'ring', 0);
INSERT INTO `user_inventory` VALUES (2784, 'steam:11000010c72c48b', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (2785, 'steam:11000010c72c48b', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (2786, 'steam:11000010c72c48b', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (2787, 'steam:11000010c72c48b', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (2788, 'steam:11000010c72c48b', 'potato', 0);
INSERT INTO `user_inventory` VALUES (2789, 'steam:11000010c72c48b', 'gold', 0);
INSERT INTO `user_inventory` VALUES (2790, 'steam:11000010c72c48b', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (2791, 'steam:11000010c72c48b', 'coke', 0);
INSERT INTO `user_inventory` VALUES (2792, 'steam:11000010c72c48b', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (2793, 'steam:11000010c72c48b', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (2794, 'steam:11000010c72c48b', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (2795, 'steam:11000010c72c48b', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (2796, 'steam:11000010c72c48b', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (2797, 'steam:11000010c72c48b', 'wool', 0);
INSERT INTO `user_inventory` VALUES (2798, 'steam:11000010c72c48b', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (2799, 'steam:11000010c72c48b', 'opium', 0);
INSERT INTO `user_inventory` VALUES (2800, 'steam:11000010c72c48b', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (2801, 'steam:11000010c72c48b', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (2802, 'steam:11000010c72c48b', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (2803, 'steam:11000010c72c48b', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (2804, 'steam:11000010c72c48b', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (2805, 'steam:11000010c72c48b', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (2806, 'steam:11000010c72c48b', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (2807, 'steam:11000010c72c48b', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (2808, 'steam:11000010c72c48b', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (2809, 'steam:11000010c72c48b', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (2810, 'steam:11000010c72c48b', 'milk', 0);
INSERT INTO `user_inventory` VALUES (2811, 'steam:11000010c72c48b', 'essence', 0);
INSERT INTO `user_inventory` VALUES (2812, 'steam:11000010c72c48b', 'fish', 0);
INSERT INTO `user_inventory` VALUES (2813, 'steam:11000010c72c48b', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (2814, 'steam:11000010c72c48b', 'meth', 0);
INSERT INTO `user_inventory` VALUES (2815, 'steam:11000010c72c48b', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (2816, 'steam:11000010c72c48b', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (2817, 'steam:11000010c72c48b', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (2818, 'steam:11000010c72c48b', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (2819, 'steam:11000010c72c48b', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (2820, 'steam:11000010c72c48b', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (2821, 'steam:11000010c72c48b', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (2822, 'steam:11000013efb45a5', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (2823, 'steam:11000013efb45a5', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (2824, 'steam:11000013efb45a5', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (2825, 'steam:11000013efb45a5', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (2826, 'steam:11000013efb45a5', 'bread', 0);
INSERT INTO `user_inventory` VALUES (2827, 'steam:11000013efb45a5', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (2828, 'steam:11000013efb45a5', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (2829, 'steam:11000013efb45a5', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (2830, 'steam:11000013efb45a5', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (2831, 'steam:11000013efb45a5', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (2832, 'steam:11000013efb45a5', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (2833, 'steam:11000013efb45a5', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (2834, 'steam:11000013efb45a5', 'vhamburger', 13);
INSERT INTO `user_inventory` VALUES (2835, 'steam:11000013efb45a5', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (2836, 'steam:11000013efb45a5', 'copper', 0);
INSERT INTO `user_inventory` VALUES (2837, 'steam:11000013efb45a5', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (2838, 'steam:11000013efb45a5', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (2839, 'steam:11000013efb45a5', 'beer', 0);
INSERT INTO `user_inventory` VALUES (2840, 'steam:11000013efb45a5', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (2841, 'steam:11000013efb45a5', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (2842, 'steam:11000013efb45a5', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (2843, 'steam:11000013efb45a5', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (2844, 'steam:11000013efb45a5', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (2845, 'steam:11000013efb45a5', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (2846, 'steam:11000013efb45a5', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (2847, 'steam:11000013efb45a5', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (2848, 'steam:11000013efb45a5', 'camera', 0);
INSERT INTO `user_inventory` VALUES (2849, 'steam:11000013efb45a5', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (2850, 'steam:11000013efb45a5', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2851, 'steam:11000013efb45a5', 'iron', 0);
INSERT INTO `user_inventory` VALUES (2852, 'steam:11000013efb45a5', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (2853, 'steam:11000013efb45a5', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (2854, 'steam:11000013efb45a5', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (2855, 'steam:11000013efb45a5', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (2856, 'steam:11000013efb45a5', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2857, 'steam:11000013efb45a5', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (2858, 'steam:11000013efb45a5', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (2859, 'steam:11000013efb45a5', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (2860, 'steam:11000013efb45a5', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (2861, 'steam:11000013efb45a5', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (2862, 'steam:11000013efb45a5', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (2863, 'steam:11000013efb45a5', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (2864, 'steam:11000013efb45a5', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (2865, 'steam:11000013efb45a5', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (2866, 'steam:11000013efb45a5', 'orage', 0);
INSERT INTO `user_inventory` VALUES (2867, 'steam:11000013efb45a5', 'wood', 0);
INSERT INTO `user_inventory` VALUES (2868, 'steam:11000013efb45a5', 'wine', 0);
INSERT INTO `user_inventory` VALUES (2869, 'steam:11000013efb45a5', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (2870, 'steam:11000013efb45a5', 'clip', 0);
INSERT INTO `user_inventory` VALUES (2871, 'steam:11000013efb45a5', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (2872, 'steam:11000013efb45a5', 'chips', 0);
INSERT INTO `user_inventory` VALUES (2873, 'steam:11000013efb45a5', 'weed', 0);
INSERT INTO `user_inventory` VALUES (2874, 'steam:11000013efb45a5', 'water', 13);
INSERT INTO `user_inventory` VALUES (2875, 'steam:11000013efb45a5', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (2876, 'steam:11000013efb45a5', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (2877, 'steam:11000013efb45a5', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (2878, 'steam:11000013efb45a5', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (2879, 'steam:11000013efb45a5', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (2880, 'steam:11000013efb45a5', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (2881, 'steam:11000013efb45a5', 'stone', 0);
INSERT INTO `user_inventory` VALUES (2882, 'steam:11000013efb45a5', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (2883, 'steam:11000013efb45a5', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (2884, 'steam:11000013efb45a5', 'sciroppo', 2);
INSERT INTO `user_inventory` VALUES (2885, 'steam:11000013efb45a5', 'ring', 0);
INSERT INTO `user_inventory` VALUES (2886, 'steam:11000013efb45a5', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (2887, 'steam:11000013efb45a5', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (2888, 'steam:11000013efb45a5', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (2889, 'steam:11000013efb45a5', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (2890, 'steam:11000013efb45a5', 'potato', 0);
INSERT INTO `user_inventory` VALUES (2891, 'steam:11000013efb45a5', 'gold', 0);
INSERT INTO `user_inventory` VALUES (2892, 'steam:11000013efb45a5', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (2893, 'steam:11000013efb45a5', 'coke', 0);
INSERT INTO `user_inventory` VALUES (2894, 'steam:11000013efb45a5', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (2895, 'steam:11000013efb45a5', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (2896, 'steam:11000013efb45a5', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (2897, 'steam:11000013efb45a5', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (2898, 'steam:11000013efb45a5', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (2899, 'steam:11000013efb45a5', 'wool', 0);
INSERT INTO `user_inventory` VALUES (2900, 'steam:11000013efb45a5', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (2901, 'steam:11000013efb45a5', 'opium', 0);
INSERT INTO `user_inventory` VALUES (2902, 'steam:11000013efb45a5', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (2903, 'steam:11000013efb45a5', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (2904, 'steam:11000013efb45a5', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (2905, 'steam:11000013efb45a5', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (2906, 'steam:11000013efb45a5', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (2907, 'steam:11000013efb45a5', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (2908, 'steam:11000013efb45a5', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (2909, 'steam:11000013efb45a5', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (2910, 'steam:11000013efb45a5', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (2911, 'steam:11000013efb45a5', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (2912, 'steam:11000013efb45a5', 'essence', 0);
INSERT INTO `user_inventory` VALUES (2913, 'steam:11000013efb45a5', 'milk', 0);
INSERT INTO `user_inventory` VALUES (2914, 'steam:11000013efb45a5', 'fish', 0);
INSERT INTO `user_inventory` VALUES (2915, 'steam:11000013efb45a5', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (2916, 'steam:11000013efb45a5', 'meth', 0);
INSERT INTO `user_inventory` VALUES (2917, 'steam:11000013efb45a5', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (2918, 'steam:11000013efb45a5', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (2919, 'steam:11000013efb45a5', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (2920, 'steam:11000013efb45a5', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (2921, 'steam:11000013efb45a5', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (2922, 'steam:11000013efb45a5', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (2923, 'steam:11000013efb45a5', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (2924, 'steam:11000013f403e65', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (2925, 'steam:11000013f403e65', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (2926, 'steam:11000013f403e65', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (2927, 'steam:11000013f403e65', 'bread', 0);
INSERT INTO `user_inventory` VALUES (2928, 'steam:11000013f403e65', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (2929, 'steam:11000013f403e65', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (2930, 'steam:11000013f403e65', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (2931, 'steam:11000013f403e65', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (2932, 'steam:11000013f403e65', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (2933, 'steam:11000013f403e65', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (2934, 'steam:11000013f403e65', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (2935, 'steam:11000013f403e65', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (2936, 'steam:11000013f403e65', 'vhamburger', 9);
INSERT INTO `user_inventory` VALUES (2937, 'steam:11000013f403e65', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (2938, 'steam:11000013f403e65', 'copper', 0);
INSERT INTO `user_inventory` VALUES (2939, 'steam:11000013f403e65', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (2940, 'steam:11000013f403e65', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (2941, 'steam:11000013f403e65', 'beer', 0);
INSERT INTO `user_inventory` VALUES (2942, 'steam:11000013f403e65', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (2943, 'steam:11000013f403e65', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (2944, 'steam:11000013f403e65', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (2945, 'steam:11000013f403e65', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (2946, 'steam:11000013f403e65', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (2947, 'steam:11000013f403e65', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (2948, 'steam:11000013f403e65', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (2949, 'steam:11000013f403e65', 'goldNecklace', 0);
INSERT INTO `user_inventory` VALUES (2950, 'steam:11000013f403e65', 'camera', 0);
INSERT INTO `user_inventory` VALUES (2951, 'steam:11000013f403e65', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (2952, 'steam:11000013f403e65', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (2953, 'steam:11000013f403e65', 'iron', 0);
INSERT INTO `user_inventory` VALUES (2954, 'steam:11000013f403e65', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (2955, 'steam:11000013f403e65', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (2956, 'steam:11000013f403e65', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (2957, 'steam:11000013f403e65', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (2958, 'steam:11000013f403e65', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (2959, 'steam:11000013f403e65', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (2960, 'steam:11000013f403e65', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (2961, 'steam:11000013f403e65', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (2962, 'steam:11000013f403e65', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (2963, 'steam:11000013f403e65', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (2964, 'steam:11000013f403e65', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (2965, 'steam:11000013f403e65', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (2966, 'steam:11000013f403e65', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (2967, 'steam:11000013f403e65', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (2968, 'steam:11000013f403e65', 'orage', 0);
INSERT INTO `user_inventory` VALUES (2969, 'steam:11000013f403e65', 'wood', 0);
INSERT INTO `user_inventory` VALUES (2970, 'steam:11000013f403e65', 'wine', 0);
INSERT INTO `user_inventory` VALUES (2971, 'steam:11000013f403e65', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (2972, 'steam:11000013f403e65', 'clip', 0);
INSERT INTO `user_inventory` VALUES (2973, 'steam:11000013f403e65', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (2974, 'steam:11000013f403e65', 'chips', 0);
INSERT INTO `user_inventory` VALUES (2975, 'steam:11000013f403e65', 'weed', 0);
INSERT INTO `user_inventory` VALUES (2976, 'steam:11000013f403e65', 'water', 9);
INSERT INTO `user_inventory` VALUES (2977, 'steam:11000013f403e65', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (2978, 'steam:11000013f403e65', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (2979, 'steam:11000013f403e65', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (2980, 'steam:11000013f403e65', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (2981, 'steam:11000013f403e65', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (2982, 'steam:11000013f403e65', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (2983, 'steam:11000013f403e65', 'stone', 0);
INSERT INTO `user_inventory` VALUES (2984, 'steam:11000013f403e65', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (2985, 'steam:11000013f403e65', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (2986, 'steam:11000013f403e65', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (2987, 'steam:11000013f403e65', 'ring', 0);
INSERT INTO `user_inventory` VALUES (2988, 'steam:11000013f403e65', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (2989, 'steam:11000013f403e65', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (2990, 'steam:11000013f403e65', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (2991, 'steam:11000013f403e65', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (2992, 'steam:11000013f403e65', 'potato', 0);
INSERT INTO `user_inventory` VALUES (2993, 'steam:11000013f403e65', 'gold', 0);
INSERT INTO `user_inventory` VALUES (2994, 'steam:11000013f403e65', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (2995, 'steam:11000013f403e65', 'coke', 0);
INSERT INTO `user_inventory` VALUES (2996, 'steam:11000013f403e65', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (2997, 'steam:11000013f403e65', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (2998, 'steam:11000013f403e65', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (2999, 'steam:11000013f403e65', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (3000, 'steam:11000013f403e65', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (3001, 'steam:11000013f403e65', 'wool', 0);
INSERT INTO `user_inventory` VALUES (3002, 'steam:11000013f403e65', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (3003, 'steam:11000013f403e65', 'opium', 0);
INSERT INTO `user_inventory` VALUES (3004, 'steam:11000013f403e65', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (3005, 'steam:11000013f403e65', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (3006, 'steam:11000013f403e65', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (3007, 'steam:11000013f403e65', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (3008, 'steam:11000013f403e65', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (3009, 'steam:11000013f403e65', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (3010, 'steam:11000013f403e65', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (3011, 'steam:11000013f403e65', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (3012, 'steam:11000013f403e65', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (3013, 'steam:11000013f403e65', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (3014, 'steam:11000013f403e65', 'essence', 0);
INSERT INTO `user_inventory` VALUES (3015, 'steam:11000013f403e65', 'milk', 0);
INSERT INTO `user_inventory` VALUES (3016, 'steam:11000013f403e65', 'fish', 100);
INSERT INTO `user_inventory` VALUES (3017, 'steam:11000013f403e65', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (3018, 'steam:11000013f403e65', 'meth', 0);
INSERT INTO `user_inventory` VALUES (3019, 'steam:11000013f403e65', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (3020, 'steam:11000013f403e65', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (3021, 'steam:11000013f403e65', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (3022, 'steam:11000013f403e65', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (3023, 'steam:11000013f403e65', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (3024, 'steam:11000013f403e65', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (3025, 'steam:11000013f403e65', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (3026, 'steam:110000117caaf4e', 'gold', 0);
INSERT INTO `user_inventory` VALUES (3027, 'steam:110000117caaf4e', 'instestinos', 0);
INSERT INTO `user_inventory` VALUES (3028, 'steam:110000117caaf4e', 'bandage', 0);
INSERT INTO `user_inventory` VALUES (3029, 'steam:110000117caaf4e', 'fixkit', 0);
INSERT INTO `user_inventory` VALUES (3030, 'steam:110000117caaf4e', 'whisky', 0);
INSERT INTO `user_inventory` VALUES (3031, 'steam:110000117caaf4e', 'antibioticorosacea', 0);
INSERT INTO `user_inventory` VALUES (3032, 'steam:110000117caaf4e', 'cerebro', 0);
INSERT INTO `user_inventory` VALUES (3033, 'steam:110000117caaf4e', 'coffe', 0);
INSERT INTO `user_inventory` VALUES (3034, 'steam:110000117caaf4e', 'moneywashid', 0);
INSERT INTO `user_inventory` VALUES (3035, 'steam:110000117caaf4e', 'samsungS10', 0);
INSERT INTO `user_inventory` VALUES (3036, 'steam:110000117caaf4e', 'fvburger', 0);
INSERT INTO `user_inventory` VALUES (3037, 'steam:110000117caaf4e', 'cocacola', 0);
INSERT INTO `user_inventory` VALUES (3038, 'steam:110000117caaf4e', 'chips', 0);
INSERT INTO `user_inventory` VALUES (3039, 'steam:110000117caaf4e', 'copper', 0);
INSERT INTO `user_inventory` VALUES (3040, 'steam:110000117caaf4e', 'ctomato', 0);
INSERT INTO `user_inventory` VALUES (3041, 'steam:110000117caaf4e', 'cutted_wood', 0);
INSERT INTO `user_inventory` VALUES (3042, 'steam:110000117caaf4e', 'corazon', 0);
INSERT INTO `user_inventory` VALUES (3043, 'steam:110000117caaf4e', 'ring', 0);
INSERT INTO `user_inventory` VALUES (3044, 'steam:110000117caaf4e', 'fburger', 0);
INSERT INTO `user_inventory` VALUES (3045, 'steam:110000117caaf4e', 'ccheese', 0);
INSERT INTO `user_inventory` VALUES (3046, 'steam:110000117caaf4e', 'packaged_chicken', 0);
INSERT INTO `user_inventory` VALUES (3047, 'steam:110000117caaf4e', 'diamond', 0);
INSERT INTO `user_inventory` VALUES (3048, 'steam:110000117caaf4e', 'carokit', 0);
INSERT INTO `user_inventory` VALUES (3049, 'steam:110000117caaf4e', 'packaged_plank', 0);
INSERT INTO `user_inventory` VALUES (3050, 'steam:110000117caaf4e', 'lockpick', 0);
INSERT INTO `user_inventory` VALUES (3051, 'steam:110000117caaf4e', 'nuggets10', 0);
INSERT INTO `user_inventory` VALUES (3052, 'steam:110000117caaf4e', 'wood', 0);
INSERT INTO `user_inventory` VALUES (3053, 'steam:110000117caaf4e', 'hamburger', 0);
INSERT INTO `user_inventory` VALUES (3054, 'steam:110000117caaf4e', 'coke', 0);
INSERT INTO `user_inventory` VALUES (3055, 'steam:110000117caaf4e', 'meth', 0);
INSERT INTO `user_inventory` VALUES (3056, 'steam:110000117caaf4e', 'bobbypin', 0);
INSERT INTO `user_inventory` VALUES (3057, 'steam:110000117caaf4e', 'cheese', 0);
INSERT INTO `user_inventory` VALUES (3058, 'steam:110000117caaf4e', 'solo_key', 0);
INSERT INTO `user_inventory` VALUES (3059, 'steam:110000117caaf4e', 'rubberband', 0);
INSERT INTO `user_inventory` VALUES (3060, 'steam:110000117caaf4e', 'medikit', 0);
INSERT INTO `user_inventory` VALUES (3061, 'steam:110000117caaf4e', 'icetea', 0);
INSERT INTO `user_inventory` VALUES (3062, 'steam:110000117caaf4e', 'cupcake', 0);
INSERT INTO `user_inventory` VALUES (3063, 'steam:110000117caaf4e', 'beer', 0);
INSERT INTO `user_inventory` VALUES (3064, 'steam:110000117caaf4e', 'wrench', 0);
INSERT INTO `user_inventory` VALUES (3065, 'steam:110000117caaf4e', 'shamburger', 0);
INSERT INTO `user_inventory` VALUES (3066, 'steam:110000117caaf4e', 'nugget', 0);
INSERT INTO `user_inventory` VALUES (3067, 'steam:110000117caaf4e', 'opium', 0);
INSERT INTO `user_inventory` VALUES (3068, 'steam:110000117caaf4e', 'tequila', 0);
INSERT INTO `user_inventory` VALUES (3069, 'steam:110000117caaf4e', 'laptop', 0);
INSERT INTO `user_inventory` VALUES (3070, 'steam:110000117caaf4e', 'champagne', 0);
INSERT INTO `user_inventory` VALUES (3071, 'steam:110000117caaf4e', 'weed_pooch', 0);
INSERT INTO `user_inventory` VALUES (3072, 'steam:110000117caaf4e', 'clothe', 0);
INSERT INTO `user_inventory` VALUES (3073, 'steam:110000117caaf4e', 'camera', 0);
INSERT INTO `user_inventory` VALUES (3074, 'steam:110000117caaf4e', 'weed', 0);
INSERT INTO `user_inventory` VALUES (3075, 'steam:110000117caaf4e', 'water', 0);
INSERT INTO `user_inventory` VALUES (3076, 'steam:110000117caaf4e', 'fish', 0);
INSERT INTO `user_inventory` VALUES (3077, 'steam:110000117caaf4e', 'washed_stone', 0);
INSERT INTO `user_inventory` VALUES (3078, 'steam:110000117caaf4e', 'warehouse_key', 0);
INSERT INTO `user_inventory` VALUES (3079, 'steam:110000117caaf4e', 'vodka', 0);
INSERT INTO `user_inventory` VALUES (3080, 'steam:110000117caaf4e', 'lettuce', 0);
INSERT INTO `user_inventory` VALUES (3081, 'steam:110000117caaf4e', 'alive_chicken', 0);
INSERT INTO `user_inventory` VALUES (3082, 'steam:110000117caaf4e', 'petrol_raffin', 0);
INSERT INTO `user_inventory` VALUES (3083, 'steam:110000117caaf4e', 'vhamburger', 0);
INSERT INTO `user_inventory` VALUES (3084, 'steam:110000117caaf4e', 'fabric', 0);
INSERT INTO `user_inventory` VALUES (3085, 'steam:110000117caaf4e', 'cigarett', 0);
INSERT INTO `user_inventory` VALUES (3086, 'steam:110000117caaf4e', 'orage', 0);
INSERT INTO `user_inventory` VALUES (3087, 'steam:110000117caaf4e', 'tomato', 0);
INSERT INTO `user_inventory` VALUES (3088, 'steam:110000117caaf4e', 'wine', 0);
INSERT INTO `user_inventory` VALUES (3089, 'steam:110000117caaf4e', 'stone', 0);
INSERT INTO `user_inventory` VALUES (3090, 'steam:110000117caaf4e', 'essence', 0);
INSERT INTO `user_inventory` VALUES (3091, 'steam:110000117caaf4e', 'nuggets4', 0);
INSERT INTO `user_inventory` VALUES (3092, 'steam:110000117caaf4e', 'gazbottle', 0);
INSERT INTO `user_inventory` VALUES (3093, 'steam:110000117caaf4e', 'medulas', 0);
INSERT INTO `user_inventory` VALUES (3094, 'steam:110000117caaf4e', 'wool', 0);
INSERT INTO `user_inventory` VALUES (3095, 'steam:110000117caaf4e', 'chocolate', 0);
INSERT INTO `user_inventory` VALUES (3096, 'steam:110000117caaf4e', 'blowpipe', 0);
INSERT INTO `user_inventory` VALUES (3097, 'steam:110000117caaf4e', 'rolex', 0);
INSERT INTO `user_inventory` VALUES (3098, 'steam:110000117caaf4e', 'sciroppo', 0);
INSERT INTO `user_inventory` VALUES (3099, 'steam:110000117caaf4e', 'sandwich', 0);
INSERT INTO `user_inventory` VALUES (3100, 'steam:110000117caaf4e', 'raspa', 0);
INSERT INTO `user_inventory` VALUES (3101, 'steam:110000117caaf4e', 'fixtool', 0);
INSERT INTO `user_inventory` VALUES (3102, 'steam:110000117caaf4e', 'lighter', 0);
INSERT INTO `user_inventory` VALUES (3103, 'steam:110000117caaf4e', 'potato', 0);
INSERT INTO `user_inventory` VALUES (3104, 'steam:110000117caaf4e', 'gintonic', 0);
INSERT INTO `user_inventory` VALUES (3105, 'steam:110000117caaf4e', 'huesos', 0);
INSERT INTO `user_inventory` VALUES (3106, 'steam:110000117caaf4e', 'iron', 0);
INSERT INTO `user_inventory` VALUES (3107, 'steam:110000117caaf4e', 'cuerpo', 0);
INSERT INTO `user_inventory` VALUES (3108, 'steam:110000117caaf4e', 'carotool', 0);
INSERT INTO `user_inventory` VALUES (3109, 'steam:110000117caaf4e', 'absinthe', 0);
INSERT INTO `user_inventory` VALUES (3110, 'steam:110000117caaf4e', 'oxygen_mask', 0);
INSERT INTO `user_inventory` VALUES (3111, 'steam:110000117caaf4e', 'vbread', 0);
INSERT INTO `user_inventory` VALUES (3112, 'steam:110000117caaf4e', 'opium_pooch', 0);
INSERT INTO `user_inventory` VALUES (3113, 'steam:110000117caaf4e', 'slaughtered_chicken', 0);
INSERT INTO `user_inventory` VALUES (3114, 'steam:110000117caaf4e', 'nitrocannister', 0);
INSERT INTO `user_inventory` VALUES (3115, 'steam:110000117caaf4e', 'petrol', 0);
INSERT INTO `user_inventory` VALUES (3116, 'steam:110000117caaf4e', 'firstaidkit', 0);
INSERT INTO `user_inventory` VALUES (3117, 'steam:110000117caaf4e', 'juice_orage', 0);
INSERT INTO `user_inventory` VALUES (3118, 'steam:110000117caaf4e', 'bulletproof', 0);
INSERT INTO `user_inventory` VALUES (3119, 'steam:110000117caaf4e', 'milk', 0);
INSERT INTO `user_inventory` VALUES (3120, 'steam:110000117caaf4e', 'antibiotico', 0);
INSERT INTO `user_inventory` VALUES (3121, 'steam:110000117caaf4e', 'bread', 0);
INSERT INTO `user_inventory` VALUES (3122, 'steam:110000117caaf4e', 'clip', 0);
INSERT INTO `user_inventory` VALUES (3123, 'steam:110000117caaf4e', 'multi_key', 0);
INSERT INTO `user_inventory` VALUES (3124, 'steam:110000117caaf4e', 'meth_pooch', 0);
INSERT INTO `user_inventory` VALUES (3125, 'steam:110000117caaf4e', 'clettuce', 0);
INSERT INTO `user_inventory` VALUES (3126, 'steam:110000117caaf4e', 'coke_pooch', 0);
INSERT INTO `user_inventory` VALUES (3127, 'steam:110000117caaf4e', 'goldNecklace', 0);

-- ----------------------------
-- Table structure for user_licenses
-- ----------------------------
DROP TABLE IF EXISTS `user_licenses`;
CREATE TABLE `user_licenses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_licenses
-- ----------------------------
INSERT INTO `user_licenses` VALUES (16, 'dmv', 'steam:11000010c502cb5');
INSERT INTO `user_licenses` VALUES (17, 'drive', 'steam:11000010c502cb5');
INSERT INTO `user_licenses` VALUES (18, 'weapon', 'steam:110000103072384');
INSERT INTO `user_licenses` VALUES (19, 'weapon', 'steam:11000010c502cb5');
INSERT INTO `user_licenses` VALUES (20, 'dmv', 'steam:110000103072384');
INSERT INTO `user_licenses` VALUES (21, 'drive', 'steam:110000103072384');
INSERT INTO `user_licenses` VALUES (22, 'weapon', 'steam:1100001172af33b');
INSERT INTO `user_licenses` VALUES (23, 'dmv', 'steam:1100001172af33b');
INSERT INTO `user_licenses` VALUES (24, 'drive', 'steam:1100001172af33b');
INSERT INTO `user_licenses` VALUES (25, 'dmv', 'steam:110000115517b6d');
INSERT INTO `user_licenses` VALUES (26, 'drive', 'steam:110000115517b6d');
INSERT INTO `user_licenses` VALUES (27, 'dmv', 'steam:110000117b4ecd8');
INSERT INTO `user_licenses` VALUES (28, 'drive_truck', 'steam:110000117b4ecd8');
INSERT INTO `user_licenses` VALUES (29, 'weapon', 'steam:110000117b4ecd8');
INSERT INTO `user_licenses` VALUES (30, 'drive', 'steam:110000117b4ecd8');
INSERT INTO `user_licenses` VALUES (31, 'dmv', 'steam:11000011899ea0f');
INSERT INTO `user_licenses` VALUES (32, 'drive', 'steam:11000011899ea0f');
INSERT INTO `user_licenses` VALUES (33, 'dmv', 'steam:1100001170fb22c');
INSERT INTO `user_licenses` VALUES (34, 'drive', 'steam:1100001170fb22c');
INSERT INTO `user_licenses` VALUES (35, 'dmv', 'steam:11000010722d120');
INSERT INTO `user_licenses` VALUES (36, 'weapon', 'steam:1100001170fb22c');
INSERT INTO `user_licenses` VALUES (37, 'drive', 'steam:11000010722d120');
INSERT INTO `user_licenses` VALUES (38, 'weapon', 'steam:110000115517b6d');
INSERT INTO `user_licenses` VALUES (39, 'dmv', 'steam:110000106f5ce70');
INSERT INTO `user_licenses` VALUES (40, 'dmv', 'steam:11000013bd36b18');
INSERT INTO `user_licenses` VALUES (41, 'dmv', 'steam:110000135a51347');
INSERT INTO `user_licenses` VALUES (42, 'drive', 'steam:110000135a51347');
INSERT INTO `user_licenses` VALUES (43, 'weapon', 'steam:110000135a51347');
INSERT INTO `user_licenses` VALUES (44, 'drive', 'steam:11000013bd36b18');
INSERT INTO `user_licenses` VALUES (45, 'dmv', 'steam:110000134728f22');
INSERT INTO `user_licenses` VALUES (46, 'drive', 'steam:110000134728f22');
INSERT INTO `user_licenses` VALUES (47, 'dmv', 'steam:11000011745d699');
INSERT INTO `user_licenses` VALUES (48, 'drive', 'steam:11000011745d699');
INSERT INTO `user_licenses` VALUES (49, 'aircraft', 'steam:1100001170fb22c');
INSERT INTO `user_licenses` VALUES (50, 'dmv', 'steam:11000013c2b297a');
INSERT INTO `user_licenses` VALUES (51, 'drive', 'steam:11000013c2b297a');
INSERT INTO `user_licenses` VALUES (52, 'weapon', 'steam:11000013c2b297a');
INSERT INTO `user_licenses` VALUES (53, 'dmv', 'steam:11000013716cde4');
INSERT INTO `user_licenses` VALUES (54, 'drive', 'steam:11000013716cde4');
INSERT INTO `user_licenses` VALUES (55, 'aircraft', 'steam:1100001172af33b');
INSERT INTO `user_licenses` VALUES (56, 'dmv', 'steam:11000013f295673');
INSERT INTO `user_licenses` VALUES (57, 'dmv', 'steam:1100001321585b7');
INSERT INTO `user_licenses` VALUES (58, 'weapon', 'steam:11000011899ea0f');
INSERT INTO `user_licenses` VALUES (59, 'drive', 'steam:11000013f295673');
INSERT INTO `user_licenses` VALUES (60, 'drive', 'steam:1100001321585b7');
INSERT INTO `user_licenses` VALUES (61, 'aircraft', 'steam:11000013c2b297a');
INSERT INTO `user_licenses` VALUES (62, 'dmv', 'steam:11000011a0816e8');
INSERT INTO `user_licenses` VALUES (63, 'drive', 'steam:11000011a0816e8');
INSERT INTO `user_licenses` VALUES (64, 'aircraft', 'steam:110000117b4ecd8');
INSERT INTO `user_licenses` VALUES (65, 'dmv', 'steam:1100001154d67f5');
INSERT INTO `user_licenses` VALUES (66, 'drive', 'steam:1100001154d67f5');
INSERT INTO `user_licenses` VALUES (67, 'dmv', 'steam:11000011bfb9181');
INSERT INTO `user_licenses` VALUES (68, 'dmv', 'steam:1100001350a4e14');
INSERT INTO `user_licenses` VALUES (69, 'weapon', 'steam:11000013716cde4');
INSERT INTO `user_licenses` VALUES (70, 'drive', 'steam:1100001350a4e14');
INSERT INTO `user_licenses` VALUES (71, 'weapon', 'steam:1100001350a4e14');
INSERT INTO `user_licenses` VALUES (72, 'drive', 'steam:11000011bfb9181');
INSERT INTO `user_licenses` VALUES (73, 'drive_bike', 'steam:11000011bfb9181');
INSERT INTO `user_licenses` VALUES (74, 'drive_truck', 'steam:11000011bfb9181');
INSERT INTO `user_licenses` VALUES (75, 'dmv', 'steam:1100001172d233d');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `money` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '',
  `skin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `job` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'unemployed',
  `job_grade` int(11) NULL DEFAULT 0,
  `loadout` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `bank` int(11) NULL DEFAULT NULL,
  `permission_level` int(11) NULL DEFAULT NULL,
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `phone_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `firstname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '',
  `lastname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '',
  `dateofbirth` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '',
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '',
  `height` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '',
  `is_dead` tinyint(1) NULL DEFAULT 0,
  `last_property` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tattoos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `club` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `club_rank` tinyint(5) NULL DEFAULT NULL,
  `malato` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'no',
  PRIMARY KEY (`identifier`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('steam:110000117caaf4e', 'license:869acfbb336b00d4e92c6fb5bbe7e740ea79fdd8', 1000, '大白', '{\"makeup_3\":0,\"ears_2\":0,\"arms\":0,\"chain_2\":0,\"pants_1\":0,\"eyebrows_1\":0,\"bags_1\":0,\"beard_1\":0,\"bproof_1\":0,\"age_1\":0,\"lipstick_2\":0,\"shoes_1\":0,\"bodyb_1\":0,\"arms_2\":0,\"hair_2\":0,\"eyebrows_3\":0,\"glasses_2\":0,\"bracelets_1\":-1,\"hair_color_2\":0,\"chest_2\":0,\"decals_1\":0,\"watches_1\":-1,\"beard_4\":0,\"decals_2\":0,\"skin\":0,\"helmet_2\":0,\"hair_color_1\":0,\"moles_2\":0,\"blemishes_2\":0,\"blush_3\":0,\"ears_1\":-1,\"beard_2\":0,\"pants_2\":0,\"bags_2\":0,\"chest_1\":0,\"sun_1\":0,\"makeup_1\":0,\"sun_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"hair_1\":0,\"blemishes_1\":0,\"chest_3\":0,\"bracelets_2\":0,\"torso_2\":0,\"chain_1\":0,\"blush_1\":0,\"glasses_1\":0,\"lipstick_3\":0,\"bproof_2\":0,\"mask_2\":0,\"sex\":0,\"moles_1\":0,\"helmet_1\":-1,\"eye_color\":0,\"shoes_2\":0,\"complexion_2\":0,\"beard_3\":0,\"makeup_4\":0,\"face\":0,\"tshirt_1\":0,\"tshirt_2\":0,\"mask_1\":0,\"lipstick_1\":0,\"watches_2\":0,\"complexion_1\":0,\"eyebrows_2\":0,\"torso_1\":0,\"age_2\":0,\"eyebrows_4\":0,\"bodyb_2\":0,\"blush_2\":0}', 'unemployed', 0, '[]', '{\"z\":30.7,\"x\":433.9,\"y\":-981.3}', 202000, 0, 'user', '0600250244', '[{\"name\":\"hunger\",\"percent\":39.7,\"val\":397000},{\"name\":\"thirst\",\"percent\":54.775,\"val\":547750},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 'DA', 'DA', '1949-10-1', 'm', '200', 0, NULL, NULL, NULL, NULL, 'no');

-- ----------------------------
-- Table structure for vehicle_categories
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_categories`;
CREATE TABLE `vehicle_categories`  (
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicle_categories
-- ----------------------------
INSERT INTO `vehicle_categories` VALUES ('compacts', '紧凑轿车');
INSERT INTO `vehicle_categories` VALUES ('coupes', '家用车');
INSERT INTO `vehicle_categories` VALUES ('motorcycles', '摩托车');
INSERT INTO `vehicle_categories` VALUES ('muscle', '肌肉车');
INSERT INTO `vehicle_categories` VALUES ('offroad', '越野车');
INSERT INTO `vehicle_categories` VALUES ('sedans', '轿车');
INSERT INTO `vehicle_categories` VALUES ('sports', '跑车');
INSERT INTO `vehicle_categories` VALUES ('sportsclassics', '经典跑车');
INSERT INTO `vehicle_categories` VALUES ('super', '超级跑车');
INSERT INTO `vehicle_categories` VALUES ('suvs', 'SUV轿车');
INSERT INTO `vehicle_categories` VALUES ('vans', '货车');
INSERT INTO `vehicle_categories` VALUES ('复古车', '复古车');
INSERT INTO `vehicle_categories` VALUES ('奔驰', '奔驰');
INSERT INTO `vehicle_categories` VALUES ('新手车', '新手车');
INSERT INTO `vehicle_categories` VALUES ('本田', '本田');
INSERT INTO `vehicle_categories` VALUES ('私人定制', '私人定制');
INSERT INTO `vehicle_categories` VALUES ('速度激情', '速度激情');

-- ----------------------------
-- Table structure for vehicle_sold
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_sold`;
CREATE TABLE `vehicle_sold`  (
  `client` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `soldby` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`plate`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicle_sold
-- ----------------------------

-- ----------------------------
-- Table structure for vehicles
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles`  (
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`model`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicles
-- ----------------------------
INSERT INTO `vehicles` VALUES ('速度激情1', '2f2frx7 ', 2500000, '速度激情');
INSERT INTO `vehicles` VALUES ('速度激情2', '2f2fs2000', 2500000, '速度激情');
INSERT INTO `vehicles` VALUES ('速度激情5', '350zdk', 2450000, '速度激情');
INSERT INTO `vehicles` VALUES ('速度激情6', '350zm', 2600000, '速度激情');
INSERT INTO `vehicles` VALUES ('保时捷918', '63lb', 22000000, '私人定制');
INSERT INTO `vehicles` VALUES ('Akuma', 'AKUMA', 7500000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('复古车', 'FORD30', 3000000, '复古车');
INSERT INTO `vehicles` VALUES ('本田01', 'HONDACIVICTR', 4000000, '本田');
INSERT INTO `vehicles` VALUES ('I8', 'I8', 5000000, 'super');
INSERT INTO `vehicles` VALUES ('R820', 'R820', 5000000, 'super');
INSERT INTO `vehicles` VALUES ('Adder', 'adder', 9000000, 'super');
INSERT INTO `vehicles` VALUES ('Alpha', 'alpha', 1500000, 'sports');
INSERT INTO `vehicles` VALUES ('奔驰AMG GT63S', 'amggt63s', 7000000, '私人定制');
INSERT INTO `vehicles` VALUES ('AMG GT S', 'amggtsprior', 4000000, 'sports');
INSERT INTO `vehicles` VALUES ('本田02', 'ap2', 8000000, '本田');
INSERT INTO `vehicles` VALUES ('Ardent', 'ardent', 11500000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Asea', 'asea', 500000, 'sedans');
INSERT INTO `vehicles` VALUES ('Autarch', 'autarch', 4955000, 'super');
INSERT INTO `vehicles` VALUES ('Avarus', 'avarus', 1800000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Bagger', 'bagger', 750000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Baller', 'baller2', 1100000, 'suvs');
INSERT INTO `vehicles` VALUES ('Baller Sport', 'baller3', 1500000, 'suvs');
INSERT INTO `vehicles` VALUES ('Banshee', 'banshee', 1700000, 'sports');
INSERT INTO `vehicles` VALUES ('Banshee 900R', 'banshee2', 955000, 'super');
INSERT INTO `vehicles` VALUES ('Bati 801', 'bati', 920000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Bati 801RR', 'bati2', 900000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Bestia GTS', 'bestiagts', 3500000, 'sports');
INSERT INTO `vehicles` VALUES ('BF400', 'bf400', 500000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Bf Injection', 'bfinjection', 600000, 'offroad');
INSERT INTO `vehicles` VALUES ('Bifta', 'bifta', 420000, 'offroad');
INSERT INTO `vehicles` VALUES ('Bison', 'bison', 500000, 'vans');
INSERT INTO `vehicles` VALUES ('Blade', 'blade', 1500000, 'muscle');
INSERT INTO `vehicles` VALUES ('Blazer', 'blazer', 500000, 'offroad');
INSERT INTO `vehicles` VALUES ('Blazer Sport', 'blazer4', 850000, 'offroad');
INSERT INTO `vehicles` VALUES ('blazer5', 'blazer5', 755600, 'offroad');
INSERT INTO `vehicles` VALUES ('一汽大众高尔夫', 'blista', 500000, '私人定制');
INSERT INTO `vehicles` VALUES ('BMX (velo)', 'bmx', 16000000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Bobcat XL', 'bobcatxl', 620000, 'vans');
INSERT INTO `vehicles` VALUES ('Brawler', 'brawler', 4500000, 'offroad');
INSERT INTO `vehicles` VALUES ('Brioso R/A', 'brioso', 280000, 'compacts');
INSERT INTO `vehicles` VALUES ('Btype', 'btype', 6200000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Btype Hotroad', 'btype2', 8550000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Btype Luxe', 'btype3', 850000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Buccaneer', 'buccaneer', 1800000, 'muscle');
INSERT INTO `vehicles` VALUES ('Buccaneer Rider', 'buccaneer2', 2400000, 'muscle');
INSERT INTO `vehicles` VALUES ('Buffalo', 'buffalo', 1200000, 'sports');
INSERT INTO `vehicles` VALUES ('Buffalo S', 'buffalo2', 2000000, 'sports');
INSERT INTO `vehicles` VALUES ('Bullet', 'bullet', 2000000, 'super');
INSERT INTO `vehicles` VALUES ('Burrito', 'burrito3', 1200000, 'vans');
INSERT INTO `vehicles` VALUES ('Camper', 'camper', 1000000, 'vans');
INSERT INTO `vehicles` VALUES ('Carbonizzare', 'carbonizzare', 7500000, 'sports');
INSERT INTO `vehicles` VALUES ('Carbon RS', 'carbonrs', 780000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Casco', 'casco', 5000000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Cavalcade', 'cavalcade2', 1800000, 'suvs');
INSERT INTO `vehicles` VALUES ('Cheetah', 'cheetah', 9750000, 'super');
INSERT INTO `vehicles` VALUES ('Chimera', 'chimera', 980000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Chino', 'chino', 550000, 'muscle');
INSERT INTO `vehicles` VALUES ('Chino Luxe', 'chino2', 890000, 'muscle');
INSERT INTO `vehicles` VALUES ('Cliffhanger', 'cliffhanger', 950000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Cognoscenti Cabrio', 'cogcabrio', 550000, 'coupes');
INSERT INTO `vehicles` VALUES ('Cognoscenti', 'cognoscenti', 550000, 'sedans');
INSERT INTO `vehicles` VALUES ('Comet', 'comet2', 1650000, 'sports');
INSERT INTO `vehicles` VALUES ('Comet 5', 'comet5', 6145000, 'sports');
INSERT INTO `vehicles` VALUES ('Contender', 'contender', 1200000, 'suvs');
INSERT INTO `vehicles` VALUES ('Coquette', 'coquette', 6500000, 'sports');
INSERT INTO `vehicles` VALUES ('Coquette Classic', 'coquette2', 400000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Coquette BlackFin', 'coquette3', 550000, 'muscle');
INSERT INTO `vehicles` VALUES ('新手老车01', 'cord812', 200000, '新手车');
INSERT INTO `vehicles` VALUES ('Cruiser (velo)', 'cruiser', 510000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Cyclone', 'cyclone', 9890000, 'super');
INSERT INTO `vehicles` VALUES ('Daemon', 'daemon', 615000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Daemon High', 'daemon2', 835000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Defiler', 'defiler', 980000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Deluxo', 'deluxo', 6721500, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('大切诺基', 'demonhawk', 5000000, '私人定制');
INSERT INTO `vehicles` VALUES ('Dominator', 'dominator', 3500000, 'muscle');
INSERT INTO `vehicles` VALUES ('Double T', 'double', 2800000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Dubsta', 'dubsta', 1600000, 'suvs');
INSERT INTO `vehicles` VALUES ('Dubsta Luxuary', 'dubsta2', 1700000, 'suvs');
INSERT INTO `vehicles` VALUES ('Bubsta 6x6', 'dubsta3', 1200000, 'offroad');
INSERT INTO `vehicles` VALUES ('Dukes', 'dukes', 2800000, 'muscle');
INSERT INTO `vehicles` VALUES ('Dune Buggy', 'dune', 800000, 'offroad');
INSERT INTO `vehicles` VALUES ('Elegy', 'elegy2', 3850000, 'sports');
INSERT INTO `vehicles` VALUES ('Emperor', 'emperor', 850000, 'sedans');
INSERT INTO `vehicles` VALUES ('Enduro', 'enduro', 550000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Entity XF', 'entityxf', 4250000, 'super');
INSERT INTO `vehicles` VALUES ('Esskey', 'esskey', 420000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Exemplar', 'exemplar', 420000, 'coupes');
INSERT INTO `vehicles` VALUES ('F620', 'f620', 400000, 'coupes');
INSERT INTO `vehicles` VALUES ('Faction', 'faction', 2000000, 'muscle');
INSERT INTO `vehicles` VALUES ('Faction Rider', 'faction2', 3000000, 'muscle');
INSERT INTO `vehicles` VALUES ('Faction XL', 'faction3', 850000, 'muscle');
INSERT INTO `vehicles` VALUES ('Faggio', 'faggio', 190000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Vespa', 'faggio2', 200000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Felon', 'felon', 420000, 'coupes');
INSERT INTO `vehicles` VALUES ('Felon GT', 'felon2', 550000, 'coupes');
INSERT INTO `vehicles` VALUES ('Feltzer', 'feltzer2', 1550000, 'sports');
INSERT INTO `vehicles` VALUES ('Stirling GT', 'feltzer3', 6500000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Fixter (velo)', 'fixter', 2250000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('FMJ', 'fmj', 1850000, 'super');
INSERT INTO `vehicles` VALUES ('速度激情3', 'fnfjetta', 2498000, '速度激情');
INSERT INTO `vehicles` VALUES ('速度激情4', 'fnfrx7dom', 2450000, '速度激情');
INSERT INTO `vehicles` VALUES ('复古老车', 'ford30t', 2000000, '复古车');
INSERT INTO `vehicles` VALUES ('Fhantom', 'fq2', 1700000, 'suvs');
INSERT INTO `vehicles` VALUES ('Fugitive', 'fugitive', 1200000, 'sedans');
INSERT INTO `vehicles` VALUES ('Furore GT', 'furoregt', 4500000, 'sports');
INSERT INTO `vehicles` VALUES ('Fusilade', 'fusilade', 4000000, 'sports');
INSERT INTO `vehicles` VALUES ('Gargoyle', 'gargoyle', 450000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('道奇地狱猫', 'gauntlet', 4500000, '私人定制');
INSERT INTO `vehicles` VALUES ('Gang Burrito', 'gburrito', 1100000, 'vans');
INSERT INTO `vehicles` VALUES ('Burrito', 'gburrito2', 1000000, 'vans');
INSERT INTO `vehicles` VALUES ('Glendale', 'glendale', 650000, 'sedans');
INSERT INTO `vehicles` VALUES ('Grabger', 'granger', 590000, 'suvs');
INSERT INTO `vehicles` VALUES ('Gresley', 'gresley', 675000, 'suvs');
INSERT INTO `vehicles` VALUES ('GT 500', 'gt500', 7850000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Guardian', 'guardian', 4500000, 'offroad');
INSERT INTO `vehicles` VALUES ('Hakuchou', 'hakuchou', 310000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Hakuchou Sport', 'hakuchou2', 5500000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Hermes', 'hermes', 5350000, 'muscle');
INSERT INTO `vehicles` VALUES ('Hexer', 'hexer', 550000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Hotknife', 'hotknife', 205000, 'muscle');
INSERT INTO `vehicles` VALUES ('Huntley S', 'huntley', 500000, 'suvs');
INSERT INTO `vehicles` VALUES ('Hustler', 'hustler', 625000, 'muscle');
INSERT INTO `vehicles` VALUES ('Infernus', 'infernus', 1050000, 'super');
INSERT INTO `vehicles` VALUES ('Innovation', 'innovation', 240000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Intruder', 'intruder', 750000, 'sedans');
INSERT INTO `vehicles` VALUES ('Issi', 'issi2', 400000, 'compacts');
INSERT INTO `vehicles` VALUES ('Jackal', 'jackal', 480000, 'coupes');
INSERT INTO `vehicles` VALUES ('2020超跑', 'jes', 9000000, 'super');
INSERT INTO `vehicles` VALUES ('Jester', 'jester', 1250000, 'sports');
INSERT INTO `vehicles` VALUES ('Jester(Racecar)', 'jester2', 1350000, 'sports');
INSERT INTO `vehicles` VALUES ('Journey', 'journey', 890000, 'vans');
INSERT INTO `vehicles` VALUES ('Kamacho', 'kamacho', 345000, 'offroad');
INSERT INTO `vehicles` VALUES ('Khamelion', 'khamelion', 680000, 'sports');
INSERT INTO `vehicles` VALUES ('三菱EVO', 'kuruma', 10000000, '私人定制');
INSERT INTO `vehicles` VALUES ('Landstalker', 'landstalker', 970000, 'suvs');
INSERT INTO `vehicles` VALUES ('RE-7B', 'le7b', 3250000, 'super');
INSERT INTO `vehicles` VALUES ('Lynx', 'lynx', 4000000, 'sports');
INSERT INTO `vehicles` VALUES ('宝马M7', 'm5f90', 7500000, '私人定制');
INSERT INTO `vehicles` VALUES ('Mamba', 'mamba', 7000000, 'sports');
INSERT INTO `vehicles` VALUES ('Manana', 'manana', 1280000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Manchez', 'manchez', 530000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Massacro', 'massacro', 650000, 'sports');
INSERT INTO `vehicles` VALUES ('Massacro(Racecar)', 'massacro2', 1300000, 'sports');
INSERT INTO `vehicles` VALUES ('mcst', 'mcst', 2000000, 'super');
INSERT INTO `vehicles` VALUES ('Mesa', 'mesa', 600000, 'suvs');
INSERT INTO `vehicles` VALUES ('Mesa Trail', 'mesa3', 1100000, 'suvs');
INSERT INTO `vehicles` VALUES ('Minivan', 'minivan', 980000, 'vans');
INSERT INTO `vehicles` VALUES ('Monroe', 'monroe', 550000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('The Liberator', 'monster', 2100000, 'offroad');
INSERT INTO `vehicles` VALUES ('Moonbeam', 'moonbeam', 854000, 'vans');
INSERT INTO `vehicles` VALUES ('Moonbeam Rider', 'moonbeam2', 990000, 'vans');
INSERT INTO `vehicles` VALUES ('福特野马', 'mustang19', 5500000, '私人定制');
INSERT INTO `vehicles` VALUES ('Nemesis', 'nemesis', 600000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Neon', 'neon', 1500000, 'sports');
INSERT INTO `vehicles` VALUES ('Nightblade', 'nightblade', 3500000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Nightshade', 'nightshade', 650000, 'muscle');
INSERT INTO `vehicles` VALUES ('9F', 'ninef', 950000, 'sports');
INSERT INTO `vehicles` VALUES ('9F Cabrio', 'ninef2', 800000, 'sports');
INSERT INTO `vehicles` VALUES ('Omnis', 'omnis', 1350000, 'sports');
INSERT INTO `vehicles` VALUES ('宝马M6', 'oracle', 6500000, '私人定制');
INSERT INTO `vehicles` VALUES ('Oracle XS', 'oracle2', 640000, 'coupes');
INSERT INTO `vehicles` VALUES ('Osiris', 'osiris', 1600000, 'super');
INSERT INTO `vehicles` VALUES ('Panto', 'panto', 300000, 'compacts');
INSERT INTO `vehicles` VALUES ('Paradise', 'paradise', 590000, 'vans');
INSERT INTO `vehicles` VALUES ('Pariah', 'pariah', 1420000, 'sports');
INSERT INTO `vehicles` VALUES ('帕萨特旅行版', 'pasate', 25000000, '私人定制');
INSERT INTO `vehicles` VALUES ('Patriot', 'patriot', 550000, 'suvs');
INSERT INTO `vehicles` VALUES ('PCJ-600', 'pcj', 820000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Penumbra', 'penumbra', 2800000, 'sports');
INSERT INTO `vehicles` VALUES ('Pfister', 'pfister811', 8500000, 'super');
INSERT INTO `vehicles` VALUES ('Phoenix', 'phoenix', 1250000, 'muscle');
INSERT INTO `vehicles` VALUES ('Picador', 'picador', 1800000, 'muscle');
INSERT INTO `vehicles` VALUES ('Pigalle', 'pigalle', 2000000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('奔驰警车', 'polamggtr', 8800000, '私人定制');
INSERT INTO `vehicles` VALUES ('Prairie', 'prairie', 220000, 'compacts');
INSERT INTO `vehicles` VALUES ('Premier', 'premier', 800000, 'sedans');
INSERT INTO `vehicles` VALUES ('Primo Custom', 'primo2', 1400000, 'sedans');
INSERT INTO `vehicles` VALUES ('X80 Proto', 'prototipo', 3500000, 'super');
INSERT INTO `vehicles` VALUES ('Radius', 'radi', 840000, 'suvs');
INSERT INTO `vehicles` VALUES ('raiden', 'raiden', 1375000, 'sports');
INSERT INTO `vehicles` VALUES ('Rapid GT', 'rapidgt', 3500000, 'sports');
INSERT INTO `vehicles` VALUES ('Rapid GT Convertible', 'rapidgt2', 4500000, 'sports');
INSERT INTO `vehicles` VALUES ('Rapid GT3', 'rapidgt3', 8850000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Reaper', 'reaper', 8500000, 'super');
INSERT INTO `vehicles` VALUES ('Rebel', 'rebel2', 3500000, 'offroad');
INSERT INTO `vehicles` VALUES ('Regina', 'regina', 500000, 'sedans');
INSERT INTO `vehicles` VALUES ('Retinue', 'retinue', 6150000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Revolter', 'revolter', 3610000, 'sports');
INSERT INTO `vehicles` VALUES ('riata', 'riata', 380000, 'offroad');
INSERT INTO `vehicles` VALUES ('Rocoto', 'rocoto', 750000, 'suvs');
INSERT INTO `vehicles` VALUES ('奥迪RS3', 'rs318', 4800000, '私人定制');
INSERT INTO `vehicles` VALUES ('奥迪RS6', 'rs615', 6500000, '私人定制');
INSERT INTO `vehicles` VALUES ('Ruffian', 'ruffian', 680000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Ruiner 2', 'ruiner2', 5745600, 'muscle');
INSERT INTO `vehicles` VALUES ('Rumpo', 'rumpo', 950000, 'vans');
INSERT INTO `vehicles` VALUES ('Rumpo Trail', 'rumpo3', 880000, 'vans');
INSERT INTO `vehicles` VALUES ('Sabre Turbo', 'sabregt', 2000000, 'muscle');
INSERT INTO `vehicles` VALUES ('Sabre GT', 'sabregt2', 2500000, 'muscle');
INSERT INTO `vehicles` VALUES ('Sanchez', 'sanchez', 530000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Sanchez Sport', 'sanchez2', 530000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Sanctus', 'sanctus', 650000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Sandking', 'sandking', 800000, 'offroad');
INSERT INTO `vehicles` VALUES ('Savestra', 'savestra', 9900000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('SC 1', 'sc1', 3603000, 'super');
INSERT INTO `vehicles` VALUES ('Schafter', 'schafter2', 7500000, 'sedans');
INSERT INTO `vehicles` VALUES ('Schafter V12', 'schafter3', 5000000, 'sports');
INSERT INTO `vehicles` VALUES ('Scorcher (velo)', 'scorcher', 2800000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Seminole', 'seminole', 625000, 'suvs');
INSERT INTO `vehicles` VALUES ('Sentinel', 'sentinel', 5200000, 'coupes');
INSERT INTO `vehicles` VALUES ('Sentinel XS', 'sentinel2', 4000000, 'coupes');
INSERT INTO `vehicles` VALUES ('Sentinel3', 'sentinel3', 2000000, 'sports');
INSERT INTO `vehicles` VALUES ('Seven 70', 'seven70', 3950000, 'sports');
INSERT INTO `vehicles` VALUES ('ETR1', 'sheava', 2200000, 'super');
INSERT INTO `vehicles` VALUES ('Shotaro Concept', 'shotaro', 3200000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Slam Van', 'slamvan3', 1150000, 'muscle');
INSERT INTO `vehicles` VALUES ('Sovereign', 'sovereign', 250000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('捷豹超跑', 'spyker', 8500000, '私人定制');
INSERT INTO `vehicles` VALUES ('Stinger', 'stinger', 800000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Stinger GT', 'stingergt', 750000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('奔驰CLS63S', 'stratum', 8500000, '私人定制');
INSERT INTO `vehicles` VALUES ('Streiter', 'streiter', 5000000, 'sports');
INSERT INTO `vehicles` VALUES ('Stretch', 'stretch', 4000000, 'sedans');
INSERT INTO `vehicles` VALUES ('Stromberg', 'stromberg', 6185350, 'sports');
INSERT INTO `vehicles` VALUES ('Sultan', 'sultan', 650000, 'sports');
INSERT INTO `vehicles` VALUES ('大众帕萨特', 'sultanrs', 5500000, '私人定制');
INSERT INTO `vehicles` VALUES ('Super Diamond', 'superd', 2300000, 'sedans');
INSERT INTO `vehicles` VALUES ('Surano', 'surano', 500000, 'sports');
INSERT INTO `vehicles` VALUES ('Surfer', 'surfer', 1400000, 'vans');
INSERT INTO `vehicles` VALUES ('T20', 't20', 7000000, 'super');
INSERT INTO `vehicles` VALUES ('Tailgater', 'tailgater', 3000000, 'sedans');
INSERT INTO `vehicles` VALUES ('Tampa', 'tampa', 1600000, 'muscle');
INSERT INTO `vehicles` VALUES ('Drift Tampa', 'tampa2', 800000, 'sports');
INSERT INTO `vehicles` VALUES ('Thrust', 'thrust', 640000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Tri bike (velo)', 'tribike3', 520000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Trophy Truck', 'trophytruck', 600000, 'offroad');
INSERT INTO `vehicles` VALUES ('Trophy Truck Limited', 'trophytruck2', 800000, 'offroad');
INSERT INTO `vehicles` VALUES ('Tropos', 'tropos', 890000, 'sports');
INSERT INTO `vehicles` VALUES ('Turismo R', 'turismor', 3500000, 'super');
INSERT INTO `vehicles` VALUES ('Tyrus', 'tyrus', 6000000, 'super');
INSERT INTO `vehicles` VALUES ('Vacca', 'vacca', 1200000, 'super');
INSERT INTO `vehicles` VALUES ('Vader', 'vader', 720000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('现代飞思', 'veln', 5000000, '私人定制');
INSERT INTO `vehicles` VALUES ('Verlierer', 'verlierer2', 700000, 'sports');
INSERT INTO `vehicles` VALUES ('Vigero', 'vigero', 625000, 'muscle');
INSERT INTO `vehicles` VALUES ('Virgo', 'virgo', 640000, 'muscle');
INSERT INTO `vehicles` VALUES ('Viseris', 'viseris', 2575000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Visione', 'visione', 8250000, 'super');
INSERT INTO `vehicles` VALUES ('Voltic', 'voltic', 9000000, 'super');
INSERT INTO `vehicles` VALUES ('Voodoo', 'voodoo', 720000, 'muscle');
INSERT INTO `vehicles` VALUES ('Vortex', 'vortex', 980000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('社会春专属跑车', 'vulcan', 80000000, '私人定制');
INSERT INTO `vehicles` VALUES ('Warrener', 'warrener', 400000, 'sedans');
INSERT INTO `vehicles` VALUES ('Washington', 'washington', 900000, 'sedans');
INSERT INTO `vehicles` VALUES ('Windsor', 'windsor', 950000, 'coupes');
INSERT INTO `vehicles` VALUES ('Windsor Drop', 'windsor2', 1250000, 'coupes');
INSERT INTO `vehicles` VALUES ('Woflsbane', 'wolfsbane', 900000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('XLS', 'xls', 920000, 'suvs');
INSERT INTO `vehicles` VALUES ('Yosemite', 'yosemite', 4850000, 'muscle');
INSERT INTO `vehicles` VALUES ('Youga', 'youga', 1100000, 'vans');
INSERT INTO `vehicles` VALUES ('Youga Luxuary', 'youga2', 1000000, 'vans');
INSERT INTO `vehicles` VALUES ('Z190', 'z190', 900000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Zentorno', 'zentorno', 9900000, 'super');
INSERT INTO `vehicles` VALUES ('Zion', 'zion', 760000, 'coupes');
INSERT INTO `vehicles` VALUES ('Zion Cabrio', 'zion2', 850000, 'coupes');
INSERT INTO `vehicles` VALUES ('Zombie', 'zombiea', 950000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Zombie Luxuary', 'zombieb', 820000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Z-Type', 'ztype', 2200000, 'sportsclassics');

-- ----------------------------
-- Table structure for weashops
-- ----------------------------
DROP TABLE IF EXISTS `weashops`;
CREATE TABLE `weashops`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `item` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of weashops
-- ----------------------------
INSERT INTO `weashops` VALUES (2, 'GunShop', 'WEAPON_PISTOL', 50000);

-- ----------------------------
-- Table structure for wh_test
-- ----------------------------
DROP TABLE IF EXISTS `wh_test`;
CREATE TABLE `wh_test`  (
  `identifier` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `warehouse` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`identifier`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wh_test
-- ----------------------------
INSERT INTO `wh_test` VALUES ('steam:110000103f407b5', '[{\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1088.61,\"obj\":\"ex_prop_crate_pharma_sc\",\"slot\":\"s1_1\",\"empty\":true},{\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1088.61,\"obj\":\"ex_prop_crate_biohazard_sc\",\"slot\":\"s1_2\",\"empty\":true},{\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1091.38,\"obj\":\"ex_prop_crate_gems_sc\",\"slot\":\"s2_1\",\"empty\":true},{\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1091.38,\"obj\":\"ex_prop_crate_elec_sc\",\"slot\":\"s2_2\",\"empty\":true},{\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1095.13,\"obj\":\"ex_prop_crate_narc_sc\",\"slot\":\"s3_1\",\"empty\":true},{\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1095.13,\"obj\":\"ex_prop_crate_tob_sc\",\"slot\":\"s3_2\",\"empty\":true},{\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1097.51,\"obj\":\"ex_prop_crate_wlife_sc\",\"slot\":\"s4_1\",\"empty\":true},{\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1097.51,\"obj\":\"ex_prop_crate_ammo_sc\",\"slot\":\"s4_2\",\"empty\":true},{\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1101.31,\"obj\":\"ex_prop_crate_art_02_sc\",\"slot\":\"s5_1\",\"empty\":true},{\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1101.31,\"obj\":\"ex_prop_crate_art_bc\",\"slot\":\"s5_2\",\"empty\":true},{\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1104.0,\"obj\":\"ex_prop_crate_art_sc\",\"slot\":\"s6_1\",\"empty\":true},{\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1104.0,\"obj\":\"ex_prop_crate_art_02_bc\",\"slot\":\"s6_2\",\"empty\":true}]');
INSERT INTO `wh_test` VALUES ('steam:110000106f5ce70', '[{\"z\":-40.0,\"slot\":\"s1_1\",\"created\":false,\"obj\":\"ex_prop_crate_pharma_sc\",\"empty\":true,\"x\":1088.61,\"y\":-3096.4},{\"z\":-37.82,\"slot\":\"s1_2\",\"created\":false,\"obj\":\"ex_prop_crate_biohazard_sc\",\"empty\":true,\"x\":1088.61,\"y\":-3096.4},{\"z\":-40.0,\"slot\":\"s2_1\",\"created\":false,\"obj\":\"ex_prop_crate_gems_sc\",\"empty\":true,\"x\":1091.38,\"y\":-3096.4},{\"z\":-37.82,\"slot\":\"s2_2\",\"created\":false,\"obj\":\"ex_prop_crate_elec_sc\",\"empty\":true,\"x\":1091.38,\"y\":-3096.4},{\"z\":-40.0,\"slot\":\"s3_1\",\"created\":false,\"obj\":\"ex_prop_crate_narc_sc\",\"empty\":true,\"x\":1095.13,\"y\":-3096.4},{\"z\":-37.82,\"slot\":\"s3_2\",\"created\":false,\"obj\":\"ex_prop_crate_tob_sc\",\"empty\":true,\"x\":1095.13,\"y\":-3096.4},{\"z\":-40.0,\"slot\":\"s4_1\",\"created\":false,\"obj\":\"ex_prop_crate_wlife_sc\",\"empty\":true,\"x\":1097.51,\"y\":-3096.4},{\"z\":-37.82,\"slot\":\"s4_2\",\"created\":false,\"obj\":\"ex_prop_crate_ammo_sc\",\"empty\":true,\"x\":1097.51,\"y\":-3096.4},{\"z\":-40.0,\"slot\":\"s5_1\",\"created\":false,\"obj\":\"ex_prop_crate_art_02_sc\",\"empty\":true,\"x\":1101.31,\"y\":-3096.4},{\"z\":-37.82,\"slot\":\"s5_2\",\"created\":false,\"obj\":\"ex_prop_crate_art_bc\",\"empty\":true,\"x\":1101.31,\"y\":-3096.4},{\"z\":-40.0,\"slot\":\"s6_1\",\"created\":false,\"obj\":\"ex_prop_crate_art_sc\",\"empty\":true,\"x\":1104.0,\"y\":-3096.4},{\"z\":-37.82,\"slot\":\"s6_2\",\"created\":false,\"obj\":\"ex_prop_crate_art_02_bc\",\"empty\":true,\"x\":1104.0,\"y\":-3096.4}]');
INSERT INTO `wh_test` VALUES ('steam:11000010722d120', '[{\"slot\":\"s1_1\",\"obj\":\"ex_prop_crate_pharma_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1088.61,\"empty\":true},{\"slot\":\"s1_2\",\"obj\":\"ex_prop_crate_biohazard_sc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1088.61,\"empty\":true},{\"slot\":\"s2_1\",\"obj\":\"ex_prop_crate_gems_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1091.38,\"empty\":true},{\"slot\":\"s2_2\",\"obj\":\"ex_prop_crate_elec_sc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1091.38,\"empty\":true},{\"slot\":\"s3_1\",\"obj\":\"ex_prop_crate_narc_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1095.13,\"empty\":true},{\"slot\":\"s3_2\",\"obj\":\"ex_prop_crate_tob_sc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1095.13,\"empty\":true},{\"slot\":\"s4_1\",\"obj\":\"ex_prop_crate_wlife_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1097.51,\"empty\":true},{\"slot\":\"s4_2\",\"obj\":\"ex_prop_crate_ammo_sc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1097.51,\"empty\":true},{\"slot\":\"s5_1\",\"obj\":\"ex_prop_crate_art_02_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1101.31,\"empty\":true},{\"slot\":\"s5_2\",\"obj\":\"ex_prop_crate_art_bc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1101.31,\"empty\":true},{\"slot\":\"s6_1\",\"obj\":\"ex_prop_crate_art_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1104.0,\"empty\":true},{\"slot\":\"s6_2\",\"obj\":\"ex_prop_crate_art_02_bc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1104.0,\"empty\":true}]');
INSERT INTO `wh_test` VALUES ('steam:11000010c72c48b', '[{\"y\":-3096.4,\"x\":1088.61,\"slot\":\"s1_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_pharma_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1088.61,\"slot\":\"s1_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_biohazard_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1091.38,\"slot\":\"s2_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_gems_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1091.38,\"slot\":\"s2_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_elec_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1095.13,\"slot\":\"s3_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_narc_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1095.13,\"slot\":\"s3_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_tob_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1097.51,\"slot\":\"s4_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_wlife_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1097.51,\"slot\":\"s4_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_ammo_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1101.31,\"slot\":\"s5_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_art_02_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1101.31,\"slot\":\"s5_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_art_bc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1104.0,\"slot\":\"s6_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_art_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1104.0,\"slot\":\"s6_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_art_02_bc\",\"created\":false,\"empty\":true}]');
INSERT INTO `wh_test` VALUES ('steam:1100001154d67f5', '[{\"slot\":\"s1_1\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1088.61,\"obj\":\"ex_prop_crate_pharma_sc\"},{\"slot\":\"s1_2\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1088.61,\"obj\":\"ex_prop_crate_biohazard_sc\"},{\"slot\":\"s2_1\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1091.38,\"obj\":\"ex_prop_crate_gems_sc\"},{\"slot\":\"s2_2\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1091.38,\"obj\":\"ex_prop_crate_elec_sc\"},{\"slot\":\"s3_1\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1095.13,\"obj\":\"ex_prop_crate_narc_sc\"},{\"slot\":\"s3_2\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1095.13,\"obj\":\"ex_prop_crate_tob_sc\"},{\"slot\":\"s4_1\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1097.51,\"obj\":\"ex_prop_crate_wlife_sc\"},{\"slot\":\"s4_2\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1097.51,\"obj\":\"ex_prop_crate_ammo_sc\"},{\"slot\":\"s5_1\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1101.31,\"obj\":\"ex_prop_crate_art_02_sc\"},{\"slot\":\"s5_2\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1101.31,\"obj\":\"ex_prop_crate_art_bc\"},{\"slot\":\"s6_1\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1104.0,\"obj\":\"ex_prop_crate_art_sc\"},{\"slot\":\"s6_2\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1104.0,\"obj\":\"ex_prop_crate_art_02_bc\"}]');
INSERT INTO `wh_test` VALUES ('steam:110000115517b6d', '[{\"y\":-3096.4,\"x\":1088.61,\"slot\":\"s1_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_pharma_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1088.61,\"slot\":\"s1_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_biohazard_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1091.38,\"slot\":\"s2_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_gems_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1091.38,\"slot\":\"s2_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_elec_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1095.13,\"slot\":\"s3_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_narc_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1095.13,\"slot\":\"s3_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_tob_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1097.51,\"slot\":\"s4_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_wlife_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1097.51,\"slot\":\"s4_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_ammo_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1101.31,\"slot\":\"s5_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_art_02_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1101.31,\"slot\":\"s5_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_art_bc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1104.0,\"slot\":\"s6_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_art_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1104.0,\"slot\":\"s6_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_art_02_bc\",\"created\":false,\"empty\":true}]');
INSERT INTO `wh_test` VALUES ('steam:1100001170fb22c', '[{\"created\":false,\"obj\":\"ex_prop_crate_pharma_sc\",\"slot\":\"s1_1\",\"x\":1088.61,\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_biohazard_sc\",\"slot\":\"s1_2\",\"x\":1088.61,\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_gems_sc\",\"slot\":\"s2_1\",\"x\":1091.38,\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_elec_sc\",\"slot\":\"s2_2\",\"x\":1091.38,\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_narc_sc\",\"slot\":\"s3_1\",\"x\":1095.13,\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_tob_sc\",\"slot\":\"s3_2\",\"x\":1095.13,\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_wlife_sc\",\"slot\":\"s4_1\",\"x\":1097.51,\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_ammo_sc\",\"slot\":\"s4_2\",\"x\":1097.51,\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_art_02_sc\",\"slot\":\"s5_1\",\"x\":1101.31,\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_art_bc\",\"slot\":\"s5_2\",\"x\":1101.31,\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_art_sc\",\"slot\":\"s6_1\",\"x\":1104.0,\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_art_02_bc\",\"slot\":\"s6_2\",\"x\":1104.0,\"empty\":true,\"y\":-3096.4,\"z\":-37.82}]');
INSERT INTO `wh_test` VALUES ('steam:1100001172af33b', '[{\"created\":false,\"obj\":\"ex_prop_crate_pharma_sc\",\"slot\":\"s1_1\",\"empty\":true,\"x\":1088.61,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_biohazard_sc\",\"slot\":\"s1_2\",\"empty\":true,\"x\":1088.61,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_gems_sc\",\"slot\":\"s2_1\",\"empty\":true,\"x\":1091.38,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_elec_sc\",\"slot\":\"s2_2\",\"empty\":true,\"x\":1091.38,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_narc_sc\",\"slot\":\"s3_1\",\"empty\":true,\"x\":1095.13,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_tob_sc\",\"slot\":\"s3_2\",\"empty\":true,\"x\":1095.13,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_wlife_sc\",\"slot\":\"s4_1\",\"empty\":true,\"x\":1097.51,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_ammo_sc\",\"slot\":\"s4_2\",\"empty\":true,\"x\":1097.51,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_art_02_sc\",\"slot\":\"s5_1\",\"empty\":true,\"x\":1101.31,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_art_bc\",\"slot\":\"s5_2\",\"empty\":true,\"x\":1101.31,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_art_sc\",\"slot\":\"s6_1\",\"empty\":true,\"x\":1104.0,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_art_02_bc\",\"slot\":\"s6_2\",\"empty\":true,\"x\":1104.0,\"y\":-3096.4,\"z\":-37.82}]');
INSERT INTO `wh_test` VALUES ('steam:1100001172d233d', '[{\"created\":false,\"obj\":\"ex_prop_crate_pharma_sc\",\"slot\":\"s1_1\",\"empty\":true,\"x\":1088.61,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_biohazard_sc\",\"slot\":\"s1_2\",\"empty\":true,\"x\":1088.61,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_gems_sc\",\"slot\":\"s2_1\",\"empty\":true,\"x\":1091.38,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_elec_sc\",\"slot\":\"s2_2\",\"empty\":true,\"x\":1091.38,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_narc_sc\",\"slot\":\"s3_1\",\"empty\":true,\"x\":1095.13,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_tob_sc\",\"slot\":\"s3_2\",\"empty\":true,\"x\":1095.13,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_wlife_sc\",\"slot\":\"s4_1\",\"empty\":true,\"x\":1097.51,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_ammo_sc\",\"slot\":\"s4_2\",\"empty\":true,\"x\":1097.51,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_art_02_sc\",\"slot\":\"s5_1\",\"empty\":true,\"x\":1101.31,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_art_bc\",\"slot\":\"s5_2\",\"empty\":true,\"x\":1101.31,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_art_sc\",\"slot\":\"s6_1\",\"empty\":true,\"x\":1104.0,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_art_02_bc\",\"slot\":\"s6_2\",\"empty\":true,\"x\":1104.0,\"y\":-3096.4,\"z\":-37.82}]');
INSERT INTO `wh_test` VALUES ('steam:11000011745d699', '[{\"z\":-40.0,\"empty\":true,\"obj\":\"ex_prop_crate_pharma_sc\",\"slot\":\"s1_1\",\"created\":false,\"x\":1088.61,\"y\":-3096.4},{\"z\":-37.82,\"empty\":true,\"obj\":\"ex_prop_crate_biohazard_sc\",\"slot\":\"s1_2\",\"created\":false,\"x\":1088.61,\"y\":-3096.4},{\"z\":-40.0,\"empty\":true,\"obj\":\"ex_prop_crate_gems_sc\",\"slot\":\"s2_1\",\"created\":false,\"x\":1091.38,\"y\":-3096.4},{\"z\":-37.82,\"empty\":true,\"obj\":\"ex_prop_crate_elec_sc\",\"slot\":\"s2_2\",\"created\":false,\"x\":1091.38,\"y\":-3096.4},{\"z\":-40.0,\"empty\":true,\"obj\":\"ex_prop_crate_narc_sc\",\"slot\":\"s3_1\",\"created\":false,\"x\":1095.13,\"y\":-3096.4},{\"z\":-37.82,\"empty\":true,\"obj\":\"ex_prop_crate_tob_sc\",\"slot\":\"s3_2\",\"created\":false,\"x\":1095.13,\"y\":-3096.4},{\"z\":-40.0,\"empty\":true,\"obj\":\"ex_prop_crate_wlife_sc\",\"slot\":\"s4_1\",\"created\":false,\"x\":1097.51,\"y\":-3096.4},{\"z\":-37.82,\"empty\":true,\"obj\":\"ex_prop_crate_ammo_sc\",\"slot\":\"s4_2\",\"created\":false,\"x\":1097.51,\"y\":-3096.4},{\"z\":-40.0,\"empty\":true,\"obj\":\"ex_prop_crate_art_02_sc\",\"slot\":\"s5_1\",\"created\":false,\"x\":1101.31,\"y\":-3096.4},{\"z\":-37.82,\"empty\":true,\"obj\":\"ex_prop_crate_art_bc\",\"slot\":\"s5_2\",\"created\":false,\"x\":1101.31,\"y\":-3096.4},{\"z\":-40.0,\"empty\":true,\"obj\":\"ex_prop_crate_art_sc\",\"slot\":\"s6_1\",\"created\":false,\"x\":1104.0,\"y\":-3096.4},{\"z\":-37.82,\"empty\":true,\"obj\":\"ex_prop_crate_art_02_bc\",\"slot\":\"s6_2\",\"created\":false,\"x\":1104.0,\"y\":-3096.4}]');
INSERT INTO `wh_test` VALUES ('steam:110000117b4ecd8', '[{\"created\":false,\"obj\":\"ex_prop_crate_pharma_sc\",\"slot\":\"s1_1\",\"x\":1088.61,\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_biohazard_sc\",\"slot\":\"s1_2\",\"x\":1088.61,\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_gems_sc\",\"slot\":\"s2_1\",\"x\":1091.38,\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_elec_sc\",\"slot\":\"s2_2\",\"x\":1091.38,\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_narc_sc\",\"slot\":\"s3_1\",\"x\":1095.13,\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_tob_sc\",\"slot\":\"s3_2\",\"x\":1095.13,\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_wlife_sc\",\"slot\":\"s4_1\",\"x\":1097.51,\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_ammo_sc\",\"slot\":\"s4_2\",\"x\":1097.51,\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_art_02_sc\",\"slot\":\"s5_1\",\"x\":1101.31,\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_art_bc\",\"slot\":\"s5_2\",\"x\":1101.31,\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"obj\":\"ex_prop_crate_art_sc\",\"slot\":\"s6_1\",\"x\":1104.0,\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"obj\":\"ex_prop_crate_art_02_bc\",\"slot\":\"s6_2\",\"x\":1104.0,\"empty\":true,\"y\":-3096.4,\"z\":-37.82}]');
INSERT INTO `wh_test` VALUES ('steam:110000117caaf4e', '[{\"empty\":true,\"obj\":\"ex_prop_crate_pharma_sc\",\"created\":false,\"z\":-40.0,\"slot\":\"s1_1\",\"x\":1088.61,\"y\":-3096.4},{\"empty\":true,\"obj\":\"ex_prop_crate_biohazard_sc\",\"created\":false,\"z\":-37.82,\"slot\":\"s1_2\",\"x\":1088.61,\"y\":-3096.4},{\"empty\":true,\"obj\":\"ex_prop_crate_gems_sc\",\"created\":false,\"z\":-40.0,\"slot\":\"s2_1\",\"x\":1091.38,\"y\":-3096.4},{\"empty\":true,\"obj\":\"ex_prop_crate_elec_sc\",\"created\":false,\"z\":-37.82,\"slot\":\"s2_2\",\"x\":1091.38,\"y\":-3096.4},{\"empty\":true,\"obj\":\"ex_prop_crate_narc_sc\",\"created\":false,\"z\":-40.0,\"slot\":\"s3_1\",\"x\":1095.13,\"y\":-3096.4},{\"empty\":true,\"obj\":\"ex_prop_crate_tob_sc\",\"created\":false,\"z\":-37.82,\"slot\":\"s3_2\",\"x\":1095.13,\"y\":-3096.4},{\"empty\":true,\"obj\":\"ex_prop_crate_wlife_sc\",\"created\":false,\"z\":-40.0,\"slot\":\"s4_1\",\"x\":1097.51,\"y\":-3096.4},{\"empty\":true,\"obj\":\"ex_prop_crate_ammo_sc\",\"created\":false,\"z\":-37.82,\"slot\":\"s4_2\",\"x\":1097.51,\"y\":-3096.4},{\"empty\":true,\"obj\":\"ex_prop_crate_art_02_sc\",\"created\":false,\"z\":-40.0,\"slot\":\"s5_1\",\"x\":1101.31,\"y\":-3096.4},{\"empty\":true,\"obj\":\"ex_prop_crate_art_bc\",\"created\":false,\"z\":-37.82,\"slot\":\"s5_2\",\"x\":1101.31,\"y\":-3096.4},{\"empty\":true,\"obj\":\"ex_prop_crate_art_sc\",\"created\":false,\"z\":-40.0,\"slot\":\"s6_1\",\"x\":1104.0,\"y\":-3096.4},{\"empty\":true,\"obj\":\"ex_prop_crate_art_02_bc\",\"created\":false,\"z\":-37.82,\"slot\":\"s6_2\",\"x\":1104.0,\"y\":-3096.4}]');
INSERT INTO `wh_test` VALUES ('steam:11000011899ea0f', '[{\"y\":-3096.4,\"x\":1088.61,\"slot\":\"s1_1\",\"created\":false,\"obj\":\"ex_prop_crate_pharma_sc\",\"empty\":true,\"z\":-40.0},{\"y\":-3096.4,\"x\":1088.61,\"slot\":\"s1_2\",\"created\":false,\"obj\":\"ex_prop_crate_biohazard_sc\",\"empty\":true,\"z\":-37.82},{\"y\":-3096.4,\"x\":1091.38,\"slot\":\"s2_1\",\"created\":false,\"obj\":\"ex_prop_crate_gems_sc\",\"empty\":true,\"z\":-40.0},{\"y\":-3096.4,\"x\":1091.38,\"slot\":\"s2_2\",\"created\":false,\"obj\":\"ex_prop_crate_elec_sc\",\"empty\":true,\"z\":-37.82},{\"y\":-3096.4,\"x\":1095.13,\"slot\":\"s3_1\",\"created\":false,\"obj\":\"ex_prop_crate_narc_sc\",\"empty\":true,\"z\":-40.0},{\"y\":-3096.4,\"x\":1095.13,\"slot\":\"s3_2\",\"created\":false,\"obj\":\"ex_prop_crate_tob_sc\",\"empty\":true,\"z\":-37.82},{\"y\":-3096.4,\"x\":1097.51,\"slot\":\"s4_1\",\"created\":false,\"obj\":\"ex_prop_crate_wlife_sc\",\"empty\":true,\"z\":-40.0},{\"y\":-3096.4,\"x\":1097.51,\"slot\":\"s4_2\",\"created\":false,\"obj\":\"ex_prop_crate_ammo_sc\",\"empty\":true,\"z\":-37.82},{\"y\":-3096.4,\"x\":1101.31,\"slot\":\"s5_1\",\"created\":false,\"obj\":\"ex_prop_crate_art_02_sc\",\"empty\":true,\"z\":-40.0},{\"y\":-3096.4,\"x\":1101.31,\"slot\":\"s5_2\",\"created\":false,\"obj\":\"ex_prop_crate_art_bc\",\"empty\":true,\"z\":-37.82},{\"y\":-3096.4,\"x\":1104.0,\"slot\":\"s6_1\",\"created\":false,\"obj\":\"ex_prop_crate_art_sc\",\"empty\":true,\"z\":-40.0},{\"y\":-3096.4,\"x\":1104.0,\"slot\":\"s6_2\",\"created\":false,\"obj\":\"ex_prop_crate_art_02_bc\",\"empty\":true,\"z\":-37.82}]');
INSERT INTO `wh_test` VALUES ('steam:11000011a0816e8', '[{\"z\":-40.0,\"y\":-3096.4,\"x\":1088.61,\"slot\":\"s1_1\",\"empty\":true,\"created\":false,\"obj\":\"ex_prop_crate_pharma_sc\"},{\"z\":-37.82,\"y\":-3096.4,\"x\":1088.61,\"slot\":\"s1_2\",\"empty\":true,\"created\":false,\"obj\":\"ex_prop_crate_biohazard_sc\"},{\"z\":-40.0,\"y\":-3096.4,\"x\":1091.38,\"slot\":\"s2_1\",\"empty\":true,\"created\":false,\"obj\":\"ex_prop_crate_gems_sc\"},{\"z\":-37.82,\"y\":-3096.4,\"x\":1091.38,\"slot\":\"s2_2\",\"empty\":true,\"created\":false,\"obj\":\"ex_prop_crate_elec_sc\"},{\"z\":-40.0,\"y\":-3096.4,\"x\":1095.13,\"slot\":\"s3_1\",\"empty\":true,\"created\":false,\"obj\":\"ex_prop_crate_narc_sc\"},{\"z\":-37.82,\"y\":-3096.4,\"x\":1095.13,\"slot\":\"s3_2\",\"empty\":true,\"created\":false,\"obj\":\"ex_prop_crate_tob_sc\"},{\"z\":-40.0,\"y\":-3096.4,\"x\":1097.51,\"slot\":\"s4_1\",\"empty\":true,\"created\":false,\"obj\":\"ex_prop_crate_wlife_sc\"},{\"z\":-37.82,\"y\":-3096.4,\"x\":1097.51,\"slot\":\"s4_2\",\"empty\":true,\"created\":false,\"obj\":\"ex_prop_crate_ammo_sc\"},{\"z\":-40.0,\"y\":-3096.4,\"x\":1101.31,\"slot\":\"s5_1\",\"empty\":true,\"created\":false,\"obj\":\"ex_prop_crate_art_02_sc\"},{\"z\":-37.82,\"y\":-3096.4,\"x\":1101.31,\"slot\":\"s5_2\",\"empty\":true,\"created\":false,\"obj\":\"ex_prop_crate_art_bc\"},{\"z\":-40.0,\"y\":-3096.4,\"x\":1104.0,\"slot\":\"s6_1\",\"empty\":true,\"created\":false,\"obj\":\"ex_prop_crate_art_sc\"},{\"z\":-37.82,\"y\":-3096.4,\"x\":1104.0,\"slot\":\"s6_2\",\"empty\":true,\"created\":false,\"obj\":\"ex_prop_crate_art_02_bc\"}]');
INSERT INTO `wh_test` VALUES ('steam:11000011bdbdc1a', '[{\"obj\":\"ex_prop_crate_pharma_sc\",\"created\":false,\"slot\":\"s1_1\",\"x\":1088.61,\"y\":-3096.4,\"z\":-40.0,\"empty\":true},{\"obj\":\"ex_prop_crate_biohazard_sc\",\"created\":false,\"slot\":\"s1_2\",\"x\":1088.61,\"y\":-3096.4,\"z\":-37.82,\"empty\":true},{\"obj\":\"ex_prop_crate_gems_sc\",\"created\":false,\"slot\":\"s2_1\",\"x\":1091.38,\"y\":-3096.4,\"z\":-40.0,\"empty\":true},{\"obj\":\"ex_prop_crate_elec_sc\",\"created\":false,\"slot\":\"s2_2\",\"x\":1091.38,\"y\":-3096.4,\"z\":-37.82,\"empty\":true},{\"obj\":\"ex_prop_crate_narc_sc\",\"created\":false,\"slot\":\"s3_1\",\"x\":1095.13,\"y\":-3096.4,\"z\":-40.0,\"empty\":true},{\"obj\":\"ex_prop_crate_tob_sc\",\"created\":false,\"slot\":\"s3_2\",\"x\":1095.13,\"y\":-3096.4,\"z\":-37.82,\"empty\":true},{\"obj\":\"ex_prop_crate_wlife_sc\",\"created\":false,\"slot\":\"s4_1\",\"x\":1097.51,\"y\":-3096.4,\"z\":-40.0,\"empty\":true},{\"obj\":\"ex_prop_crate_ammo_sc\",\"created\":false,\"slot\":\"s4_2\",\"x\":1097.51,\"y\":-3096.4,\"z\":-37.82,\"empty\":true},{\"obj\":\"ex_prop_crate_art_02_sc\",\"created\":false,\"slot\":\"s5_1\",\"x\":1101.31,\"y\":-3096.4,\"z\":-40.0,\"empty\":true},{\"obj\":\"ex_prop_crate_art_bc\",\"created\":false,\"slot\":\"s5_2\",\"x\":1101.31,\"y\":-3096.4,\"z\":-37.82,\"empty\":true},{\"obj\":\"ex_prop_crate_art_sc\",\"created\":false,\"slot\":\"s6_1\",\"x\":1104.0,\"y\":-3096.4,\"z\":-40.0,\"empty\":true},{\"obj\":\"ex_prop_crate_art_02_bc\",\"created\":false,\"slot\":\"s6_2\",\"x\":1104.0,\"y\":-3096.4,\"z\":-37.82,\"empty\":true}]');
INSERT INTO `wh_test` VALUES ('steam:11000011bfb9181', '[{\"y\":-3096.4,\"x\":1088.61,\"slot\":\"s1_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_pharma_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1088.61,\"slot\":\"s1_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_biohazard_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1091.38,\"slot\":\"s2_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_gems_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1091.38,\"slot\":\"s2_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_elec_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1095.13,\"slot\":\"s3_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_narc_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1095.13,\"slot\":\"s3_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_tob_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1097.51,\"slot\":\"s4_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_wlife_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1097.51,\"slot\":\"s4_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_ammo_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1101.31,\"slot\":\"s5_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_art_02_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1101.31,\"slot\":\"s5_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_art_bc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1104.0,\"slot\":\"s6_1\",\"z\":-40.0,\"obj\":\"ex_prop_crate_art_sc\",\"created\":false,\"empty\":true},{\"y\":-3096.4,\"x\":1104.0,\"slot\":\"s6_2\",\"z\":-37.82,\"obj\":\"ex_prop_crate_art_02_bc\",\"created\":false,\"empty\":true}]');
INSERT INTO `wh_test` VALUES ('steam:1100001321585b7', '[{\"slot\":\"s1_1\",\"obj\":\"ex_prop_crate_pharma_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1088.61,\"empty\":true},{\"slot\":\"s1_2\",\"obj\":\"ex_prop_crate_biohazard_sc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1088.61,\"empty\":true},{\"slot\":\"s2_1\",\"obj\":\"ex_prop_crate_gems_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1091.38,\"empty\":true},{\"slot\":\"s2_2\",\"obj\":\"ex_prop_crate_elec_sc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1091.38,\"empty\":true},{\"slot\":\"s3_1\",\"obj\":\"ex_prop_crate_narc_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1095.13,\"empty\":true},{\"slot\":\"s3_2\",\"obj\":\"ex_prop_crate_tob_sc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1095.13,\"empty\":true},{\"slot\":\"s4_1\",\"obj\":\"ex_prop_crate_wlife_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1097.51,\"empty\":true},{\"slot\":\"s4_2\",\"obj\":\"ex_prop_crate_ammo_sc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1097.51,\"empty\":true},{\"slot\":\"s5_1\",\"obj\":\"ex_prop_crate_art_02_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1101.31,\"empty\":true},{\"slot\":\"s5_2\",\"obj\":\"ex_prop_crate_art_bc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1101.31,\"empty\":true},{\"slot\":\"s6_1\",\"obj\":\"ex_prop_crate_art_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1104.0,\"empty\":true},{\"slot\":\"s6_2\",\"obj\":\"ex_prop_crate_art_02_bc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1104.0,\"empty\":true}]');
INSERT INTO `wh_test` VALUES ('steam:110000132555dfb', '[{\"y\":-3096.4,\"x\":1088.61,\"z\":-40.0,\"created\":false,\"obj\":\"ex_prop_crate_pharma_sc\",\"empty\":true,\"slot\":\"s1_1\"},{\"y\":-3096.4,\"x\":1088.61,\"z\":-37.82,\"created\":false,\"obj\":\"ex_prop_crate_biohazard_sc\",\"empty\":true,\"slot\":\"s1_2\"},{\"y\":-3096.4,\"x\":1091.38,\"z\":-40.0,\"created\":false,\"obj\":\"ex_prop_crate_gems_sc\",\"empty\":true,\"slot\":\"s2_1\"},{\"y\":-3096.4,\"x\":1091.38,\"z\":-37.82,\"created\":false,\"obj\":\"ex_prop_crate_elec_sc\",\"empty\":true,\"slot\":\"s2_2\"},{\"y\":-3096.4,\"x\":1095.13,\"z\":-40.0,\"created\":false,\"obj\":\"ex_prop_crate_narc_sc\",\"empty\":true,\"slot\":\"s3_1\"},{\"y\":-3096.4,\"x\":1095.13,\"z\":-37.82,\"created\":false,\"obj\":\"ex_prop_crate_tob_sc\",\"empty\":true,\"slot\":\"s3_2\"},{\"y\":-3096.4,\"x\":1097.51,\"z\":-40.0,\"created\":false,\"obj\":\"ex_prop_crate_wlife_sc\",\"empty\":true,\"slot\":\"s4_1\"},{\"y\":-3096.4,\"x\":1097.51,\"z\":-37.82,\"created\":false,\"obj\":\"ex_prop_crate_ammo_sc\",\"empty\":true,\"slot\":\"s4_2\"},{\"y\":-3096.4,\"x\":1101.31,\"z\":-40.0,\"created\":false,\"obj\":\"ex_prop_crate_art_02_sc\",\"empty\":true,\"slot\":\"s5_1\"},{\"y\":-3096.4,\"x\":1101.31,\"z\":-37.82,\"created\":false,\"obj\":\"ex_prop_crate_art_bc\",\"empty\":true,\"slot\":\"s5_2\"},{\"y\":-3096.4,\"x\":1104.0,\"z\":-40.0,\"created\":false,\"obj\":\"ex_prop_crate_art_sc\",\"empty\":true,\"slot\":\"s6_1\"},{\"y\":-3096.4,\"x\":1104.0,\"z\":-37.82,\"created\":false,\"obj\":\"ex_prop_crate_art_02_bc\",\"empty\":true,\"slot\":\"s6_2\"}]');
INSERT INTO `wh_test` VALUES ('steam:11000013301b85a', '[{\"slot\":\"s1_1\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1088.61,\"obj\":\"ex_prop_crate_pharma_sc\"},{\"slot\":\"s1_2\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1088.61,\"obj\":\"ex_prop_crate_biohazard_sc\"},{\"slot\":\"s2_1\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1091.38,\"obj\":\"ex_prop_crate_gems_sc\"},{\"slot\":\"s2_2\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1091.38,\"obj\":\"ex_prop_crate_elec_sc\"},{\"slot\":\"s3_1\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1095.13,\"obj\":\"ex_prop_crate_narc_sc\"},{\"slot\":\"s3_2\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1095.13,\"obj\":\"ex_prop_crate_tob_sc\"},{\"slot\":\"s4_1\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1097.51,\"obj\":\"ex_prop_crate_wlife_sc\"},{\"slot\":\"s4_2\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1097.51,\"obj\":\"ex_prop_crate_ammo_sc\"},{\"slot\":\"s5_1\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1101.31,\"obj\":\"ex_prop_crate_art_02_sc\"},{\"slot\":\"s5_2\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1101.31,\"obj\":\"ex_prop_crate_art_bc\"},{\"slot\":\"s6_1\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1104.0,\"obj\":\"ex_prop_crate_art_sc\"},{\"slot\":\"s6_2\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1104.0,\"obj\":\"ex_prop_crate_art_02_bc\"}]');
INSERT INTO `wh_test` VALUES ('steam:110000134728f22', '[{\"z\":-40.0,\"empty\":true,\"obj\":\"ex_prop_crate_pharma_sc\",\"slot\":\"s1_1\",\"created\":false,\"x\":1088.61,\"y\":-3096.4},{\"z\":-37.82,\"empty\":true,\"obj\":\"ex_prop_crate_biohazard_sc\",\"slot\":\"s1_2\",\"created\":false,\"x\":1088.61,\"y\":-3096.4},{\"z\":-40.0,\"empty\":true,\"obj\":\"ex_prop_crate_gems_sc\",\"slot\":\"s2_1\",\"created\":false,\"x\":1091.38,\"y\":-3096.4},{\"z\":-37.82,\"empty\":true,\"obj\":\"ex_prop_crate_elec_sc\",\"slot\":\"s2_2\",\"created\":false,\"x\":1091.38,\"y\":-3096.4},{\"z\":-40.0,\"empty\":true,\"obj\":\"ex_prop_crate_narc_sc\",\"slot\":\"s3_1\",\"created\":false,\"x\":1095.13,\"y\":-3096.4},{\"z\":-37.82,\"empty\":true,\"obj\":\"ex_prop_crate_tob_sc\",\"slot\":\"s3_2\",\"created\":false,\"x\":1095.13,\"y\":-3096.4},{\"z\":-40.0,\"empty\":true,\"obj\":\"ex_prop_crate_wlife_sc\",\"slot\":\"s4_1\",\"created\":false,\"x\":1097.51,\"y\":-3096.4},{\"z\":-37.82,\"empty\":true,\"obj\":\"ex_prop_crate_ammo_sc\",\"slot\":\"s4_2\",\"created\":false,\"x\":1097.51,\"y\":-3096.4},{\"z\":-40.0,\"empty\":true,\"obj\":\"ex_prop_crate_art_02_sc\",\"slot\":\"s5_1\",\"created\":false,\"x\":1101.31,\"y\":-3096.4},{\"z\":-37.82,\"empty\":true,\"obj\":\"ex_prop_crate_art_bc\",\"slot\":\"s5_2\",\"created\":false,\"x\":1101.31,\"y\":-3096.4},{\"z\":-40.0,\"empty\":true,\"obj\":\"ex_prop_crate_art_sc\",\"slot\":\"s6_1\",\"created\":false,\"x\":1104.0,\"y\":-3096.4},{\"z\":-37.82,\"empty\":true,\"obj\":\"ex_prop_crate_art_02_bc\",\"slot\":\"s6_2\",\"created\":false,\"x\":1104.0,\"y\":-3096.4}]');
INSERT INTO `wh_test` VALUES ('steam:1100001350a4e14', '[{\"created\":false,\"x\":1088.61,\"slot\":\"s1_1\",\"obj\":\"ex_prop_crate_pharma_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"x\":1088.61,\"slot\":\"s1_2\",\"obj\":\"ex_prop_crate_biohazard_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"x\":1091.38,\"slot\":\"s2_1\",\"obj\":\"ex_prop_crate_gems_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"x\":1091.38,\"slot\":\"s2_2\",\"obj\":\"ex_prop_crate_elec_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"x\":1095.13,\"slot\":\"s3_1\",\"obj\":\"ex_prop_crate_narc_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"x\":1095.13,\"slot\":\"s3_2\",\"obj\":\"ex_prop_crate_tob_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"x\":1097.51,\"slot\":\"s4_1\",\"obj\":\"ex_prop_crate_wlife_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"x\":1097.51,\"slot\":\"s4_2\",\"obj\":\"ex_prop_crate_ammo_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"x\":1101.31,\"slot\":\"s5_1\",\"obj\":\"ex_prop_crate_art_02_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"x\":1101.31,\"slot\":\"s5_2\",\"obj\":\"ex_prop_crate_art_bc\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"x\":1104.0,\"slot\":\"s6_1\",\"obj\":\"ex_prop_crate_art_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"x\":1104.0,\"slot\":\"s6_2\",\"obj\":\"ex_prop_crate_art_02_bc\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82}]');
INSERT INTO `wh_test` VALUES ('steam:110000135a51347', '[{\"slot\":\"s1_1\",\"obj\":\"ex_prop_crate_pharma_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1088.61,\"empty\":true},{\"slot\":\"s1_2\",\"obj\":\"ex_prop_crate_biohazard_sc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1088.61,\"empty\":true},{\"slot\":\"s2_1\",\"obj\":\"ex_prop_crate_gems_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1091.38,\"empty\":true},{\"slot\":\"s2_2\",\"obj\":\"ex_prop_crate_elec_sc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1091.38,\"empty\":true},{\"slot\":\"s3_1\",\"obj\":\"ex_prop_crate_narc_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1095.13,\"empty\":true},{\"slot\":\"s3_2\",\"obj\":\"ex_prop_crate_tob_sc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1095.13,\"empty\":true},{\"slot\":\"s4_1\",\"obj\":\"ex_prop_crate_wlife_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1097.51,\"empty\":true},{\"slot\":\"s4_2\",\"obj\":\"ex_prop_crate_ammo_sc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1097.51,\"empty\":true},{\"slot\":\"s5_1\",\"obj\":\"ex_prop_crate_art_02_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1101.31,\"empty\":true},{\"slot\":\"s5_2\",\"obj\":\"ex_prop_crate_art_bc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1101.31,\"empty\":true},{\"slot\":\"s6_1\",\"obj\":\"ex_prop_crate_art_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1104.0,\"empty\":true},{\"slot\":\"s6_2\",\"obj\":\"ex_prop_crate_art_02_bc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1104.0,\"empty\":true}]');
INSERT INTO `wh_test` VALUES ('steam:11000013716cde4', '[{\"created\":false,\"empty\":true,\"slot\":\"s1_1\",\"x\":1088.61,\"obj\":\"ex_prop_crate_pharma_sc\",\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s1_2\",\"x\":1088.61,\"obj\":\"ex_prop_crate_biohazard_sc\",\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"empty\":true,\"slot\":\"s2_1\",\"x\":1091.38,\"obj\":\"ex_prop_crate_gems_sc\",\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s2_2\",\"x\":1091.38,\"obj\":\"ex_prop_crate_elec_sc\",\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"empty\":true,\"slot\":\"s3_1\",\"x\":1095.13,\"obj\":\"ex_prop_crate_narc_sc\",\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s3_2\",\"x\":1095.13,\"obj\":\"ex_prop_crate_tob_sc\",\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"empty\":true,\"slot\":\"s4_1\",\"x\":1097.51,\"obj\":\"ex_prop_crate_wlife_sc\",\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s4_2\",\"x\":1097.51,\"obj\":\"ex_prop_crate_ammo_sc\",\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"empty\":true,\"slot\":\"s5_1\",\"x\":1101.31,\"obj\":\"ex_prop_crate_art_02_sc\",\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s5_2\",\"x\":1101.31,\"obj\":\"ex_prop_crate_art_bc\",\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"empty\":true,\"slot\":\"s6_1\",\"x\":1104.0,\"obj\":\"ex_prop_crate_art_sc\",\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s6_2\",\"x\":1104.0,\"obj\":\"ex_prop_crate_art_02_bc\",\"y\":-3096.4,\"z\":-37.82}]');
INSERT INTO `wh_test` VALUES ('steam:11000013bd36b18', '[{\"slot\":\"s1_1\",\"obj\":\"ex_prop_crate_pharma_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1088.61,\"empty\":true},{\"slot\":\"s1_2\",\"obj\":\"ex_prop_crate_biohazard_sc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1088.61,\"empty\":true},{\"slot\":\"s2_1\",\"obj\":\"ex_prop_crate_gems_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1091.38,\"empty\":true},{\"slot\":\"s2_2\",\"obj\":\"ex_prop_crate_elec_sc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1091.38,\"empty\":true},{\"slot\":\"s3_1\",\"obj\":\"ex_prop_crate_narc_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1095.13,\"empty\":true},{\"slot\":\"s3_2\",\"obj\":\"ex_prop_crate_tob_sc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1095.13,\"empty\":true},{\"slot\":\"s4_1\",\"obj\":\"ex_prop_crate_wlife_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1097.51,\"empty\":true},{\"slot\":\"s4_2\",\"obj\":\"ex_prop_crate_ammo_sc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1097.51,\"empty\":true},{\"slot\":\"s5_1\",\"obj\":\"ex_prop_crate_art_02_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1101.31,\"empty\":true},{\"slot\":\"s5_2\",\"obj\":\"ex_prop_crate_art_bc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1101.31,\"empty\":true},{\"slot\":\"s6_1\",\"obj\":\"ex_prop_crate_art_sc\",\"y\":-3096.4,\"z\":-40.0,\"created\":false,\"x\":1104.0,\"empty\":true},{\"slot\":\"s6_2\",\"obj\":\"ex_prop_crate_art_02_bc\",\"y\":-3096.4,\"z\":-37.82,\"created\":false,\"x\":1104.0,\"empty\":true}]');
INSERT INTO `wh_test` VALUES ('steam:11000013c2b297a', '[{\"created\":false,\"empty\":true,\"slot\":\"s1_1\",\"obj\":\"ex_prop_crate_pharma_sc\",\"x\":1088.61,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s1_2\",\"obj\":\"ex_prop_crate_biohazard_sc\",\"x\":1088.61,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"empty\":true,\"slot\":\"s2_1\",\"obj\":\"ex_prop_crate_gems_sc\",\"x\":1091.38,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s2_2\",\"obj\":\"ex_prop_crate_elec_sc\",\"x\":1091.38,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"empty\":true,\"slot\":\"s3_1\",\"obj\":\"ex_prop_crate_narc_sc\",\"x\":1095.13,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s3_2\",\"obj\":\"ex_prop_crate_tob_sc\",\"x\":1095.13,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"empty\":true,\"slot\":\"s4_1\",\"obj\":\"ex_prop_crate_wlife_sc\",\"x\":1097.51,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s4_2\",\"obj\":\"ex_prop_crate_ammo_sc\",\"x\":1097.51,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"empty\":true,\"slot\":\"s5_1\",\"obj\":\"ex_prop_crate_art_02_sc\",\"x\":1101.31,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s5_2\",\"obj\":\"ex_prop_crate_art_bc\",\"x\":1101.31,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"empty\":true,\"slot\":\"s6_1\",\"obj\":\"ex_prop_crate_art_sc\",\"x\":1104.0,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s6_2\",\"obj\":\"ex_prop_crate_art_02_bc\",\"x\":1104.0,\"y\":-3096.4,\"z\":-37.82}]');
INSERT INTO `wh_test` VALUES ('steam:11000013efb45a5', '[{\"created\":false,\"empty\":true,\"slot\":\"s1_1\",\"obj\":\"ex_prop_crate_pharma_sc\",\"x\":1088.61,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s1_2\",\"obj\":\"ex_prop_crate_biohazard_sc\",\"x\":1088.61,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"empty\":true,\"slot\":\"s2_1\",\"obj\":\"ex_prop_crate_gems_sc\",\"x\":1091.38,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s2_2\",\"obj\":\"ex_prop_crate_elec_sc\",\"x\":1091.38,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"empty\":true,\"slot\":\"s3_1\",\"obj\":\"ex_prop_crate_narc_sc\",\"x\":1095.13,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s3_2\",\"obj\":\"ex_prop_crate_tob_sc\",\"x\":1095.13,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"empty\":true,\"slot\":\"s4_1\",\"obj\":\"ex_prop_crate_wlife_sc\",\"x\":1097.51,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s4_2\",\"obj\":\"ex_prop_crate_ammo_sc\",\"x\":1097.51,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"empty\":true,\"slot\":\"s5_1\",\"obj\":\"ex_prop_crate_art_02_sc\",\"x\":1101.31,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s5_2\",\"obj\":\"ex_prop_crate_art_bc\",\"x\":1101.31,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"empty\":true,\"slot\":\"s6_1\",\"obj\":\"ex_prop_crate_art_sc\",\"x\":1104.0,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"empty\":true,\"slot\":\"s6_2\",\"obj\":\"ex_prop_crate_art_02_bc\",\"x\":1104.0,\"y\":-3096.4,\"z\":-37.82}]');
INSERT INTO `wh_test` VALUES ('steam:11000013f295673', '[{\"z\":-40.0,\"y\":-3096.4,\"x\":1088.61,\"created\":false,\"empty\":true,\"slot\":\"s1_1\",\"obj\":\"ex_prop_crate_pharma_sc\"},{\"z\":-37.82,\"y\":-3096.4,\"x\":1088.61,\"created\":false,\"empty\":true,\"slot\":\"s1_2\",\"obj\":\"ex_prop_crate_biohazard_sc\"},{\"z\":-40.0,\"y\":-3096.4,\"x\":1091.38,\"created\":false,\"empty\":true,\"slot\":\"s2_1\",\"obj\":\"ex_prop_crate_gems_sc\"},{\"z\":-37.82,\"y\":-3096.4,\"x\":1091.38,\"created\":false,\"empty\":true,\"slot\":\"s2_2\",\"obj\":\"ex_prop_crate_elec_sc\"},{\"z\":-40.0,\"y\":-3096.4,\"x\":1095.13,\"created\":false,\"empty\":true,\"slot\":\"s3_1\",\"obj\":\"ex_prop_crate_narc_sc\"},{\"z\":-37.82,\"y\":-3096.4,\"x\":1095.13,\"created\":false,\"empty\":true,\"slot\":\"s3_2\",\"obj\":\"ex_prop_crate_tob_sc\"},{\"z\":-40.0,\"y\":-3096.4,\"x\":1097.51,\"created\":false,\"empty\":true,\"slot\":\"s4_1\",\"obj\":\"ex_prop_crate_wlife_sc\"},{\"z\":-37.82,\"y\":-3096.4,\"x\":1097.51,\"created\":false,\"empty\":true,\"slot\":\"s4_2\",\"obj\":\"ex_prop_crate_ammo_sc\"},{\"z\":-40.0,\"y\":-3096.4,\"x\":1101.31,\"created\":false,\"empty\":true,\"slot\":\"s5_1\",\"obj\":\"ex_prop_crate_art_02_sc\"},{\"z\":-37.82,\"y\":-3096.4,\"x\":1101.31,\"created\":false,\"empty\":true,\"slot\":\"s5_2\",\"obj\":\"ex_prop_crate_art_bc\"},{\"z\":-40.0,\"y\":-3096.4,\"x\":1104.0,\"created\":false,\"empty\":true,\"slot\":\"s6_1\",\"obj\":\"ex_prop_crate_art_sc\"},{\"z\":-37.82,\"y\":-3096.4,\"x\":1104.0,\"created\":false,\"empty\":true,\"slot\":\"s6_2\",\"obj\":\"ex_prop_crate_art_02_bc\"}]');
INSERT INTO `wh_test` VALUES ('steam:11000013f403e65', '[{\"created\":false,\"x\":1088.61,\"slot\":\"s1_1\",\"obj\":\"ex_prop_crate_pharma_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"x\":1088.61,\"slot\":\"s1_2\",\"obj\":\"ex_prop_crate_biohazard_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"x\":1091.38,\"slot\":\"s2_1\",\"obj\":\"ex_prop_crate_gems_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"x\":1091.38,\"slot\":\"s2_2\",\"obj\":\"ex_prop_crate_elec_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"x\":1095.13,\"slot\":\"s3_1\",\"obj\":\"ex_prop_crate_narc_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"x\":1095.13,\"slot\":\"s3_2\",\"obj\":\"ex_prop_crate_tob_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"x\":1097.51,\"slot\":\"s4_1\",\"obj\":\"ex_prop_crate_wlife_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"x\":1097.51,\"slot\":\"s4_2\",\"obj\":\"ex_prop_crate_ammo_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"x\":1101.31,\"slot\":\"s5_1\",\"obj\":\"ex_prop_crate_art_02_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"x\":1101.31,\"slot\":\"s5_2\",\"obj\":\"ex_prop_crate_art_bc\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82},{\"created\":false,\"x\":1104.0,\"slot\":\"s6_1\",\"obj\":\"ex_prop_crate_art_sc\",\"empty\":true,\"y\":-3096.4,\"z\":-40.0},{\"created\":false,\"x\":1104.0,\"slot\":\"s6_2\",\"obj\":\"ex_prop_crate_art_02_bc\",\"empty\":true,\"y\":-3096.4,\"z\":-37.82}]');

SET FOREIGN_KEY_CHECKS = 1;
