/*
 Navicat Premium Data Transfer

 Source Server         : Home
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : biscuits_demo

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 03/12/2020 09:21:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_actor
-- ----------------------------
DROP TABLE IF EXISTS `t_actor`;
CREATE TABLE `t_actor`  (
  `UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一标识',
  `SERVICE_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '服务标识',
  `BUNDLE_ID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模块标识',
  `ACTOR_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '参与者标识',
  `NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '参与者名称',
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参与者描述',
  `SORT` int(11) NOT NULL DEFAULT 10 COMMENT '排序码',
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_app_message
-- ----------------------------
DROP TABLE IF EXISTS `t_app_message`;
CREATE TABLE `t_app_message`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `SENDER` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `SENDER_NAME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `RECEIVER` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `RECEIVER_NAME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `TITLE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `CONTENT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `UNREAD` tinyint(1) NULL DEFAULT 1,
  `SEND_TIME` datetime(0) NULL DEFAULT NULL,
  `READ_TIME` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'APP消息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_app_message
-- ----------------------------
INSERT INTO `t_app_message` VALUES ('40280e816fa68c8e016fa6a6954a0009', 'BB', '白波', 'admin', 'admin', '普通消息测试', '三月七日，沙湖道中遇雨。雨具先去，同行皆狼狈，余独不觉。已而遂晴，故作此词。\n\n莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。\n\n料峭春风吹酒醒，微冷，山头斜照却相迎。回首向来萧瑟处，归去，也无风雨也无晴。', 0, '2020-01-15 00:42:12', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa68c8e016fa6aad630000a', 'BB', '白波', 'admin', 'admin', '普通消息测试', '细雨斜风作晓寒，淡烟疏柳媚晴滩。入淮清洛渐漫漫。雪沫乳花浮午盏，蓼茸蒿笋试春盘。人间有味是清欢。', 1, '2020-01-15 00:46:51', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6adb0530001', 'BB', '白波', 'admin', 'admin', '普通消息测试', '人生到处知何似，应似飞鸿踏雪泥：\n泥上偶然留指爪，鸿飞那复计东西。\n老僧已死成新塔，坏壁无由见旧题。\n往日崎岖还记否，路长人困蹇驴嘶。', 0, '2020-01-15 00:49:58', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6b6e3f00004', 'BB', '白波', 'admin', 'admin', '普通消息测试', '人生到处知何似，应似飞鸿踏雪泥：\n泥上偶然留指爪，鸿飞那复计东西。\n老僧已死成新塔，坏壁无由见旧题。\n往日崎岖还记否，路长人困蹇驴嘶。', 1, '2020-01-15 01:00:01', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6b8fc490005', 'BB', '白波', 'admin', 'admin', '普通消息测试', '夜饮东坡醒复醉，归来仿佛三更。家童鼻息已雷鸣。敲门都不应，倚杖听江声。\n\n长恨此身非我有，何时忘却营营。夜阑风静縠纹平。小舟从此逝，江海寄余生。', 1, '2020-01-15 01:02:18', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6d575440006', 'BB', '白波', 'admin', 'admin', '普通消息测试', '日，过中秋而去，作此曲以别余。以其语过悲，乃为和之。其意以不早退为戒，以退而相从之乐为慰云耳安石在东海，从事鬓惊秋。中年亲友难别，丝竹缓离愁。一旦功成名遂，准拟东还海道，扶病入西州。雅志困轩冕，遗恨寄沧洲。\n\n岁云暮，须早计，要褐裘。故乡归去千里，佳处辄迟留。我醉歌时君和，醉倒须君扶我，惟酒可忘忧。一任刘玄德，相对卧高楼。', 1, '2020-01-15 01:33:25', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6d818550007', 'BB', '白波', 'admin', 'admin', '普通消息测试', '天涯流落思无穷。既相逢。却匆匆。摧手佳人，和泪折残红。为问东风余几许，春纵在，与谁同。\n隋堤三月水溶溶。背归鸿。去吴中。回首彭城，清泗与淮通。寄我相思千点泪，流不到，楚江东。', 0, '2020-01-15 01:36:17', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6e6004e0009', 'BB', '白波', 'admin', 'admin', '普通消息测试', '天涯流落思无穷。既相逢。却匆匆。摧手佳人，和泪折残红。为问东风余几许，春纵在，与谁同。\n隋堤三月水溶溶。背归鸿。去吴中。回首彭城，清泗与淮通。寄我相思千点泪，流不到，楚江东。', 1, '2020-01-15 01:51:29', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6e64f67000a', 'BB', '白波', 'admin', 'admin', '普通消息测试', '天涯流落思无穷。既相逢。却匆匆。摧手佳人，和泪折残红。为问东风余几许，春纵在，与谁同。\n隋堤三月水溶溶。背归鸿。去吴中。回首彭城，清泗与淮通。寄我相思千点泪，流不到，楚江东。', 1, '2020-01-15 01:51:49', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6fabb0f000b', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 0, '2020-01-15 02:14:07', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6fb68ae000c', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 1, '2020-01-15 02:14:52', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6fb6d0d000d', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 1, '2020-01-15 02:14:53', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6fb71df000e', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 1, '2020-01-15 02:14:54', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6fb7d67000f', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 0, '2020-01-15 02:14:57', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6fb82360010', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 0, '2020-01-15 02:14:58', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816facefd1016fad0b8d230000', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 1, '2020-01-16 06:30:13', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fad2b2c016fad48b0940000', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 0, '2020-01-16 07:37:00', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fad2b2c016fad6474aa0001', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 1, '2020-01-16 08:07:19', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fad2b2c016fad648dea0002', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 0, '2020-01-16 08:07:26', NULL);

-- ----------------------------
-- Table structure for t_app_version
-- ----------------------------
DROP TABLE IF EXISTS `t_app_version`;
CREATE TABLE `t_app_version`  (
  `UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '数据编号',
  `VERSION` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '版本号',
  `URL` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '下载地址',
  `PATH` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'apk保存路径',
  `MANDATORY` tinyint(1) NULL DEFAULT NULL COMMENT '是否强制升级',
  `DESCRIPTION` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '升级描述',
  `APP_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app名称',
  `PUBLISH_TIME` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'apk版本管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_auth_mapper
-- ----------------------------
DROP TABLE IF EXISTS `t_auth_mapper`;
CREATE TABLE `t_auth_mapper`  (
  `uuid` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `server_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `auth_uuid` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `mapper_uuid` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE,
  UNIQUE INDEX `auth_mapper_key`(`auth_uuid`, `mapper_uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_auth_mapper
-- ----------------------------
INSERT INTO `t_auth_mapper` VALUES ('1011010', 'DEMO', '1011020', '1011034');
INSERT INTO `t_auth_mapper` VALUES ('1011011', 'DEMO', '1011020', '1011035');
INSERT INTO `t_auth_mapper` VALUES ('1011012', 'DEMO', '1011020', '1011036');
INSERT INTO `t_auth_mapper` VALUES ('1011013', 'DEMO', '1011021', '1011037');
INSERT INTO `t_auth_mapper` VALUES ('1011014', 'DEMO', '1011020', '1011038');

-- ----------------------------
-- Table structure for t_authority
-- ----------------------------
DROP TABLE IF EXISTS `t_authority`;
CREATE TABLE `t_authority`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `SERVICE_ID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `DESCRIPTION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `BUNDLE_ID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`UUID`) USING BTREE,
  UNIQUE INDEX `key_server_id`(`ID`, `SERVICE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_authority
-- ----------------------------
INSERT INTO `t_authority` VALUES ('000210030050120201203000001', 'TEMPLATE', 'order_read', '查看', '订单查询权限', NULL);
INSERT INTO `t_authority` VALUES ('000210030050120201203000002', 'TEMPLATE', 'order_manage', '管理', '订单管理权限', 'station_setting');

-- ----------------------------
-- Table structure for t_bill_type
-- ----------------------------
DROP TABLE IF EXISTS `t_bill_type`;
CREATE TABLE `t_bill_type`  (
  `UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SERVICE_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`UUID`) USING BTREE,
  UNIQUE INDEX `code_service`(`CODE`, `SERVICE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_bundle
-- ----------------------------
DROP TABLE IF EXISTS `t_bundle`;
CREATE TABLE `t_bundle`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `BUNDLE_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `BUNDLE_NAME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `SERVICE_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '服务ID',
  `WITH_AUTH` int(1) NULL DEFAULT NULL COMMENT '访问该bundle是否需要权限',
  `SORT` double(11, 2) NULL DEFAULT 0.00 COMMENT '排序码',
  `TARGET_CLIENT` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户端',
  `IMG` longblob NULL COMMENT '图标',
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_bundle
-- ----------------------------
INSERT INTO `t_bundle` VALUES ('000210010050120201203000001', 'station_setting', '订单管理', 'TEMPLATE', 1, 0.00, 'BROWSER', NULL);

-- ----------------------------
-- Table structure for t_bundle_group
-- ----------------------------
DROP TABLE IF EXISTS `t_bundle_group`;
CREATE TABLE `t_bundle_group`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `group_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  `server_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_bundle_group_relation
-- ----------------------------
DROP TABLE IF EXISTS `t_bundle_group_relation`;
CREATE TABLE `t_bundle_group_relation`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `bundle_uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `group_uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sort` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`uuid`) USING BTREE,
  UNIQUE INDEX `key_sort`(`sort`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department`  (
  `UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一标识',
  `PARENT_UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '父节点标识',
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `SPELL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '拼音码',
  `SORT` int(6) NOT NULL DEFAULT 0 COMMENT '排序码',
  `ENABLE` int(1) NOT NULL DEFAULT 1 COMMENT '启用',
  `IS_QC` int(1) NOT NULL DEFAULT 0 COMMENT '是否质控科室',
  `IS_PURCHASE` int(1) NOT NULL DEFAULT 0 COMMENT '是否采购科室',
  `IS_CHILD` int(1) NOT NULL DEFAULT 0 COMMENT '是否含子节点',
  `IS_COLLECT_BLOOD` int(1) NOT NULL DEFAULT 0 COMMENT '是否采血科室',
  `SYSTEM_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务系统对照',
  `LEADER` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分管领导',
  `STATION_UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '血站标识',
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_department_class
-- ----------------------------
DROP TABLE IF EXISTS `t_department_class`;
CREATE TABLE `t_department_class`  (
  `UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SPELL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SORT` double(10, 2) NULL DEFAULT NULL,
  `ENABLE` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_department_class_relation
-- ----------------------------
DROP TABLE IF EXISTS `t_department_class_relation`;
CREATE TABLE `t_department_class_relation`  (
  `UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DEPARTMENT_UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CLASS_UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_device_auth
-- ----------------------------
DROP TABLE IF EXISTS `t_device_auth`;
CREATE TABLE `t_device_auth`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一标识',
  `TYPE_UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '设备类型',
  `DEVICE_SN` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '设备序列号',
  `AUTHORISATION_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '设备授权码',
  `SERVICE_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属服务标识',
  PRIMARY KEY (`UUID`) USING BTREE,
  UNIQUE INDEX `UK_DEVICE_AUTHORISATION`(`TYPE_UUID`, `DEVICE_SN`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_group
-- ----------------------------
DROP TABLE IF EXISTS `t_group`;
CREATE TABLE `t_group`  (
  `UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `GROUP_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分组ID',
  `GROUP_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分组名称',
  `SORT` double(11, 2) NULL DEFAULT NULL COMMENT '排序码',
  `SERVICE_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务ID',
  `ADDITIONAL_SERVICE_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附加服务ID，该分组可包含附加服务的功能点',
  `PARENT_UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父节点',
  `IMG` longblob NULL COMMENT '图标',
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_group_bundle
-- ----------------------------
DROP TABLE IF EXISTS `t_group_bundle`;
CREATE TABLE `t_group_bundle`  (
  `UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `GROUP_UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BUNDLE_UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SORT` decimal(11, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`UUID`) USING BTREE,
  UNIQUE INDEX `index_group_bundle`(`GROUP_UUID`, `BUNDLE_UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_history
-- ----------------------------
DROP TABLE IF EXISTS `t_history`;
CREATE TABLE `t_history`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `OPERATE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `OPERATOR` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `OPERATE_TIME` datetime(0) NULL DEFAULT NULL,
  `BUSINESS_UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `OPERATE_CONTENT` json NULL,
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_id_rule
-- ----------------------------
DROP TABLE IF EXISTS `t_id_rule`;
CREATE TABLE `t_id_rule`  (
  `UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SERVICE_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务编码',
  `CLIENT_TYPE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户端类型',
  `BILL_TYPE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单据类型，关联 T_BILL_TYPE',
  `BILL_CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单据编码',
  `DIFF_BY_DEPT` tinyint(1) NULL DEFAULT 0 COMMENT '是否区分业务部门',
  `DATE_FORMATTER` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期格式',
  `SERIAL_LENGTH` tinyint(1) NULL DEFAULT 5 COMMENT '序号长度',
  `RESET_RULE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '序号清零规则',
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_mapper
-- ----------------------------
DROP TABLE IF EXISTS `t_mapper`;
CREATE TABLE `t_mapper`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `BUNDLE_UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `REQUEST_METHOD` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ACTION_ID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `SERVICE_ID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `BUNDLE_ID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `AUTH_ID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`UUID`) USING BTREE,
  UNIQUE INDEX `key_mapper`(`ACTION_ID`, `SERVICE_ID`, `BUNDLE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_mapper
-- ----------------------------
INSERT INTO `t_mapper` VALUES ('000210020050120201203000001', '000210010050120201203000001', 'POST', 'add_order', 'TEMPLATE', 'station_setting', 'order_manage');

-- ----------------------------
-- Table structure for t_microservice
-- ----------------------------
DROP TABLE IF EXISTS `t_microservice`;
CREATE TABLE `t_microservice`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一标识',
  `SERVICE_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '微服务ID',
  `VIEW_SERVICE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '页面服务',
  `SORT` double(11, 2) NULL DEFAULT NULL COMMENT '排序码',
  `ENABLE` tinyint(1) NOT NULL COMMENT '启用（0-启用，1-未启用）',
  `IMG` longblob NULL COMMENT '图标',
  `IP` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'localhost' COMMENT '服务器ip',
  `PORT` int(5) NOT NULL DEFAULT 8080 COMMENT '端口号',
  `NAME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '微服务名称',
  PRIMARY KEY (`UUID`) USING BTREE,
  UNIQUE INDEX `server`(`SERVICE_ID`) USING BTREE COMMENT '服务器唯一'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '服务器设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_post
-- ----------------------------
DROP TABLE IF EXISTS `t_post`;
CREATE TABLE `t_post`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一标识',
  `NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `SPELL` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '拼音码',
  `SORT` double NOT NULL COMMENT '排序码',
  `ENABLE` int(11) NOT NULL COMMENT '启用',
  `MEMO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `SERVICE_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子系统ID',
  PRIMARY KEY (`UUID`) USING BTREE,
  UNIQUE INDEX `index_name`(`NAME`, `SERVICE_ID`) USING BTREE,
  UNIQUE INDEX `index_spell`(`SPELL`, `SERVICE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_post_actor
-- ----------------------------
DROP TABLE IF EXISTS `t_post_actor`;
CREATE TABLE `t_post_actor`  (
  `UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一标识',
  `POST_UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位标识',
  `ACTOR_UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '参与者标识',
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_post_user
-- ----------------------------
DROP TABLE IF EXISTS `t_post_user`;
CREATE TABLE `t_post_user`  (
  `UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一标识',
  `POST_UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位标识',
  `USER_UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '参与者标识',
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_preferences
-- ----------------------------
DROP TABLE IF EXISTS `t_preferences`;
CREATE TABLE `t_preferences`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '                           ',
  `ID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参数编号',
  `DESCRIPTION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '参数描述',
  `VALUE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参数值',
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参数名称',
  `STATION_CODE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '站编码',
  `SERVICE_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '服务编号',
  `BUNDLE_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '功能点编号',
  `REGEX` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '正则表达式',
  `ALERT` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提示信息',
  PRIMARY KEY (`UUID`) USING BTREE,
  UNIQUE INDEX `IDX_UK_PREFERENCE_ID_BUNDLE`(`ID`, `BUNDLE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '首选项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_process
-- ----------------------------
DROP TABLE IF EXISTS `t_process`;
CREATE TABLE `t_process`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `PROCESS_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `DATA_UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `CURRENT_NODE_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `CUSTOMIZED_PROCESSES` varchar(320) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一标识',
  `NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `SPELL` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '拼音码',
  `SORT` double NOT NULL COMMENT '排序码',
  `ENABLE` int(11) NOT NULL COMMENT '启用',
  `MEMO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `SERVICE_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子系统id',
  `DEPARTMENT_UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`UUID`) USING BTREE,
  UNIQUE INDEX `UNIQUE_SPELL`(`SPELL`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_role_auth
-- ----------------------------
DROP TABLE IF EXISTS `t_role_auth`;
CREATE TABLE `t_role_auth`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ROLE_UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `AUTH_UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`UUID`) USING BTREE,
  UNIQUE INDEX `key_role_auth`(`ROLE_UUID`, `AUTH_UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_station
-- ----------------------------
DROP TABLE IF EXISTS `t_station`;
CREATE TABLE `t_station`  (
  `UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '血站名称',
  `CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标准编码',
  `SPELL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '拼音码',
  `SORT` int(6) NOT NULL COMMENT '排序码',
  `ENABLE` int(1) NOT NULL COMMENT '是否启用',
  `PARENT_UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '上级血站标识，只针对分站有效。',
  `CLASS_UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '血站级别标识',
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '血站表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_station_class
-- ----------------------------
DROP TABLE IF EXISTS `t_station_class`;
CREATE TABLE `t_station_class`  (
  `UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '血站级别名称',
  `CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标准编码',
  `SPELL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拼音码',
  `SORT` int(6) NOT NULL COMMENT '排序码',
  `ENABLE` int(1) NOT NULL COMMENT '是否启用',
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '血站级别字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_table_name_id
-- ----------------------------
DROP TABLE IF EXISTS `t_table_name_id`;
CREATE TABLE `t_table_name_id`  (
  `UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SERVICE_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务',
  `TABLE_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `TABLE_ID` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表ID',
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`UUID`) USING BTREE,
  UNIQUE INDEX `index_tableId`(`TABLE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_table_name_id
-- ----------------------------
INSERT INTO `t_table_name_id` VALUES ('1', 'TEMPLATE', 'T_BUNDLE', '1001', NULL);
INSERT INTO `t_table_name_id` VALUES ('2', 'TEMPLATE', 'T_MAPPER', '1002', NULL);
INSERT INTO `t_table_name_id` VALUES ('3', 'TEMPLATE', 'T_AUTHORITY', '1003', NULL);

-- ----------------------------
-- Table structure for t_td_style
-- ----------------------------
DROP TABLE IF EXISTS `t_td_style`;
CREATE TABLE `t_td_style`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一标识',
  `STATION_UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '血站标识',
  `SERVICE_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '服务ID',
  `NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标签名称',
  `TYPE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `VERSION` int(32) NULL DEFAULT NULL COMMENT '版本号',
  `SORT` double NOT NULL COMMENT '排序码',
  `MEMO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `JSON` json NULL COMMENT '样式串',
  `IMG` longblob NULL COMMENT '背景',
  `ENABLE` int(1) NULL DEFAULT NULL COMMENT '启用',
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '标签样式' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一标识',
  `DEPT_UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门标识',
  `AVATAR` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录名',
  `STAFF_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工号/编号',
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `SPELL` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拼音码',
  `PHONE` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '移动电话',
  `PASSWORD` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'e10adc3949ba59abbe56e057f20f883e' COMMENT '密码',
  `SORT` int(6) NULL DEFAULT 10 COMMENT '排序码',
  `ENABLE` int(1) NOT NULL DEFAULT 1 COMMENT '启用',
  `SYSTEM_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务系统对照码',
  `MEMO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `SIGN_PHOTO` longblob NULL COMMENT '签名图片',
  `LAST_PASSWORD_RESET_DATE` datetime(0) NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `LAST_ROLE_MODIFY_DATE` datetime(0) NULL DEFAULT NULL COMMENT '角色最后分配时间',
  `IS_MANAGER` int(1) NOT NULL DEFAULT 0 COMMENT '是否单点登录管理员',
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一标识',
  `USER_UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户标识',
  `ROLE_UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色标识',
  PRIMARY KEY (`UUID`) USING BTREE,
  UNIQUE INDEX `UDX_USER_ROLE`(`USER_UUID`, `ROLE_UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_ws_message
-- ----------------------------
DROP TABLE IF EXISTS `t_ws_message`;
CREATE TABLE `t_ws_message`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `SENDER` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `SENDER_NAME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `RECEIVER` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `RECEIVER_NAME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `TITLE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `CONTENT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `UNREAD` tinyint(1) NULL DEFAULT 1,
  `SEND_TIME` datetime(0) NULL DEFAULT NULL,
  `READ_TIME` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'APP消息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_order
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `RELEVANT_BILL_UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `day` date NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `state` int(1) NULL DEFAULT 1,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT 0,
  `photo` longblob NULL,
  `LAST_OPERATOR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `LAST_OPERATION_TIME` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES ('00200230050120200807000001', NULL, 'string', 0.00, NULL, NULL, 1, NULL, 0, NULL, 'ADMIN', '2020-08-07 15:45:34');
INSERT INTO `tbl_order` VALUES ('00200230050120200807000002', NULL, 'string', 0.00, NULL, NULL, 1, NULL, 0, NULL, 'ADMIN', '2020-08-07 15:45:37');
INSERT INTO `tbl_order` VALUES ('00200230050120200807000003', NULL, 'string', 0.00, NULL, NULL, 1, NULL, 0, NULL, 'ADMIN', '2020-08-07 15:46:06');
INSERT INTO `tbl_order` VALUES ('00200230050120200807000004', NULL, 'string', 0.00, NULL, NULL, 1, NULL, 0, NULL, 'ADMIN', '2020-08-07 15:46:28');
INSERT INTO `tbl_order` VALUES ('00200230050120200807000005', NULL, 'string', 110.00, NULL, NULL, 1, NULL, 0, NULL, 'ADMIN', '2020-08-07 15:47:01');
INSERT INTO `tbl_order` VALUES ('00200230050120200807000006', NULL, 'string', 120.00, NULL, NULL, 1, NULL, 0, NULL, 'ADMIN', '2020-08-07 16:41:00');
INSERT INTO `tbl_order` VALUES ('10101', '10130', 'DEMO-1568995473402', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101010', NULL, 'C-006', 50.25, '2019-09-21', '2019-09-21 00:10:39', 0, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010100', '10130', 'DEMO-1571388720353', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010101', '10130', 'DEMO-1571388726173', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010102', '10130', 'DEMO-1571388785429', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010103', '10130', 'DEMO-1571389203252', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010104', '10130', 'DEMO-1571389346332', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010105', '10130', 'DEMO-1571389367638', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010106', '10130', 'DEMO-1571389368436', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010107', '10130', 'DEMO-1571389369103', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010108', '10130', 'DEMO-1571389389792', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010109', '10130', 'DEMO-1571391243228', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101011', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-21 00:10:39', NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010110', '10130', 'DEMO-1571727250621', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010112', NULL, 'C-006', 50.25, '2020-01-14', '2020-01-14 10:30:48', 0, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010115', NULL, 'C-006', 50.25, '2020-01-14', '2020-01-14 10:32:35', 0, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010118', NULL, 'C-006', 50.25, '2020-01-14', '2020-01-14 10:38:03', 0, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010119', NULL, 'C-001', 500.50, '2020-01-14', '2020-01-14 10:38:03', 1, NULL, 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101012', '10130', 'DEMO-1568996507289', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010120', '10130', 'DEMO-1578979204183', 1.10, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010121', '10130', 'DEMO-1578979264874', 1.10, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010122', '10130', 'DEMO-1584347984379', 1.10, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('1010123', '10130', 'DEMO-1584492838703', 1.10, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101013', '10130', 'DEMO-1568996804537', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101015', NULL, 'C-006', 50.25, '2019-09-23', '2019-09-23 19:20:41', 0, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101016', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-23 19:20:41', NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101018', NULL, 'C-006', 50.25, '2019-09-23', '2019-09-23 19:21:15', 0, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101019', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-23 19:21:15', NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('10102', '10130', 'DEMO-1568995661235', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101021', NULL, 'C-006', 50.25, '2019-09-23', '2019-09-23 19:24:08', 0, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101022', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-23 19:24:08', NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101024', NULL, 'C-006', 50.25, '2019-09-24', '2019-09-24 09:53:07', 0, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101025', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-24 09:53:07', NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101027', NULL, 'C-006', 50.25, '2019-09-24', '2019-09-24 10:15:30', 0, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101028', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-24 10:15:30', NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101030', NULL, 'C-006', 50.25, '2019-09-24', '2019-09-24 11:05:08', 0, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101031', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-24 11:05:08', NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101033', NULL, 'C-006', 50.25, '2019-09-24', '2019-09-24 11:10:19', 0, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101034', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-24 11:10:19', NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101035', '10130', 'DEMO-1569397824628', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101036', '10130', 'DEMO-1569397839986', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101037', '10130', 'DEMO-1569397892903', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101038', '10130', 'DEMO-1569398150136', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101039', '10130', 'DEMO-1569398163349', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('10104', NULL, 'C-006', 50.25, '2019-09-21', '2019-09-21 00:08:22', 0, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101040', '10130', 'DEMO-1569398230141', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101041', '10130', 'DEMO-1569398230996', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101042', '10130', 'DEMO-1569398231728', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101043', '10130', 'DEMO-1569398232253', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101044', '10130', 'DEMO-1569398232744', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101045', '10130', 'DEMO-1569398233452', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101046', '10130', 'DEMO-1569398330462', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101047', '10130', 'DEMO-1570518213688', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101048', '10130', 'DEMO-1570851423305', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101049', '10130', 'DEMO-1570851510076', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('10105', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-21 00:08:22', NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101050', '10130', 'DEMO-1570851536152', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101051', '10130', 'DEMO-1570851714688', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101052', '10130', 'DEMO-1570854853681', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101053', '10130', 'DEMO-1570855606445', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101054', '10130', 'DEMO-1570859631594', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101055', '10130', 'DEMO-1570859662686', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101056', '10130', 'DEMO-1570861399779', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101057', '10130', 'DEMO-1570861507712', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101058', '10130', 'DEMO-1570861515383', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101059', '10130', 'DEMO-1570861535909', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101060', '10130', 'DEMO-1570862142274', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101061', '10130', 'DEMO-1570862143606', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101062', '10130', 'DEMO-1570862144294', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101064', '10130', 'DEMO-1570863776475', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101065', '10130', 'DEMO-1570863785283', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101066', '10130', 'DEMO-1570863786181', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101067', '10130', 'DEMO-1570864502771', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101068', '10130', 'DEMO-1570864512373', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101069', '10130', 'DEMO-1570864546910', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('10107', NULL, 'C-006', 50.25, '2019-09-21', '2019-09-21 00:10:10', 0, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101070', '10130', 'DEMO-1570867850270', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101071', '10130', 'DEMO-1570867854982', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101072', '10130', 'DEMO-1570868095197', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101073', '10130', 'DEMO-1570868162241', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101074', '10130', 'DEMO-1570868175393', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101075', '10130', 'DEMO-1570868623095', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101076', '10130', 'DEMO-1570869223234', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101078', '10130', 'DEMO-1570871538892', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101079', '10130', 'DEMO-1570871789792', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('10108', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-21 00:10:11', NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101080', '10130', 'DEMO-1571012633758', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101081', '10130', 'DEMO-1571012641855', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101082', '10130', 'DEMO-1571030049076', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101083', '10130', 'DEMO-1571030054571', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101084', '10130', 'DEMO-1571031994126', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101085', '10130', 'DEMO-1571032019679', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101086', '10130', 'DEMO-1571036045801', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101087', '10130', 'DEMO-1571036117002', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101088', '10130', 'DEMO-1571036376183', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101089', '10130', 'DEMO-1571102621224', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101090', '10130', 'DEMO-1571105259926', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101091', '10130', 'DEMO-1571105551104', 1.10, NULL, NULL, 0, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101092', '10130', 'DEMO-1571105879161', 1.10, NULL, NULL, 0, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101093', '10130', 'DEMO-1571271714044', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101094', '10130', 'DEMO-1571273370400', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101095', '10130', 'DEMO-1571273372515', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101096', '10130', 'DEMO-1571273736721', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101097', '10130', 'DEMO-1571385997278', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101098', '10130', 'DEMO-1571388625544', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);
INSERT INTO `tbl_order` VALUES ('101099', '10130', 'DEMO-1571388665267', 1.10, NULL, NULL, NULL, '002', 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_detail`;
CREATE TABLE `tbl_order_detail`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `PRICE` decimal(10, 2) NULL DEFAULT NULL,
  `ORDER_UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `LAST_OPERATOR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `LAST_OPERATION_TIME` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_order_detail
-- ----------------------------
INSERT INTO `tbl_order_detail` VALUES ('00200240050120200807000003', 'string', 50.00, '00200230050120200807000006', 'ADMIN', '2020-08-07 17:20:59');
INSERT INTO `tbl_order_detail` VALUES ('00200240050120200807000004', 'string', 200.00, '00200230050120200807000006', 'ADMIN', '2020-08-07 17:21:11');

-- ----------------------------
-- Table structure for tbl_order_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_type`;
CREATE TABLE `tbl_order_type`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_relevant_bill
-- ----------------------------
DROP TABLE IF EXISTS `tbl_relevant_bill`;
CREATE TABLE `tbl_relevant_bill`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `AVAILABLE` int(1) NULL DEFAULT 1,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_relevant_bill
-- ----------------------------
INSERT INTO `tbl_relevant_bill` VALUES ('10130', 'Hello-001', 0);

-- ----------------------------
-- Table structure for tbl_relevant_bill_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_relevant_bill_detail`;
CREATE TABLE `tbl_relevant_bill_detail`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `RELEVANT_BILL_UUID` int(32) NULL DEFAULT NULL,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_relevant_bill_detail
-- ----------------------------
INSERT INTO `tbl_relevant_bill_detail` VALUES ('001', '测试明细001', 14.00, 10130, '');
INSERT INTO `tbl_relevant_bill_detail` VALUES ('002', '测试明细002', 24.00, 10130, NULL);

SET FOREIGN_KEY_CHECKS = 1;
