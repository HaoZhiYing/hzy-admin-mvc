/*
 Navicat Premium Data Transfer

 Source Server         : SqlServer_本地
 Source Server Type    : SQL Server
 Source Server Version : 14001000
 Source Host           : .:1433
 Source Catalog        : HzyAdminSpa
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14001000
 File Encoding         : 65001

 Date: 28/05/2021 15:46:48
*/


-- ----------------------------
-- Table structure for Member
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Member]') AND type IN ('U'))
	DROP TABLE [dbo].[Member]
GO

CREATE TABLE [dbo].[Member] (
  [Id] char(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Number] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Phone] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Sex] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Birthday] datetime2(0)  NULL,
  [Photo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Introduce] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [FilePath] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [UserId] char(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreateTime] datetime2(0)  NULL,
  [UpdateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[Member] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Member
-- ----------------------------
INSERT INTO [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreateTime], [UpdateTime]) VALUES (N'96a1aa3d-a61a-42d0-954a-c71753fb2065', N'123', N'123', N'123', N'女', N'2018-04-25 23:00:00', NULL, N'<p>123</p>', NULL, N'ac18f496-e93d-42f0-b59e-e321acc85335', N'2020-10-24 00:07:42', N'2021-04-18 22:08:06')
GO

INSERT INTO [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreateTime], [UpdateTime]) VALUES (N'9a604aa2-9ae6-4a2f-8ddb-d9e0289ead9e', N'1', N'测试会员', N'18510912123', N'男', N'2019-07-08 11:47:24', N'/upload/files/20210118/time_232747_old_name_hzy.png', N'<p>888</p>', N'/upload/files/20210118/time_233310_old_name_hzy.png', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'2018-04-25 23:00:00', N'2021-01-19 14:19:47')
GO


-- ----------------------------
-- Table structure for SysFunction
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysFunction]') AND type IN ('U'))
	DROP TABLE [dbo].[SysFunction]
GO

CREATE TABLE [dbo].[SysFunction] (
  [Id] char(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Number] int  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ByName] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [UpdateTime] datetime2(0)  NULL,
  [CreateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysFunction] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysFunction
-- ----------------------------
INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'2401f4d0-60b0-4e2e-903f-84c603373572', N'70', N'导出', N'Export', N'Export', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'383e7ee2-7690-46ac-9230-65155c84aa30', N'50', N'保存', N'Save', N'Save', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'9c388461-2704-4c5e-a729-72c17e9018e1', N'40', N'删除', N'Delete', N'Delete', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', N'80', N'打印', N'Print', N'Print', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'20', N'添加', N'Insert', N'Insert', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'c9518758-b2e1-4f51-b517-5282e273889c', N'10', N'显示', N'Display', N'Display', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'30', N'修改', N'Update', N'Update', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'60', N'检索', N'Search', N'Search', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO


-- ----------------------------
-- Table structure for SysMenu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysMenu]') AND type IN ('U'))
	DROP TABLE [dbo].[SysMenu]
GO

