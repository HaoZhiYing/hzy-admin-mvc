/*
 Navicat Premium Data Transfer

 Source Server         : 本机_postgresql
 Source Server Type    : PostgreSQL
 Source Server Version : 130003
 Source Host           : localhost:5432
 Source Catalog        : HzyAdminSpa
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 130003
 File Encoding         : 65001

 Date: 28/05/2021 14:48:05
*/


-- ----------------------------
-- Table structure for Member
-- ----------------------------
DROP TABLE IF EXISTS "public"."Member";
CREATE TABLE "public"."Member" (
  "Id" uuid NOT NULL,
  "Number" varchar(255) COLLATE "pg_catalog"."default",
  "Name" varchar(255) COLLATE "pg_catalog"."default",
  "Phone" varchar(255) COLLATE "pg_catalog"."default",
  "Sex" varchar(255) COLLATE "pg_catalog"."default",
  "Birthday" timestamp(6),
  "Photo" varchar(255) COLLATE "pg_catalog"."default",
  "Introduce" varchar(255) COLLATE "pg_catalog"."default",
  "FilePath" varchar(255) COLLATE "pg_catalog"."default",
  "UserId" uuid,
  "CreateTime" timestamp(6),
  "UpdateTime" timestamp(6)
)
;

-- ----------------------------
-- Records of Member
-- ----------------------------
INSERT INTO "public"."Member" VALUES ('96a1aa3d-a61a-42d0-954a-c71753fb2065', '123', '123', '123', '女', '2018-04-25 23:00:00', NULL, '<p>123</p>', NULL, 'ac18f496-e93d-42f0-b59e-e321acc85335', '2020-10-24 00:07:42', '2021-04-18 22:08:06');
INSERT INTO "public"."Member" VALUES ('9a604aa2-9ae6-4a2f-8ddb-d9e0289ead9e', '1', '测试会员', '18510912123', '男', '2019-07-08 11:47:24', '/upload/files/20210118/time_232747_old_name_hzy.png', '<p>888</p>', '/upload/files/20210118/time_233310_old_name_hzy.png', 'ac18f496-e93d-42f0-b59e-e321acc85335', '2018-04-25 23:00:00', '2021-01-19 14:19:47');

-- ----------------------------
-- Table structure for SysFunction
-- ----------------------------
DROP TABLE IF EXISTS "public"."SysFunction";
CREATE TABLE "public"."SysFunction" (
  "Id" uuid NOT NULL,
  "Number" int4,
  "Name" varchar(255) COLLATE "pg_catalog"."default",
  "ByName" varchar(255) COLLATE "pg_catalog"."default",
  "Remark" varchar(255) COLLATE "pg_catalog"."default",
  "UpdateTime" timestamp(6),
  "CreateTime" timestamp(6)
)
;

-- ----------------------------
-- Records of SysFunction
-- ----------------------------
INSERT INTO "public"."SysFunction" VALUES ('b6fd5425-504a-46a9-993b-2f8dc9158eb8', 80, '打印', 'Print', 'Print', '2021-04-18 22:08:06', '2016-06-20 13:40:52');
INSERT INTO "public"."SysFunction" VALUES ('c9518758-b2e1-4f51-b517-5282e273889c', 10, '显示', 'Display', 'Display', '2021-04-18 22:08:06', '2016-06-20 13:40:52');
INSERT INTO "public"."SysFunction" VALUES ('f27ecb0a-197d-47b1-b243-59a8c71302bf', 60, '检索', 'Search', 'Search', '2021-04-18 22:08:06', '2016-06-20 13:40:52');
INSERT INTO "public"."SysFunction" VALUES ('383e7ee2-7690-46ac-9230-65155c84aa30', 50, '保存', 'Save', 'Save', '2021-04-18 22:08:06', '2016-06-20 13:40:52');
INSERT INTO "public"."SysFunction" VALUES ('9c388461-2704-4c5e-a729-72c17e9018e1', 40, '删除', 'Delete', 'Delete', '2021-04-18 22:08:06', '2016-06-20 13:40:52');
INSERT INTO "public"."SysFunction" VALUES ('bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', 20, '添加', 'Insert', 'Insert', '2021-04-18 22:08:06', '2016-06-20 13:40:52');
INSERT INTO "public"."SysFunction" VALUES ('2401f4d0-60b0-4e2e-903f-84c603373572', 70, '导出', 'Export', 'Export', '2021-04-18 22:08:06', '2016-06-20 13:40:52');
INSERT INTO "public"."SysFunction" VALUES ('e7ef2a05-8317-41c3-b588-99519fe88bf9', 30, '修改', 'Update', 'Update', '2021-04-18 22:08:06', '2016-06-20 13:40:52');

-- ----------------------------
-- Table structure for SysMenu
-- ----------------------------
DROP TABLE IF EXISTS "public"."SysMenu";
CREATE TABLE "public"."SysMenu" (
  "Id" uuid NOT NULL,
  "Number" int4,
  "Name" varchar(255) COLLATE "pg_catalog"."default",
  "Url" varchar(255) COLLATE "pg_catalog"."default",
  "Router" varchar(255) COLLATE "pg_catalog"."default",
  "ComponentName" varchar(255) COLLATE "pg_catalog"."default",
  "Icon" varchar(255) COLLATE "pg_catalog"."default",
  "ParentId" uuid,
  "Show" int4,
  "Close" int4,
  "UpdateTime" timestamp(6),
  "CreateTime" timestamp(6)
)
;

