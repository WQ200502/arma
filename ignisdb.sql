/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100432
 Source Host           : localhost:3306
 Source Schema         : ignisdb

 Target Server Type    : MySQL
 Target Server Version : 100432
 File Encoding         : 65001

 Date: 11/02/2024 20:10:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `psw` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adminlevel` enum('0','1','2','3') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lasttime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for adminlog
-- ----------------------------
DROP TABLE IF EXISTS `adminlog`;
CREATE TABLE `adminlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `action` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `time` timestamp(0) NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1540 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auctions
-- ----------------------------
DROP TABLE IF EXISTS `auctions`;
CREATE TABLE `auctions`  (
  `aucID` int(11) NOT NULL AUTO_INCREMENT,
  `playerID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `className` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `started` datetime(0) NOT NULL DEFAULT current_timestamp(),
  `curBidPrice` int(11) NOT NULL DEFAULT 0,
  `server` int(11) NOT NULL DEFAULT -1,
  `playerName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bidderName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bidderID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`aucID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restrictions` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `admins` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `mods` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `designers` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `developers` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `support_member` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `island_staff` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `island_vehicles` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `island_crates` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for conquest_gangs
-- ----------------------------
DROP TABLE IF EXISTS `conquest_gangs`;
CREATE TABLE `conquest_gangs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `conquest_id` int(10) UNSIGNED NOT NULL,
  `gang_id` int(11) NOT NULL,
  `points` smallint(5) UNSIGNED NOT NULL,
  `payout` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `conquest_id`(`conquest_id`) USING BTREE,
  INDEX `gang_id`(`gang_id`) USING BTREE,
  CONSTRAINT `conquest_id` FOREIGN KEY (`conquest_id`) REFERENCES `conquests` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `gang_id` FOREIGN KEY (`gang_id`) REFERENCES `gangs` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for conquest_schedule
-- ----------------------------
DROP TABLE IF EXISTS `conquest_schedule`;
CREATE TABLE `conquest_schedule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `start_time` datetime(0) NULL DEFAULT NULL,
  `server` tinyint(3) UNSIGNED NOT NULL,
  `completed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `cancelled` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for conquests
-- ----------------------------
DROP TABLE IF EXISTS `conquests`;
CREATE TABLE `conquests`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date_started` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `server` tinyint(3) UNSIGNED NOT NULL,
  `pot` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `winner_id` int(11) NOT NULL,
  `total_points` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date_started`(`date_started`) USING BTREE,
  INDEX `server`(`server`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 192 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for crates1
-- ----------------------------
DROP TABLE IF EXISTS `crates1`;
CREATE TABLE `crates1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `houseid` int(11) NULL DEFAULT 100,
  `inventory` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `owned` tinyint(4) NULL DEFAULT 0,
  `last_active` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`, `pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for crates2
-- ----------------------------
DROP TABLE IF EXISTS `crates2`;
CREATE TABLE `crates2`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `houseid` int(11) NULL DEFAULT 100,
  `inventory` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `owned` tinyint(4) NULL DEFAULT 0,
  `last_active` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`, `pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for crates5
-- ----------------------------
DROP TABLE IF EXISTS `crates5`;
CREATE TABLE `crates5`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `houseid` int(11) NULL DEFAULT 100,
  `inventory` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `owned` tinyint(4) NULL DEFAULT 0,
  `last_active` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`, `pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for crates6
-- ----------------------------
DROP TABLE IF EXISTS `crates6`;
CREATE TABLE `crates6`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `houseid` int(11) NULL DEFAULT 100,
  `inventory` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `owned` tinyint(4) NULL DEFAULT 0,
  `last_active` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`, `pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cratesdev
-- ----------------------------
DROP TABLE IF EXISTS `cratesdev`;
CREATE TABLE `cratesdev`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `houseid` int(11) NULL DEFAULT 100,
  `inventory` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `owned` tinyint(4) NULL DEFAULT 0,
  `last_active` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`, `pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for db
-- ----------------------------
DROP TABLE IF EXISTS `db`;
CREATE TABLE `db`  (
  `dbid` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sql_host` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sql_user` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sql_pass` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sql_name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`dbid`) USING BTREE,
  UNIQUE INDEX `dbid`(`dbid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for depositboxes
-- ----------------------------
DROP TABLE IF EXISTS `depositboxes`;
CREATE TABLE `depositboxes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `className` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `reason` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for donation_keys
-- ----------------------------
DROP TABLE IF EXISTS `donation_keys`;
CREATE TABLE `donation_keys`  (
  `playerid` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num_small_airdrop` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `num_large_airdrop` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`playerid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fed_results
-- ----------------------------
DROP TABLE IF EXISTS `fed_results`;
CREATE TABLE `fed_results`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `start_date` datetime(0) NULL DEFAULT NULL,
  `end_date` datetime(0) NULL DEFAULT NULL,
  `fed_type` enum('fed','bank','jail','blackwater') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `server` tinyint(3) UNSIGNED NOT NULL,
  `planter_id` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `defuser_id` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` tinyint(3) UNSIGNED NOT NULL,
  `spawn` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `result`(`result`) USING BTREE,
  INDEX `start_date`(`start_date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fed_sales
-- ----------------------------
DROP TABLE IF EXISTS `fed_sales`;
CREATE TABLE `fed_sales`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `player_id` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `type` enum('sell','claim','seize') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `item`(`item`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `playerid` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `likelyhood` int(11) NOT NULL,
  `message` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = 'Stores feedback from players' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gangbankhistory
-- ----------------------------
DROP TABLE IF EXISTS `gangbankhistory`;
CREATE TABLE `gangbankhistory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `playerid` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `gangid` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gangbldgs
-- ----------------------------
DROP TABLE IF EXISTS `gangbldgs`;
CREATE TABLE `gangbldgs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pos` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inventory` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `storage_cap` int(11) NULL DEFAULT 1000,
  `owned` tinyint(1) NULL DEFAULT 0,
  `gang_id` int(11) NOT NULL,
  `gang_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `server` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `purchase_date` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `inAH` tinyint(1) NOT NULL DEFAULT 0,
  `crate_count` tinyint(4) NOT NULL DEFAULT 2,
  `lastpayment` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextpayment` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paystatus` tinyint(1) NOT NULL DEFAULT 0,
  `oil` tinyint(1) NOT NULL DEFAULT 0,
  `physical_inventory` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `physical_storage_cap` int(11) NULL DEFAULT 300,
  PRIMARY KEY (`id`, `owner`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gangcrates
-- ----------------------------
DROP TABLE IF EXISTS `gangcrates`;
CREATE TABLE `gangcrates`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pos` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `inventory` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gang_id` int(11) NOT NULL,
  `gang_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bldg_id` int(11) NOT NULL,
  `server` tinyint(1) NOT NULL DEFAULT 0,
  `owned` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `purchase_date` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `last_user` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gangmembers
-- ----------------------------
DROP TABLE IF EXISTS `gangmembers`;
CREATE TABLE `gangmembers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gangname` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gangid` int(11) NULL DEFAULT 8,
  `rank` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name_UNIQUE`(`playerid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 701 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gangs
-- ----------------------------
DROP TABLE IF EXISTS `gangs`;
CREATE TABLE `gangs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bank` int(11) NULL DEFAULT 0,
  `active` tinyint(4) NULL DEFAULT 1,
  `kills` int(11) NOT NULL DEFAULT 0,
  `deaths` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name_UNIQUE`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30809 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gangvehicles
-- ----------------------------
DROP TABLE IF EXISTS `gangvehicles`;
CREATE TABLE `gangvehicles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `side` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `classname` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gang_id` int(11) NOT NULL,
  `alive` tinyint(1) NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `plate` int(11) NOT NULL,
  `color` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `inventory` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `insured` tinyint(1) NOT NULL DEFAULT 0,
  `modifications` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `persistentServer` tinyint(1) NOT NULL DEFAULT 0,
  `persistentPosition` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `persistentDirection` int(11) NULL DEFAULT 0,
  `inAH` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `side`(`side`) USING BTREE,
  INDEX `pid`(`gang_id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gangwars
-- ----------------------------
DROP TABLE IF EXISTS `gangwars`;
CREATE TABLE `gangwars`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instigator` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `init_gangid` int(11) NOT NULL,
  `init_gangname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `acceptor` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `acpt_gangid` int(11) NOT NULL,
  `acpt_gangname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `ikills` int(11) NOT NULL DEFAULT 0,
  `akills` int(11) NOT NULL DEFAULT 0,
  `ideaths` int(11) NOT NULL DEFAULT 0,
  `adeaths` int(11) NOT NULL DEFAULT 0,
  `date` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hex_icons
-- ----------------------------
DROP TABLE IF EXISTS `hex_icons`;
CREATE TABLE `hex_icons`  (
  `pid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ahk` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `anchor` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `angry` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `apple_alt` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `atm` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `autohover` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `backpack` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `bandit` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `banner` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `bear_claw` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `binos` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `biohazard` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `bipod` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `blast` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `blender` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `blind` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `blood` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `bomb` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `bong` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `bug` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `bullets` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `bunker` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `burn` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `bus` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `c4` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `call` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `camera` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `camera_video` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `cannabis` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `car` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `carrot` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `cat` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `cctv` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `chapel` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `chess_bishop` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `chess_king` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `chess_knight` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `chess_pawn` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `chess_queen` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `chess_rook` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `church` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `collision_lights` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `compass` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `connect` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `control_point` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `cool_circle` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `cool_ladder` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `cross` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `cuffs` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `curve` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `defense` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `dice` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `dizzy` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `dog` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `dog_leash` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `dollar_sign` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `dove` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `dragon` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `driver` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `empire` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `engine` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `exit` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `explosive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `eye` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `face` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `fighter_jet` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `fire` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `fire_extinguisher` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `flag_left` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `flag_right` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `flaps` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `fountain` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gang` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gavel` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gear` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ghost` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gps` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `sigma` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `grenade` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `grin_hearts` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `grin_stars` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `group1` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `group2` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `group3` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gunner` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hack` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hammer` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hammer_war` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hand_middle_finger` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `handgun` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `handshake` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hat_cowboy` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `head_gear` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `helicopter` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hill_dot` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `horsepower` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `igloo` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `infantry` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `jack_o_lantern` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `join` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `key` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `landing_gear` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `launcher` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `lights_on` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `lock` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `mag` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `mag2` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `mag_multiple` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `man` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `map` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `marker` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `meh` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `mic` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `missle` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `money_bill_wave` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `monkey` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `mosque` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `motorcycle` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `mountain` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `multiple_people` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `muzzle` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `narwhal` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `nature` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `no_fire` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `nvgs` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `one_person` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `open_door` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `open_triangle` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `optic` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `os` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `paper_plane` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `parachute` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `paw` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `peace` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `pedo` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `pegasus` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `periscope` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `pig` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `pills` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `pilot` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `plane` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `play` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `poo` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `poo_storm` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `poop` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `pulse` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `pulse2` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `puzzle_piece` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `puzzle_angled` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `rabbit` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `radar` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `radiation` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `radio` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `rearm` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `rebel` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `recon` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `refuel` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `reload` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `remote` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `repair` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `repair_vehicle` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `rifle` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `rip` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `rnr` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `sad_cry` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `search` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `search2` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `semi_circle` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `semi_circle_dot` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `servers` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `shades` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `sheep` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `shipWreck` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `sickle` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `signal` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `skull` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `skull_no_angry` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `snake` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `snowboarding` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `snowflake` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `snowman` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `sound` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `spray_paint` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `square_angled` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `square_dot` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `squirrel` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `star` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `star_of_david` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `star_of_life` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `star2` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `steam` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `supply_drop` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `support` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `surprise` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `swords` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `syringe` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `tank` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `target` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `teacher` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `team_switch` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `tetrahedron` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `textures` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `thief` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `timer` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `toilet` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `tools` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `traffic_cone` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `traffic_light` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `transport` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `tree` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `tree_christmas` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `tree_palm` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `tree_sharp` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `triangle` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `truck` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `truck_cargo` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `truck_cargo2` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `turtle` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `unbind` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `unicorn` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `uniform` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_secret` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `vectoring` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `vest` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `vines` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `walking` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `wanted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `watch` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `watermelon` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `wheelchair` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `wrench` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `x` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `yin_yang` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hitman
-- ----------------------------
DROP TABLE IF EXISTS `hitman`;
CREATE TABLE `hitman`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetPID` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bounty` int(11) NOT NULL DEFAULT 0,
  `targetTime` int(11) NOT NULL DEFAULT 0,
  `issuerPID` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `targetPID`(`targetPID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for houses
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pos` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `inventory` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `storageCapacity` int(11) NOT NULL DEFAULT 100,
  `owned` tinyint(1) NULL DEFAULT 0,
  `last_active` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `player_keys` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '[]',
  `inAH` int(11) NOT NULL DEFAULT 0,
  `oil` tinyint(1) NOT NULL DEFAULT 0,
  `physical_inventory` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `physicalStorageCapacity` int(11) NULL DEFAULT 100,
  `server` int(11) NULL DEFAULT 0,
  `phys_comp` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `virt_comp` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `expires_on` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`, `pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 208 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for houses1
-- ----------------------------
DROP TABLE IF EXISTS `houses1`;
CREATE TABLE `houses1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inventory` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `storageCapacity` int(11) NOT NULL DEFAULT 100,
  `owned` tinyint(4) NULL DEFAULT 0,
  `last_active` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `player_keys` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '[]',
  `inAH` int(11) NOT NULL DEFAULT 0,
  `oil` tinyint(1) NOT NULL DEFAULT 0,
  `physical_inventory` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `physicalStorageCapacity` int(11) NULL DEFAULT 100,
  PRIMARY KEY (`id`, `pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for houses4
-- ----------------------------
DROP TABLE IF EXISTS `houses4`;
CREATE TABLE `houses4`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inventory` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `storageCapacity` int(11) NOT NULL DEFAULT 100,
  `owned` tinyint(4) NULL DEFAULT 0,
  `last_active` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`, `pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for houses5
-- ----------------------------
DROP TABLE IF EXISTS `houses5`;
CREATE TABLE `houses5`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inventory` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `storageCapacity` int(11) NOT NULL DEFAULT 100,
  `owned` tinyint(4) NULL DEFAULT 0,
  `last_active` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`, `pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for houses6
-- ----------------------------
DROP TABLE IF EXISTS `houses6`;
CREATE TABLE `houses6`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inventory` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `storageCapacity` int(11) NOT NULL DEFAULT 100,
  `owned` tinyint(4) NULL DEFAULT 0,
  `last_active` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`, `pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for housesdev
-- ----------------------------
DROP TABLE IF EXISTS `housesdev`;
CREATE TABLE `housesdev`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inventory` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `storageCapacity` int(11) NOT NULL DEFAULT 100,
  `owned` tinyint(4) NULL DEFAULT 0,
  `last_active` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `player_keys` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '[]',
  PRIMARY KEY (`id`, `pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for loadouts
-- ----------------------------
DROP TABLE IF EXISTS `loadouts`;
CREATE TABLE `loadouts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `reb_loadout` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '[]',
  `cop_loadout` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '[]',
  `vigi_loadout` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '[]',
  `med_loadout` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '[]',
  `reb_inv` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '[]',
  `vigi_inv` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '[]',
  `cop_inv` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '[]',
  `med_inv` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '[]',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `playerid`(`playerid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for loadoutsnew
-- ----------------------------
DROP TABLE IF EXISTS `loadoutsnew`;
CREATE TABLE `loadoutsnew`  (
  `pid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shop` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loadout` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `physical_items` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '[]',
  `virtual_items` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '[]',
  PRIMARY KEY (`pid`, `shop`, `loadout`) USING BTREE,
  UNIQUE INDEX `Unique`(`pid`, `shop`, `loadout`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `playername` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `actionid` int(11) NOT NULL DEFAULT 0,
  `instanceid` int(11) NOT NULL DEFAULT 0,
  `time` timestamp(0) NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`uid`) USING BTREE,
  INDEX `playerid`(`playerid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mail
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `time_sent` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `pid_sender` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name_sender` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pid_recipient` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `location` smallint(5) UNSIGNED NOT NULL,
  `title` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hold_time` int(11) NOT NULL DEFAULT 6,
  `virtual_inventory` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `physical_inventory` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `garage_inventory` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `by_recipient`(`pid_recipient`, `time_sent`, `hold_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for market
-- ----------------------------
DROP TABLE IF EXISTS `market`;
CREATE TABLE `market`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `market_array` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `reset` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `fromID` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `toID` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `message` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `fromName` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `toName` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `time` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `groupTag` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 556 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mpid
-- ----------------------------
DROP TABLE IF EXISTS `mpid`;
CREATE TABLE `mpid`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`, `pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for notes
-- ----------------------------
DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes`  (
  `note_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing note_id of each user, unique index',
  `uid` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `staff_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note_text` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `note_updated` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`note_id`) USING BTREE,
  UNIQUE INDEX `note_id`(`note_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oldcrates1
-- ----------------------------
DROP TABLE IF EXISTS `oldcrates1`;
CREATE TABLE `oldcrates1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `houseid` int(11) NULL DEFAULT 100,
  `inventory` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `owned` tinyint(4) NULL DEFAULT 0,
  `last_active` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`, `pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oldhouses1
-- ----------------------------
DROP TABLE IF EXISTS `oldhouses1`;
CREATE TABLE `oldhouses1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inventory` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `storageCapacity` int(11) NOT NULL DEFAULT 100,
  `owned` tinyint(4) NULL DEFAULT 0,
  `last_active` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `player_keys` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '[]',
  `inAH` int(11) NOT NULL DEFAULT 0,
  `oil` tinyint(1) NOT NULL DEFAULT 0,
  `physical_inventory` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `physicalStorageCapacity` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for players
-- ----------------------------
DROP TABLE IF EXISTS `players`;
CREATE TABLE `players`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `playerid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cash` int(11) NOT NULL DEFAULT 0,
  `bankacc` int(11) NOT NULL DEFAULT 5000000,
  `coplevel` enum('0','1','2','3','4','5','6','7','8','9','10') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `deposit_box` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cop_licenses` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `civ_licenses` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `med_licenses` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `cop_gear` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `med_gear` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `arrested` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `aliases` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loot` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `mediclevel` enum('0','1','2','3','4','5','6','7') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `adminlevel` enum('0','1','2','3','4') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `restrictions_level` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `civcouncil_level` enum('0','1','2','3','4') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `designer_level` enum('0','1','2','3','4') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `developer_level` enum('0','1','2','3','4') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `donatorlvl` int(11) NOT NULL DEFAULT 0,
  `civ_gear` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `blacklist` tinyint(1) NOT NULL DEFAULT 0,
  `coordinates` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `player_stats` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `wanted` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `last_active` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `joined` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `last_side` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'civ',
  `last_server` int(11) NOT NULL DEFAULT 1,
  `cop_gear_tanoa` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `med_gear_tanoa` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `civ_gear_tanoa` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coordinates_tanoa` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `newslevel` enum('0','1','2','3','4','5','6') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `warpts` int(11) NOT NULL DEFAULT 0,
  `warkills` int(11) NOT NULL DEFAULT 0,
  `wardeaths` int(11) NOT NULL DEFAULT 0,
  `supportteam` enum('0','1','2','3','4','5','6') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `muted` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `vigiarrests` int(11) NOT NULL DEFAULT 0,
  `vigiarrests_stored` int(11) NOT NULL DEFAULT 0,
  `current_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realtor_cash` int(11) NOT NULL DEFAULT 0,
  `newdonor` decimal(10, 0) NOT NULL DEFAULT 0,
  `hex_icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hex_icon_redemptions` smallint(5) UNSIGNED NOT NULL DEFAULT 5,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `playerid`(`playerid`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `blacklist`(`blacklist`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2447 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for players_copy1
-- ----------------------------
DROP TABLE IF EXISTS `players_copy1`;
CREATE TABLE `players_copy1`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `playerid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cash` int(11) NOT NULL DEFAULT 0,
  `bankacc` int(11) NOT NULL DEFAULT 5000000,
  `coplevel` enum('0','1','2','3','4','5','6','7','8','9','10') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `deposit_box` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cop_licenses` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `civ_licenses` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `med_licenses` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `cop_gear` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `med_gear` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `arrested` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `aliases` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mediclevel` enum('0','1','2','3','4','5','6','7') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `adminlevel` enum('0','1','2','3','4') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `restrictions_level` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `civcouncil_level` enum('0','1','2','3','4') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `designer_level` enum('0','1','2','3','4') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `developer_level` enum('0','1','2','3','4') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `donatorlvl` int(11) NOT NULL DEFAULT 0,
  `civ_gear` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `blacklist` tinyint(1) NOT NULL DEFAULT 0,
  `coordinates` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `player_stats` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `wanted` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `last_active` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `joined` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `last_side` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'civ',
  `last_server` int(11) NOT NULL DEFAULT 1,
  `cop_gear_tanoa` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `med_gear_tanoa` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `civ_gear_tanoa` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coordinates_tanoa` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `newslevel` enum('0','1','2','3','4','5','6') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `warpts` int(11) NOT NULL DEFAULT 0,
  `warkills` int(11) NOT NULL DEFAULT 0,
  `wardeaths` int(11) NOT NULL DEFAULT 0,
  `supportteam` enum('0','1','2','3','4','5','6') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `muted` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `vigiarrests` int(11) NOT NULL DEFAULT 0,
  `vigiarrests_stored` int(11) NOT NULL DEFAULT 0,
  `current_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realtor_cash` int(11) NOT NULL DEFAULT 0,
  `newdonor` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `hex_icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hex_icon_redemptions` smallint(5) UNSIGNED NOT NULL DEFAULT 5,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `playerid`(`playerid`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `blacklist`(`blacklist`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for restart_schedule
-- ----------------------------
DROP TABLE IF EXISTS `restart_schedule`;
CREATE TABLE `restart_schedule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server` int(11) NOT NULL,
  `hour` int(11) NOT NULL,
  `type` enum('hard','soft') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `skip` enum('true','false') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for serverconfigs
-- ----------------------------
DROP TABLE IF EXISTS `serverconfigs`;
CREATE TABLE `serverconfigs`  (
  `server` int(11) NOT NULL AUTO_INCREMENT,
  `donation_goal_one` tinyint(1) NULL DEFAULT 1,
  `donation_goal_one_date` date NULL DEFAULT NULL,
  `donation_goal_two` tinyint(1) NULL DEFAULT 0,
  `donation_goal_two_date` date NULL DEFAULT NULL,
  `vehicle_discount_all` float NULL DEFAULT 1,
  `vehicle_discount_all_date` date NULL DEFAULT NULL,
  `vehicle_discount_legal` float NULL DEFAULT 1,
  `vehicle_discount_legal_date` date NULL DEFAULT NULL,
  `vehicle_discount_illegal` float NULL DEFAULT 1,
  `vehicle_discount_illegal_date` date NULL DEFAULT NULL,
  `civrep_active` tinyint(1) NULL DEFAULT 0,
  `civrep_end` date NULL DEFAULT NULL,
  `house_discount` float NULL DEFAULT 1,
  `house_discount_date` date NULL DEFAULT NULL,
  `vehicle_special_one` tinyint(1) NULL DEFAULT 0,
  `vehicle_special_one_date` date NULL DEFAULT NULL,
  `vehicle_special_two` tinyint(1) NULL DEFAULT 0,
  `vehicle_special_two_date` date NULL DEFAULT NULL,
  `item_sell_all` float NULL DEFAULT 1,
  `item_sell_all_date` date NULL DEFAULT NULL,
  `item_sell_illegal` float NULL DEFAULT 1,
  `item_sell_illegal_date` date NULL DEFAULT NULL,
  `item_sell_legal` float NULL DEFAULT 1,
  `item_sell_legal_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`server`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for servers
-- ----------------------------
DROP TABLE IF EXISTS `servers`;
CREATE TABLE `servers`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dbid` int(11) NOT NULL,
  `type` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `use_sq` int(11) NOT NULL,
  `sq_port` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sq_ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `rcon_pass` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE,
  UNIQUE INDEX `sid`(`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for stats
-- ----------------------------
DROP TABLE IF EXISTS `stats`;
CREATE TABLE `stats`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `vigiarrests` int(11) NOT NULL DEFAULT 0,
  `marijuana` int(11) NOT NULL DEFAULT 0,
  `heroinp` int(11) NOT NULL DEFAULT 0,
  `cocainep` int(11) NOT NULL DEFAULT 0,
  `crystalmeth` int(11) NOT NULL DEFAULT 0,
  `mmushroom` int(11) NOT NULL DEFAULT 0,
  `frogp` int(11) NOT NULL DEFAULT 0,
  `oilp` int(11) NOT NULL DEFAULT 0,
  `ironr` int(11) NOT NULL DEFAULT 0,
  `diamondc` int(11) NOT NULL DEFAULT 0,
  `glass` int(11) NOT NULL DEFAULT 0,
  `cement` int(11) NOT NULL DEFAULT 0,
  `platinumr` int(11) NOT NULL DEFAULT 0,
  `moonshine` int(11) NOT NULL DEFAULT 0,
  `fishnum` int(11) NOT NULL DEFAULT 0,
  `saltr` int(11) NOT NULL DEFAULT 0,
  `silverr` int(11) NOT NULL DEFAULT 0,
  `copperr` int(11) NOT NULL DEFAULT 0,
  `goldbar` int(11) NOT NULL DEFAULT 0,
  `turtle` int(11) NOT NULL DEFAULT 0,
  `redgull` int(11) NOT NULL DEFAULT 0,
  `lockpick_fail` int(11) NOT NULL DEFAULT 0,
  `blastfed` int(11) NOT NULL DEFAULT 0,
  `epipen` int(11) NOT NULL DEFAULT 0,
  `salvage` int(11) NOT NULL DEFAULT 0,
  `salvagem` int(11) NOT NULL DEFAULT 0,
  `speedbomb` int(11) NOT NULL DEFAULT 0,
  `lockpick_suc` int(11) NOT NULL DEFAULT 0,
  `revives` int(11) NOT NULL DEFAULT 0,
  `contraband` int(11) NOT NULL DEFAULT 0,
  `cop_money` int(11) NOT NULL DEFAULT 0,
  `bloodbag` int(11) NOT NULL DEFAULT 0,
  `ticketspaid` int(11) NOT NULL DEFAULT 0,
  `ticketvals` int(11) NOT NULL DEFAULT 0,
  `defuses` int(11) NOT NULL DEFAULT 0,
  `kidneys` int(11) NOT NULL DEFAULT 0,
  `coffee` int(11) NOT NULL DEFAULT 0,
  `fishmon` int(11) NOT NULL DEFAULT 0,
  `blastjail` int(11) NOT NULL DEFAULT 0,
  `blastbw` int(11) NOT NULL DEFAULT 0,
  `blastbank` int(11) NOT NULL DEFAULT 0,
  `civ_kills` int(11) NOT NULL DEFAULT 0,
  `cop_kills` int(11) NOT NULL DEFAULT 0,
  `robberies` int(11) NOT NULL DEFAULT 0,
  `prison_time` int(11) NOT NULL DEFAULT 0,
  `sui_vest` int(11) NOT NULL DEFAULT 0,
  `plane_kills` int(11) NOT NULL DEFAULT 0,
  `AA_hacked` int(11) NOT NULL DEFAULT 0,
  `cop_lethals` int(11) NOT NULL DEFAULT 0,
  `pardons` int(11) NOT NULL DEFAULT 0,
  `cop_arrests` int(11) NOT NULL DEFAULT 0,
  `tickets_issued_paid` int(11) NOT NULL DEFAULT 0,
  `donuts` int(11) NOT NULL DEFAULT 0,
  `drugs_seized_currency` int(11) NOT NULL DEFAULT 0,
  `gokart_time` decimal(5, 3) NOT NULL DEFAULT -1.000,
  `med_toolkits` int(11) NOT NULL DEFAULT 0,
  `AA_repaired` int(11) NOT NULL DEFAULT 0,
  `med_impounds` int(11) NOT NULL DEFAULT 0,
  `titan_hits` int(11) NOT NULL DEFAULT 0,
  `hits_claimed` int(11) NOT NULL DEFAULT 0,
  `hits_placed` int(11) NOT NULL DEFAULT 0,
  `bets_won` int(11) NOT NULL DEFAULT 0,
  `bets_lost` int(11) NOT NULL DEFAULT 0,
  `bets_won_value` int(11) NOT NULL DEFAULT 0,
  `bets_lost_value` int(11) NOT NULL DEFAULT 0,
  `vehicles_chopped` int(11) NOT NULL DEFAULT 0,
  `cops_robbed` int(11) NOT NULL DEFAULT 0,
  `jail_escapes` int(11) NOT NULL DEFAULT 0,
  `money_spent` int(11) NOT NULL DEFAULT 0,
  `events_won` int(11) NOT NULL DEFAULT 0,
  `lethal_injections` int(11) NOT NULL DEFAULT 0,
  `kills_1km` int(11) NOT NULL DEFAULT 0,
  `conq_kills` int(11) NOT NULL DEFAULT 0,
  `conq_deaths` int(11) NOT NULL DEFAULT 0,
  `conq_captures` int(11) NOT NULL DEFAULT 0,
  `casino_winnings` int(11) NOT NULL DEFAULT 0,
  `casino_losses` int(11) NOT NULL DEFAULT 0,
  `casino_uses` int(11) NOT NULL DEFAULT 0,
  `pharmas_sold` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `playerid`(`playerid`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for strife_loadouts
-- ----------------------------
DROP TABLE IF EXISTS `strife_loadouts`;
CREATE TABLE `strife_loadouts`  (
  `pid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `physical_items` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '[]',
  `shop` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loadout` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`loadout`, `shop`, `pid`) USING BTREE,
  UNIQUE INDEX `Unique`(`pid`, `loadout`, `shop`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for strife_players
-- ----------------------------
DROP TABLE IF EXISTS `strife_players`;
CREATE TABLE `strife_players`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kills` int(11) NOT NULL DEFAULT 0,
  `assists` int(11) NOT NULL DEFAULT 0,
  `deaths` int(11) NOT NULL DEFAULT 0,
  `captures` int(11) NOT NULL DEFAULT 0,
  `money_earned` int(11) NOT NULL DEFAULT 0,
  `money_spent` int(11) NOT NULL DEFAULT 0,
  `wins` int(11) NOT NULL DEFAULT 0,
  `losses` int(11) NOT NULL DEFAULT 0,
  `loadout1` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '[]',
  `loadout2` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '[]',
  `loadout3` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '[]',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `playerid`(`playerid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for strife_server_stats
-- ----------------------------
DROP TABLE IF EXISTS `strife_server_stats`;
CREATE TABLE `strife_server_stats`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `winning_team` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blufor_kills` int(11) NOT NULL DEFAULT 0,
  `opfor_kills` int(11) NOT NULL DEFAULT 0,
  `blufor_deaths` int(11) NOT NULL DEFAULT 0,
  `opfor_deaths` int(11) NOT NULL DEFAULT 0,
  `final_points_blufor` int(11) NOT NULL DEFAULT 0,
  `final_points_opfor` int(11) NOT NULL DEFAULT 0,
  `length_match_secs` int(11) NOT NULL DEFAULT 0,
  `total_veh_pulled` int(11) NOT NULL DEFAULT 0,
  `player_most_kills` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `player_most_deaths` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for territories
-- ----------------------------
DROP TABLE IF EXISTS `territories`;
CREATE TABLE `territories`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server` int(11) NULL DEFAULT NULL,
  `territory_name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gang_id` int(11) NULL DEFAULT NULL,
  `gang_name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `capture_progress` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index',
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `playerid` varchar(17) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_level` int(11) NOT NULL DEFAULT 1,
  `permissions` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `items` int(11) NULL DEFAULT NULL,
  `twoFactor` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `backup` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = 'user data' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vehicles
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `side` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `classname` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pid` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alive` tinyint(1) NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `plate` int(11) NOT NULL,
  `color` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `inventory` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `insured` tinyint(1) NOT NULL DEFAULT 0,
  `modifications` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `persistentServer` tinyint(1) NOT NULL DEFAULT 0,
  `persistentPosition` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `persistentDirection` int(11) NULL DEFAULT 0,
  `inAH` int(11) NOT NULL DEFAULT 0,
  `customName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `side`(`side`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8305 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for votes
-- ----------------------------
DROP TABLE IF EXISTS `votes`;
CREATE TABLE `votes`  (
  `voteID` int(11) NOT NULL AUTO_INCREMENT,
  `voterID` char(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `candidateID` char(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `voteDate` timestamp(0) NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`voteID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Procedure structure for deleteContracts
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteContracts`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteContracts`()
BEGIN
	DELETE FROM `hitman` WHERE `active` = 0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for deleteDeadVehicles
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteDeadVehicles`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteDeadVehicles`()
BEGIN
	DELETE FROM `vehicles` WHERE `alive` = 0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for deleteOldGangs
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldGangs`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOldGangs`()
BEGIN
	DELETE FROM `gangs` WHERE `active` = 0;
	DELETE FROM `gangmembers` WHERE `gangid` = -1 AND `rank` = -1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for deleteOldHouses1
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldHouses1`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOldHouses1`()
BEGIN
	DELETE FROM `houses` WHERE `server`=1 AND DATEDIFF(NOW(),`last_active`) > 45;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for deleteOldHouses2
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldHouses2`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOldHouses2`()
BEGIN
	DELETE FROM `houses` WHERE `server`=2 AND DATEDIFF(NOW(),`last_active`) > 45;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for deleteOldHouses3
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldHouses3`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOldHouses3`()
BEGIN
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for gangBuildingCleanup
-- ----------------------------
DROP PROCEDURE IF EXISTS `gangBuildingCleanup`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `gangBuildingCleanup`()
BEGIN
	UPDATE `gangbldgs` SET `owned` = 0 WHERE DATEDIFF(`nextpayment`, NOW()) < 0 AND `paystatus` = 0 AND `server` != 3;
	UPDATE `gangbldgs` SET `paystatus` = `paystatus`-1, `nextpayment` = DATE_ADD(NOW(),INTERVAL 31 DAY) WHERE DATEDIFF(`nextpayment`, NOW()) < 0 AND `paystatus` > 0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for giveCash
-- ----------------------------
DROP PROCEDURE IF EXISTS `giveCash`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `giveCash`()
BEGIN
	UPDATE `players` SET `bankacc` = 24699 WHERE `bankacc` < 10000 AND `cash` < 5000;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for houseCleanup1
-- ----------------------------
DROP PROCEDURE IF EXISTS `houseCleanup1`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `houseCleanup1`()
BEGIN
	DELETE FROM `houses` WHERE `server`=1 AND `owned` = 0;
	DELETE FROM `gangbldgs` WHERE `owned` = 0 AND `server` = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for houseCleanup2
-- ----------------------------
DROP PROCEDURE IF EXISTS `houseCleanup2`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `houseCleanup2`()
BEGIN
	DELETE FROM `houses` WHERE `server`=2 AND `owned` = 0;
	DELETE FROM `gangbldgs` WHERE `owned` = 0 AND `server` = 2;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for houseCleanup3
-- ----------------------------
DROP PROCEDURE IF EXISTS `houseCleanup3`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `houseCleanup3`()
BEGIN
	DELETE FROM `houses` WHERE `server`=3 AND `owned` = 0;
	DELETE FROM `gangbldgs` WHERE `owned` = 0 AND `server` = 3;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertStatM
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertStatM`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertStatM`(IN `p_playerid` VARCHAR(50),
	IN `p_marijuana` INT,
	IN `p_heroinp` INT,
	IN `p_cocainep` INT,
	IN `p_crystalmeth` INT,
	IN `p_mmushroom` INT,
	IN `p_frogp` INT,
	IN `p_oilp` INT,
	IN `p_ironr` INT,
	IN `p_diamondc` INT,
	IN `p_glass` INT,
	IN `p_cement` INT,
	IN `p_platinumr` INT,
	IN `p_moonshine` INT,
	IN `p_fishnum` INT,
	IN `p_saltr` INT,
	IN `p_silverr` INT,
	IN `p_copperr` INT,
	IN `p_goldbar` INT,
	IN `p_turtle` INT,
	IN `p_redgull` INT,
	IN `p_coffee` INT,
	IN `p_lockpickfail` INT,
	IN `p_lockpicksuc` INT,
	IN `p_blastfed` INT,
	IN `p_epipen` INT,
	IN `p_speedbomb` INT,
	IN `p_salvagenum` INT,
	IN `p_salvagemon` INT,
	IN `p_revive` INT,
	IN `p_contraband` INT,
	IN `p_copmoney` INT,
	IN `p_bloodbag` INT,
	IN `p_ticketpaid` INT,
	IN `p_ticketval` INT,
	IN `p_defuses` INT,
	IN `p_kidney` INT,
	IN `p_fishmon` INT,
	IN `p_blastbw` INT,
	IN `p_blastjail` INT,
	IN `p_vigiarrest` INT,
	IN `p_civ_kills` INT,
	IN `p_cop_kills` INT,
	IN `p_robberies` INT,
	IN `p_prison_time` INT,
	IN `p_sui_vest` INT,
	IN `p_plane_kills` INT,
	IN `p_AA_hacked` INT,
	IN `p_cop_lethals` INT,
	IN `p_pardons` INT,
	IN `p_cop_arrests` INT,
	IN `p_tickets_issued_paid` INT,
	IN `p_donuts` INT,
	IN `p_drugs_seized_currency` INT,
	IN `p_gokart_time` DECIMAL(5,3),
	IN `p_med_toolkits` INT,
	IN `p_AA_repaired` INT,
	IN `p_med_impounds` INT,
	IN `p_titan_hits` INT,
	IN `p_hits_placed` INT,
	IN `p_hits_claimed` INT,
	IN `p_bets_won` INT,
	IN `p_bets_lost` INT,
	IN `p_bets_won_value` INT,
	IN `p_bets_lost_value` INT,
	IN `p_vehicles_chopped` INT,
	IN `p_cops_robbed` INT,
	IN `p_jail_escapes` INT,
	IN `p_money_spent` INT,
	IN `p_events_won` INT,
	IN `p_blast_bank` INT,
	IN `p_kills_1km` INT,
	IN `p_conq_kills` INT,
	IN `p_conq_deaths` INT,
	IN `p_conq_captures` INT,
	IN `p_casino_winnings` INT,
	IN `p_casino_losses` INT,
	IN `p_casino_uses` INT,
	IN `p_lethal_injections` INT,
	IN `p_pharmas_sold` INT)
BEGIN
	INSERT IGNORE INTO `stats` (`playerid`) VALUES(p_playerid);
	UPDATE `stats`
	SET 
		`marijuana`=`marijuana` + p_marijuana,
		`heroinp`=`heroinp` + p_heroinp,
		`cocainep`=`cocainep` + p_cocainep,
		`crystalmeth`=`crystalmeth` + p_crystalmeth,
		`mmushroom`=`mmushroom` + p_mmushroom,
		`frogp`=`frogp` + p_frogp,
		`oilp`=`oilp` + p_oilp,
		`ironr`=`ironr` + p_ironr,
		`diamondc`=`diamondc` + p_diamondc,
		`glass`=`glass` + p_glass,
		`cement`=`cement` + p_cement,
		`platinumr`=`platinumr` + p_platinumr,
		`moonshine`=`moonshine` + p_moonshine,
		`saltr`=`saltr` + p_saltr,
		`silverr`=`silverr` + p_silverr,
		`copperr`=`copperr` + p_copperr,
		`goldbar`=`goldbar` + p_goldbar,
		`turtle`=`turtle` + p_turtle,
		`redgull`=`redgull` + p_redgull,
		`coffee`=`coffee` + p_coffee,
		`lockpick_fail`=`lockpick_fail` + p_lockpickfail,
		`lockpick_suc`=`lockpick_suc` + p_lockpicksuc,
		`blastfed`=`blastfed` + p_blastfed,
		`epipen`=`epipen` + p_epipen,
		`speedbomb`=`speedbomb` + p_speedbomb,
		`salvage`=`salvage` + p_salvagenum,
		`salvagem`=`salvagem` + p_salvagemon,
		`revives`=`revives` + p_revive,
		`contraband`=`contraband` + p_contraband,
		`cop_money`=`cop_money` + p_copmoney,
		`bloodbag`=`bloodbag` + p_bloodbag,
		`ticketspaid`=`ticketspaid` + p_ticketpaid,
		`ticketvals`=`ticketvals` + p_ticketval,
		`defuses`=`defuses` + p_defuses,
		`kidneys`=`kidneys` + p_kidney,
		`fishmon`=`fishmon` + p_fishmon,
		`blastbw`=`blastbw` + p_blastbw,
		`blastjail`=`blastjail` + p_blastjail,
		`vigiarrests`=`vigiarrests` + p_vigiarrest,
		`civ_kills`=`civ_kills` + p_civ_kills,
		`cop_kills`=`cop_kills` + p_cop_kills,
		`robberies`=`robberies` + p_robberies,
		`prison_time`=`prison_time` + p_prison_time,
		`sui_vest`=`sui_vest` + p_sui_vest,
		`plane_kills`=`plane_kills` + p_plane_kills,
		`AA_hacked`=`AA_hacked` + p_AA_hacked,
		`cop_lethals`=`cop_lethals` + p_cop_lethals,
		`pardons`=`pardons` + p_pardons,
		`cop_arrests`=`cop_arrests` + p_cop_arrests,
		`tickets_issued_paid`=`tickets_issued_paid` + p_tickets_issued_paid,
		`donuts`=`donuts` + p_donuts,
		`drugs_seized_currency`=`drugs_seized_currency` + p_drugs_seized_currency,
		`gokart_time`=p_gokart_time,
		`med_toolkits`=`med_toolkits` + p_med_toolkits,
		`AA_repaired`=`AA_repaired` + p_AA_repaired,
		`med_impounds`=`med_impounds` + p_med_impounds,
		`titan_hits`=`titan_hits` + p_titan_hits,
		`hits_placed`=`hits_placed` + p_hits_placed,
		`hits_claimed`=`hits_claimed` + p_hits_claimed,
		`bets_won`=`bets_won` + p_bets_won,
		`bets_lost`=`bets_lost` + p_bets_lost,
		`bets_won_value`=`bets_won_value` + p_bets_won_value,
		`bets_lost_value`=`bets_lost_value` + p_bets_lost_value,
		`vehicles_chopped`=`vehicles_chopped` + p_vehicles_chopped,
		`cops_robbed`=`cops_robbed` + p_cops_robbed,
		`jail_escapes`=`jail_escapes` + p_jail_escapes,
		`money_spent`=`money_spent` + p_money_spent,
		`events_won`=`events_won` + p_events_won,
		`blastbank`=`blastbank` + p_blast_bank,
		`kills_1km`=`kills_1km`+p_kills_1km,
		`conq_kills`=`conq_kills`+p_conq_kills,
		`conq_deaths`=`conq_deaths`+p_conq_deaths,
		`conq_captures`=`conq_captures`+p_conq_captures,
		`casino_winnings`=`casino_winnings`+p_casino_winnings,
		`casino_losses`=`casino_losses`+p_casino_losses,
		`casino_uses`=`casino_uses`+p_casino_uses,
		`lethal_injections`=`lethal_injections`+p_lethal_injections,
		`p_pharmas_sold`=`pharmas_sold`+`p_pharmas_sold`		
	WHERE `playerid`=p_playerid;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for itworkslol
-- ----------------------------
DROP PROCEDURE IF EXISTS `itworkslol`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `itworkslol`()
BEGIN
	update players set warpts=warpts+10 where playerid=76561198064919358;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for resetLifeVehicles1
-- ----------------------------
DROP PROCEDURE IF EXISTS `resetLifeVehicles1`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `resetLifeVehicles1`()
BEGIN
	UPDATE `vehicles` SET `active` = 0 WHERE `active` = 1 AND `alive` = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for resetLifeVehicles2
-- ----------------------------
DROP PROCEDURE IF EXISTS `resetLifeVehicles2`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `resetLifeVehicles2`()
BEGIN
	UPDATE `vehicles` SET `active` = 0 WHERE `active` = 2 AND `alive` = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for resetLifeVehicles3
-- ----------------------------
DROP PROCEDURE IF EXISTS `resetLifeVehicles3`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `resetLifeVehicles3`()
BEGIN
	UPDATE `vehicles` SET `active` = 0 WHERE `active` = 3 AND `alive` = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for selectMax
-- ----------------------------
DROP PROCEDURE IF EXISTS `selectMax`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `selectMax`()
BEGIN
	SELECT playerid FROM players WHERE warpts=(select MAX(warpts) FROM players) LIMIT 1;
	SELECT playerid FROM players WHERE bankacc=(select MAX(bankacc) FROM players) LIMIT 1;
	SELECT playerid FROM stats WHERE cop_kills=(select MAX(cop_kills) FROM stats) LIMIT 1;
	SELECT playerid FROM stats WHERE vigiarrests=(select MAX(vigiarrests) FROM stats) LIMIT 1;
	SELECT playerid FROM stats WHERE gokart_time=(select MIN(gokart_time) FROM stats WHERE gokart_time>0) LIMIT 1;
	SELECT CAST(MIN(gokart_time) as CHAR) FROM stats WHERE gokart_time>0;
	SELECT playerid FROM players WHERE warkills=(select MAX(warkills) FROM players) LIMIT 1;
	SELECT playerid FROM stats WHERE cop_lethals=(select MAX(cop_lethals) FROM stats) LIMIT 1;
	SELECT playerid FROM stats WHERE casino_winnings=(select MAX(casino_winnings) FROM stats) LIMIT 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for setWarStats
-- ----------------------------
DROP PROCEDURE IF EXISTS `setWarStats`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setWarStats`(IN `killerUID` VARCHAR(50),
	IN `victimUID` VARCHAR(50)
,
	IN `killerGID` INT,
	IN `victimGID` INT,
	IN `killerFinal` INT,
	IN `victimFInal` INT



,
	IN `initGang` TINYINT)
BEGIN
	UPDATE `players` SET `warpts` = `warpts` + killerFinal, `warkills` = `warkills` + 1 WHERE `playerid` = killerUID;
	UPDATE `players` SET `warpts` = `warpts` - victimFinal, `wardeaths` = `wardeaths` + 1 WHERE `playerid` = victimUID AND `warpts` >= victimFinal;
	
	UPDATE `gangwars` SET `ikills` = `ikills` + 1, `adeaths` = `adeaths` + 1 WHERE `init_gangid` = killerGID AND `acpt_gangid` = victimGID AND `active` = 1 AND initGang = 1;
	UPDATE `gangwars` SET `akills` = `akills` + 1, `ideaths` = `ideaths` + 1 WHERE `acpt_gangid` = killerGID AND `init_gangid` = victimGID AND `active` = 1 AND initGang = 0;

	UPDATE `gangs` SET `kills` = `kills` + 1 WHERE `id` = killerGID;
	UPDATE `gangs` SET `deaths` = `deaths` + 1 WHERE `id` = victimGID;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for setZoneKill
-- ----------------------------
DROP PROCEDURE IF EXISTS `setZoneKill`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setZoneKill`(IN `killerUID` VARCHAR(50),
	IN `victimUID` VARCHAR(50))
    SQL SECURITY INVOKER
BEGIN
    UPDATE `players` SET `warpts` = `warpts` + 1 WHERE `playerid`=killerUID;
    UPDATE `players` SET `warpts` = `warpts` - 1 WHERE `playerid`=victimUID AND `warpts` >= 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for updateMemberNames
-- ----------------------------
DROP PROCEDURE IF EXISTS `updateMemberNames`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateMemberNames`()
BEGIN
	UPDATE `gangmembers` INNER JOIN `players` ON gangmembers.playerid = players.playerid SET gangmembers.name = players.name;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