CREATE TABLE [dbo].[SysMenu] (
  [Id] char(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Number] int  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Url] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Router] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ComponentName] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Icon] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ParentId] char(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [Show] int  NULL,
  [Close] int  NULL,
  [UpdateTime] datetime2(0)  NULL,
  [CreateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysMenu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysMenu
-- ----------------------------
INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'0abfd53b-6bde-42c6-9f99-e32775bc31dd', N'180', N'组织机构', N'views/system/organization/index', N'/system/organization', N'system_organization', N'ClusterOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', N'1', N'1', N'2021-05-28 12:57:27', N'2021-05-27 20:27:56')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'15455a8d-262d-4266-85b3-08d8b9f578ef', N'40', N'图表 AntV G2', NULL, NULL, NULL, N'PieChartOutlined', N'6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', N'1', N'1', N'2021-01-16 16:06:33', N'2021-01-16 16:06:33')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'1ec76c4c-b9b3-4517-9854-f08cd11d653d', N'90', N'基础信息', NULL, NULL, NULL, N'GoldOutlined', NULL, N'1', N'1', N'2021-01-18 19:33:46', N'2018-03-10 12:16:38')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'35dc130e-4034-11eb-a2cb-4cedfb69a3e8', N'110', N'标准表格', N'views/list/index', N'/list', N'list', NULL, N'9674d439-864e-4bf8-9dd8-08d7d70ad6bb', N'1', N'1', N'2020-12-17 14:51:05', N'2020-12-17 14:51:07')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'100', N'账户管理', N'views/system/user/index', N'/system/user', N'system_user', N'UserOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', N'1', N'1', N'2021-05-28 12:44:36', N'2018-03-10 12:16:38')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', N'30', N'按钮', N'views/button', N'/button', N'button', N'AppstoreOutlined', N'6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', N'1', N'1', N'2021-01-16 16:04:05', N'2020-12-17 14:58:05')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'60ae9382-31ab-4276-a379-d3876e9bb783', N'110', N'角色管理', N'views/system/role/index', N'/system/role', N'system_role', N'TeamOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', N'1', N'1', N'2021-05-28 12:45:16', N'2018-03-10 12:16:38')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'63a6d076-3e22-4d26-85b4-08d8b9f578ef', N'10', N'基础图表', N'views/chart/base', N'/chart/base', N'chart_base', NULL, N'15455a8d-262d-4266-85b3-08d8b9f578ef', N'1', N'1', N'2021-01-16 16:07:24', N'2021-01-16 16:07:24')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', N'10', N'更多示例', NULL, NULL, NULL, NULL, NULL, N'1', N'1', N'2021-05-28 11:49:02', N'2021-05-28 11:49:02')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'10', N'会员管理', N'views/base/member', N'/base/member', N'base_member', N'UsergroupAddOutlined', N'1ec76c4c-b9b3-4517-9854-f08cd11d653d', N'1', N'1', N'2021-05-28 12:58:22', N'2018-03-10 12:16:38')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'9591f249-1471-44f7-86b5-6fdae8b93888', N'100', N'系统管理', NULL, NULL, NULL, N'DesktopOutlined', NULL, N'1', N'1', N'2018-03-10 12:16:38', N'2018-03-10 12:16:38')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'9674d439-864e-4bf8-9dd8-08d7d70ad6bb', N'50', N'表格管理', NULL, NULL, NULL, N'TableOutlined', N'6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', N'1', N'1', N'2021-01-16 17:32:07', N'2018-03-10 12:16:38')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', N'160', N'接口文档', N'views/system/swagger', N'/system/swagger', N'system_swagger', N'FileSearchOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', N'1', N'1', N'2021-05-28 12:56:14', N'2018-03-10 12:17:03')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', N'20', N'更多示例', N'views/chart/more', N'/chart/more', N'chart_more', NULL, N'15455a8d-262d-4266-85b3-08d8b9f578ef', N'1', N'1', N'2021-01-16 16:10:06', N'2021-01-16 16:10:06')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'bd024f3a-99a7-4407-861c-a016f243f222', N'140', N'角色功能', N'views/system/rolefunction/index', N'/system/role/function', N'system_role_function', N'UserSwitchOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', N'1', N'1', N'2021-05-28 12:53:04', N'2018-03-10 12:16:38')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'cc99f568-a831-4ea8-4c7a-08d8bba503bf', N'60', N'富文本编辑器', N'views/editor', N'/editor', N'editor', N'PicRightOutlined', N'6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', N'1', N'1', N'2021-01-18 19:34:54', N'2021-01-18 19:34:28')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'd29fde94-0d6a-4a64-8446-55ee63df5885', N'170', N'岗位管理', N'views/system/post/index', N'/system/post', N'system_post', N'IdcardOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', N'1', N'1', N'2021-05-28 12:56:56', N'2021-05-27 17:29:49')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'd721fc55-2174-40eb-bb37-5c54a158525a', N'120', N'功能管理', N'views/system/function/index', N'/system/function', N'system_function', N'ControlOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', N'1', N'1', N'2021-05-28 12:49:53', N'2018-03-10 12:16:38')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'd788896b-4033-11eb-a2cb-4cedfb69a3e8', N'100', N'基础表格', N'views/baseList', N'/baseList', N'base_list', NULL, N'9674d439-864e-4bf8-9dd8-08d7d70ad6bb', N'1', N'1', N'2020-12-17 14:49:10', N'2020-12-17 14:49:12')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'130', N'菜单功能', N'views/system/menu/index', N'/system/menu', N'system_menu', N'MenuOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', N'1', N'1', N'2021-05-28 12:51:15', N'2018-03-10 12:16:38')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', N'150', N'修改密码', N'views/system/changePassword/index', N'/system/change/password', N'system_change_password', N'FormOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', N'1', N'1', N'2021-05-28 12:55:04', N'2018-03-10 12:16:38')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'f55a8858-ede4-4380-85b2-08d8b9f578ef', N'10', N'Antd Vue3.0组件库', N'views/antd_vue_components', N'/antd/vue/components', N'antd_vue_components', N'LayoutOutlined', N'6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', N'1', N'1', N'2021-01-16 16:05:46', N'2021-01-16 16:05:22')
GO


-- ----------------------------
-- Table structure for SysMenuFunction
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysMenuFunction]') AND type IN ('U'))
	DROP TABLE [dbo].[SysMenuFunction]
GO

