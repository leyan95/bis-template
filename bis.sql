SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('00100190000120200704000001', '00100180000120200704000001', '00100140000120200704000001');

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
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('00100180000120200704000001', '00100040000120200704000001', 'ADMIN', '1039', '管理员', 'GLY', '10086', 'e10adc3949ba59abbe56e057f20f883e', 0, 1, NULL, NULL, NULL, '2020-07-04 09:59:45', '2020-07-04 09:59:45', 1);

-- ----------------------------
-- Table structure for t_table_name_id
-- ----------------------------
DROP TABLE IF EXISTS `t_table_name_id`;
CREATE TABLE `t_table_name_id`  (
  `UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TABLE_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表明',
  `TABLE_ID` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表ID',
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`UUID`) USING BTREE,
  UNIQUE INDEX `index_tableId`(`TABLE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_table_name_id
-- ----------------------------
INSERT INTO `t_table_name_id` VALUES ('000001', 'T_ACTOR', '0001', NULL);
INSERT INTO `t_table_name_id` VALUES ('000002', 'T_AUTHORITY', '0002', NULL);
INSERT INTO `t_table_name_id` VALUES ('000003', 'T_BUNDLE', '0003', NULL);
INSERT INTO `t_table_name_id` VALUES ('000004', 'T_DEPARTMENT', '0004', NULL);
INSERT INTO `t_table_name_id` VALUES ('000005', 'T_HISTORY', '0005', NULL);
INSERT INTO `t_table_name_id` VALUES ('000006', 'T_DEPARTMENT_CLASS', '0006', NULL);
INSERT INTO `t_table_name_id` VALUES ('000007', 'T_DEPARTMENT_CLASS_RELATION', '0007', NULL);
INSERT INTO `t_table_name_id` VALUES ('000008', 'T_MAPPER', '0008', NULL);
INSERT INTO `t_table_name_id` VALUES ('000009', 'T_POST', '0009', NULL);
INSERT INTO `t_table_name_id` VALUES ('000010', 'T_POST_ACTOR', '0010', NULL);
INSERT INTO `t_table_name_id` VALUES ('000011', 'T_POST_USER', '0011', NULL);
INSERT INTO `t_table_name_id` VALUES ('000012', 'T_PREFERENCES', '0012', NULL);
INSERT INTO `t_table_name_id` VALUES ('000013', 'T_PROCESS', '0013', NULL);
INSERT INTO `t_table_name_id` VALUES ('000014', 'T_ROLE', '0014', NULL);
INSERT INTO `t_table_name_id` VALUES ('000015', 'T_ROLE_AUTH', '0015', NULL);
INSERT INTO `t_table_name_id` VALUES ('000016', 'T_STATION', '0016', NULL);
INSERT INTO `t_table_name_id` VALUES ('000017', 'T_STATION_CLASS', '0017', NULL);
INSERT INTO `t_table_name_id` VALUES ('000018', 'T_USER', '0018', NULL);
INSERT INTO `t_table_name_id` VALUES ('000019', 'T_USER_ROLE', '0019', NULL);
INSERT INTO `t_table_name_id` VALUES ('000020', 'T_GROUP', '0020', NULL);
INSERT INTO `t_table_name_id` VALUES ('000021', 'T_SERVICE', '0021', NULL);
INSERT INTO `t_table_name_id` VALUES ('000022', 'TBL_ORDER', '0022', NULL);

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
-- Records of t_station_class
-- ----------------------------
INSERT INTO `t_station_class` VALUES ('00100170000120200704000001', '血液中心', '001', 'XYZX', 0, 1);

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
-- Records of t_station
-- ----------------------------
INSERT INTO `t_station` VALUES ('00100160000120200704000002', '河北省血液中心', '00501', 'HBSXYZX', 0, 1, 'root', '00100170000120200704000001');

-- ----------------------------
-- Table structure for t_role_auth
-- ----------------------------
DROP TABLE IF EXISTS `t_role_auth`;
CREATE TABLE `t_role_auth`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `role_uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `auth_uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE,
  UNIQUE INDEX `key_role_auth`(`role_uuid`, `auth_uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_auth
-- ----------------------------
INSERT INTO `t_role_auth` VALUES ('00100150000120200704000002', '00100140000120200704000001', '00100020000120200704000012');
INSERT INTO `t_role_auth` VALUES ('00100150000120200704000003', '00100140000120200704000001', '00100020000120200704000013');

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
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('00100140000120200704000001', '管理员', 'GLY', 0, 1, NULL, NULL, '00100040000120200704000001');

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
-- Table structure for t_microservice
-- ----------------------------
DROP TABLE IF EXISTS `t_microservice`;
CREATE TABLE `t_microservice`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一标识',
  `service_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '微服务ID',
  `view_service` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '页面服务',
  `sort` double(11, 2) NULL DEFAULT NULL COMMENT '排序码',
  `enable` tinyint(1) NOT NULL COMMENT '启用（0-启用，1-未启用）',
  `img` longblob NULL COMMENT '图标',
  `ip` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'localhost' COMMENT '服务器ip',
  `port` int(5) NOT NULL DEFAULT 8080 COMMENT '端口号',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '微服务名称',
  PRIMARY KEY (`uuid`) USING BTREE,
  UNIQUE INDEX `server`(`service_id`) USING BTREE COMMENT '服务器唯一'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '服务器设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_mapper
-- ----------------------------
DROP TABLE IF EXISTS `t_mapper`;
CREATE TABLE `t_mapper`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `bundle_uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `request_method` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `action_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `service_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `bundle_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `auth_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE,
  UNIQUE INDEX `key_mapper`(`action_id`, `service_id`, `bundle_id`, `request_method`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_mapper
-- ----------------------------
INSERT INTO `t_mapper` VALUES ('00100060000120200704000001', '00100030000120200704000001', 'POST', 'delete_post', 'SETTING', 'post_setting', 'post_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000002', '00100030000120200704000001', 'POST', 'save_post', 'SETTING', 'post_setting', 'post_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000003', '00100030000120200704000001', 'POST', 'update_post', 'SETTING', 'post_setting', 'post_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000004', '00100030000120200704000001', 'GET', 'post_detail', 'SETTING', 'post_setting', 'post_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000005', '00100030000120200704000001', 'GET', 'actor_tree', 'SETTING', 'post_setting', 'post_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000006', '00100030000120200704000001', 'POST', 'list_post', 'SETTING', 'post_setting', 'post_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000007', '00100030000120200704000001', 'POST', 'actor_update', 'SETTING', 'post_setting', 'post_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000008', '00100030000120200704000001', 'GET', 'enable_services', 'SETTING', 'post_setting', 'post_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000009', '00100030000120200704000002', 'GET', 'group_bundle', 'SETTING', 'auth', NULL);
INSERT INTO `t_mapper` VALUES ('00100060000120200704000010', '00100030000120200704000002', 'GET', 'service_list', 'SETTING', 'auth', NULL);
INSERT INTO `t_mapper` VALUES ('00100060000120200704000011', '00100030000120200704000002', 'GET', 'check', 'SETTING', 'auth', NULL);
INSERT INTO `t_mapper` VALUES ('00100060000120200704000012', '00100030000120200704000003', 'POST', 'user_delete', 'SETTING', 'dept_user_setting', 'dept_user_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000013', '00100030000120200704000003', 'POST', 'user_update', 'SETTING', 'dept_user_setting', 'dept_user_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000014', '00100030000120200704000003', 'POST', 'list_user', 'SETTING', 'dept_user_setting', 'dept_user_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000015', '00100030000120200704000003', 'GET', 'user_detail', 'SETTING', 'dept_user_setting', 'dept_user_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000016', '00100030000120200704000003', 'GET', 'list_post', 'SETTING', 'dept_user_setting', 'dept_user_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000017', '00100030000120200704000003', 'GET', 'dept_detail', 'SETTING', 'dept_user_setting', 'dept_user_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000018', '00100030000120200704000003', 'GET', 'enable_services', 'SETTING', 'dept_user_setting', 'dept_user_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000019', '00100030000120200704000003', 'POST', 'user_save', 'SETTING', 'dept_user_setting', 'dept_user_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000020', '00100030000120200704000003', 'GET', 'pairs_user', 'SETTING', 'dept_user_setting', NULL);
INSERT INTO `t_mapper` VALUES ('00100060000120200704000021', '00100030000120200704000003', 'POST', 'dept_tree', 'SETTING', 'dept_user_setting', 'dept_user_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000022', '00100030000120200704000003', 'GET', 'set_user_post', 'SETTING', 'dept_user_setting', 'dept_user_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000023', '00100030000120200704000003', 'POST', 'reset_password', 'SETTING', 'dept_user_setting', 'dept_user_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000024', '00100030000120200704000003', 'POST', 'dept_save', 'SETTING', 'dept_user_setting', 'dept_user_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000025', '00100030000120200704000003', 'POST', 'file_to_Base64', 'SETTING', 'dept_user_setting', 'dept_user_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000026', '00100030000120200704000003', 'POST', 'dept_update', 'SETTING', 'dept_user_setting', 'dept_user_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000027', '00100030000120200704000003', 'POST', 'dept_delete', 'SETTING', 'dept_user_setting', 'dept_user_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000028', '00100030000120200704000003', 'GET', 'set_user_role', 'SETTING', 'dept_user_setting', 'dept_user_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000029', '00100030000120200704000003', 'GET', 'list_role', 'SETTING', 'dept_user_setting', 'dept_user_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000030', '00100030000120200704000003', 'GET', 'dept_class_options', 'SETTING', 'dept_user_setting', 'dept_user_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000031', '00100030000120200704000004', 'POST', 'save', 'SETTING', 'microservice_setting', 'microservice_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000032', '00100030000120200704000004', 'POST', 'update', 'SETTING', 'microservice_setting', 'microservice_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000033', '00100030000120200704000004', 'GET', 'detail', 'SETTING', 'microservice_setting', 'microservice_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000034', '00100030000120200704000004', 'POST', 'list', 'SETTING', 'microservice_setting', 'microservice_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000035', '00100030000120200704000004', 'POST', 'delete', 'SETTING', 'microservice_setting', 'microservice_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000036', '00100030000120200704000005', 'POST', 'authority_update', 'SETTING', 'role_setting', 'role_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000037', '00100030000120200704000005', 'GET', 'authority_tree', 'SETTING', 'role_setting', 'role_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000038', '00100030000120200704000005', 'GET', 'role_detail', 'SETTING', 'role_setting', 'role_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000039', '00100030000120200704000005', 'GET', 'dept_tree', 'SETTING', 'role_setting', 'role_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000040', '00100030000120200704000005', 'POST', 'save', 'SETTING', 'role_setting', 'role_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000041', '00100030000120200704000005', 'POST', 'update', 'SETTING', 'role_setting', 'role_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000042', '00100030000120200704000005', 'POST', 'list', 'SETTING', 'role_setting', 'role_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000043', '00100030000120200704000005', 'GET', 'enable_servers', 'SETTING', 'role_setting', 'role_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000044', '00100030000120200704000005', 'POST', 'delete', 'SETTING', 'role_setting', 'role_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000045', '00100030000120200704000006', 'POST', 'save_station_class', 'SETTING', 'station_setting', 'station_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000046', '00100030000120200704000006', 'POST', 'save_station', 'SETTING', 'station_setting', 'station_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000047', '00100030000120200704000007', 'GET', 'list', 'SETTING', 'department', NULL);
INSERT INTO `t_mapper` VALUES ('00100060000120200704000048', '00100030000120200704000008', 'POST', 'set_group_bundle', 'SETTING', 'group_setting', 'group_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000049', '00100030000120200704000008', 'GET', 'bundle_of_group', 'SETTING', 'group_setting', 'group_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000050', '00100030000120200704000008', 'POST', 'save', 'SETTING', 'group_setting', 'group_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000051', '00100030000120200704000008', 'POST', 'update', 'SETTING', 'group_setting', 'group_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000052', '00100030000120200704000008', 'POST', 'list_group', 'SETTING', 'group_setting', 'group_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000053', '00100030000120200704000008', 'GET', 'detail', 'SETTING', 'group_setting', 'group_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000054', '00100030000120200704000008', 'GET', 'bundle_of_service', 'SETTING', 'group_setting', 'group_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000055', '00100030000120200704000008', 'POST', 'delete', 'SETTING', 'group_setting', 'group_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000056', '00100030000120200704000008', 'GET', 'swap_bundle', 'SETTING', 'group_setting', 'group_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000057', '00100030000120200704000009', 'POST', 'update_preferences', 'SETTING', 'preferences_setting', 'preferences_manage');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000058', '00100030000120200704000009', 'GET', 'list_bundle', 'SETTING', 'preferences_setting', 'preferences_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000059', '00100030000120200704000009', 'POST', 'list_preferences', 'SETTING', 'preferences_setting', 'preferences_read');
INSERT INTO `t_mapper` VALUES ('00100060000120200704000060', '00100030000120200704000009', 'GET', 'enable_services', 'SETTING', 'preferences_setting', 'preferences_read');

-- ----------------------------
-- Table structure for t_history
-- ----------------------------
DROP TABLE IF EXISTS `t_history`;
CREATE TABLE `t_history`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `operate` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `operator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `operate_time` datetime(0) NULL DEFAULT NULL,
  `business_uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `operate_content` json NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_group
-- ----------------------------
DROP TABLE IF EXISTS `t_group`;
CREATE TABLE `t_group`  (
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分组ID',
  `group_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分组名称',
  `sort` double(11, 2) NULL DEFAULT NULL COMMENT '排序码',
  `service_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务ID',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_department_class_relation
-- ----------------------------
DROP TABLE IF EXISTS `t_department_class_relation`;
CREATE TABLE `t_department_class_relation`  (
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `department_uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_department_class_relation
-- ----------------------------
INSERT INTO `t_department_class_relation` VALUES ('00100070000120200704000001', '00100040000120200704000004', '001');

-- ----------------------------
-- Table structure for t_department_class
-- ----------------------------
DROP TABLE IF EXISTS `t_department_class`;
CREATE TABLE `t_department_class`  (
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `spell` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` double(10, 2) NULL DEFAULT NULL,
  `enable` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_department_class
-- ----------------------------
INSERT INTO `t_department_class` VALUES ('001', '质检', 'ZJ', 0.00, 1);
INSERT INTO `t_department_class` VALUES ('002', '采购', 'CG', 0.00, 1);

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
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES ('00100040000120200704000001', '00100160000120200704000002', '信息服务科', 'XXFWK', 0, 1, 0, 0, 1, 0, '001', 'ADMIN', '00100160000120200704000002');
INSERT INTO `t_department` VALUES ('00100040000120200704000002', '00100160000120200704000002', '质检科', 'ZJK', 0, 1, 0, 0, 1, 0, '002', 'ADMIN', '00100160000120200704000002');
INSERT INTO `t_department` VALUES ('00100040000120200704000003', '00100160000120200704000002', '办公室', 'BGS', 0, 1, 0, 0, 1, 0, '003', 'ADMIN', '00100160000120200704000002');
INSERT INTO `t_department` VALUES ('00100040000120200704000004', '00100040000120200704000003', '车管科', 'CGK', 0, 1, 0, 0, 1, 0, '003', 'ADMIN', '00100160000120200704000002');

-- ----------------------------
-- Table structure for t_bundle
-- ----------------------------
DROP TABLE IF EXISTS `t_bundle`;
CREATE TABLE `t_bundle`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `bundle_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `bundle_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `service_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '服务ID',
  `with_auth` int(1) NULL DEFAULT NULL COMMENT '访问该bundle是否需要权限',
  `sort` double(11, 2) NULL DEFAULT 0.00 COMMENT '排序码',
  `group_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '分组ID',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_bundle
-- ----------------------------
INSERT INTO `t_bundle` VALUES ('00100030000120200704000001', 'post_setting', '岗位管理', 'SETTING', 1, 0.00, NULL);
INSERT INTO `t_bundle` VALUES ('00100030000120200704000002', 'auth', '权限管理', 'SETTING', 1, 0.00, NULL);
INSERT INTO `t_bundle` VALUES ('00100030000120200704000003', 'dept_user_setting', '部门管理', 'SETTING', 1, 0.00, NULL);
INSERT INTO `t_bundle` VALUES ('00100030000120200704000004', 'microservice_setting', '服务管理', 'SETTING', 1, 0.00, NULL);
INSERT INTO `t_bundle` VALUES ('00100030000120200704000005', 'role_setting', '角色管理', 'SETTING', 1, 0.00, NULL);
INSERT INTO `t_bundle` VALUES ('00100030000120200704000006', 'station_setting', '血站管理', 'SETTING', 1, 0.00, NULL);
INSERT INTO `t_bundle` VALUES ('00100030000120200704000007', 'department', '', 'SETTING', 0, 0.00, NULL);
INSERT INTO `t_bundle` VALUES ('00100030000120200704000008', 'group_setting', '功能分组管理', 'SETTING', 1, 0.00, NULL);
INSERT INTO `t_bundle` VALUES ('00100030000120200704000009', 'preferences_setting', '首选项设置', 'SETTING', 1, 0.00, NULL);

-- ----------------------------
-- Table structure for t_authority
-- ----------------------------
DROP TABLE IF EXISTS `t_authority`;
CREATE TABLE `t_authority`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `service_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `bundle_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE,
  UNIQUE INDEX `key_server_id`(`id`, `service_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_authority
-- ----------------------------
INSERT INTO `t_authority` VALUES ('00100020000120200704000001', 'SETTING', 'post_manage', '管理', '岗位管理权限', 'post_setting');
INSERT INTO `t_authority` VALUES ('00100020000120200704000002', 'SETTING', 'group_manage', '管理', '功能分组管理权限', 'group_setting');
INSERT INTO `t_authority` VALUES ('00100020000120200704000003', 'SETTING', 'role_manage', '管理', '角色管理权限', 'role_setting');
INSERT INTO `t_authority` VALUES ('00100020000120200704000004', 'SETTING', 'microservice_manage', '管理', '服务管理权限', 'microservice_setting');
INSERT INTO `t_authority` VALUES ('00100020000120200704000005', 'SETTING', 'preferences_read', '查看', '首选项查询权限', 'preferences_setting');
INSERT INTO `t_authority` VALUES ('00100020000120200704000006', 'SETTING', 'preferences_manage', '管理', '首选项管理权限', 'preferences_setting');
INSERT INTO `t_authority` VALUES ('00100020000120200704000007', 'SETTING', 'group_read', '查看', '功能分组查询权限', 'group_setting');
INSERT INTO `t_authority` VALUES ('00100020000120200704000008', 'SETTING', 'station_manage', '管理', '血站管理权限', 'station_setting');
INSERT INTO `t_authority` VALUES ('00100020000120200704000009', 'SETTING', 'microservice_read', '查看', '服务查询权限', 'microservice_setting');
INSERT INTO `t_authority` VALUES ('00100020000120200704000010', 'SETTING', 'post_read', '查看', '岗位查询权限', 'post_setting');
INSERT INTO `t_authority` VALUES ('00100020000120200704000011', 'SETTING', 'role_read', '查看', '角色查询权限', 'role_setting');
INSERT INTO `t_authority` VALUES ('00100020000120200704000012', 'SETTING', 'dept_user_read', '查看', '部门人员查询权限', 'dept_user_setting');
INSERT INTO `t_authority` VALUES ('00100020000120200704000013', 'SETTING', 'dept_user_manage', '管理', '部门人员管理权限', 'dept_user_setting');

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

SET FOREIGN_KEY_CHECKS = 1;
