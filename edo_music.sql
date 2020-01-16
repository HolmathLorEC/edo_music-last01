/*
Navicat MySQL Data Transfer

Source Server         : T
Source Server Version : 50719
Source Host           : 127.0.0.1:3306
Source Database       : mypro

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2020-01-16 18:31:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for edo_music
-- ----------------------------
DROP TABLE IF EXISTS `edo_music`;
CREATE TABLE `edo_music` (
  `music_id` varchar(45) NOT NULL COMMENT '音乐ID',
  `album_id` int(10) unsigned NOT NULL COMMENT '专辑ID',
  `artist_id` int(10) unsigned NOT NULL COMMENT '艺术家ID',
  `music_name` varchar(200) NOT NULL COMMENT '音乐名称',
  `artist_name` varchar(200) DEFAULT NULL COMMENT '艺术家名称',
  `album_name` varchar(200) DEFAULT NULL COMMENT '专辑名称',
  `heat_order` int(10) DEFAULT '0' COMMENT '热度排序',
  `original_heat_value` varchar(15) DEFAULT NULL COMMENT '酷我原始热度',
  `quality` varchar(10) DEFAULT '000000000' COMMENT '音乐码率, 二进制位表示',
  `duration` int(10) unsigned DEFAULT NULL COMMENT '时长',
  `size` varchar(255) DEFAULT NULL COMMENT '音乐文件大小',
  `tags` varchar(255) DEFAULT NULL COMMENT '标签',
  `category` tinyint(3) unsigned DEFAULT '1' COMMENT '临时类别，1-570w, 2-400w',
  `lyric` varchar(100) DEFAULT NULL COMMENT '歌词文件',
  `type_mark` char(2) DEFAULT '00' COMMENT '用于区分11w,87w歌曲',
  `pic100` varchar(256) DEFAULT NULL,
  `pic300` varchar(256) DEFAULT NULL,
  `pic500` varchar(256) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '音乐状态，0-正常，1-下架，2-删除',
  `bitrate` smallint(5) DEFAULT '0' COMMENT '码率，默认单位为K',
  `search_order` int(10) DEFAULT '0' COMMENT '搜索排序',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned DEFAULT '0' COMMENT '更新时间',
  `is_retain` tinyint(3) DEFAULT '0' COMMENT '临时字段，标识是否保留',
  PRIMARY KEY (`music_id`),
  KEY `idx_album_id` (`album_id`,`status`),
  KEY `idx_artist_id` (`artist_id`,`status`),
  KEY `idx_music_id` (`music_id`),
  KEY `idx_category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='音乐表';

-- ----------------------------
-- Records of edo_music
-- ----------------------------
INSERT INTO `edo_music` VALUES ('1000000', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '100000', '1', '1', '1', '1', '1', '1', '2', '1', '1', '1', '1', '1');
INSERT INTO `edo_music` VALUES ('10000001', '0', '0', 'Go Go Go', 'Deckchair Orange', 'The Age Of The Peacock', '0', '0', '000000001', '152', '3.48 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504677782', '1504677782', '0');
INSERT INTO `edo_music` VALUES ('1000001', '1', '1', 'lolk', 'fds', 'sdsd', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '1', '1', '1', '1', '1');
INSERT INTO `edo_music` VALUES ('10000011', '0', '0', 'Hands', 'Deckchair Orange', 'The Age Of The Peacock', '0', '0', '000000001', '178', '4.07 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504678172', '1504678172', '0');
INSERT INTO `edo_music` VALUES ('100000112', '0', '0', 'FLASHDANCE', 'Deep Dish', '', '0', '0', '100000000', '237', '.91 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504677761', '1504677761', '0');
INSERT INTO `edo_music` VALUES ('10000012', '0', '0', 'FLASHDANCE', 'Deep Dish', '', '0', '0', '100000000', '237', '.91 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504677761', '1504677761', '0');
INSERT INTO `edo_music` VALUES ('1000003', '1', '1', 'lolk', 'fds', 'sdsd', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '1', '1', '1', '1', '1');
INSERT INTO `edo_music` VALUES ('10000031', '0', '0', 'My Love', 'Deckchair Orange', 'The Age Of The Peacock', '0', '0', '000000001', '152', '3.49 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504678405', '1504678405', '0');
INSERT INTO `edo_music` VALUES ('1000004', '1', '1', 'lolk', 'fds', 'sdsd', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '1', '1', '1', '1', '1');
INSERT INTO `edo_music` VALUES ('10000041', '0', '0', 'No Regrets', 'Deckchair Orange', 'The Age Of The Peacock', '0', '0', '000000001', '158', '3.62 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504678405', '1504678405', '0');
INSERT INTO `edo_music` VALUES ('1000005', '1', '1', 'lolk', 'fds', 'sdsd', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '1', '1', '1', '1', '1');
INSERT INTO `edo_music` VALUES ('10000051', '0', '0', 'Stay', 'Deckchair Orange', 'The Age Of The Peacock', '0', '0', '000000001', '186', '4.26 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504678405', '1504678405', '0');
INSERT INTO `edo_music` VALUES ('1000006', '1', '1', 'lolk', 'fds', 'sdsd', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '1', '1', '1', '1', '1');
INSERT INTO `edo_music` VALUES ('10000061', '0', '0', 'False Alarms', 'Holiday Parade', 'False Alarms', '0', '0', '000000001', '207', '7.89 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504678405', '1504678405', '0');
INSERT INTO `edo_music` VALUES ('1000009', '1', '1', 'lolk', 'fds', 'sdsd', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '1', '1', '1', '1', '1');
INSERT INTO `edo_music` VALUES ('10000091', '0', '0', 'Lying', 'Holiday Parade', 'False Alarms', '0', '0', '000000001', '220', '8.38 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504678405', '1504678405', '0');
INSERT INTO `edo_music` VALUES ('1000010', '1', '1', 'lolk', 'fds', 'sdsd', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '1', '1', '1', '1', '1');
INSERT INTO `edo_music` VALUES ('10000101', '0', '0', 'Off Your Shoulders', 'Holiday Parade', 'False Alarms', '0', '0', '000000001', '220', '8.41 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504678405', '1504678405', '0');
INSERT INTO `edo_music` VALUES ('1000011', '1', '1', 'lolk', 'fds', 'sdsd', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '1', '1', '1', '1', '1');
INSERT INTO `edo_music` VALUES ('10000111', '0', '0', 'She Came Around', 'Holiday Parade', 'False Alarms', '0', '0', '000000001', '274', '10.46 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504678405', '1504678405', '0');
INSERT INTO `edo_music` VALUES ('1000012', '1', '1', 'lolk', 'fds', 'sdsd', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '1', '1', '1', '1', '1');
INSERT INTO `edo_music` VALUES ('10000121', '0', '0', 'Virginia', 'Holiday Parade', 'False Alarms', '0', '0', '000000001', '180', '6.89 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504678405', '1504678405', '0');
INSERT INTO `edo_music` VALUES ('1000013', '0', '0', 'America', 'Imagine Dragons', 'It’s Time', '0', '0', '000000001', '274', '8.35 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504678405', '1504678405', '0');
INSERT INTO `edo_music` VALUES ('1000014', '0', '0', 'Amsterdam', 'Imagine Dragons', 'It’s Time', '0', '0', '000000001', '245', '7.48 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504678405', '1504678405', '0');
INSERT INTO `edo_music` VALUES ('1000015', '0', '0', 'It’s Time', 'Imagine Dragons', 'It’s Time', '0', '0', '100000101', '240', '', '', '2', '15/1000015.lrc', '11', '', '', '', '0', '0', '112', '1504678405', '1504678405', '1');
INSERT INTO `edo_music` VALUES ('1000016', '0', '0', 'Leave Me', 'Imagine Dragons', 'It’s Time', '0', '0', '000000001', '211', '6.45 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504678406', '1504678406', '0');
INSERT INTO `edo_music` VALUES ('1000017', '0', '0', 'Look How Far We‘ve Come', 'Imagine Dragons', 'It’s Time', '0', '0', '000000001', '248', '7.57 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504678406', '1504678406', '0');
INSERT INTO `edo_music` VALUES ('1000018', '0', '0', 'Pantomime', 'Imagine Dragons', 'It’s Time', '0', '0', '000000001', '303', '9.24 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504678406', '1504678406', '0');
INSERT INTO `edo_music` VALUES ('1000019', '0', '0', 'The River', 'Imagine Dragons', 'It’s Time', '0', '0', '000000001', '205', '6.26 MB', '', '2', '', '10', '', '', '', '0', '0', '0', '1504678406', '1504678406', '0');
INSERT INTO `edo_music` VALUES ('100002', '0', '0', 'OBVIOUSLY', 'McFly', '', '0', '0', '100000101', '199', '', '', '2', '', '11', '', '', '', '0', '0', '116', '1504678406', '1504678406', '1');
INSERT INTO `edo_music` VALUES ('10000222', '1', '1', 'lolk', 'fds', 'sdsd', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '1', '1', '1', '1', '1');