CREATE TABLE [dbo].[SysMenuFunction] (
  [Id] char(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [MenuId] char(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [FunctionId] char(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [UpdateTime] datetime2(0)  NULL,
  [CreateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysMenuFunction] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysMenuFunction
-- ----------------------------
INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'060d14f9-e066-44b9-d6b3-08d8b9f5533b', N'63a6d076-3e22-4d26-85b4-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-04-18 22:08:06', N'2021-01-16 16:07:24')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0645a7de-51e6-4c8d-a4e3-f860edd22bf8', N'0abfd53b-6bde-42c6-9f99-e32775bc31dd', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-28 12:57:27', N'2021-05-28 12:57:27')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0943b658-9fe1-4c9b-b583-6899cc364605', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'2021-05-28 12:51:15', N'2021-05-28 12:51:15')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'09a29222-8f8d-4ca6-9bd1-aeddbabe7d7b', N'2dc579dc-2325-4063-b051-e92454ee3838', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0a4acc41-95d6-4cbc-a3ca-269e0a4061eb', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'2021-05-28 12:44:36', N'2021-05-28 12:44:36')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0e354fd7-690b-4d22-a9db-e5025e353bfe', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'9c388461-2704-4c5e-a729-72c17e9018e1', N'2021-05-28 12:58:22', N'2021-05-28 12:58:22')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0f03b724-798b-4aa0-bd30-e4accacdd123', N'd29fde94-0d6a-4a64-8446-55ee63df5885', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'2021-05-28 12:56:56', N'2021-05-28 12:56:56')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'101baf28-dbfa-41e8-aca3-b136e02aee8b', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'9c388461-2704-4c5e-a729-72c17e9018e1', N'2021-05-28 12:49:53', N'2021-05-28 12:49:53')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'11d28148-61da-4f49-8376-08d8bb7cd668', N'38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-04-18 22:08:06', N'2021-01-18 14:54:30')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'179c8b22-efdd-475c-aa78-1b939ff05876', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'2021-05-28 12:51:15', N'2021-05-28 12:51:15')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1a727d75-867e-4292-9024-f66a292b465f', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'2021-05-28 12:45:16', N'2021-05-28 12:45:16')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1b4203a4-9fc4-42f8-9122-f1b3cde687e9', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'2021-05-28 12:44:36', N'2021-05-28 12:44:36')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1f02b56d-d844-45a1-bf68-0500d19f0c95', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-28 12:51:15', N'2021-05-28 12:51:15')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'23b4af49-6a18-471d-9f09-88296c234619', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'2021-05-28 12:49:53', N'2021-05-28 12:49:53')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'25cfd1d0-04c4-4b2c-b534-7f3c8c0eb06d', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-28 12:45:16', N'2021-05-28 12:45:16')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'2cf7a5e1-a38e-45d6-949e-e8bb65f60a5c', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'2021-05-28 12:44:36', N'2021-05-28 12:44:36')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'30b4b575-4881-41ea-ae33-27bfa151e423', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'2021-05-28 12:58:22', N'2021-05-28 12:58:22')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'3315859e-bad8-42a6-a9fc-7deaeb5f6b79', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', N'2021-05-28 12:49:53', N'2021-05-28 12:49:53')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'393ccaa5-973a-4efd-9a70-5da170be1e0d', N'0abfd53b-6bde-42c6-9f99-e32775bc31dd', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'2021-05-28 12:57:27', N'2021-05-28 12:57:27')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'44dd215e-1edf-45aa-b6c6-4910ed14a228', N'b73c82f9-54ea-4f02-b7d9-fc3976becb19', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4c74ee6a-dcba-4192-b976-4e8fcf33a061', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-28 12:49:53', N'2021-05-28 12:49:53')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4f40ce17-c29c-4448-9d1d-46aab970789a', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'2021-05-28 12:45:16', N'2021-05-28 12:45:16')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4f666139-2c4a-400b-bd35-b67b8aa1fe7d', N'bd024f3a-99a7-4407-861c-a016f243f222', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-28 12:53:04', N'2021-05-28 12:53:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'511ef9d4-d4b6-4053-9b37-121f06b726c7', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'2021-05-28 12:49:53', N'2021-05-28 12:49:53')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'546cc6af-bfa3-4b61-8fa8-85713e38bc60', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'2021-05-28 12:49:53', N'2021-05-28 12:49:53')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5689b539-88db-49d2-8c5b-720e9ebc673e', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'2401f4d0-60b0-4e2e-903f-84c603373572', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5a0ea751-0c50-482a-be15-afedb9faae64', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', N'2021-05-28 12:58:22', N'2021-05-28 12:58:22')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5b21d63c-6611-4b39-9c26-1510118969b2', N'0b7f8e2c-9faa-4496-9068-80b87ba1b64e', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'774fe6ff-3ecc-40b0-a8a3-159cd2492fe2', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'2401f4d0-60b0-4e2e-903f-84c603373572', N'2021-05-28 12:51:15', N'2021-05-28 12:51:15')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7861b618-0b12-4a56-abda-a5e8d17ac5d7', N'2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7e466377-1810-4027-ae1b-227f53953b21', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7ec9b0fa-54ee-498e-a69b-8f689d019611', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'2021-05-28 12:45:16', N'2021-05-28 12:45:16')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'81a43621-60cf-4f04-9279-13480d37e6a4', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', N'2021-05-28 12:51:15', N'2021-05-28 12:51:15')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'869a2231-5631-4067-b97b-08d88a2ced15', N'4ce21a81-1cae-44d2-b29e-07058ff04b3e', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-04-18 22:08:06', N'2020-11-16 20:41:23')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'86d6303f-463e-4874-843e-a8a76ebe50d8', N'd29fde94-0d6a-4a64-8446-55ee63df5885', N'9c388461-2704-4c5e-a729-72c17e9018e1', N'2021-05-28 12:56:56', N'2021-05-28 12:56:56')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8a691543-93a0-4e57-8411-c4723ecf5627', N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-28 12:55:04', N'2021-05-28 12:55:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8aaa6319-d36a-4fcd-8797-19d97a077e1b', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8c85e128-83ad-4079-8754-ac5679b04df6', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-28 12:44:36', N'2021-05-28 12:44:36')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'92bd3806-c5b3-41fe-b6f9-c6fd7a9dd77e', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'2021-05-28 12:58:22', N'2021-05-28 12:58:22')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'93e91f91-3560-460d-9eea-760fa2b2fb66', N'd29fde94-0d6a-4a64-8446-55ee63df5885', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'2021-05-28 12:56:56', N'2021-05-28 12:56:56')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'944f5d6a-19dc-4804-8374-08d8bb7cd668', N'd788896b-4033-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-04-18 22:08:06', N'2021-01-18 14:46:52')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'96581bb8-5f2d-460f-8cc2-a44247e791a7', N'd29fde94-0d6a-4a64-8446-55ee63df5885', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'2021-05-28 12:56:56', N'2021-05-28 12:56:56')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'983ca076-0761-48bf-85e3-18bb24685a09', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'2401f4d0-60b0-4e2e-903f-84c603373572', N'2021-05-28 12:45:16', N'2021-05-28 12:45:16')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9d63d074-85e7-48bd-8375-08d8bb7cd668', N'35dc130e-4034-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-04-18 22:08:06', N'2021-01-18 14:46:55')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'a3074d55-141e-496e-a55c-93b5fd2dce6c', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'a96cc666-927d-4d27-8174-9c321f41236d', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'2401f4d0-60b0-4e2e-903f-84c603373572', N'2021-05-28 12:49:53', N'2021-05-28 12:49:53')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b010f911-257e-4fa3-5b15-08d8ba019738', N'9674d439-864e-4bf8-9dd8-08d7d70ad6bb', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-04-18 22:08:06', N'2021-01-16 17:32:07')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b1b627c4-ac62-4dac-b4cc-c71392040543', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'9c388461-2704-4c5e-a729-72c17e9018e1', N'2021-05-28 12:51:15', N'2021-05-28 12:51:15')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b2dd663b-67f3-478b-b8aa-cbe52480e133', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'2021-05-28 12:51:15', N'2021-05-28 12:51:15')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b43d31a9-b7a5-49ab-876c-2556745a9913', N'0abfd53b-6bde-42c6-9f99-e32775bc31dd', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'2021-05-28 12:57:27', N'2021-05-28 12:57:27')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b8aa1a54-9076-4c72-a323-7b3b95ab26f4', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'bb14769d-4760-4341-9faf-9fa82eeada65', N'2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'bd144568-a24e-4f7e-d6b2-08d8b9f5533b', N'15455a8d-262d-4266-85b3-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-04-18 22:08:06', N'2021-01-16 16:06:33')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'bec7a649-ed53-4471-bfd7-57978d397dae', N'9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-28 12:56:14', N'2021-05-28 12:56:14')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c2207f27-9caa-44f7-a31f-0b757b973e23', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'2401f4d0-60b0-4e2e-903f-84c603373572', N'2021-05-28 12:44:36', N'2021-05-28 12:44:36')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c4bfe58e-1cb8-49db-a942-919d46f79be9', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'2021-05-28 12:51:15', N'2021-05-28 12:51:15')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c4c16cef-501e-425d-88db-20bfcbaf461d', N'0abfd53b-6bde-42c6-9f99-e32775bc31dd', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'2021-05-28 12:57:27', N'2021-05-28 12:57:27')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c6e873fc-a228-4418-b4ac-afc45a612af7', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'2021-05-28 12:58:22', N'2021-05-28 12:58:22')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c6eb3b9b-8ceb-4aee-8a3f-0755ffaed9d4', N'0abfd53b-6bde-42c6-9f99-e32775bc31dd', N'9c388461-2704-4c5e-a729-72c17e9018e1', N'2021-05-28 12:57:27', N'2021-05-28 12:57:27')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c6faf480-7b10-4cd1-abb5-69e0e4ae2b85', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'2021-05-28 12:58:22', N'2021-05-28 12:58:22')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c848edb2-00b3-4f67-9362-72d3a2eea88b', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'9c388461-2704-4c5e-a729-72c17e9018e1', N'2021-05-28 12:45:16', N'2021-05-28 12:45:16')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'cf317057-34fb-4a07-91c6-86a3cbc541fa', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'2021-05-28 12:49:53', N'2021-05-28 12:49:53')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd455b476-834c-4ef2-91ae-24f60559e029', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'2401f4d0-60b0-4e2e-903f-84c603373572', N'2021-05-28 12:58:22', N'2021-05-28 12:58:22')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'da4e3d9f-4e27-41af-8dd7-a682c70176c5', N'd29fde94-0d6a-4a64-8446-55ee63df5885', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'2021-05-28 12:56:56', N'2021-05-28 12:56:56')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'dbcb960d-c4cd-4d27-b1aa-e5aae91b727d', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-28 12:58:22', N'2021-05-28 12:58:22')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'dd7ac46b-9420-450e-bdc2-9110b0056975', N'0abfd53b-6bde-42c6-9f99-e32775bc31dd', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'2021-05-28 12:57:27', N'2021-05-28 12:57:27')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'de9fa7c5-2c58-414f-8186-b68036044ed7', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'2021-05-28 12:44:36', N'2021-05-28 12:44:36')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e01f16a4-04c2-41de-9c20-be1747cf31af', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'9c388461-2704-4c5e-a729-72c17e9018e1', N'2021-05-28 12:44:36', N'2021-05-28 12:44:36')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e136ccda-91ce-4041-d6b4-08d8b9f5533b', N'9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-04-18 22:08:06', N'2021-01-16 16:10:06')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e28e11cd-27c5-475d-d6b1-08d8b9f5533b', N'f55a8858-ede4-4380-85b2-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-04-18 22:08:06', N'2021-01-16 16:05:46')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ed0eaf25-aaff-4e8b-9a85-f173603510ef', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'2021-05-28 12:45:16', N'2021-05-28 12:45:16')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f0eef5bb-f327-4db7-af6c-c80bfb25389d', N'd29fde94-0d6a-4a64-8446-55ee63df5885', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-28 12:56:56', N'2021-05-28 12:56:56')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f38d6e67-3f6f-495d-b759-08d8bba503c2', N'cc99f568-a831-4ea8-4c7a-08d8bba503bf', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-04-18 22:08:06', N'2021-01-18 19:34:54')
GO


