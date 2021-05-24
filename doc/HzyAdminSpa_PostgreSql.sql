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

 Date: 24/05/2021 10:37:15
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
INSERT INTO "public"."SysMenu" VALUES ('9674d439-864e-4bf8-9dd8-08d7d70ad6bb', 50, '表格管理', NULL, NULL, NULL, 'TableOutlined', NULL, 1, 1, '2021-01-16 17:32:07', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('f55a8858-ede4-4380-85b2-08d8b9f578ef', 10, 'Antd Vue3.0组件库', 'views/antd_vue_components', '/antd/vue/components', 'antd_vue_components', 'LayoutOutlined', NULL, 1, 1, '2021-01-16 16:05:46', '2021-01-16 16:05:22');
INSERT INTO "public"."SysMenu" VALUES ('15455a8d-262d-4266-85b3-08d8b9f578ef', 40, '图表 AntV G2', NULL, NULL, NULL, 'PieChartOutlined', NULL, 1, 1, '2021-01-16 16:06:33', '2021-01-16 16:06:33');
INSERT INTO "public"."SysMenu" VALUES ('63a6d076-3e22-4d26-85b4-08d8b9f578ef', 10, '基础图表', 'views/chart/base', '/chart/base', 'chart_base', NULL, '15455a8d-262d-4266-85b3-08d8b9f578ef', 1, 1, '2021-01-16 16:07:24', '2021-01-16 16:07:24');
INSERT INTO "public"."SysMenu" VALUES ('9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', 20, '更多示例', 'views/chart/more', '/chart/more', 'chart_more', NULL, '15455a8d-262d-4266-85b3-08d8b9f578ef', 1, 1, '2021-01-16 16:10:06', '2021-01-16 16:10:06');
INSERT INTO "public"."SysMenu" VALUES ('cc99f568-a831-4ea8-4c7a-08d8bba503bf', 60, '富文本编辑器', 'views/editor', '/editor', 'editor', 'PicRightOutlined', NULL, 1, 1, '2021-01-18 19:34:54', '2021-01-18 19:34:28');
INSERT INTO "public"."SysMenu" VALUES ('e5d4da6b-aab0-4aaa-982f-43673e8152c0', 130, '菜单功能', 'views/system/menu/index', '/system/menu', 'system_menu', NULL, '9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, '2021-01-01 18:39:59', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', 160, '接口文档', 'views/system/swagger', '/system/swagger', 'system_swagger', NULL, '9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, '2018-03-10 12:17:03', '2018-03-10 12:17:03');
INSERT INTO "public"."SysMenu" VALUES ('5c013900-4032-11eb-a2cb-4cedfb69a3e8', 1, '首页', 'views/home', NULL, 'home', 'HomeOutlined', NULL, 1, 0, '2021-01-19 14:58:17', '2020-12-17 14:37:26');
INSERT INTO "public"."SysMenu" VALUES ('d788896b-4033-11eb-a2cb-4cedfb69a3e8', 100, '基础表格', 'views/baseList', '/baseList', 'base_list', NULL, '9674d439-864e-4bf8-9dd8-08d7d70ad6bb', 1, 1, '2020-12-17 14:49:10', '2020-12-17 14:49:12');
INSERT INTO "public"."SysMenu" VALUES ('35dc130e-4034-11eb-a2cb-4cedfb69a3e8', 110, '标准表格', 'views/list/index', '/list', 'list', NULL, '9674d439-864e-4bf8-9dd8-08d7d70ad6bb', 1, 1, '2020-12-17 14:51:05', '2020-12-17 14:51:07');
INSERT INTO "public"."SysMenu" VALUES ('38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', 30, '按钮', 'views/button', '/button', 'button', 'AppstoreOutlined', NULL, 1, 1, '2021-01-16 16:04:05', '2020-12-17 14:58:05');
INSERT INTO "public"."SysMenu" VALUES ('d721fc55-2174-40eb-bb37-5c54a158525a', 120, '功能管理', 'views/system/function/index', '/system/function', 'system_function', NULL, '9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, '2021-01-30 00:50:48', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('9591f249-1471-44f7-86b5-6fdae8b93888', 100, '系统管理', NULL, NULL, NULL, 'DesktopOutlined', NULL, 1, 1, '2018-03-10 12:16:38', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 100, '账户管理', 'views/system/user/index', '/system/user', 'system_user', NULL, '9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, '2021-04-18 22:08:06', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('bd024f3a-99a7-4407-861c-a016f243f222', 140, '角色功能', 'views/system/rolefunction/index', '/system/role/function', 'system_role_function', NULL, '9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, '2021-01-10 12:21:06', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('7c34c2fd-98ed-4655-aa04-bb00b915a751', 10, '会员管理', 'views/base/member', '/base/member', 'base_member', NULL, '1ec76c4c-b9b3-4517-9854-f08cd11d653d', 1, 1, '2018-04-25 21:36:28', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('60ae9382-31ab-4276-a379-d3876e9bb783', 110, '角色管理', 'views/system/role/index', '/system/role', 'system_role', NULL, '9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, '2020-12-28 19:47:52', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('f35d64ae-ecb7-4d06-acfb-d91595966d9e', 150, '修改密码', 'views/system/changePassword/index', '/system/change/password', 'system_change_password', NULL, '9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, '2021-01-01 18:57:08', '2018-03-10 12:16:38');
INSERT INTO "public"."SysMenu" VALUES ('1ec76c4c-b9b3-4517-9854-f08cd11d653d', 90, '基础信息', NULL, NULL, NULL, 'GoldOutlined', NULL, 1, 1, '2021-01-18 19:33:46', '2018-03-10 12:16:38');

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
INSERT INTO "public"."SysMenuFunction" VALUES ('9d7baf7d-36b0-4b3b-a5ad-064c8dfc8324', '60ae9382-31ab-4276-a379-d3876e9bb783', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('869a2231-5631-4067-b97b-08d88a2ced15', '4ce21a81-1cae-44d2-b29e-07058ff04b3e', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2020-11-16 20:41:23');
INSERT INTO "public"."SysMenuFunction" VALUES ('e13e5d24-1753-4610-146e-08d8b51eb5f0', 'bd024f3a-99a7-4407-861c-a016f243f222', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-10 12:21:06');
INSERT INTO "public"."SysMenuFunction" VALUES ('e28e11cd-27c5-475d-d6b1-08d8b9f5533b', 'f55a8858-ede4-4380-85b2-08d8b9f578ef', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-16 16:05:46');
INSERT INTO "public"."SysMenuFunction" VALUES ('bd144568-a24e-4f7e-d6b2-08d8b9f5533b', '15455a8d-262d-4266-85b3-08d8b9f578ef', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-16 16:06:33');
INSERT INTO "public"."SysMenuFunction" VALUES ('060d14f9-e066-44b9-d6b3-08d8b9f5533b', '63a6d076-3e22-4d26-85b4-08d8b9f578ef', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-16 16:07:24');
INSERT INTO "public"."SysMenuFunction" VALUES ('e136ccda-91ce-4041-d6b4-08d8b9f5533b', '9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-16 16:10:06');
INSERT INTO "public"."SysMenuFunction" VALUES ('b010f911-257e-4fa3-5b15-08d8ba019738', '9674d439-864e-4bf8-9dd8-08d7d70ad6bb', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-16 17:32:07');
INSERT INTO "public"."SysMenuFunction" VALUES ('944f5d6a-19dc-4804-8374-08d8bb7cd668', 'd788896b-4033-11eb-a2cb-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-18 14:46:52');
INSERT INTO "public"."SysMenuFunction" VALUES ('9d63d074-85e7-48bd-8375-08d8bb7cd668', '35dc130e-4034-11eb-a2cb-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-18 14:46:55');
INSERT INTO "public"."SysMenuFunction" VALUES ('11d28148-61da-4f49-8376-08d8bb7cd668', '38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-18 14:54:30');
INSERT INTO "public"."SysMenuFunction" VALUES ('87415a83-bdda-41b4-8377-08d8bb7cd668', '9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-18 14:54:52');
INSERT INTO "public"."SysMenuFunction" VALUES ('f38d6e67-3f6f-495d-b759-08d8bba503c2', 'cc99f568-a831-4ea8-4c7a-08d8bba503bf', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-18 19:34:54');
INSERT INTO "public"."SysMenuFunction" VALUES ('44556847-a63d-430c-895c-08d8bc479908', '5c013900-4032-11eb-a2cb-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-19 14:58:17');
INSERT INTO "public"."SysMenuFunction" VALUES ('13c4defb-6d15-4e0a-e39f-08d91540fe0d', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-05-12 20:25:13', '2021-05-12 20:25:13');
INSERT INTO "public"."SysMenuFunction" VALUES ('c7ad9c6b-5736-43d5-e3a0-08d91540fe0d', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-05-12 20:25:13', '2021-05-12 20:25:13');
INSERT INTO "public"."SysMenuFunction" VALUES ('d5a0b0cc-7045-487a-e3a1-08d91540fe0d', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-05-12 20:25:13', '2021-05-12 20:25:13');
INSERT INTO "public"."SysMenuFunction" VALUES ('285ed47f-3f46-4443-e3a2-08d91540fe0d', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-12 20:25:13', '2021-05-12 20:25:13');
INSERT INTO "public"."SysMenuFunction" VALUES ('261ad456-12c5-447d-e3a3-08d91540fe0d', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', '2401f4d0-60b0-4e2e-903f-84c603373572', '2021-05-12 20:25:13', '2021-05-12 20:25:13');
INSERT INTO "public"."SysMenuFunction" VALUES ('4c222766-19fd-43d2-e3a4-08d91540fe0d', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 'b6fd5425-504a-46a9-993b-2f8dc9158eb8', '2021-05-12 20:25:13', '2021-05-12 20:25:13');
INSERT INTO "public"."SysMenuFunction" VALUES ('6d055aeb-3650-4103-e3a5-08d91540fe0d', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-05-12 20:25:13', '2021-05-12 20:25:13');
INSERT INTO "public"."SysMenuFunction" VALUES ('9719cf6e-bba6-47a9-e3a6-08d91540fe0d', 'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-05-12 20:25:13', '2021-05-12 20:25:13');
INSERT INTO "public"."SysMenuFunction" VALUES ('e2d0c07a-e74f-46f2-8991-113cd58c4785', '7c34c2fd-98ed-4655-aa04-bb00b915a751', '2401f4d0-60b0-4e2e-903f-84c603373572', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('5b21d63c-6611-4b39-9c26-1510118969b2', '0b7f8e2c-9faa-4496-9068-80b87ba1b64e', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('8aaa6319-d36a-4fcd-8797-19d97a077e1b', '74b837ae-d24f-4f57-b107-e20dbe70f5d3', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('8c0bf314-fa41-40d3-8d8c-20f614dd078a', '7c34c2fd-98ed-4655-aa04-bb00b915a751', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('a49b958c-f00c-4c0d-b031-21190e5c74fa', 'f35d64ae-ecb7-4d06-acfb-d91595966d9e', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('7e466377-1810-4027-ae1b-227f53953b21', '74b837ae-d24f-4f57-b107-e20dbe70f5d3', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('4a99997e-ef14-414b-94a6-2f480e5b2cd2', '60ae9382-31ab-4276-a379-d3876e9bb783', '2401f4d0-60b0-4e2e-903f-84c603373572', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('6014ad67-86c5-e5cc-00f2-3beb1a1d0b43', 'd721fc55-2174-40eb-bb37-5c54a158525a', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-04-18 22:08:06', '2021-01-30 00:50:48');
INSERT INTO "public"."SysMenuFunction" VALUES ('6014ad67-86c5-e5cc-00f2-3bec016a966e', 'd721fc55-2174-40eb-bb37-5c54a158525a', '2401f4d0-60b0-4e2e-903f-84c603373572', '2021-04-18 22:08:06', '2021-01-30 00:50:48');
INSERT INTO "public"."SysMenuFunction" VALUES ('6014ad67-86c5-e5cc-00f2-3bed6302ed1f', 'd721fc55-2174-40eb-bb37-5c54a158525a', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-04-18 22:08:06', '2021-01-30 00:50:48');
INSERT INTO "public"."SysMenuFunction" VALUES ('6014ad67-86c5-e5cc-00f2-3bee1680c46c', 'd721fc55-2174-40eb-bb37-5c54a158525a', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-04-18 22:08:06', '2021-01-30 00:50:48');
INSERT INTO "public"."SysMenuFunction" VALUES ('6014ad67-86c5-e5cc-00f2-3bef391195f0', 'd721fc55-2174-40eb-bb37-5c54a158525a', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-30 00:50:48');
INSERT INTO "public"."SysMenuFunction" VALUES ('6014ad67-86c5-e5cc-00f2-3bf0451398fb', 'd721fc55-2174-40eb-bb37-5c54a158525a', 'b6fd5425-504a-46a9-993b-2f8dc9158eb8', '2021-04-18 22:08:06', '2021-01-30 00:50:48');
INSERT INTO "public"."SysMenuFunction" VALUES ('6014ad67-86c5-e5cc-00f2-3bf17bb44851', 'd721fc55-2174-40eb-bb37-5c54a158525a', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-04-18 22:08:06', '2021-01-30 00:50:48');
INSERT INTO "public"."SysMenuFunction" VALUES ('6014ad67-86c5-e5cc-00f2-3bf23b0d82fa', 'd721fc55-2174-40eb-bb37-5c54a158525a', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-04-18 22:08:06', '2021-01-30 00:50:48');
INSERT INTO "public"."SysMenuFunction" VALUES ('6014ad6e-86c5-e5cc-00f2-3bf346dc6f7e', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', '2401f4d0-60b0-4e2e-903f-84c603373572', '2021-04-18 22:08:06', '2021-01-30 00:50:55');
INSERT INTO "public"."SysMenuFunction" VALUES ('6014ad6e-86c5-e5cc-00f2-3bf43ad1a03e', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-04-18 22:08:06', '2021-01-30 00:50:55');
INSERT INTO "public"."SysMenuFunction" VALUES ('6014ad6e-86c5-e5cc-00f2-3bf50300f3a4', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-04-18 22:08:06', '2021-01-30 00:50:55');
INSERT INTO "public"."SysMenuFunction" VALUES ('6014ad6e-86c5-e5cc-00f2-3bf60443227f', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-04-18 22:08:06', '2021-01-30 00:50:55');
INSERT INTO "public"."SysMenuFunction" VALUES ('6014ad6e-86c5-e5cc-00f2-3bf766e72202', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-04-18 22:08:06', '2021-01-30 00:50:55');
INSERT INTO "public"."SysMenuFunction" VALUES ('6014ad6e-86c5-e5cc-00f2-3bf82fdbb360', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-04-18 22:08:06', '2021-01-30 00:50:55');
INSERT INTO "public"."SysMenuFunction" VALUES ('6014ad6e-86c5-e5cc-00f2-3bf9301ee73d', '38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2021-01-30 00:50:55');
INSERT INTO "public"."SysMenuFunction" VALUES ('92913243-421b-420d-9fbf-42d7db59aec9', '60ae9382-31ab-4276-a379-d3876e9bb783', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('0cb00876-7247-4d4a-b68d-44f807232b3c', '7c34c2fd-98ed-4655-aa04-bb00b915a751', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('44dd215e-1edf-45aa-b6c6-4910ed14a228', 'b73c82f9-54ea-4f02-b7d9-fc3976becb19', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('6529e142-e4de-44a7-9acb-53df1796480c', '60ae9382-31ab-4276-a379-d3876e9bb783', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('26cf07df-7c4b-4c59-b091-57479a28a8ac', '60ae9382-31ab-4276-a379-d3876e9bb783', '9c388461-2704-4c5e-a729-72c17e9018e1', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('540d4cfb-1b2f-4736-80ca-5a613642b5b4', '7c34c2fd-98ed-4655-aa04-bb00b915a751', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('ef36a4f2-a70e-4ae3-923b-609910127a33', '7c34c2fd-98ed-4655-aa04-bb00b915a751', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('5689b539-88db-49d2-8c5b-720e9ebc673e', '74b837ae-d24f-4f57-b107-e20dbe70f5d3', '2401f4d0-60b0-4e2e-903f-84c603373572', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('b8aa1a54-9076-4c72-a323-7b3b95ab26f4', '74b837ae-d24f-4f57-b107-e20dbe70f5d3', '383e7ee2-7690-46ac-9230-65155c84aa30', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('842d38fc-29a2-4a9e-8949-84d76fc6a259', '7c34c2fd-98ed-4655-aa04-bb00b915a751', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('afbd3366-4c4f-46b1-8f96-903cfe6f8a00', '60ae9382-31ab-4276-a379-d3876e9bb783', 'f27ecb0a-197d-47b1-b243-59a8c71302bf', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('a3074d55-141e-496e-a55c-93b5fd2dce6c', '74b837ae-d24f-4f57-b107-e20dbe70f5d3', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('bb14769d-4760-4341-9faf-9fa82eeada65', '2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('7861b618-0b12-4a56-abda-a5e8d17ac5d7', '2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', 'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('09a29222-8f8d-4ca6-9bd1-aeddbabe7d7b', '2dc579dc-2325-4063-b051-e92454ee3838', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('d62f6c43-ae93-4d50-a6f0-b64c9cacec7b', '7c34c2fd-98ed-4655-aa04-bb00b915a751', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('42fc1519-61c2-4501-bb4e-cd160bea87a5', '60ae9382-31ab-4276-a379-d3876e9bb783', 'e7ef2a05-8317-41c3-b588-99519fe88bf9', '2021-04-18 22:08:06', '2020-11-16 13:24:04');
INSERT INTO "public"."SysMenuFunction" VALUES ('fa162511-0213-4da2-9fbf-e5f45af5b7fc', '7c34c2fd-98ed-4655-aa04-bb00b915a751', 'b6fd5425-504a-46a9-993b-2f8dc9158eb8', '2021-04-18 22:08:06', '2020-11-16 13:24:04');

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
  "UpdateTime" timestamp(6),
  "CreateTime" timestamp(6)
)
;

-- ----------------------------
-- Records of SysPost
-- ----------------------------

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
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('cb03537e-b361-4a47-98da-08d8bc47a2c8', '40ff1844-c099-4061-98e0-cd6e544fcfd3', '5c013900-4032-11eb-a2cb-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-01-19 14:58:33', '2021-01-19 14:58:33');
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
INSERT INTO "public"."SysRoleMenuFunction" VALUES ('154dfe60-9cb3-49ba-f05d-08d915410342', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '5c013900-4032-11eb-a2cb-4cedfb69a3e8', 'c9518758-b2e1-4f51-b517-5282e273889c', '2021-05-12 20:25:22', '2021-05-12 20:25:22');
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
  "Email" varchar(255) COLLATE "pg_catalog"."default",
  "IsDelete" int4,
  "OrganizationId" uuid,
  "UpdateTime" timestamp(6),
  "CreateTime" timestamp(6)
)
;

-- ----------------------------
-- Records of SysUser
-- ----------------------------
INSERT INTO "public"."SysUser" VALUES ('ac18f496-e93d-42f0-b59e-e321acc85335', '用户', 'user', '123', '456456456', '18123456789@live.com', 1, NULL, '2021-04-18 22:08:12', '2017-04-06 19:55:53');
INSERT INTO "public"."SysUser" VALUES ('0198459e-2034-4533-b843-5d227ad20740', '超级管理员', 'admin', '123456', '123123123', '1396510655@qq.com', 2, NULL, '2021-04-18 22:13:52', '2017-04-06 19:55:53');

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
INSERT INTO "public"."SysUserRole" VALUES ('34a22d40-13b6-4f03-bdce-910a31133a8e', '0198459e-2034-4533-b843-5d227ad20740', '18fa4771-6f58-46a3-80d2-6f0f5e9972e3', '2021-05-21 17:05:49', '2021-05-21 17:05:49');
INSERT INTO "public"."SysUserRole" VALUES ('cb42be08-051d-4feb-b05d-64227de9137f', 'ac18f496-e93d-42f0-b59e-e321acc85335', '40ff1844-c099-4061-98e0-cd6e544fcfd3', '2021-05-24 10:27:10.688547', '2021-05-24 10:27:10.688544');

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
