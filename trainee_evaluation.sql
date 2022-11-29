/*
 Navicat Premium Data Transfer

 Source Server         : dev
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : 172.31.24.107:3306
 Source Schema         : trainee_evaluation

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 29/11/2022 15:13:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_criteria_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_criteria_detail`;
CREATE TABLE `tbl_criteria_detail`  (
  `criteria_detail_id` int NOT NULL AUTO_INCREMENT,
  `criteria_header_id` int NULL DEFAULT NULL,
  `criteria_detail_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`criteria_detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_criteria_detail
-- ----------------------------
INSERT INTO `tbl_criteria_detail` VALUES (1, 1, 'Total lines of Codes', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_detail` VALUES (2, 1, 'JIRA working hours', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_detail` VALUES (3, 1, 'Actual working hours', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_detail` VALUES (4, 1, 'Learning Performance', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_detail` VALUES (5, 1, 'Development Process performance', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_detail` VALUES (6, 2, 'Work Attitude', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_detail` VALUES (7, 2, 'Professional Level', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_detail` VALUES (8, 2, 'Personal Growth', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_detail` VALUES (9, 2, 'Teamwork', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_detail` VALUES (10, 2, 'Work under pressure', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_detail` VALUES (11, 3, 'Leadership skills', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_detail` VALUES (12, 3, 'Knowledge', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_detail` VALUES (13, 3, 'Tough Tasks/Document production', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_detail` VALUES (14, 4, 'Work related violations', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_detail` VALUES (15, 4, 'Leave', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_detail` VALUES (16, 4, 'Late', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_detail` VALUES (17, 4, 'Absentism', 'Admin', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_criteria_header
-- ----------------------------
DROP TABLE IF EXISTS `tbl_criteria_header`;
CREATE TABLE `tbl_criteria_header`  (
  `criteria_header_id` int NOT NULL AUTO_INCREMENT,
  `criteria_header_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`criteria_header_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_criteria_header
-- ----------------------------
INSERT INTO `tbl_criteria_header` VALUES (1, 'In-Group Performance', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_header` VALUES (2, 'Individual Performance', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_header` VALUES (3, 'Point Bonuses', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_criteria_header` VALUES (4, 'Point Deductions', 'Admin', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_department
-- ----------------------------
DROP TABLE IF EXISTS `tbl_department`;
CREATE TABLE `tbl_department`  (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`department_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_department
-- ----------------------------
INSERT INTO `tbl_department` VALUES (1, 'Research and Development', 'Admin', '2022-08-19 19:32:09', NULL, NULL);
INSERT INTO `tbl_department` VALUES (2, 'Quality Assurance Team', 'Admin', '2022-08-19 20:39:58', NULL, NULL);
INSERT INTO `tbl_department` VALUES (3, 'Customer Service Support', 'Admin', '2022-08-19 20:40:52', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_group
-- ----------------------------
DROP TABLE IF EXISTS `tbl_group`;
CREATE TABLE `tbl_group`  (
  `group_id` int NOT NULL AUTO_INCREMENT,
  `department_id` int NULL DEFAULT NULL,
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_group
-- ----------------------------
INSERT INTO `tbl_group` VALUES (1, 1, 'Front End', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_group` VALUES (2, 1, 'Back End', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_group` VALUES (3, 1, 'Android', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_group` VALUES (4, 1, 'iOS', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_group` VALUES (5, 2, 'Front End Tester', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_group` VALUES (6, 2, 'Back End Tester', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_group` VALUES (7, 2, 'Mobile Tester', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_header
-- ----------------------------
DROP TABLE IF EXISTS `tbl_header`;
CREATE TABLE `tbl_header`  (
  `header_id` int NOT NULL AUTO_INCREMENT,
  `header_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`header_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_header
-- ----------------------------
INSERT INTO `tbl_header` VALUES (1, 'Entry', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_header` VALUES (2, 'System Account', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_header_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_header_detail`;
CREATE TABLE `tbl_header_detail`  (
  `header_detail_id` int NOT NULL AUTO_INCREMENT,
  `header_id` int NULL DEFAULT NULL,
  `header_detail_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`header_detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_header_detail
-- ----------------------------
INSERT INTO `tbl_header_detail` VALUES (1, 1, 'Entry', 'Admin', '2022-08-16 00:00:00', 'anonymousUser', '2022-08-19 19:16:28');
INSERT INTO `tbl_header_detail` VALUES (2, 1, 'Evaluate', 'Admin', '2022-08-16 00:00:00', NULL, NULL);
INSERT INTO `tbl_header_detail` VALUES (3, 1, 'Submit', 'Admin', '2022-08-16 00:00:00', NULL, NULL);
INSERT INTO `tbl_header_detail` VALUES (4, 1, 'View Log', 'Admin', '2022-08-16 00:00:00', NULL, NULL);
INSERT INTO `tbl_header_detail` VALUES (5, 2, 'Set Permissions', 'Admin', '2022-08-16 00:00:00', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role`  (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO `tbl_role` VALUES (1, 'Admin', '', NULL, '2022-08-16 00:00:00', NULL);
INSERT INTO `tbl_role` VALUES (2, 'Mentor', 'Admin', NULL, '2022-08-16 00:00:00', NULL);
INSERT INTO `tbl_role` VALUES (3, 'Trainee', 'Admin', NULL, '2022-08-16 00:00:00', NULL);
INSERT INTO `tbl_role` VALUES (4, 'Guest', 'Admin', NULL, '2022-08-16 00:00:00', NULL);

-- ----------------------------
-- Table structure for tbl_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role_permission`;
CREATE TABLE `tbl_role_permission`  (
  `role_permission_id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NULL DEFAULT NULL,
  `header_detail_id` int NULL DEFAULT NULL,
  `role_permission_is_allowed` tinyint NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_by` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`role_permission_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_role_permission
-- ----------------------------
INSERT INTO `tbl_role_permission` VALUES (1, 1, 1, 1, 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_role_permission` VALUES (2, 1, 2, 1, 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_role_permission` VALUES (3, 1, 3, 1, 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_role_permission` VALUES (4, 1, 4, 1, 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_role_permission` VALUES (5, 1, 5, 1, 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_role_permission` VALUES (6, 2, 1, 1, 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_role_permission` VALUES (7, 2, 2, 1, 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_role_permission` VALUES (8, 3, 1, 1, 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_role_permission` VALUES (9, 3, 3, 1, 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_role_permission` VALUES (10, 4, 1, 1, 'Admin', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_team
-- ----------------------------
DROP TABLE IF EXISTS `tbl_team`;
CREATE TABLE `tbl_team`  (
  `team_id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NULL DEFAULT NULL,
  `team_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`team_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_team
-- ----------------------------
INSERT INTO `tbl_team` VALUES (1, 1, 'Activity', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (2, 1, 'Agent', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (3, 1, 'Open Station', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (4, 1, 'Revision', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (5, 1, 'Management Background', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (6, 1, 'Architecture', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (7, 2, 'Activity', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (8, 2, 'Agent', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (9, 2, 'Architecture', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (10, 2, 'Finance', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (11, 2, 'Master Control', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (12, 2, 'Member', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (13, 2, 'Venue', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (14, 3, 'Finance', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (15, 3, 'Open Station', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (16, 3, 'Revision', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (17, 4, 'Finance', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (18, 4, 'Open Station', 'Admin', NULL, NULL, NULL);
INSERT INTO `tbl_team` VALUES (19, 4, 'Revision', 'Admin', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_trainee_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `tbl_trainee_evaluation`;
CREATE TABLE `tbl_trainee_evaluation`  (
  `trainee_evaluation_id` int NOT NULL AUTO_INCREMENT,
  `trainee_user_id` int NULL DEFAULT NULL,
  `trainee_evaluation_date` datetime NULL DEFAULT NULL,
  `trainee_evaluation_letter_grade` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trainee_evaluation_is_top_of_the_month` tinyint NULL DEFAULT 0,
  `total_lines_of_codes_rate` int NOT NULL DEFAULT 0,
  `total_lines_of_codes` int NOT NULL DEFAULT 0,
  `jira_working_hours_rate` int NOT NULL DEFAULT 0,
  `jira_working_hours` int NOT NULL DEFAULT 0,
  `actual_working_hours_rate` int NOT NULL DEFAULT 0,
  `actual_working_hours` int NOT NULL DEFAULT 0,
  `learning_performance` int NOT NULL DEFAULT 0,
  `development_process_performance` int NOT NULL DEFAULT 0,
  `leadership_skills` int NOT NULL DEFAULT 0,
  `knowledge_sharing` int NOT NULL DEFAULT 0,
  `tough_task` int NOT NULL DEFAULT 0,
  `work_related_violations` int NOT NULL DEFAULT 0,
  `leave_deduction` int NOT NULL DEFAULT 0,
  `late` int NOT NULL DEFAULT 0,
  `absenteeism` int NOT NULL DEFAULT 0,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `total_deduction` int GENERATED ALWAYS AS ((((`work_related_violations` + `leave_deduction`) + `late`) + `absenteeism`)) VIRTUAL NULL,
  `total_bonus` int GENERATED ALWAYS AS (((`leadership_skills` + `knowledge_sharing`) + `tough_task`)) VIRTUAL NULL,
  `trainee_total_average_ingroup_score_rate` int NOT NULL DEFAULT 0,
  `trainee_total_average_ingroup_score` int NOT NULL DEFAULT 0,
  `trainee_evaluation_total_score` int UNSIGNED GENERATED ALWAYS AS (((((((`total_lines_of_codes_rate` + `jira_working_hours_rate`) + `learning_performance`) + `development_process_performance`) + `total_bonus`) - `total_deduction`) + `trainee_total_average_ingroup_score`)) VIRTUAL NULL,
  `is_evaluated_by_mentor` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `final_ranking_letter_grade` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `total_points` int NOT NULL DEFAULT 0,
  `check_evaluation_status` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`trainee_evaluation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 722 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_trainee_evaluation
-- ----------------------------
INSERT INTO `tbl_trainee_evaluation` VALUES (679, 45, '2022-09-30 10:55:36', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:55:36', NULL, NULL, DEFAULT, DEFAULT, 20, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (680, 47, '2022-09-30 10:55:41', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:55:41', NULL, NULL, DEFAULT, DEFAULT, 15, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (681, 59, '2022-09-30 10:56:13', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:56:13', NULL, NULL, DEFAULT, DEFAULT, 5, 16, DEFAULT, 0, NULL, 16, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (682, 48, '2022-09-30 10:56:29', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:56:29', NULL, NULL, DEFAULT, DEFAULT, 10, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (683, 49, '2022-09-30 10:56:34', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:56:34', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (684, 50, '2022-09-30 10:56:39', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:56:39', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (685, 51, '2022-09-30 10:56:44', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:56:44', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (686, 52, '2022-09-30 10:56:54', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:56:54', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (687, 46, '2022-09-30 10:56:54', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:56:54', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (688, 53, '2022-09-30 10:57:01', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:57:01', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (689, 54, '2022-09-30 10:57:06', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:57:06', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (690, 55, '2022-09-30 10:57:12', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:57:12', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (691, 56, '2022-09-30 10:57:18', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:57:18', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (692, 57, '2022-09-30 10:57:23', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:57:23', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (693, 58, '2022-09-30 10:57:28', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:57:28', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (694, 60, '2022-09-30 10:57:33', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:57:33', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (695, 61, '2022-09-30 10:57:40', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:57:40', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (696, 62, '2022-09-30 10:57:46', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:57:46', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (697, 80, '2022-09-30 10:57:54', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:57:54', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (698, 73, '2022-09-30 10:58:14', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:58:14', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (699, 72, '2022-09-30 10:58:23', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:58:23', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (700, 70, '2022-09-30 10:58:29', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:58:29', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (701, 66, '2022-09-30 10:58:34', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:58:34', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (702, 69, '2022-09-30 10:58:35', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:58:35', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (703, 67, '2022-09-30 10:58:39', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:58:39', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (704, 68, '2022-09-30 10:58:40', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:58:40', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (705, 77, '2022-09-30 10:58:58', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:58:58', NULL, NULL, DEFAULT, DEFAULT, 5, 48, DEFAULT, 0, NULL, 48, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (706, 64, '2022-09-30 10:59:03', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:59:03', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (707, 74, '2022-09-30 10:59:14', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:59:14', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (708, 75, '2022-09-30 10:59:17', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:59:17', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (709, 76, '2022-09-30 10:59:22', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:59:22', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (710, 78, '2022-09-30 10:59:31', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:59:31', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (711, 79, '2022-09-30 10:59:36', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-09-30 10:59:36', NULL, NULL, DEFAULT, DEFAULT, 5, 50, DEFAULT, 0, NULL, 50, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (712, 88, '2022-09-30 15:44:25', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Adriane', '2022-09-30 15:44:25', NULL, NULL, DEFAULT, DEFAULT, 0, 0, DEFAULT, 0, NULL, 0, 147);
INSERT INTO `tbl_trainee_evaluation` VALUES (713, 86, '2022-10-10 14:01:24', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Adriane', '2022-10-10 14:01:24', NULL, NULL, DEFAULT, DEFAULT, 0, 0, DEFAULT, 0, NULL, 0, 147);
INSERT INTO `tbl_trainee_evaluation` VALUES (714, 82, '2022-10-10 14:01:29', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Adriane', '2022-10-10 14:01:29', NULL, NULL, DEFAULT, DEFAULT, 0, 0, DEFAULT, 0, NULL, 0, 147);
INSERT INTO `tbl_trainee_evaluation` VALUES (715, 89, '2022-10-10 14:01:32', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Adriane', '2022-10-10 14:01:32', NULL, NULL, DEFAULT, DEFAULT, 0, 0, DEFAULT, 0, NULL, 0, 147);
INSERT INTO `tbl_trainee_evaluation` VALUES (716, 94, '2022-10-14 11:52:29', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Freddie', '2022-10-14 11:52:29', NULL, NULL, DEFAULT, DEFAULT, 0, 0, DEFAULT, 0, NULL, 0, 133);
INSERT INTO `tbl_trainee_evaluation` VALUES (717, 97, '2022-10-29 17:46:09', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockerol', '2022-10-29 17:46:09', NULL, NULL, DEFAULT, DEFAULT, 0, 0, DEFAULT, 0, NULL, 0, 132);
INSERT INTO `tbl_trainee_evaluation` VALUES (718, 98, '2022-10-29 17:48:14', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockerol', '2022-10-29 17:48:14', NULL, NULL, DEFAULT, DEFAULT, 0, 0, DEFAULT, 0, NULL, 0, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (719, 92, '2022-10-29 17:58:35', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Xuande', '2022-10-29 17:58:35', NULL, NULL, DEFAULT, DEFAULT, 0, 0, DEFAULT, 0, NULL, 0, 136);
INSERT INTO `tbl_trainee_evaluation` VALUES (720, 45, '2022-10-29 18:03:09', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Japs', '2022-10-29 18:03:09', NULL, NULL, DEFAULT, DEFAULT, 0, 0, DEFAULT, 0, NULL, 0, 0);
INSERT INTO `tbl_trainee_evaluation` VALUES (721, 93, '2022-10-29 18:03:12', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Freddie', '2022-10-29 18:03:12', NULL, NULL, DEFAULT, DEFAULT, 0, 0, DEFAULT, 0, NULL, 0, 133);

-- ----------------------------
-- Table structure for tbl_trainee_in_group_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `tbl_trainee_in_group_evaluation`;
CREATE TABLE `tbl_trainee_in_group_evaluation`  (
  `trainee_in_group_evaluation_id` int NOT NULL AUTO_INCREMENT,
  `trainee_evaluation_id` int NULL DEFAULT NULL,
  `evaluator_user_id` int NULL DEFAULT NULL,
  `work_attitude` int NULL DEFAULT NULL,
  `professional_level` int NULL DEFAULT NULL,
  `personal_growth` int NULL DEFAULT NULL,
  `teamwork` int NULL DEFAULT NULL,
  `work_under_pressure` int NULL DEFAULT NULL,
  `total_score` int GENERATED ALWAYS AS (((((`work_attitude` + `professional_level`) + `personal_growth`) + `teamwork`) + `work_under_pressure`)) VIRTUAL NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`trainee_in_group_evaluation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_trainee_in_group_evaluation
-- ----------------------------
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1044, 679, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:55:36', '2022-09-30 10:55:36');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1045, 680, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:55:41', '2022-09-30 10:55:41');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1046, 681, 46, 2, 2, 5, 2, 5, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:56:13', '2022-09-30 10:56:13');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1047, 682, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:56:29', '2022-09-30 10:56:29');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1048, 683, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:56:34', '2022-09-30 10:56:34');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1049, 684, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:56:39', '2022-09-30 10:56:39');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1050, 685, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:56:44', '2022-09-30 10:56:44');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1051, 686, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:56:54', '2022-09-30 10:56:54');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1052, 687, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:56:54', '2022-09-30 10:56:54');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1053, 680, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:57:00', '2022-09-30 10:57:00');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1054, 688, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:57:01', '2022-09-30 10:57:01');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1055, 682, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:57:05', '2022-09-30 10:57:05');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1056, 689, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:57:06', '2022-09-30 10:57:06');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1057, 689, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:57:12', '2022-09-30 10:57:12');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1058, 690, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:57:12', '2022-09-30 10:57:12');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1059, 683, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:57:17', '2022-09-30 10:57:17');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1060, 691, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:57:18', '2022-09-30 10:57:18');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1061, 684, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:57:23', '2022-09-30 10:57:23');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1062, 692, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:57:23', '2022-09-30 10:57:23');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1063, 693, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:57:28', '2022-09-30 10:57:28');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1064, 685, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:57:28', '2022-09-30 10:57:28');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1065, 694, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:57:33', '2022-09-30 10:57:33');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1066, 686, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:57:34', '2022-09-30 10:57:34');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1067, 688, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:57:39', '2022-09-30 10:57:39');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1068, 695, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:57:40', '2022-09-30 10:57:40');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1069, 696, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:57:46', '2022-09-30 10:57:46');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1070, 697, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:57:54', '2022-09-30 10:57:54');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1071, 694, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:57:57', '2022-09-30 10:57:57');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1072, 695, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:58:04', '2022-09-30 10:58:04');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1073, 698, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:58:14', '2022-09-30 10:58:14');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1074, 696, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:58:19', '2022-09-30 10:58:19');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1075, 699, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:58:23', '2022-09-30 10:58:23');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1076, 700, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:58:29', '2022-09-30 10:58:29');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1077, 701, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:58:34', '2022-09-30 10:58:34');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1078, 702, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:58:35', '2022-09-30 10:58:35');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1079, 703, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:58:39', '2022-09-30 10:58:39');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1080, 704, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:58:40', '2022-09-30 10:58:40');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1081, 704, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:58:44', '2022-09-30 10:58:44');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1082, 703, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:58:46', '2022-09-30 10:58:46');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1083, 702, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:58:50', '2022-09-30 10:58:50');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1084, 700, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:58:55', '2022-09-30 10:58:55');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1085, 705, 46, 10, 10, 10, 8, 8, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:58:58', '2022-09-30 10:58:58');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1086, 706, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:59:03', '2022-09-30 10:59:03');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1087, 698, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:59:08', '2022-09-30 10:59:08');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1088, 701, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:59:08', '2022-09-30 10:59:08');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1089, 707, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:59:14', '2022-09-30 10:59:14');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1090, 708, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:59:17', '2022-09-30 10:59:17');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1091, 708, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:59:19', '2022-09-30 10:59:19');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1092, 679, 75, 10, 10, 10, 10, 10, DEFAULT, 'jiwon', 'jiwon', '2022-09-30 10:59:21', '2022-09-30 10:59:21');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1093, 709, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:59:22', '2022-09-30 10:59:22');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1094, 709, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:59:26', '2022-09-30 10:59:26');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1095, 687, 75, 10, 10, 10, 10, 10, DEFAULT, 'jiwon', 'jiwon', '2022-09-30 10:59:27', '2022-09-30 10:59:27');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1096, 705, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:59:29', '2022-09-30 10:59:29');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1097, 710, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:59:31', '2022-09-30 10:59:31');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1098, 680, 75, 10, 10, 10, 10, 10, DEFAULT, 'jiwon', 'jiwon', '2022-09-30 10:59:33', '2022-09-30 10:59:33');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1099, 710, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 10:59:35', '2022-09-30 10:59:35');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1100, 711, 46, 10, 10, 10, 10, 10, DEFAULT, 'toshiko', 'toshiko', '2022-09-30 10:59:36', '2022-09-30 10:59:36');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1101, 682, 75, 10, 10, 10, 10, 10, DEFAULT, 'jiwon', 'jiwon', '2022-09-30 10:59:39', '2022-09-30 10:59:39');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1102, 683, 75, 10, 10, 10, 10, 10, DEFAULT, 'jiwon', 'jiwon', '2022-09-30 10:59:45', '2022-09-30 10:59:45');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1103, 684, 75, 10, 10, 10, 10, 10, DEFAULT, 'jiwon', 'jiwon', '2022-09-30 10:59:50', '2022-09-30 10:59:50');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1104, 685, 75, 10, 10, 10, 10, 10, DEFAULT, 'jiwon', 'jiwon', '2022-09-30 10:59:55', '2022-09-30 10:59:55');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1105, 686, 75, 10, 10, 10, 10, 10, DEFAULT, 'jiwon', 'jiwon', '2022-09-30 11:00:00', '2022-09-30 11:00:00');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1106, 688, 75, 10, 10, 10, 10, 10, DEFAULT, 'jiwon', 'jiwon', '2022-09-30 11:00:06', '2022-09-30 11:00:06');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1107, 689, 75, 10, 10, 10, 10, 10, DEFAULT, 'jiwon', 'jiwon', '2022-09-30 11:00:12', '2022-09-30 11:00:12');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1108, 711, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 11:00:12', '2022-09-30 11:00:12');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1109, 707, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 11:00:18', '2022-09-30 11:00:18');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1110, 699, 45, 10, 10, 10, 10, 10, DEFAULT, 'baste', 'baste', '2022-09-30 11:00:32', '2022-09-30 11:00:32');
INSERT INTO `tbl_trainee_in_group_evaluation` VALUES (1111, 690, 75, 10, 10, 10, 10, 10, DEFAULT, 'jiwon', 'jiwon', '2022-09-30 11:02:30', '2022-09-30 11:02:30');

-- ----------------------------
-- Table structure for tbl_trainee_mentor
-- ----------------------------
DROP TABLE IF EXISTS `tbl_trainee_mentor`;
CREATE TABLE `tbl_trainee_mentor`  (
  `trainee_mentor_id` int NOT NULL AUTO_INCREMENT,
  `trainee_mentor_record_id` int NOT NULL DEFAULT 0,
  `trainee_user_id` int NULL DEFAULT NULL,
  `mentor_user_id` int NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`trainee_mentor_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 258 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_trainee_mentor
-- ----------------------------
INSERT INTO `tbl_trainee_mentor` VALUES (1, 1, 31, 2, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (2, 1, 37, 2, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (3, 1, 23, 2, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (4, 2, 31, 3, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (6, 3, 20, 4, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (7, 3, 39, 4, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (8, 3, 38, 4, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (10, 3, 26, 4, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (11, 4, 20, 5, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (12, 4, 33, 5, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (13, 4, 32, 5, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (14, 4, 26, 5, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (15, 5, 30, 6, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (16, 5, 40, 6, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (17, 5, 35, 6, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (19, 6, 29, 7, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (20, 6, 33, 7, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (21, 7, 27, 8, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (22, 7, 42, 8, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (25, 8, 24, 9, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (26, 8, 37, 9, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (29, 9, 42, 10, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (30, 10, 39, 11, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (31, 10, 44, 11, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (32, 11, 38, 12, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (33, 11, 23, 12, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (34, 12, 40, 13, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (35, 12, 36, 13, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (36, 12, 22, 13, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (37, 13, 35, 14, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (38, 14, 44, 15, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (39, 14, 32, 15, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (42, 15, 41, 16, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (43, 16, 24, 17, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (45, 17, 111, 18, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (47, 3, 41, 4, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (48, 18, 45, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (49, 18, 46, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (50, 18, 47, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (51, 18, 48, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (52, 18, 49, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (53, 18, 50, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (54, 18, 51, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (55, 18, 52, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (56, 18, 53, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (57, 18, 54, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (58, 18, 55, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (59, 18, 56, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (60, 18, 57, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (61, 18, 58, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (62, 18, 59, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (63, 18, 60, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (64, 18, 61, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (65, 18, 62, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (66, 18, 63, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (67, 18, 64, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (69, 18, 66, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (70, 18, 67, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (71, 18, 68, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (72, 18, 69, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (73, 18, 70, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (74, 18, 71, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (75, 18, 72, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (76, 18, 73, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (77, 18, 74, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (78, 18, 75, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (79, 18, 76, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (80, 18, 77, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (81, 18, 78, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (82, 18, 79, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (83, 18, 80, 112, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (84, 19, 49, 113, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (85, 19, 52, 113, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (86, 19, 53, 113, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (87, 20, 50, 114, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (88, 20, 51, 114, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (89, 20, 54, 114, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (91, 21, 66, 115, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (92, 21, 67, 115, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (93, 21, 68, 115, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (94, 22, 60, 116, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (95, 22, 61, 116, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (96, 23, 62, 117, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (97, 23, 64, 117, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (98, 24, 69, 118, '   ', NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (99, 24, 70, 118, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (100, 25, 73, 119, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (101, 25, 74, 119, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (102, 26, 72, 120, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (105, 28, 75, 122, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (106, 28, 76, 122, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (107, 29, 77, 123, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (108, 29, 78, 123, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (109, 30, 79, 124, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (110, 30, 80, 124, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (111, 31, 55, 125, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (112, 31, 56, 125, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (113, 31, 57, 125, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (114, 31, 58, 125, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (115, 31, 59, 125, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (116, 32, 55, 126, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (117, 32, 56, 126, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (118, 32, 57, 126, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (119, 32, 58, 126, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (120, 32, 59, 126, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (121, 33, 88, 127, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (122, 33, 86, 127, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (123, 33, 83, 127, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (124, 34, 81, 128, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (125, 34, 82, 128, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (126, 35, 84, 129, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (127, 35, 85, 129, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (128, 35, 87, 129, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (129, 35, 89, 129, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (130, 36, 90, 130, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (131, 36, 91, 130, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (132, 37, 96, 131, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (133, 37, 99, 131, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (134, 38, 97, 132, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (135, 38, 98, 132, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (136, 39, 93, 133, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (137, 39, 94, 133, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (138, 40, 101, 134, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (139, 40, 102, 134, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (140, 41, 95, 135, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (141, 42, 92, 136, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (142, 43, 100, 137, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (143, 44, NULL, 138, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (144, 45, NULL, 139, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (145, 46, 88, 140, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (146, 46, 86, 140, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (147, 46, 83, 140, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (148, 46, 81, 140, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (149, 46, 82, 140, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (150, 46, 84, 140, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (151, 46, 85, 140, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (152, 46, 87, 140, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (153, 46, 89, 140, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (163, 2, 25, 3, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (164, 3, 21, 4, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (165, 3, 25, 4, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (167, 8, 111, 9, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (169, 46, 90, 140, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (170, 46, 91, 140, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (172, 9, 21, 10, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (173, 47, 49, 141, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (174, 47, 50, 141, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (175, 47, 51, 141, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (176, 47, 52, 141, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (177, 47, 53, 141, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (178, 47, 54, 141, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (179, 48, 60, 142, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (180, 48, 61, 142, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (181, 48, 62, 142, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (182, 48, 64, 142, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (183, 49, 69, 143, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (184, 49, 70, 143, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (185, 49, 72, 143, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (186, 49, 73, 143, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (187, 49, 74, 143, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (188, 50, 45, 144, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (189, 50, 46, 144, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (190, 50, 47, 144, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (191, 50, 48, 144, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (192, 51, 75, 145, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (193, 51, 76, 145, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (194, 51, 77, 145, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (195, 51, 78, 145, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (196, 51, 79, 145, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (197, 51, 80, 145, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (198, 42, 55, 146, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (199, 42, 56, 146, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (200, 42, 57, 146, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (201, 42, 58, 146, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (202, 42, 59, 146, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (203, 43, 88, 147, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (204, 43, 86, 147, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (205, 43, 83, 147, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (206, 43, 81, 147, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (207, 43, 82, 147, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (208, 43, 84, 147, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (209, 43, 85, 147, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (210, 43, 87, 147, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (211, 43, 89, 147, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (212, 43, 90, 147, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (213, 43, 91, 147, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (214, 44, 31, 148, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (215, 44, 20, 148, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (216, 44, 33, 148, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (217, 44, 44, 148, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (218, 44, 32, 148, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (219, 44, 24, 148, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (220, 45, 30, 149, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (221, 45, 29, 149, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (222, 45, 27, 149, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (223, 45, 37, 150, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (224, 45, 42, 150, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (225, 45, 39, 150, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (226, 45, 38, 150, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (227, 45, 40, 150, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (228, 45, 36, 150, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (229, 45, 35, 150, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (230, 46, 21, 151, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (231, 46, 22, 151, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (232, 46, 23, 151, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (233, 46, 25, 151, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (234, 46, 26, 151, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (235, 47, 31, 152, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (236, 47, 32, 152, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (237, 47, 33, 152, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (238, 47, 35, 152, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (239, 47, 36, 152, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (240, 47, 83, 152, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (241, 47, 84, 152, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (242, 47, 85, 152, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (243, 47, 86, 152, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (244, 47, 87, 152, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (245, 47, 88, 152, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (246, 47, 89, 152, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (247, 47, 93, 152, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (248, 47, 94, 152, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (249, 47, 95, 152, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (251, 48, 45, 153, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (252, 48, 46, 153, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (253, 48, 47, 153, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (254, 48, 48, 153, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (255, 25, 69, 119, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (256, 25, 70, 119, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_trainee_mentor` VALUES (257, 25, 72, 119, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `team_id` int NULL DEFAULT NULL,
  `role_id` int NULL DEFAULT NULL,
  `user_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_onboarding_date` date NULL DEFAULT NULL,
  `user_is_deleted` bit(1) NULL DEFAULT NULL,
  `user_is_team_leader` bit(1) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `building` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `grade` int NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 158 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 1, 1, 'admin', 'admin@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 11:38:04', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (2, 3, 2, 'Jamie', 'jsjamie@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 11:38:04', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (3, 3, 2, 'Amylian', 'jsamylian@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 13:53:44', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (4, 1, 2, 'Jeriel', 'jsjeriel@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 14:01:43', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (5, 1, 2, 'Minglou', 'jsminglou@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 11:38:04', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (6, 2, 2, 'Inchang', 'jsinchang@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (7, 2, 2, 'Jesiah', 'jsjesiah@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 10:25:15', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (8, 2, 2, 'Clayton', 'jsclayton@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 11:38:04', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (9, 4, 2, 'Brock', 'jsbrock@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 13:53:44', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (10, 4, 2, 'Miracle', 'jsmiracle@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 14:01:43', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (11, 4, 2, 'Yanyue', 'jsyanyue@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 11:38:04', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (12, 4, 2, 'Xmen', 'jsxmen@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (13, 4, 2, 'Murray', 'jsmurray@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 10:25:15', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (14, 3, 2, 'Grubby', 'jsgrubby@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 11:38:04', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (15, 6, 2, 'Apex', 'jsapex@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 13:53:44', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (16, 4, 2, 'Dianwei', 'jsdianwei@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 14:01:43', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (17, 1, 2, 'Skadi', 'jsskadi@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 11:38:04', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (18, 4, 2, 'Zadie', 'jszadi@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (20, 1, 3, 'Yoshi', 'jsyoshi@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-04-21', b'0', b'1', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (21, 1, 3, 'Nali', 'jsnali@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-30', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (22, 1, 3, 'Yeyel', 'jsyeyel@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-30', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (23, 1, 3, 'Phineas', 'jsphineas@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-01', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (24, 1, 3, 'Invoker', 'jsinvoker@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-27', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (25, 1, 3, 'Pezu', 'jspezu@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-01', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (26, 1, 3, 'Zaijan', 'jszaijan@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-01', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (27, 2, 3, 'Jekjek', 'jsjekjek@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-04-25', b'0', b'1', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (29, 2, 3, 'Kurosai', 'jskurosai@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-04-23', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (30, 2, 3, 'Raris', 'jsraris@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-04-22', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (31, 3, 3, 'Yuso', 'jsyuso@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-04-11', b'0', b'1', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (32, 3, 3, 'Menghao', 'jsmenghao@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-10', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (33, 3, 3, 'Lucario', 'jslucario@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-17', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (35, 3, 3, 'Bisco', 'jsbisco@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-01', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (36, 3, 3, 'Joichiro', 'jsjoichiro@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-19', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (37, 4, 3, 'Wilhelm', 'jswilhelm@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-04-27', b'0', b'1', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (38, 4, 3, 'Caffeine', 'jscaffeine@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-18', b'0', b'1', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (39, 4, 3, 'Kaidan', 'jskaidan@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-14', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (40, 4, 3, 'Sting', 'jssting@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-19', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (41, 4, 3, 'Pasteur', 'jspasteur@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-18', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (42, 4, 3, 'Zenon', 'jszenon@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-04', b'0', b'1', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (44, 6, 3, 'Quintana', 'jsquintana@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-09', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (45, 7, 3, 'Baste', 'jsbaste@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-16', b'0', b'1', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (46, 7, 3, 'Toshiko', 'jstoshiko@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-02', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (47, 7, 3, 'Tempoant', 'jstempoant@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-01', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (48, 7, 3, 'Suncrow', 'jssuncrow@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-06', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (49, 8, 3, 'Barney', 'jsbarney@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-20', b'0', b'1', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (50, 8, 3, 'Kira', 'jskira@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-04-26', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (51, 8, 3, 'Kingston', 'jskingston@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-04', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (52, 8, 3, 'Norbs', 'jsnorbs@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-25', b'0', b'0', 'admin', '2022-08-19 11:35:38', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (53, 8, 3, 'Kurosh', 'jskurosh@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-27', b'0', b'0', 'admin', '2022-08-19 12:01:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (54, 8, 3, 'Hermione', 'jshermione@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-08-19', b'0', b'0', 'admin', '2022-08-19 12:32:05', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (55, 9, 3, 'Mikmik', 'jsmikmik@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-06', b'0', b'1', 'admin', '2022-08-19 12:32:40', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (56, 9, 3, 'Charity', 'jscharity@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-04-13', b'0', b'0', 'admin', '2022-08-19 12:33:50', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (57, 9, 3, 'Cogito', 'jscogito@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-07-04', b'0', b'0', 'admin', '2022-08-19 13:52:18', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (58, 9, 3, 'Chiyo', 'jschiyo@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-07-21', b'0', b'0', 'admin', '2022-08-19 14:09:13', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (59, 9, 3, 'Rimuru', 'jsrimuru@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-07-21', b'0', b'0', 'admin', '2022-08-19 14:09:31', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (60, 10, 3, 'Gridsen', 'jsgridsen@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-30', b'0', b'1', 'admin', '2022-08-19 14:28:36', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (61, 10, 3, 'Baesuzy', 'jsbaesuzy@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-30', b'0', b'0', 'admin', '2022-08-19 15:41:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (62, 10, 3, 'Pluzzel', 'jspluzzel@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-03', b'0', b'0', 'admin', '2022-08-19 15:42:53', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (64, 10, 3, 'Psyduck', 'jspsyduck@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-13', b'0', b'0', 'admin', '2022-08-19 15:57:12', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (66, 11, 3, 'Tukyow', 'jstukyow@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-13', b'0', b'0', 'admin', '2022-08-19 18:01:12', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (67, 11, 3, 'Neuro', 'jsneuro@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-27', b'0', b'0', 'admin', '2022-08-19 19:03:26', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (68, 11, 3, 'Chrollo', 'jschrollo@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-07-01', b'0', b'0', 'admin', '2022-08-19 19:10:02', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (69, 12, 3, 'Willowy', 'jswillowy@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-01', b'0', b'1', 'admin', '2022-08-19 19:14:15', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (70, 12, 3, 'Keimar', 'jskeimar@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-01', b'0', b'0', 'admin', '2022-08-19 19:15:16', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (72, 12, 3, 'Rapzawr', 'jsrapzawr@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-07-04', b'0', b'0', 'admin', '2022-08-20 10:03:50', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (73, 12, 3, 'Manjiro', 'jsmanjiro@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-07-12', b'0', b'0', 'admin', '2022-08-20 11:23:30', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (74, 12, 3, 'Maxwell', 'jsmaxwell@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-11', b'0', b'0', 'admin', '2022-08-20 13:02:04', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (75, 13, 3, 'Jiwon', 'jsjiwon @itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-04-11', b'0', b'1', 'admin', '2022-08-20 13:07:41', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (76, 13, 3, 'Megu', 'jsmegu@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-04-13', b'0', b'0', 'admin', '2022-08-20 13:16:37', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (77, 13, 3, 'Xerdon', 'jsxerdon@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-18', b'0', b'0', 'admin', '2022-08-20 13:23:18', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (78, 13, 3, 'Luslec', 'jsluslec @itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-14', b'0', b'0', 'admin', '2022-08-20 13:30:58', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (79, 13, 3, 'Riso', 'jsriso @itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-31', b'0', b'0', 'admin', '2022-08-20 14:18:24', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (80, 13, 3, 'Braxon', 'jsbraxon@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-07-21', b'0', b'0', 'admin', '2022-08-20 14:51:49', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (81, 14, 3, 'Lipa', 'jslipa@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-13', b'0', b'0', 'admin', '2022-08-20 14:54:37', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (82, 14, 3, 'Melfiore', 'jsmelfiore@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-20', b'0', b'1', 'admin', '2022-08-20 15:15:31', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (83, 15, 3, 'Kirito', 'jskirito@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-20', b'0', b'1', 'admin', '2022-08-20 17:20:10', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (84, 15, 3, 'Yangkai', 'jsyangkai@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-01', b'0', b'0', 'admin', '2022-08-20 17:51:48', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (85, 15, 3, 'Tanjiro', 'jstanjiro@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-20 17:51:59', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (86, 15, 3, 'Cosima', 'jscosima@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-20', b'0', b'1', 'admin', '2022-08-20 18:00:03', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (87, 15, 3, 'Kraugel', 'jskraugel@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-20', b'0', b'0', 'admin', '2022-08-20 18:01:34', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (88, 15, 3, 'Target', 'jstarget@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-04-30', b'0', b'0', 'admin', '2022-08-20 18:05:27', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (89, 15, 3, 'Bitsy', 'jsbitsy@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-07-04', b'0', b'0', 'admin', '2022-08-22 10:14:23', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (90, 16, 3, 'Elikim', 'jselikim@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-24', b'0', b'0', 'admin', '2022-08-22 10:25:15', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (91, 16, 3, 'Azman', 'jsazman@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-25', b'0', b'0', 'admin', '2022-08-22 11:38:04', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (92, 17, 3, 'Asimov', 'jsasimov@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-07-05', b'0', b'0', NULL, '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (93, 18, 3, 'Sanji', 'jssanji@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-18', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (94, 18, 3, 'Omen', 'jsomen@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-08', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (95, 18, 3, 'Unsei', 'jsunsei@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-13', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (96, 19, 3, 'Teteng', 'jsteteng@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-04', b'0', b'1', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (97, 19, 3, 'Dekideks', 'jsdekideks@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-05-17', b'0', b'1', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (98, 19, 3, 'Shinmon', 'jsshinmon@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-10', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (99, 19, 3, 'Vanilla', 'jsvanilla@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-11', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (100, 19, 3, 'Bryle', 'jsbryle@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-07-21', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (101, 19, 3, 'Huweyjay', 'jshuweyjay@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-13', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (102, 19, 3, 'Suichi', 'jssuichi@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-06-15', b'0', b'0', 'admin', '2022-08-22 10:25:15', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (103, 1, 4, 'GuestA', 'guest1@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (104, 2, 4, 'GuestB', 'guest2@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'admin', '2022-08-22 18:03:06', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (111, 4, 3, 'Yanu', 'jsyanu@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2022-07-04', b'1', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (112, 8, 2, 'Japs', 'jsjaps@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (113, 8, 2, 'ZhongDa', 'jszhongDa@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (114, 8, 2, 'Boby', 'jsboby@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (115, 11, 2, 'Jlevy', 'jsjlevy@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (116, 10, 2, 'Kawhi', 'jskawhi@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (117, 10, 2, 'Wilt', 'jswilt@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (119, 12, 2, 'Zilong', 'jszilong@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (120, 12, 2, 'Artz', 'jsartz@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (122, 13, 2, 'Horuses', 'jshoruses@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (123, 13, 2, 'Siso', 'jssiso@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (124, 13, 2, 'Machao', 'jsmachao@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (125, 9, 2, 'Kubilai', 'jskubilai@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (126, 9, 2, 'Maddox', 'jsmaddox@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (127, 15, 2, 'Clinton', 'jsclinton@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (128, 14, 2, 'Alfred', 'jsalfred@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (129, 15, 2, 'Cano', 'jscano@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (130, 16, 2, 'YM', 'jsym@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (131, 19, 2, 'Bound', 'jsbound@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (132, 19, 2, 'Rockerol', 'jsrockerol@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (133, 18, 2, 'Freddie', 'jsfreddie@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (134, 19, 2, 'Mentou', 'jsmentou@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (135, 18, 2, 'Single', 'jssingle@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (136, 17, 2, 'Xuande', 'jsxuande@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (137, 19, 2, 'Timio', 'jstimio@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (138, 11, 2, 'Daseng', 'jsdaseng@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (139, 11, 2, 'Kodadam', 'jskodadam@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-05 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (140, 15, 2, 'Fortune', 'jsfortune@itcom888.com', '$2a$10$Cae.7cPW3Sni1/FYGU099OOkSfILlPJ8QU2TckXGdWY05TGVhn69C', '2020-09-15', b'0', b'0', 'Admin', '2022-09-06 23:26:21', 'luslec', '2022-09-06 10:52:16', NULL, NULL);
INSERT INTO `tbl_user` VALUES (141, 8, 2, 'Fridy', 'jsfridy@itcom888.com', '$2a$10$7PHAWP6tpYV5K.dhrm4M..SnGK5wurPU5hHA66.ah6IIz.GpFcOxK', '2020-09-15', b'0', b'0', 'Admin', '2022-09-15 11:38:24', 'luslec', '2022-09-15 12:27:36', NULL, NULL);
INSERT INTO `tbl_user` VALUES (142, 10, 2, 'Xiaolang', 'jsxiaolang@itcom888.com', '$2a$10$0H7fXVFlg2.dsbguzYSYz.t6p8MGZ5ZFcJjmSv1eu6V8rB0q2VMGC', '2020-09-15', b'0', b'0', 'Admin', '2022-09-15 11:38:24', 'luslec', '2022-09-15 12:27:33', NULL, NULL);
INSERT INTO `tbl_user` VALUES (143, 12, 2, 'Curtis', 'jscurtis@itcom888.com', '$2a$10$JTSn1v0ozsH0U8hNGiP5V.i.w.uiKKEyNtiPWrgoo5.zHCZIqowyG', '2020-09-15', b'0', b'0', 'Admin', '2022-09-15 11:38:24', 'luslec', '2022-09-15 18:12:56', NULL, NULL);
INSERT INTO `tbl_user` VALUES (144, 7, 2, 'Yasser', 'jsyasser@itcom888.com', '$2a$10$JTSn1v0ozsH0U8hNGiP5V.i.w.uiKKEyNtiPWrgoo5.zHCZIqowyG', '2020-09-15', b'0', b'0', 'Admin', '2022-09-15 11:38:24', 'luslec', '2022-09-15 12:27:26', NULL, NULL);
INSERT INTO `tbl_user` VALUES (145, 13, 2, 'Higer', 'jshiger@itcom888.com', '$2a$10$8Rnx2fshYlYk1kWjMZQ18uu9/Dt0OcPtRZYSjRKLVpSJrYLSpy6VG', '2020-09-15', b'0', b'0', 'Admin', '2022-09-15 11:38:24', 'luslec', '2022-09-15 12:27:22', NULL, NULL);
INSERT INTO `tbl_user` VALUES (146, 9, 2, 'Rexdu', 'jsrexdu@itcom888.com', '$2a$10$8ho8WW1wMPsjemzAOQWC3.mK5MRfhIkpGUrDrwkrGqiyXOJCZ6IJq', '2020-09-15', b'0', b'0', 'Admin', '2022-09-15 11:38:24', 'luslec', '2022-09-15 12:27:11', NULL, NULL);
INSERT INTO `tbl_user` VALUES (147, 15, 2, 'Adriane', 'jsadrian@itcom888.com', '$2a$10$dlBYKPm49XaiAjrZh3SoG.P7qS7MloJWoz85SiuvHVcxbyILWmd.e', '2020-09-15', b'0', b'0', 'Admin', '2022-09-15 11:38:24', 'luslec', '2022-09-15 12:27:05', NULL, NULL);
INSERT INTO `tbl_user` VALUES (148, 3, 2, 'Stiles', 'jsstiles@itcom888.com', '$2a$10$8Rnx2fshYlYk1kWjMZQ18uu9/Dt0OcPtRZYSjRKLVpSJrYLSpy6VG', '2020-09-15', b'0', b'0', 'Admin', '2022-09-15 11:38:24', 'luslec', '2022-09-15 12:27:05', NULL, NULL);
INSERT INTO `tbl_user` VALUES (149, 2, 2, 'Chappu', 'jschappu@itcom888.com', '$2a$10$8Rnx2fshYlYk1kWjMZQ18uu9/Dt0OcPtRZYSjRKLVpSJrYLSpy6VG', '2020-09-15', b'0', b'0', 'Admin', '2022-09-15 11:38:24', 'luslec', '2022-09-15 12:27:05', NULL, NULL);
INSERT INTO `tbl_user` VALUES (150, 4, 2, 'Jucce', 'jsjucce@itcom888.com', '$2a$10$8Rnx2fshYlYk1kWjMZQ18uu9/Dt0OcPtRZYSjRKLVpSJrYLSpy6VG', '2020-09-15', b'0', b'0', 'Admin', '2022-09-15 11:38:24', 'luslec', '2022-09-15 12:27:05', NULL, NULL);
INSERT INTO `tbl_user` VALUES (151, 1, 2, 'Dandi', 'jsdandi@itcom888.com', '$2a$10$8Rnx2fshYlYk1kWjMZQ18uu9/Dt0OcPtRZYSjRKLVpSJrYLSpy6VG', '2020-09-15', b'0', b'0', 'Admin', '2022-09-15 11:38:24', 'luslec', '2022-09-15 12:27:05', NULL, NULL);
INSERT INTO `tbl_user` VALUES (152, 3, 2, 'Morton', 'jsmorton@itcom888.com', '$2a$10$8Rnx2fshYlYk1kWjMZQ18uu9/Dt0OcPtRZYSjRKLVpSJrYLSpy6VG', '2020-09-15', b'0', b'0', 'Admin', '2022-09-15 11:38:24', 'luslec', '2022-09-15 12:27:05', NULL, NULL);
INSERT INTO `tbl_user` VALUES (153, 7, 2, 'Tonyjaa', 'jstonyjaa@itcom888.com', '$2a$10$8Rnx2fshYlYk1kWjMZQ18uu9/Dt0OcPtRZYSjRKLVpSJrYLSpy6VG', '2020-09-15', b'0', b'0', 'Admin', '2022-09-15 11:38:24', 'luslec', '2022-09-15 12:27:05', NULL, NULL);
INSERT INTO `tbl_user` VALUES (154, 0, 0, NULL, NULL, '$2a$10$mPx3hTY483Is/NbCJYLQR.0kNE8lxRo.TXVjTW8b2YPruaaN8v8by', NULL, b'0', b'0', NULL, '2022-11-11 12:18:28', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (155, 0, 0, NULL, NULL, '$2a$10$r6pWGNTUjA//fe/qnvOtqehWG6ieRu5/wt0LFcS5UtCizr3bOtgf2', NULL, b'0', b'0', NULL, '2022-11-11 12:23:57', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (156, 0, 0, NULL, NULL, '$2a$10$/LkMFlR87dajRZhDrA8VeeHQQSj9nJHIwdW3cDERGssrt1MscTMb2', NULL, b'0', b'0', NULL, '2022-11-11 12:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (157, 1, 1, 'Test1', 'email@gg.com', '$2a$10$0aEBMrsccm5teOCQ7qOZxeDiObYtAkzRsSgyvzZW0YPPZnSZD7vl2', '2022-06-23', b'0', b'0', NULL, '2022-11-11 12:30:00', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Procedure structure for SelectAllUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelectAllUser`;
delimiter ;;
CREATE PROCEDURE `SelectAllUser`()
BEGIN
SELECT *
FROM tbl_user
WHERE team_id = 4;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelectAllUser2
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelectAllUser2`;
delimiter ;;
CREATE PROCEDURE `SelectAllUser2`(ctr VARCHAR(50))
BEGIN
SELECT *
FROM tbl_user
WHERE team_id = ctr;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