-- ----------------------------
-- Table structure for SysOrganization
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysOrganization]') AND type IN ('U'))
	DROP TABLE [dbo].[SysOrganization]
GO

CREATE TABLE [dbo].[SysOrganization] (
  [Id] char(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [OrderNumber] int  NULL,
  [Leader] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Phone] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Email] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [State] int  NULL,
  [ParentId] char(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [UpdateTime] datetime2(0)  NULL,
  [CreateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysOrganization] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysOrganization
-- ----------------------------
INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'05e55b19-261a-4df8-aea0-83a56f1aeb7a', N'市场部门', N'2', N'市场部门', N'123213', N'123@qq.com', N'1', N'47c547ea-e07a-4475-a4f7-ae09e3d8fafc', N'2021-05-27 22:32:46', N'2021-05-27 22:32:40')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'1b001a4d-bce5-4e09-bc96-4e7da7686c48', N'北京分部', N'3', N'北京分部', N'132123', N'13131', N'1', N'f23777dd-2c03-449f-953b-df91c19dee5b', N'2021-05-27 22:33:44', N'2021-05-27 22:33:44')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'47c547ea-e07a-4475-a4f7-ae09e3d8fafc', N'成都分部', N'2', N'成都分部', N'123123123', N'123@qq.com', N'1', N'f23777dd-2c03-449f-953b-df91c19dee5b', N'2021-05-27 22:31:45', N'2021-05-27 21:01:50')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'6e36f7eb-3d03-417d-8815-c0e0f19ce6e6', N'市场部门', N'1', N'市场部门', N'234124234', N'234234@qq.com', N'1', N'1b001a4d-bce5-4e09-bc96-4e7da7686c48', N'2021-05-27 22:33:57', N'2021-05-27 22:33:57')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'9cf32211-f255-4c2e-9c53-4258755e43c5', N'测试部门', N'3', N'测试部门', N'12313', N'123123@qq.com', N'1', N'47c547ea-e07a-4475-a4f7-ae09e3d8fafc', N'2021-05-27 22:32:59', N'2021-05-27 22:32:59')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'a5e87436-53d5-4fff-8f2e-0af511db9ba4', N'研发部门', N'1', N'研发部门', N'1234323423', N'12312@qq.com', N'1', N'47c547ea-e07a-4475-a4f7-ae09e3d8fafc', N'2021-05-27 22:32:29', N'2021-05-27 22:32:08')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'aea25949-b0a0-49a3-9fbc-e80224b75fc1', N'财务部门', N'2', N'财务部门', N'435543535', N'123@qq.com', N'1', N'1b001a4d-bce5-4e09-bc96-4e7da7686c48', N'2021-05-27 22:34:11', N'2021-05-27 22:34:11')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'e898e8ad-2de7-46e0-b6f3-08f5fb9662ed', N'财务部门', N'4', N'财务部门', N'12323452345', N'12312@qq.com', N'1', N'47c547ea-e07a-4475-a4f7-ae09e3d8fafc', N'2021-05-27 22:33:13', N'2021-05-27 22:33:13')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'eb913607-932f-433b-8321-dfe35258bb88', N'运维部门', N'5', N'运维部门', N'1232133452', N'12341@qq.com', N'1', N'47c547ea-e07a-4475-a4f7-ae09e3d8fafc', N'2021-05-27 22:33:25', N'2021-05-27 22:33:25')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'f23777dd-2c03-449f-953b-df91c19dee5b', N'阿里巴巴集团', N'1', N'hzy', N'18410912184', N'18410912184@qq.com', N'1', NULL, N'2021-05-27 20:50:31', N'2021-05-27 20:50:31')
GO