-- ----------------------------
-- Records of SysMenu
-- ----------------------------
INSERT INTO "public"."SysMenu" VALUES ('63a6d076-3e22-4d26-85b4-08d8b9f578ef', 10, '基础图表', 'views/chart/base', '/chart/base', 'chart_base', NULL, '15455a8d-262d-4266-85b3-08d8b9f578ef', 1, 1, '2021-01-16 16:07:24', '2021-01-16 16:07:24');
INSERT INTO "public"."SysMenu" VALUES ('9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', 20, '更多示例', 'views/chart/more', '/chart/more', 'chart_more', NULL, '15455a8d-262d-4266-85b3-08d8b9f578ef', 1, 1, '2021-01-16 16:10:06', '2021-01-16 16:10:06');
INSERT INTO "public"."SysMenu" VALUES ('d788896b-4033-11eb-a2cb-4cedfb69a3e8', 100, '基础表格', 'views/baseList', '/baseList', 'base_list', NULL, '9674d439-864e-4bf8-9dd8-08d7d70ad6bb', 1, 1, '2020-12-17 14:49:10', '2020-12-17 14:49:12');
INSERT INTO "public"."SysMenu" VALUES ('35dc130e-4034-11eb-a2cb-4cedfb69a3e8', 110, '标准表格', 'views/list/index', '/list', 'list', NULL, '9674d439-864e-4bf8-9dd8-08d7d70ad6bb', 1, 1, '2020-12-17 14:51:05', '2020-12-17 14:51:07');
INSERT INTO "public"."SysMenu" VALUES ('9591f249-1471-44f7-86b5-6fdae8b93888', 100, '系统管理', NULL, NULL, NULL, 'DesktopOutlined', NULL, 1, 1, '2018-03-10 12:16:38', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('1ec76c4c-b9b3-4517-9854-f08cd11d653d', 90, '基础信息', NULL, NULL, NULL, 'GoldOutlined', NULL, 1, 1, '2021-01-18 19:33:46', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', 10, '更多示例', NULL, NULL, NULL, NULL, NULL, 1, 1, '2021-05-28 11:49:02.215519', '2021-05-28 11:49:02.215516');
INSERT INTO "public"."SysMenu" VALUES ('f55a8858-ede4-4380-85b2-08d8b9f578ef', 10, 'Antd Vue3.0组件库', 'views/antd_vue_components', '/antd/vue/components', 'antd_vue_components', 'LayoutOutlined', '6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', 1, 1, '2021-01-16 16:05:46', '2021-01-16 16:05:22');
INSERT INTO "public"."SysMenu" VALUES ('38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', 30, '按钮', 'views/button', '/button', 'button', 'AppstoreOutlined', '6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', 1, 1, '2021-01-16 16:04:05', '2020-12-17 14:58:05');
INSERT INTO "public"."SysMenu" VALUES ('15455a8d-262d-4266-85b3-08d8b9f578ef', 40, '图表 AntV G2', NULL, NULL, NULL, 'PieChartOutlined', '6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', 1, 1, '2021-01-16 16:06:33', '2021-01-16 16:06:33');
INSERT INTO "public"."SysMenu" VALUES ('9674d439-864e-4bf8-9dd8-08d7d70ad6bb', 50, '表格管理', NULL, NULL, NULL, 'TableOutlined', '6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', 1, 1, '2021-01-16 17:32:07', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('cc99f568-a831-4ea8-4c7a-08d8bba503bf', 60, '富文本编辑器', 'views/editor', '/editor', 'editor', 'PicRightOutlined', '6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', 1, 1, '2021-01-18 19:34:54', '2021-01-18 19:34:28');
INSERT INTO "public"."SysMenu" VALUES ('38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 100, '账户管理', 'views/system/user/index', '/system/user', 'system_user', 'UserOutlined', '9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, '2021-05-28 12:44:35.970955', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('60ae9382-31ab-4276-a379-d3876e9bb783', 110, '角色管理', 'views/system/role/index', '/system/role', 'system_role', 'TeamOutlined', '9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, '2021-05-28 12:45:15.574081', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('d721fc55-2174-40eb-bb37-5c54a158525a', 120, '功能管理', 'views/system/function/index', '/system/function', 'system_function', 'ControlOutlined', '9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, '2021-05-28 12:49:53.147933', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('e5d4da6b-aab0-4aaa-982f-43673e8152c0', 130, '菜单功能', 'views/system/menu/index', '/system/menu', 'system_menu', 'MenuOutlined', '9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, '2021-05-28 12:51:15.014863', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('bd024f3a-99a7-4407-861c-a016f243f222', 140, '角色功能', 'views/system/rolefunction/index', '/system/role/function', 'system_role_function', 'UserSwitchOutlined', '9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, '2021-05-28 12:53:04.316249', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('f35d64ae-ecb7-4d06-acfb-d91595966d9e', 150, '修改密码', 'views/system/changePassword/index', '/system/change/password', 'system_change_password', 'FormOutlined', '9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, '2021-05-28 12:55:04.237568', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', 160, '接口文档', 'views/system/swagger', '/system/swagger', 'system_swagger', 'FileSearchOutlined', '9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, '2021-05-28 12:56:14.225026', '2018-03-10 12:17:03');
INSERT INTO "public"."SysMenu" VALUES ('d29fde94-0d6a-4a64-8446-55ee63df5885', 170, '岗位管理', 'views/system/post/index', '/system/post', 'system_post', 'IdcardOutlined', '9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, '2021-05-28 12:56:55.842459', '2021-05-27 17:29:48.78474');
INSERT INTO "public"."SysMenu" VALUES ('0abfd53b-6bde-42c6-9f99-e32775bc31dd', 180, '组织机构', 'views/system/organization/index', '/system/organization', 'system_organization', 'ClusterOutlined', '9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, '2021-05-28 12:57:27.058675', '2021-05-27 20:27:55.571105');
INSERT INTO "public"."SysMenu" VALUES ('7c34c2fd-98ed-4655-aa04-bb00b915a751', 10, '会员管理', 'views/base/member', '/base/member', 'base_member', 'UsergroupAddOutlined', '1ec76c4c-b9b3-4517-9854-f08cd11d653d', 1, 1, '2021-05-28 12:58:22.175003', '2018-03-10 12:16:38');

-- ----------------------------
-- Table structure for SysMenuFunction
-- ----------------------------
DROP TABLE IF EXISTS "public"."SysMenuFunction";
CREATE TABLE "public"."SysMenuFunction" (
  "Id" uuid NOT NULL,
  "MenuId" uuid,
  "FunctionId" uuid,
  "UpdateTime" timestamp(6),
  "CreateTime" timestamp(6)
)
;

-- ----------------------------
-- Records of SysMenuFunction
-- ----------------------------
INSERT INTO "public"."SysMenuFunction" VALUES ('869a2231-5631-4067-b97b-08d88a2ced15', '4ce21a81-1cae-44d2-b29e-07058ff04b3e', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2020-11-16 20:41:23');
INSERT INTO "public"."SysMenuFunction" VALUES ('e28e11cd-27c5-475d-d6b1-08d8b9f5533b', 'f55a8858-ede4-4380-85b2-08d8b9f578ef', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-16 16:05:46');
INSERT INTO "public"."SysMenuFunction" VALUES ('bd144568-a24e-4f7e-d6b2-08d8b9f5533b', '15455a8d-262d-4266-85b3-08d8b9f578ef', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-16 16:06:33');
INSERT INTO "public"."SysMenuFunction" VALUES ('060d14f9-e066-44b9-d6b3-08d8b9f5533b', '63a6d076-3e22-4d26-85b4-08d8b9f578ef', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-16 16:07:24');
INSERT INTO "public"."SysMenuFunction" VALUES ('e136ccda-91ce-4041-d6b4-08d8b9f5533b', '9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-16 16:10:06');
INSERT INTO "public"."SysMenuFunction" VALUES ('b010f911-257e-4fa3-5b15-08d8ba019738', '9674d439-864e-4bf8-9dd8-08d7d70ad6bb', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-16 17:32:07');
INSERT INTO "public"."SysMenuFunction" VALUES ('944f5d6a-19dc-4804-8374-08d8bb7cd668', 'd788896b-4033-11eb-a2cb-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-18 14:46:52');
INSERT INTO "public"."SysMenuFunction" VALUES ('9d63d074-85e7-48bd-8375-08d8bb7cd668', '35dc130e-4034-11eb-a2cb-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-18 14:46:55');
INSERT INTO "public"."SysMenuFunction" VALUES ('11d28148-61da-4f49-8376-08d8bb7cd668', '38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-18 14:54:30');
INSERT INTO "public"."SysMenuFunction" VALUES ('f38d6e67-3f6f-495d-b759-08d8bba503c2', 'cc99f568-a831-4ea8-4c7a-08d8bba503bf', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-18 19:34:54');
INSERT INTO "public"."SysMenuFunction" VALUES ('5b21d63c-6611-4b39-9c26-1510118969b2', '0b7f8e2c-9faa-4496-9068-80b87ba1b64e', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('8aaa6319-d36a-4fcd-8797-19d97a077e1b', '74b837ae-d24f-4f57-b107-e20dbe70f5d3', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('7e466377-1810-4027-ae1b-227f53953b21', '74b837ae-d24f-4f57-b107-e20dbe70f5d3', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('44dd215e-1edf-45aa-b6c6-4910ed14a228', 'b73c82f9-54ea-4f02-b7d9-fc3976becb19', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('5689b539-88db-49d2-8c5b-720e9ebc673e', '74b837ae-d24f-4f57-b107-e20dbe70f5d3', '2401f4d0-60b0-4e2e-903f-84c603373572', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('b8aa1a54-9076-4c72-a323-7b3b95ab26f4', '74b837ae-d24f-4f57-b107-e20dbe70f5d3', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('a3074d55-141e-496e-a55c-93b5fd2dce6c', '74b837ae-d24f-4f57-b107-e20dbe70f5d3', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('bb14769d-4760-4341-9faf-9fa82eeada65', '2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('7861b618-0b12-4a56-abda-a5e8d17ac5d7', '2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('09a29222-8f8d-4ca6-9bd1-aeddbabe7d7b', '2dc579dc-2325-4063-b051-e92454ee3838', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('c2207f27-9caa-44f7-a31f-0b757b973e23', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', '2401f4d0-60b0-4e2e-903f-84c603373572', '2021-05-28 12:44:36.038687', '2021-05-28 12:44:36.038685');
INSERT INTO "public"."SysMenuFunction" VALUES ('e01f16a4-04c2-41de-9c20-be1747cf31af', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-05-28 12:44:36.044805', '2021-05-28 12:44:36.044804');
INSERT INTO "public"."SysMenuFunction" VALUES ('0a4acc41-95d6-4cbc-a3ca-269e0a4061eb', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-05-28 12:44:36.053798', '2021-05-28 12:44:36.053797');
INSERT INTO "public"."SysMenuFunction" VALUES ('de9fa7c5-2c58-414f-8186-b68036044ed7', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-05-28 12:44:36.056969', '2021-05-28 12:44:36.056968');
INSERT INTO "public"."SysMenuFunction" VALUES ('2cf7a5e1-a38e-45d6-949e-e8bb65f60a5c', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-05-28 12:44:36.058871', '2021-05-28 12:44:36.05887');
INSERT INTO "public"."SysMenuFunction" VALUES ('1b4203a4-9fc4-42f8-9122-f1b3cde687e9', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-05-28 12:44:36.060633', '2021-05-28 12:44:36.060632');
INSERT INTO "public"."SysMenuFunction" VALUES ('8c85e128-83ad-4079-8754-ac5679b04df6', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-28 12:44:36.062374', '2021-05-28 12:44:36.062373');
INSERT INTO "public"."SysMenuFunction" VALUES ('1a727d75-867e-4292-9024-f66a292b465f', '60ae9382-31ab-4276-a379-d3876e9bb783', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-05-28 12:45:15.591113', '2021-05-28 12:45:15.591112');
INSERT INTO "public"."SysMenuFunction" VALUES ('983ca076-0761-48bf-85e3-18bb24685a09', '60ae9382-31ab-4276-a379-d3876e9bb783', '2401f4d0-60b0-4e2e-903f-84c603373572', '2021-05-28 12:45:15.592868', '2021-05-28 12:45:15.592867');
INSERT INTO "public"."SysMenuFunction" VALUES ('25cfd1d0-04c4-4b2c-b534-7f3c8c0eb06d', '60ae9382-31ab-4276-a379-d3876e9bb783', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-28 12:45:15.594633', '2021-05-28 12:45:15.594632');
INSERT INTO "public"."SysMenuFunction" VALUES ('4f40ce17-c29c-4448-9d1d-46aab970789a', '60ae9382-31ab-4276-a379-d3876e9bb783', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-05-28 12:45:15.596536', '2021-05-28 12:45:15.596535');
INSERT INTO "public"."SysMenuFunction" VALUES ('c848edb2-00b3-4f67-9362-72d3a2eea88b', '60ae9382-31ab-4276-a379-d3876e9bb783', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-05-28 12:45:15.598695', '2021-05-28 12:45:15.598694');
INSERT INTO "public"."SysMenuFunction" VALUES ('ed0eaf25-aaff-4e8b-9a85-f173603510ef', '60ae9382-31ab-4276-a379-d3876e9bb783', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-05-28 12:45:15.600549', '2021-05-28 12:45:15.600548');
INSERT INTO "public"."SysMenuFunction" VALUES ('7ec9b0fa-54ee-498e-a69b-8f689d019611', '60ae9382-31ab-4276-a379-d3876e9bb783', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-05-28 12:45:15.60243', '2021-05-28 12:45:15.602429');
INSERT INTO "public"."SysMenuFunction" VALUES ('101baf28-dbfa-41e8-aca3-b136e02aee8b', 'd721fc55-2174-40eb-bb37-5c54a158525a', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-05-28 12:49:53.159421', '2021-05-28 12:49:53.15942');
INSERT INTO "public"."SysMenuFunction" VALUES ('a96cc666-927d-4d27-8174-9c321f41236d', 'd721fc55-2174-40eb-bb37-5c54a158525a', '2401f4d0-60b0-4e2e-903f-84c603373572', '2021-05-28 12:49:53.161381', '2021-05-28 12:49:53.16138');
INSERT INTO "public"."SysMenuFunction" VALUES ('cf317057-34fb-4a07-91c6-86a3cbc541fa', 'd721fc55-2174-40eb-bb37-5c54a158525a', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-05-28 12:49:53.163216', '2021-05-28 12:49:53.163216');
INSERT INTO "public"."SysMenuFunction" VALUES ('511ef9d4-d4b6-4053-9b37-121f06b726c7', 'd721fc55-2174-40eb-bb37-5c54a158525a', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-05-28 12:49:53.165177', '2021-05-28 12:49:53.165176');
INSERT INTO "public"."SysMenuFunction" VALUES ('4c74ee6a-dcba-4192-b976-4e8fcf33a061', 'd721fc55-2174-40eb-bb37-5c54a158525a', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-28 12:49:53.167247', '2021-05-28 12:49:53.167246');
INSERT INTO "public"."SysMenuFunction" VALUES ('3315859e-bad8-42a6-a9fc-7deaeb5f6b79', 'd721fc55-2174-40eb-bb37-5c54a158525a', 'b6fd5425-504a-46a9-993b-2f8dc9158eb8', '2021-05-28 12:49:53.170532', '2021-05-28 12:49:53.170531');
INSERT INTO "public"."SysMenuFunction" VALUES ('546cc6af-bfa3-4b61-8fa8-85713e38bc60', 'd721fc55-2174-40eb-bb37-5c54a158525a', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-05-28 12:49:53.177745', '2021-05-28 12:49:53.177744');
INSERT INTO "public"."SysMenuFunction" VALUES ('23b4af49-6a18-471d-9f09-88296c234619', 'd721fc55-2174-40eb-bb37-5c54a158525a', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-05-28 12:49:53.179972', '2021-05-28 12:49:53.17997');
INSERT INTO "public"."SysMenuFunction" VALUES ('0943b658-9fe1-4c9b-b583-6899cc364605', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-05-28 12:51:15.029778', '2021-05-28 12:51:15.029776');
INSERT INTO "public"."SysMenuFunction" VALUES ('b1b627c4-ac62-4dac-b4cc-c71392040543', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-05-28 12:51:15.031631', '2021-05-28 12:51:15.03163');
INSERT INTO "public"."SysMenuFunction" VALUES ('179c8b22-efdd-475c-aa78-1b939ff05876', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-05-28 12:51:15.033537', '2021-05-28 12:51:15.033536');
INSERT INTO "public"."SysMenuFunction" VALUES ('1f02b56d-d844-45a1-bf68-0500d19f0c95', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-28 12:51:15.035704', '2021-05-28 12:51:15.035703');
INSERT INTO "public"."SysMenuFunction" VALUES ('774fe6ff-3ecc-40b0-a8a3-159cd2492fe2', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', '2401f4d0-60b0-4e2e-903f-84c603373572', '2021-05-28 12:51:15.038409', '2021-05-28 12:51:15.038408');
INSERT INTO "public"."SysMenuFunction" VALUES ('81a43621-60cf-4f04-9279-13480d37e6a4', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 'b6fd5425-504a-46a9-993b-2f8dc9158eb8', '2021-05-28 12:51:15.040816', '2021-05-28 12:51:15.040815');
INSERT INTO "public"."SysMenuFunction" VALUES ('b2dd663b-67f3-478b-b8aa-cbe52480e133', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-05-28 12:51:15.042685', '2021-05-28 12:51:15.042684');
INSERT INTO "public"."SysMenuFunction" VALUES ('c4bfe58e-1cb8-49db-a942-919d46f79be9', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-05-28 12:51:15.044538', '2021-05-28 12:51:15.044537');
INSERT INTO "public"."SysMenuFunction" VALUES ('4f666139-2c4a-400b-bd35-b67b8aa1fe7d', 'bd024f3a-99a7-4407-861c-a016f243f222', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-28 12:53:04.335691', '2021-05-28 12:53:04.33569');
INSERT INTO "public"."SysMenuFunction" VALUES ('8a691543-93a0-4e57-8411-c4723ecf5627', 'f35d64ae-ecb7-4d06-acfb-d91595966d9e', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-28 12:55:04.2649', '2021-05-28 12:55:04.264899');
INSERT INTO "public"."SysMenuFunction" VALUES ('bec7a649-ed53-4471-bfd7-57978d397dae', '9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-28 12:56:14.262449', '2021-05-28 12:56:14.262449');
INSERT INTO "public"."SysMenuFunction" VALUES ('f0eef5bb-f327-4db7-af6c-c80bfb25389d', 'd29fde94-0d6a-4a64-8446-55ee63df5885', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-28 12:56:55.868954', '2021-05-28 12:56:55.868952');
INSERT INTO "public"."SysMenuFunction" VALUES ('0f03b724-798b-4aa0-bd30-e4accacdd123', 'd29fde94-0d6a-4a64-8446-55ee63df5885', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-05-28 12:56:55.871339', '2021-05-28 12:56:55.871338');
INSERT INTO "public"."SysMenuFunction" VALUES ('96581bb8-5f2d-460f-8cc2-a44247e791a7', 'd29fde94-0d6a-4a64-8446-55ee63df5885', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-05-28 12:56:55.874298', '2021-05-28 12:56:55.874297');
INSERT INTO "public"."SysMenuFunction" VALUES ('86d6303f-463e-4874-843e-a8a76ebe50d8', 'd29fde94-0d6a-4a64-8446-55ee63df5885', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-05-28 12:56:55.876391', '2021-05-28 12:56:55.87639');
INSERT INTO "public"."SysMenuFunction" VALUES ('93e91f91-3560-460d-9eea-760fa2b2fb66', 'd29fde94-0d6a-4a64-8446-55ee63df5885', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-05-28 12:56:55.885913', '2021-05-28 12:56:55.885912');
INSERT INTO "public"."SysMenuFunction" VALUES ('da4e3d9f-4e27-41af-8dd7-a682c70176c5', 'd29fde94-0d6a-4a64-8446-55ee63df5885', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-05-28 12:56:55.905277', '2021-05-28 12:56:55.905275');
INSERT INTO "public"."SysMenuFunction" VALUES ('0645a7de-51e6-4c8d-a4e3-f860edd22bf8', '0abfd53b-6bde-42c6-9f99-e32775bc31dd', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-28 12:57:27.08749', '2021-05-28 12:57:27.087489');
INSERT INTO "public"."SysMenuFunction" VALUES ('c4c16cef-501e-425d-88db-20bfcbaf461d', '0abfd53b-6bde-42c6-9f99-e32775bc31dd', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-05-28 12:57:27.089989', '2021-05-28 12:57:27.089989');
INSERT INTO "public"."SysMenuFunction" VALUES ('b43d31a9-b7a5-49ab-876c-2556745a9913', '0abfd53b-6bde-42c6-9f99-e32775bc31dd', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-05-28 12:57:27.09269', '2021-05-28 12:57:27.092689');
INSERT INTO "public"."SysMenuFunction" VALUES ('c6eb3b9b-8ceb-4aee-8a3f-0755ffaed9d4', '0abfd53b-6bde-42c6-9f99-e32775bc31dd', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-05-28 12:57:27.100924', '2021-05-28 12:57:27.100923');
INSERT INTO "public"."SysMenuFunction" VALUES ('dd7ac46b-9420-450e-bdc2-9110b0056975', '0abfd53b-6bde-42c6-9f99-e32775bc31dd', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-05-28 12:57:27.102854', '2021-05-28 12:57:27.102853');
INSERT INTO "public"."SysMenuFunction" VALUES ('393ccaa5-973a-4efd-9a70-5da170be1e0d', '0abfd53b-6bde-42c6-9f99-e32775bc31dd', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-05-28 12:57:27.104745', '2021-05-28 12:57:27.104744');
INSERT INTO "public"."SysMenuFunction" VALUES ('d455b476-834c-4ef2-91ae-24f60559e029', '7c34c2fd-98ed-4655-aa04-bb00b915a751', '2401f4d0-60b0-4e2e-903f-84c603373572', '2021-05-28 12:58:22.196048', '2021-05-28 12:58:22.196047');
INSERT INTO "public"."SysMenuFunction" VALUES ('0e354fd7-690b-4d22-a9db-e5025e353bfe', '7c34c2fd-98ed-4655-aa04-bb00b915a751', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-05-28 12:58:22.198385', '2021-05-28 12:58:22.198384');
INSERT INTO "public"."SysMenuFunction" VALUES ('c6e873fc-a228-4418-b4ac-afc45a612af7', '7c34c2fd-98ed-4655-aa04-bb00b915a751', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-05-28 12:58:22.20033', '2021-05-28 12:58:22.200329');
INSERT INTO "public"."SysMenuFunction" VALUES ('30b4b575-4881-41ea-ae33-27bfa151e423', '7c34c2fd-98ed-4655-aa04-bb00b915a751', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-05-28 12:58:22.202228', '2021-05-28 12:58:22.202228');
INSERT INTO "public"."SysMenuFunction" VALUES ('92bd3806-c5b3-41fe-b6f9-c6fd7a9dd77e', '7c34c2fd-98ed-4655-aa04-bb00b915a751', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-05-28 12:58:22.204071', '2021-05-28 12:58:22.204071');
INSERT INTO "public"."SysMenuFunction" VALUES ('dbcb960d-c4cd-4d27-b1aa-e5aae91b727d', '7c34c2fd-98ed-4655-aa04-bb00b915a751', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-28 12:58:22.205996', '2021-05-28 12:58:22.205995');
INSERT INTO "public"."SysMenuFunction" VALUES ('c6faf480-7b10-4cd1-abb5-69e0e4ae2b85', '7c34c2fd-98ed-4655-aa04-bb00b915a751', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-05-28 12:58:22.208359', '2021-05-28 12:58:22.208358');
INSERT INTO "public"."SysMenuFunction" VALUES ('5a0ea751-0c50-482a-be15-afedb9faae64', '7c34c2fd-98ed-4655-aa04-bb00b915a751', 'b6fd5425-504a-46a9-993b-2f8dc9158eb8', '2021-05-28 12:58:22.210451', '2021-05-28 12:58:22.21045');

-- ----------------------------
-- Table structure for SysOrganization
-- ----------------------------
DROP TABLE IF EXISTS "public"."SysOrganization";
CREATE TABLE "public"."SysOrganization" (
  "Id" uuid NOT NULL,
  "Name" varchar(255) COLLATE "pg_catalog"."default",
  "OrderNumber" int4,
  "Leader" varchar(255) COLLATE "pg_catalog"."default",
  "Phone" varchar(255) COLLATE "pg_catalog"."default",
  "Email" varchar(255) COLLATE "pg_catalog"."default",
  "State" int4,
  "ParentId" uuid,
  "UpdateTime" timestamp(6),
  "CreateTime" timestamp(6)
)
;

-- ----------------------------
-- Records of SysOrganization
-- ----------------------------
INSERT INTO "public"."SysOrganization" VALUES ('f23777dd-2c03-449f-953b-df91c19dee5b', '阿里巴巴集团', 1, 'hzy', '18410912184', '18410912184@qq.com', 1, NULL, '2021-05-27 20:50:30.887062', '2021-05-27 20:50:30.88706');
INSERT INTO "public"."SysOrganization" VALUES ('47c547ea-e07a-4475-a4f7-ae09e3d8fafc', '成都分部', 2, '成都分部', '123123123', '123@qq.com', 1, 'f23777dd-2c03-449f-953b-df91c19dee5b', '2021-05-27 22:31:45.3727', '2021-05-27 21:01:49.667923');
INSERT INTO "public"."SysOrganization" VALUES ('a5e87436-53d5-4fff-8f2e-0af511db9ba4', '研发部门', 1, '研发部门', '1234323423', '12312@qq.com', 1, '47c547ea-e07a-4475-a4f7-ae09e3d8fafc', '2021-05-27 22:32:28.605359', '2021-05-27 22:32:07.53192');
INSERT INTO "public"."SysOrganization" VALUES ('05e55b19-261a-4df8-aea0-83a56f1aeb7a', '市场部门', 2, '市场部门', '123213', '123@qq.com', 1, '47c547ea-e07a-4475-a4f7-ae09e3d8fafc', '2021-05-27 22:32:46.230341', '2021-05-27 22:32:39.872389');
INSERT INTO "public"."SysOrganization" VALUES ('9cf32211-f255-4c2e-9c53-4258755e43c5', '测试部门', 3, '测试部门', '12313', '123123@qq.com', 1, '47c547ea-e07a-4475-a4f7-ae09e3d8fafc', '2021-05-27 22:32:58.914669', '2021-05-27 22:32:58.914666');
INSERT INTO "public"."SysOrganization" VALUES ('e898e8ad-2de7-46e0-b6f3-08f5fb9662ed', '财务部门', 4, '财务部门', '12323452345', '12312@qq.com', 1, '47c547ea-e07a-4475-a4f7-ae09e3d8fafc', '2021-05-27 22:33:13.1293', '2021-05-27 22:33:13.129298');
INSERT INTO "public"."SysOrganization" VALUES ('eb913607-932f-433b-8321-dfe35258bb88', '运维部门', 5, '运维部门', '1232133452', '12341@qq.com', 1, '47c547ea-e07a-4475-a4f7-ae09e3d8fafc', '2021-05-27 22:33:25.149334', '2021-05-27 22:33:25.149332');
INSERT INTO "public"."SysOrganization" VALUES ('1b001a4d-bce5-4e09-bc96-4e7da7686c48', '北京分部', 3, '北京分部', '132123', '13131', 1, 'f23777dd-2c03-449f-953b-df91c19dee5b', '2021-05-27 22:33:43.962922', '2021-05-27 22:33:43.962921');
INSERT INTO "public"."SysOrganization" VALUES ('6e36f7eb-3d03-417d-8815-c0e0f19ce6e6', '市场部门', 1, '市场部门', '234124234', '234234@qq.com', 1, '1b001a4d-bce5-4e09-bc96-4e7da7686c48', '2021-05-27 22:33:56.51131', '2021-05-27 22:33:56.511308');
INSERT INTO "public"."SysOrganization" VALUES ('aea25949-b0a0-49a3-9fbc-e80224b75fc1', '财务部门', 2, '财务部门', '435543535', '123@qq.com', 1, '1b001a4d-bce5-4e09-bc96-4e7da7686c48', '2021-05-27 22:34:10.854918', '2021-05-27 22:34:10.854917');

-- ----------------------------
-- Table structure for SysPost
-- ----------------------------
DROP TABLE IF EXISTS "public"."SysPost";
CREATE TABLE "public"."SysPost" (
  "Id" uuid NOT NULL,
  "Number" int4,
  "Code" varchar(255) COLLATE "pg_catalog"."default",
  "Name" varchar(255) COLLATE "pg_catalog"."default",
  "State" int4,
  "Remarks" varchar(255) COLLATE "pg_catalog"."default",
  "UpdateTime" timestamp(6),
  "CreateTime" timestamp(6)
)
;

-- ----------------------------
-- Records of SysPost
-- ----------------------------
INSERT INTO "public"."SysPost" VALUES ('96927c30-41d0-4ced-8e29-cbed35c90fb0', 1, 'ceo', '董事长', 1, NULL, '2021-05-27 20:26:21.909259', '2021-05-27 20:26:21.909257');
INSERT INTO "public"."SysPost" VALUES ('0716b4b0-9a06-43e9-8ae8-82c74875f83e', 2, 'se', '项目经理', 1, NULL, '2021-05-27 20:26:34.972365', '2021-05-27 20:26:34.972363');
INSERT INTO "public"."SysPost" VALUES ('f0c67537-8094-429a-b474-f54ac518609e', 3, 'hr', '人力资源', 1, NULL, '2021-05-27 20:26:44.009964', '2021-05-27 20:26:44.009961');
INSERT INTO "public"."SysPost" VALUES ('e46af329-6d08-442c-9837-f22cff954411', 4, 'user', '普通员工', 1, NULL, '2021-05-27 20:26:52.093087', '2021-05-27 20:26:52.093085');

-- ----------------------------
-- Table structure for SysRole
-- ----------------------------
DROP TABLE IF EXISTS "public"."SysRole";
CREATE TABLE "public"."SysRole" (
  "Id" uuid NOT NULL,
  "Number" int4,
  "Name" varchar(255) COLLATE "pg_catalog"."default",
  "Remark" varchar(255) COLLATE "pg_catalog"."default",
  "IsDelete" int4,
  "UpdateTime" timestamp(6),
  "CreateTime" timestamp(6)
)
;

-- ----------------------------
-- Records of SysRole
-- ----------------------------
INSERT INTO "public"."SysRole" VALUES ('18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 1, '超级管理员', '拥有所有权限', 0, '2021-01-10 11:25:12', '2016-07-06 17:59:20');
INSERT INTO "public"."SysRole" VALUES ('40ff1844-c099-4061-98e0-cd6e544fcfd3', 2, '普通用户', '普通用户', 1, '2021-01-30 00:51:17', '2016-07-06 17:59:20');

-- ----------------------------
-- Table structure for SysRoleMenuFunction
-- ----------------------------
DROP TABLE IF EXISTS "public"."SysRoleMenuFunction";
CREATE TABLE "public"."SysRoleMenuFunction" (
  "Id" uuid NOT NULL,
  "RoleId" uuid,
  "MenuId" uuid,
  "FunctionId" uuid,
  "UpdateTime" timestamp(6),
  "CreateTime" timestamp(6)
)
;

-- ----------------------------
-- Records of SysRoleMenuFunction
-- ----------------------------
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('93ce6573-523e-4e3c-3d63-08d88bc25510', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '0b7f8e2c-9faa-4496-9068-80b87ba1b64e', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2020-11-18 21:03:36');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('463acea8-60b0-4a59-7de7-08d8bb7c529a', '40ff1844-c099-4061-98e0-cd6e544fcfd3', '60ae9382-31ab-4276-a379-d3876e9bb783', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-01-18 14:45:40', '2021-01-18 14:45:40');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('f1b431b3-d7ef-44ca-7de8-08d8bb7c529a', '40ff1844-c099-4061-98e0-cd6e544fcfd3', '60ae9382-31ab-4276-a379-d3876e9bb783', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-01-18 14:45:40', '2021-01-18 14:45:40');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('d80e356e-0d71-411f-7de9-08d8bb7c529a', '40ff1844-c099-4061-98e0-cd6e544fcfd3', '60ae9382-31ab-4276-a379-d3876e9bb783', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-01-18 14:45:40', '2021-01-18 14:45:40');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('2f2f0c63-2e13-4137-98db-08d8bc47a2c8', '40ff1844-c099-4061-98e0-cd6e544fcfd3', 'f55a8858-ede4-4380-85b2-08d8b9f578ef', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-01-19 14:58:36', '2021-01-19 14:58:36');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('0be2633e-046d-40fa-98dc-08d8bc47a2c8', '40ff1844-c099-4061-98e0-cd6e544fcfd3', '38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-01-19 14:58:38', '2021-01-19 14:58:38');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('1e882fbe-fd88-407e-98dd-08d8bc47a2c8', '40ff1844-c099-4061-98e0-cd6e544fcfd3', '63a6d076-3e22-4d26-85b4-08d8b9f578ef', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-01-19 14:58:42', '2021-01-19 14:58:42');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('de19371d-5fbe-4fc3-98de-08d8bc47a2c8', '40ff1844-c099-4061-98e0-cd6e544fcfd3', '9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-01-19 14:58:42', '2021-01-19 14:58:42');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('12ceef4d-03c0-45cc-98df-08d8bc47a2c8', '40ff1844-c099-4061-98e0-cd6e544fcfd3', 'd788896b-4033-11eb-a2cb-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-01-19 14:58:43', '2021-01-19 14:58:43');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('1c082c5a-8383-443f-98e0-08d8bc47a2c8', '40ff1844-c099-4061-98e0-cd6e544fcfd3', '35dc130e-4034-11eb-a2cb-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-01-19 14:58:44', '2021-01-19 14:58:44');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('d5d321ce-28e6-4742-98e1-08d8bc47a2c8', '40ff1844-c099-4061-98e0-cd6e544fcfd3', 'cc99f568-a831-4ea8-4c7a-08d8bba503bf', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-01-19 14:58:45', '2021-01-19 14:58:45');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('99e29596-75a0-4736-98e2-08d8bc47a2c8', '40ff1844-c099-4061-98e0-cd6e544fcfd3', '9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-01-19 14:58:52', '2021-01-19 14:58:52');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('c0c76981-828b-435e-98e3-08d8bc47a2c8', '40ff1844-c099-4061-98e0-cd6e544fcfd3', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-01-19 15:12:04', '2021-01-19 15:12:04');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('6a3d6ac5-11c7-4592-98e4-08d8bc47a2c8', '40ff1844-c099-4061-98e0-cd6e544fcfd3', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-01-19 15:12:04', '2021-01-19 15:12:04');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('ed97d135-4408-41cc-98e5-08d8bc47a2c8', '40ff1844-c099-4061-98e0-cd6e544fcfd3', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-01-19 15:12:04', '2021-01-19 15:12:04');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('e18a8dad-716d-49cd-98e6-08d8bc47a2c8', '40ff1844-c099-4061-98e0-cd6e544fcfd3', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-01-19 15:12:04', '2021-01-19 15:12:04');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('affc5760-c5bd-43fb-98e7-08d8bc47a2c8', '40ff1844-c099-4061-98e0-cd6e544fcfd3', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-01-19 15:12:04', '2021-01-19 15:12:04');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('eb2ac2a6-36ac-4ee1-f05e-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-12 20:25:24', '2021-05-12 20:25:24');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('5ee46cd1-b2a3-4bc2-f05f-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'f55a8858-ede4-4380-85b2-08d8b9f578ef', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-12 20:25:24', '2021-05-12 20:25:24');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('ec8ed1ba-61c3-4219-f060-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '63a6d076-3e22-4d26-85b4-08d8b9f578ef', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-12 20:25:25', '2021-05-12 20:25:25');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('9d35e600-ee44-479a-f061-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-12 20:25:25', '2021-05-12 20:25:25');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('fcccd730-d83e-47b1-f062-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'd788896b-4033-11eb-a2cb-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-12 20:25:26', '2021-05-12 20:25:26');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('0946c554-84a7-4adb-f063-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '35dc130e-4034-11eb-a2cb-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-12 20:25:27', '2021-05-12 20:25:27');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('57a97a6c-cc65-4ac6-f064-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'cc99f568-a831-4ea8-4c7a-08d8bba503bf', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-12 20:25:27', '2021-05-12 20:25:27');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('eee9d884-a577-40d2-f06a-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'bd024f3a-99a7-4407-861c-a016f243f222', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-12 20:25:32', '2021-05-12 20:25:32');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('6dfa0985-81fa-4242-f06b-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'f35d64ae-ecb7-4d06-acfb-d91595966d9e', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-12 20:25:33', '2021-05-12 20:25:33');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('915ac7f5-4e1b-4d92-f06c-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-12 20:25:33', '2021-05-12 20:25:33');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('754ad754-bbc4-47bc-f088-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '7c34c2fd-98ed-4655-aa04-bb00b915a751', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-12 20:25:38', '2021-05-12 20:25:38');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('c636d222-58dc-410f-f089-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '7c34c2fd-98ed-4655-aa04-bb00b915a751', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-05-12 20:25:38', '2021-05-12 20:25:38');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('92cec1e4-cc90-4c20-f08a-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '7c34c2fd-98ed-4655-aa04-bb00b915a751', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-05-12 20:25:38', '2021-05-12 20:25:38');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('c5ad81cc-09ec-4007-f08b-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '7c34c2fd-98ed-4655-aa04-bb00b915a751', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-05-12 20:25:38', '2021-05-12 20:25:38');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('f058d1c8-7633-4781-f08c-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '7c34c2fd-98ed-4655-aa04-bb00b915a751', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-05-12 20:25:38', '2021-05-12 20:25:38');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('9967c23d-9101-4543-f08d-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '7c34c2fd-98ed-4655-aa04-bb00b915a751', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-05-12 20:25:38', '2021-05-12 20:25:38');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('2d23022c-df34-4847-f08e-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '7c34c2fd-98ed-4655-aa04-bb00b915a751', '2401f4d0-60b0-4e2e-903f-84c603373572', '2021-05-12 20:25:38', '2021-05-12 20:25:38');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('d92cc026-dfcf-49fe-f08f-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '7c34c2fd-98ed-4655-aa04-bb00b915a751', 'b6fd5425-504a-46a9-993b-2f8dc9158eb8', '2021-05-12 20:25:38', '2021-05-12 20:25:38');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('cb043048-142d-464d-f0a4-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-12 20:25:42', '2021-05-12 20:25:42');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('82eb14da-2b31-45d8-f0a5-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-05-12 20:25:42', '2021-05-12 20:25:42');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('8e87c5cb-1c6e-481e-f0a6-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-05-12 20:25:42', '2021-05-12 20:25:42');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('623eaf4e-5263-4fb9-f0a7-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-05-12 20:25:42', '2021-05-12 20:25:42');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('ff047bdd-04f4-4597-f0a8-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-05-12 20:25:42', '2021-05-12 20:25:42');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('b3ac009f-017b-4512-f0a9-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-05-12 20:25:42', '2021-05-12 20:25:42');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('f2891613-0a65-4c93-f0aa-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', '2401f4d0-60b0-4e2e-903f-84c603373572', '2021-05-12 20:25:42', '2021-05-12 20:25:42');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('26250c7d-b504-44cc-f0bf-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '60ae9382-31ab-4276-a379-d3876e9bb783', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-12 20:25:46', '2021-05-12 20:25:46');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('e69fe992-e4a5-4ac9-f0c0-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '60ae9382-31ab-4276-a379-d3876e9bb783', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-05-12 20:25:46', '2021-05-12 20:25:46');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('fa279e29-f44f-4424-f0c1-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '60ae9382-31ab-4276-a379-d3876e9bb783', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-05-12 20:25:46', '2021-05-12 20:25:46');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('0920f21b-fbbf-45f4-f0c2-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '60ae9382-31ab-4276-a379-d3876e9bb783', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-05-12 20:25:46', '2021-05-12 20:25:46');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('541450f0-dbd3-4094-f0c3-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '60ae9382-31ab-4276-a379-d3876e9bb783', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-05-12 20:25:46', '2021-05-12 20:25:46');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('9ac7bdfb-7398-4dc8-f0c4-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '60ae9382-31ab-4276-a379-d3876e9bb783', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-05-12 20:25:46', '2021-05-12 20:25:46');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('6c934fa6-eff0-42c7-f0c5-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '60ae9382-31ab-4276-a379-d3876e9bb783', '2401f4d0-60b0-4e2e-903f-84c603373572', '2021-05-12 20:25:46', '2021-05-12 20:25:46');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('e02ef258-be98-4a5c-f0e1-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'd721fc55-2174-40eb-bb37-5c54a158525a', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-12 20:25:50', '2021-05-12 20:25:50');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('97c80c3a-d00e-4788-f0e2-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'd721fc55-2174-40eb-bb37-5c54a158525a', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-05-12 20:25:50', '2021-05-12 20:25:50');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('5d470ae4-66a5-4cdf-f0e3-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'd721fc55-2174-40eb-bb37-5c54a158525a', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-05-12 20:25:50', '2021-05-12 20:25:50');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('7e74f26c-f63e-42f0-f0e4-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'd721fc55-2174-40eb-bb37-5c54a158525a', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-05-12 20:25:50', '2021-05-12 20:25:50');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('68ab8acc-4d11-4e66-f0e5-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'd721fc55-2174-40eb-bb37-5c54a158525a', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-05-12 20:25:50', '2021-05-12 20:25:50');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('8e1ea93c-398c-4fe7-f0e6-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'd721fc55-2174-40eb-bb37-5c54a158525a', '2401f4d0-60b0-4e2e-903f-84c603373572', '2021-05-12 20:25:50', '2021-05-12 20:25:50');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('e08a05a7-c494-4e32-f0e7-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'd721fc55-2174-40eb-bb37-5c54a158525a', 'b6fd5425-504a-46a9-993b-2f8dc9158eb8', '2021-05-12 20:25:50', '2021-05-12 20:25:50');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('4ca56fed-fc32-4456-f0e8-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'd721fc55-2174-40eb-bb37-5c54a158525a', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-05-12 20:25:50', '2021-05-12 20:25:50');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('c5abda7a-230d-469f-f104-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-12 20:25:54', '2021-05-12 20:25:54');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('9f341e22-87c3-498a-f105-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-05-12 20:25:54', '2021-05-12 20:25:54');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('92837e44-e8d2-48a2-f106-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-05-12 20:25:54', '2021-05-12 20:25:54');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('052dd69b-c809-4f62-f107-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-05-12 20:25:54', '2021-05-12 20:25:54');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('a36d2f2e-56f4-4920-f108-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-05-12 20:25:54', '2021-05-12 20:25:54');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('f65adc84-d2a4-4f91-f109-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', '2401f4d0-60b0-4e2e-903f-84c603373572', '2021-05-12 20:25:54', '2021-05-12 20:25:54');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('704a78f1-5c00-4169-f10a-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 'b6fd5425-504a-46a9-993b-2f8dc9158eb8', '2021-05-12 20:25:54', '2021-05-12 20:25:54');
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('c9d1ed28-5f58-4c7e-f10b-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-05-12 20:25:54', '2021-05-12 20:25:54');

-- ----------------------------
-- Table structure for SysUser
-- ----------------------------
DROP TABLE IF EXISTS "public"."SysUser";
CREATE TABLE "public"."SysUser" (
  "Id" uuid NOT NULL,
  "Name" varchar(255) COLLATE "pg_catalog"."default",
  "LoginName" varchar(255) COLLATE "pg_catalog"."default",
  "Password" varchar(255) COLLATE "pg_catalog"."default",
  "Phone" varchar(255) COLLATE "pg_catalog"."default",
  "Email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "IsDelete" int4,
  "OrganizationId" uuid,
  "UpdateTime" timestamp(6),
  "CreateTime" timestamp(6)
)
;

-- ----------------------------
-- Records of SysUser
-- ----------------------------
INSERT INTO "public"."SysUser" VALUES ('ac18f496-e93d-42f0-b59e-e321acc85335', '用户', 'user', '123', '456456456', '18123456789@live.com', 1, 'f23777dd-2c03-449f-953b-df91c19dee5b', '2021-04-18 22:08:12', '2017-04-06 19:55:53');
INSERT INTO "public"."SysUser" VALUES ('0198459e-2034-4533-b843-5d227ad20740', '超级管理员', 'admin', '123456', '123123123', '1396510655@qq.com', 2, 'f23777dd-2c03-449f-953b-df91c19dee5b', '2021-05-24 10:52:53.390604', '2017-04-06 19:55:53');

-- ----------------------------
-- Table structure for SysUserPost
-- ----------------------------
DROP TABLE IF EXISTS "public"."SysUserPost";
CREATE TABLE "public"."SysUserPost" (
  "Id" uuid NOT NULL,
  "UserId" uuid,
  "PostId" uuid,
  "UpdateTime" timestamp(6),
  "CreateTime" timestamp(6)
)
;

-- ----------------------------
-- Records of SysUserPost
-- ----------------------------
INSERT INTO "public"."SysUserPost" VALUES ('5a6ac9ba-2ce7-4505-b5ea-65c6817b13f4', '0198459e-2034-4533-b843-5d227ad20740', '96927c30-41d0-4ced-8e29-cbed35c90fb0', '2021-05-28 10:00:39.150022', '2021-05-28 10:00:39.150021');
INSERT INTO "public"."SysUserPost" VALUES ('8be16163-ce6b-4abb-908c-f343c6df5ecc', 'ac18f496-e93d-42f0-b59e-e321acc85335', '0716b4b0-9a06-43e9-8ae8-82c74875f83e', '2021-05-28 10:33:35.213383', '2021-05-28 10:33:35.21338');

-- ----------------------------
-- Table structure for SysUserRole
-- ----------------------------
DROP TABLE IF EXISTS "public"."SysUserRole";
CREATE TABLE "public"."SysUserRole" (
  "Id" uuid NOT NULL,
  "UserId" uuid,
  "RoleId" uuid,
  "UpdateTime" timestamp(6),
  "CreateTime" timestamp(6)
)
;

-- ----------------------------
-- Records of SysUserRole
-- ----------------------------
INSERT INTO "public"."SysUserRole" VALUES ('4458a14e-a787-4a7a-9d9b-fd3de1ed07e3', '0198459e-2034-4533-b843-5d227ad20740', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '2021-05-28 10:00:39.147022', '2021-05-28 10:00:39.14702');
INSERT INTO "public"."SysUserRole" VALUES ('9c6e49e7-fcf0-4372-b726-9d9d8b9a55e8', 'ac18f496-e93d-42f0-b59e-e321acc85335', '40ff1844-c099-4061-98e0-cd6e544fcfd3', '2021-05-28 10:33:35.184957', '2021-05-28 10:33:35.184951');

-- ----------------------------
-- Primary Key structure for table Member
-- ----------------------------
ALTER TABLE "public"."Member" ADD CONSTRAINT "Member_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table SysFunction
-- ----------------------------
ALTER TABLE "public"."SysFunction" ADD CONSTRAINT "SysFunction_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table SysMenu
-- ----------------------------
ALTER TABLE "public"."SysMenu" ADD CONSTRAINT "SysMenu_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table SysMenuFunction
-- ----------------------------
ALTER TABLE "public"."SysMenuFunction" ADD CONSTRAINT "SysMenuFunction_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table SysOrganization
-- ----------------------------
ALTER TABLE "public"."SysOrganization" ADD CONSTRAINT "SysOrganization_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table SysPost
-- ----------------------------
ALTER TABLE "public"."SysPost" ADD CONSTRAINT "SysPost_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table SysRole
-- ----------------------------
ALTER TABLE "public"."SysRole" ADD CONSTRAINT "SysRole_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table SysRoleMenuFunction
-- ----------------------------
ALTER TABLE "public"."SysRoleMenuFunction" ADD CONSTRAINT "SysRoleMenuFunction_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table SysUser
-- ----------------------------
ALTER TABLE "public"."SysUser" ADD CONSTRAINT "SysUser_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table SysUserPost
-- ----------------------------
ALTER TABLE "public"."SysUserPost" ADD CONSTRAINT "SysUserPost_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table SysUserRole
-- ----------------------------
ALTER TABLE "public"."SysUserRole" ADD CONSTRAINT "SysUserRole_pkey" PRIMARY KEY ("Id");