-- ----------------------------
-- Table structure for SysPost
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysPost]') AND type IN ('U'))
	DROP TABLE [dbo].[SysPost]
GO

CREATE TABLE [dbo].[SysPost] (
  [Id] char(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Number] int  NULL,
  [Code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [State] int  NULL,
  [Remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [UpdateTime] datetime2(0)  NULL,
  [CreateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysPost] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysPost
-- ----------------------------
INSERT INTO [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [UpdateTime], [CreateTime]) VALUES (N'0716b4b0-9a06-43e9-8ae8-82c74875f83e', N'2', N'se', N'项目经理', N'1', NULL, N'2021-05-27 20:26:35', N'2021-05-27 20:26:35')
GO

INSERT INTO [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [UpdateTime], [CreateTime]) VALUES (N'96927c30-41d0-4ced-8e29-cbed35c90fb0', N'1', N'ceo', N'董事长', N'1', NULL, N'2021-05-27 20:26:22', N'2021-05-27 20:26:22')
GO

INSERT INTO [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [UpdateTime], [CreateTime]) VALUES (N'e46af329-6d08-442c-9837-f22cff954411', N'4', N'user', N'普通员工', N'1', NULL, N'2021-05-27 20:26:52', N'2021-05-27 20:26:52')
GO

INSERT INTO [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [UpdateTime], [CreateTime]) VALUES (N'f0c67537-8094-429a-b474-f54ac518609e', N'3', N'hr', N'人力资源', N'1', NULL, N'2021-05-27 20:26:44', N'2021-05-27 20:26:44')
GO


-- ----------------------------
-- Table structure for SysRole
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysRole]') AND type IN ('U'))
	DROP TABLE [dbo].[SysRole]
GO

CREATE TABLE [dbo].[SysRole] (
  [Id] char(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Number] int  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [IsDelete] int  NULL,
  [UpdateTime] datetime2(0)  NULL,
  [CreateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysRole] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysRole
-- ----------------------------
INSERT INTO [dbo].[SysRole] ([Id], [Number], [Name], [Remark], [IsDelete], [UpdateTime], [CreateTime]) VALUES (N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'1', N'超级管理员', N'拥有所有权限', N'0', N'2021-01-10 11:25:12', N'2016-07-06 17:59:20')
GO

INSERT INTO [dbo].[SysRole] ([Id], [Number], [Name], [Remark], [IsDelete], [UpdateTime], [CreateTime]) VALUES (N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'2', N'普通用户', N'普通用户', N'1', N'2021-01-30 00:51:17', N'2016-07-06 17:59:20')
GO


-- ----------------------------
-- Table structure for SysRoleMenuFunction
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysRoleMenuFunction]') AND type IN ('U'))
	DROP TABLE [dbo].[SysRoleMenuFunction]
GO

CREATE TABLE [dbo].[SysRoleMenuFunction] (
  [Id] char(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [RoleId] char(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [MenuId] char(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [FunctionId] char(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [UpdateTime] datetime2(0)  NULL,
  [CreateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysRoleMenuFunction] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysRoleMenuFunction
-- ----------------------------
INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'052dd69b-c809-4f62-f107-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'9c388461-2704-4c5e-a729-72c17e9018e1', N'2021-05-12 20:25:54', N'2021-05-12 20:25:54')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0920f21b-fbbf-45f4-f0c2-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'9c388461-2704-4c5e-a729-72c17e9018e1', N'2021-05-12 20:25:46', N'2021-05-12 20:25:46')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0946c554-84a7-4adb-f063-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'35dc130e-4034-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-12 20:25:27', N'2021-05-12 20:25:27')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0be2633e-046d-40fa-98dc-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-01-19 14:58:38', N'2021-01-19 14:58:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'12ceef4d-03c0-45cc-98df-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'd788896b-4033-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-01-19 14:58:43', N'2021-01-19 14:58:43')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1c082c5a-8383-443f-98e0-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'35dc130e-4034-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-01-19 14:58:44', N'2021-01-19 14:58:44')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1e882fbe-fd88-407e-98dd-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'63a6d076-3e22-4d26-85b4-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-01-19 14:58:42', N'2021-01-19 14:58:42')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'26250c7d-b504-44cc-f0bf-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-12 20:25:46', N'2021-05-12 20:25:46')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'2d23022c-df34-4847-f08e-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'2401f4d0-60b0-4e2e-903f-84c603373572', N'2021-05-12 20:25:38', N'2021-05-12 20:25:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'2f2f0c63-2e13-4137-98db-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'f55a8858-ede4-4380-85b2-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-01-19 14:58:36', N'2021-01-19 14:58:36')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'463acea8-60b0-4a59-7de7-08d8bb7c529a', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-01-18 14:45:40', N'2021-01-18 14:45:40')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4ca56fed-fc32-4456-f0e8-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'2021-05-12 20:25:50', N'2021-05-12 20:25:50')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'541450f0-dbd3-4094-f0c3-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'2021-05-12 20:25:46', N'2021-05-12 20:25:46')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'57a97a6c-cc65-4ac6-f064-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'cc99f568-a831-4ea8-4c7a-08d8bba503bf', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-12 20:25:27', N'2021-05-12 20:25:27')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5d470ae4-66a5-4cdf-f0e3-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'2021-05-12 20:25:50', N'2021-05-12 20:25:50')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5ee46cd1-b2a3-4bc2-f05f-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'f55a8858-ede4-4380-85b2-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-12 20:25:24', N'2021-05-12 20:25:24')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'623eaf4e-5263-4fb9-f0a7-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'9c388461-2704-4c5e-a729-72c17e9018e1', N'2021-05-12 20:25:42', N'2021-05-12 20:25:42')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'68ab8acc-4d11-4e66-f0e5-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'2021-05-12 20:25:50', N'2021-05-12 20:25:50')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6a3d6ac5-11c7-4592-98e4-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'2021-01-19 15:12:04', N'2021-01-19 15:12:04')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6c934fa6-eff0-42c7-f0c5-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'2401f4d0-60b0-4e2e-903f-84c603373572', N'2021-05-12 20:25:46', N'2021-05-12 20:25:46')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6dfa0985-81fa-4242-f06b-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-12 20:25:33', N'2021-05-12 20:25:33')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'704a78f1-5c00-4169-f10a-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', N'2021-05-12 20:25:54', N'2021-05-12 20:25:54')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'754ad754-bbc4-47bc-f088-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-12 20:25:38', N'2021-05-12 20:25:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7e74f26c-f63e-42f0-f0e4-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'9c388461-2704-4c5e-a729-72c17e9018e1', N'2021-05-12 20:25:50', N'2021-05-12 20:25:50')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'82eb14da-2b31-45d8-f0a5-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'2021-05-12 20:25:42', N'2021-05-12 20:25:42')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8e1ea93c-398c-4fe7-f0e6-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'2401f4d0-60b0-4e2e-903f-84c603373572', N'2021-05-12 20:25:50', N'2021-05-12 20:25:50')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8e87c5cb-1c6e-481e-f0a6-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'2021-05-12 20:25:42', N'2021-05-12 20:25:42')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'915ac7f5-4e1b-4d92-f06c-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-12 20:25:33', N'2021-05-12 20:25:33')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'92837e44-e8d2-48a2-f106-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'2021-05-12 20:25:54', N'2021-05-12 20:25:54')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'92cec1e4-cc90-4c20-f08a-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'2021-05-12 20:25:38', N'2021-05-12 20:25:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'93ce6573-523e-4e3c-3d63-08d88bc25510', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'0b7f8e2c-9faa-4496-9068-80b87ba1b64e', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-04-18 22:08:06', N'2020-11-18 21:03:36')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'97c80c3a-d00e-4788-f0e2-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'2021-05-12 20:25:50', N'2021-05-12 20:25:50')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9967c23d-9101-4543-f08d-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'2021-05-12 20:25:38', N'2021-05-12 20:25:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'99e29596-75a0-4736-98e2-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-01-19 14:58:52', N'2021-01-19 14:58:52')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9ac7bdfb-7398-4dc8-f0c4-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'2021-05-12 20:25:46', N'2021-05-12 20:25:46')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9d35e600-ee44-479a-f061-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-12 20:25:25', N'2021-05-12 20:25:25')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9f341e22-87c3-498a-f105-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'2021-05-12 20:25:54', N'2021-05-12 20:25:54')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'a36d2f2e-56f4-4920-f108-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'2021-05-12 20:25:54', N'2021-05-12 20:25:54')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'affc5760-c5bd-43fb-98e7-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'2021-01-19 15:12:04', N'2021-01-19 15:12:04')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b3ac009f-017b-4512-f0a9-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'2021-05-12 20:25:42', N'2021-05-12 20:25:42')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c0c76981-828b-435e-98e3-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-01-19 15:12:04', N'2021-01-19 15:12:04')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c5abda7a-230d-469f-f104-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-12 20:25:54', N'2021-05-12 20:25:54')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c5ad81cc-09ec-4007-f08b-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'9c388461-2704-4c5e-a729-72c17e9018e1', N'2021-05-12 20:25:38', N'2021-05-12 20:25:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c636d222-58dc-410f-f089-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'2021-05-12 20:25:38', N'2021-05-12 20:25:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c9d1ed28-5f58-4c7e-f10b-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'2021-05-12 20:25:54', N'2021-05-12 20:25:54')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'cb043048-142d-464d-f0a4-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-12 20:25:42', N'2021-05-12 20:25:42')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd5d321ce-28e6-4742-98e1-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'cc99f568-a831-4ea8-4c7a-08d8bba503bf', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-01-19 14:58:45', N'2021-01-19 14:58:45')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd80e356e-0d71-411f-7de9-08d8bb7c529a', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'2021-01-18 14:45:40', N'2021-01-18 14:45:40')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd92cc026-dfcf-49fe-f08f-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', N'2021-05-12 20:25:38', N'2021-05-12 20:25:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'de19371d-5fbe-4fc3-98de-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-01-19 14:58:42', N'2021-01-19 14:58:42')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e02ef258-be98-4a5c-f0e1-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-12 20:25:50', N'2021-05-12 20:25:50')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e08a05a7-c494-4e32-f0e7-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', N'2021-05-12 20:25:50', N'2021-05-12 20:25:50')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e18a8dad-716d-49cd-98e6-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'2021-01-19 15:12:04', N'2021-01-19 15:12:04')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e69fe992-e4a5-4ac9-f0c0-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'2021-05-12 20:25:46', N'2021-05-12 20:25:46')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'eb2ac2a6-36ac-4ee1-f05e-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-12 20:25:24', N'2021-05-12 20:25:24')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ec8ed1ba-61c3-4219-f060-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'63a6d076-3e22-4d26-85b4-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-12 20:25:25', N'2021-05-12 20:25:25')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ed97d135-4408-41cc-98e5-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'9c388461-2704-4c5e-a729-72c17e9018e1', N'2021-01-19 15:12:04', N'2021-01-19 15:12:04')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'eee9d884-a577-40d2-f06a-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'bd024f3a-99a7-4407-861c-a016f243f222', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-12 20:25:32', N'2021-05-12 20:25:32')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f058d1c8-7633-4781-f08c-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'2021-05-12 20:25:38', N'2021-05-12 20:25:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f1b431b3-d7ef-44ca-7de8-08d8bb7c529a', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'2021-01-18 14:45:40', N'2021-01-18 14:45:40')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f2891613-0a65-4c93-f0aa-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'2401f4d0-60b0-4e2e-903f-84c603373572', N'2021-05-12 20:25:42', N'2021-05-12 20:25:42')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f65adc84-d2a4-4f91-f109-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'2401f4d0-60b0-4e2e-903f-84c603373572', N'2021-05-12 20:25:54', N'2021-05-12 20:25:54')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'fa279e29-f44f-4424-f0c1-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'2021-05-12 20:25:46', N'2021-05-12 20:25:46')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'fcccd730-d83e-47b1-f062-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd788896b-4033-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', N'2021-05-12 20:25:26', N'2021-05-12 20:25:26')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ff047bdd-04f4-4597-f0a8-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'2021-05-12 20:25:42', N'2021-05-12 20:25:42')
GO


-- ----------------------------
-- Table structure for SysUser
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysUser]') AND type IN ('U'))
	DROP TABLE [dbo].[SysUser]
GO

CREATE TABLE [dbo].[SysUser] (
  [Id] char(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LoginName] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Password] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Phone] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Email] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [IsDelete] int  NULL,
  [OrganizationId] char(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [UpdateTime] datetime2(0)  NULL,
  [CreateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysUser] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysUser
-- ----------------------------
INSERT INTO [dbo].[SysUser] ([Id], [Name], [LoginName], [Password], [Phone], [Email], [IsDelete], [OrganizationId], [UpdateTime], [CreateTime]) VALUES (N'0198459e-2034-4533-b843-5d227ad20740', N'超级管理员', N'admin', N'123456', N'123123123', N'1396510655@qq.com', N'2', N'f23777dd-2c03-449f-953b-df91c19dee5b', N'2021-05-24 10:52:53', N'2017-04-06 19:55:53')
GO

INSERT INTO [dbo].[SysUser] ([Id], [Name], [LoginName], [Password], [Phone], [Email], [IsDelete], [OrganizationId], [UpdateTime], [CreateTime]) VALUES (N'ac18f496-e93d-42f0-b59e-e321acc85335', N'用户', N'user', N'123', N'456456456', N'18123456789@live.com', N'1', N'f23777dd-2c03-449f-953b-df91c19dee5b', N'2021-04-18 22:08:12', N'2017-04-06 19:55:53')
GO


-- ----------------------------
-- Table structure for SysUserPost
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysUserPost]') AND type IN ('U'))
	DROP TABLE [dbo].[SysUserPost]
GO

CREATE TABLE [dbo].[SysUserPost] (
  [Id] char(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UserId] char(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [PostId] char(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [UpdateTime] datetime2(0)  NULL,
  [CreateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysUserPost] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysUserPost
-- ----------------------------
INSERT INTO [dbo].[SysUserPost] ([Id], [UserId], [PostId], [UpdateTime], [CreateTime]) VALUES (N'5a6ac9ba-2ce7-4505-b5ea-65c6817b13f4', N'0198459e-2034-4533-b843-5d227ad20740', N'96927c30-41d0-4ced-8e29-cbed35c90fb0', N'2021-05-28 10:00:39', N'2021-05-28 10:00:39')
GO

INSERT INTO [dbo].[SysUserPost] ([Id], [UserId], [PostId], [UpdateTime], [CreateTime]) VALUES (N'8be16163-ce6b-4abb-908c-f343c6df5ecc', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'0716b4b0-9a06-43e9-8ae8-82c74875f83e', N'2021-05-28 10:33:35', N'2021-05-28 10:33:35')
GO


-- ----------------------------
-- Table structure for SysUserRole
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysUserRole]') AND type IN ('U'))
	DROP TABLE [dbo].[SysUserRole]
GO

CREATE TABLE [dbo].[SysUserRole] (
  [Id] char(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UserId] char(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [RoleId] char(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [UpdateTime] datetime2(0)  NULL,
  [CreateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysUserRole] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysUserRole
-- ----------------------------
INSERT INTO [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [UpdateTime], [CreateTime]) VALUES (N'4458a14e-a787-4a7a-9d9b-fd3de1ed07e3', N'0198459e-2034-4533-b843-5d227ad20740', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'2021-05-28 10:00:39', N'2021-05-28 10:00:39')
GO

INSERT INTO [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [UpdateTime], [CreateTime]) VALUES (N'9c6e49e7-fcf0-4372-b726-9d9d8b9a55e8', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'2021-05-28 10:33:35', N'2021-05-28 10:33:35')
GO


-- ----------------------------
-- Primary Key structure for table Member
-- ----------------------------
ALTER TABLE [dbo].[Member] ADD CONSTRAINT [Member_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysFunction
-- ----------------------------
ALTER TABLE [dbo].[SysFunction] ADD CONSTRAINT [SysFunction_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysMenu
-- ----------------------------
ALTER TABLE [dbo].[SysMenu] ADD CONSTRAINT [SysMenu_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysMenuFunction
-- ----------------------------
ALTER TABLE [dbo].[SysMenuFunction] ADD CONSTRAINT [SysMenuFunction_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysOrganization
-- ----------------------------
ALTER TABLE [dbo].[SysOrganization] ADD CONSTRAINT [SysOrganization_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysPost
-- ----------------------------
ALTER TABLE [dbo].[SysPost] ADD CONSTRAINT [SysPost_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysRole
-- ----------------------------
ALTER TABLE [dbo].[SysRole] ADD CONSTRAINT [SysRole_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysRoleMenuFunction
-- ----------------------------
ALTER TABLE [dbo].[SysRoleMenuFunction] ADD CONSTRAINT [SysRoleMenuFunction_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysUser
-- ----------------------------
ALTER TABLE [dbo].[SysUser] ADD CONSTRAINT [SysUser_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysUserPost
-- ----------------------------
ALTER TABLE [dbo].[SysUserPost] ADD CONSTRAINT [SysUserPost_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysUserRole
-- ----------------------------
ALTER TABLE [dbo].[SysUserRole] ADD CONSTRAINT [SysUserRole_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

