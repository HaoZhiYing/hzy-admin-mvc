/*
 Navicat Premium Data Transfer

 Source Server         : 本地_SqlServer
 Source Server Type    : SQL Server
 Source Server Version : 14001000
 Source Host           : .:1433
 Source Catalog        : HzyAdminSpa
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14001000
 File Encoding         : 65001

 Date: 23/07/2021 23:21:26
*/


-- ----------------------------
-- Table structure for Member
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Member]') AND type IN ('U'))
	DROP TABLE [dbo].[Member]
GO

CREATE TABLE [dbo].[Member] (
  [Id] uniqueidentifier  NOT NULL,
  [Number] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Phone] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Sex] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Birthday] datetime2(0)  NULL,
  [Photo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Introduce] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [FilePath] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [UserId] uniqueidentifier  NULL,
  [CreateTime] datetime2(0)  NULL,
  [UpdateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[Member] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Member
-- ----------------------------
INSERT INTO [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreateTime], [UpdateTime]) VALUES (N'96A1AA3D-A61A-42D0-954A-C71753FB2065', N'123', N'123', N'123', N'女', N'2018-04-25 23:00:00', NULL, N'<p>123</p>', NULL, N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'2020-10-24 00:07:42', N'2021-04-18 22:08:06')
GO

INSERT INTO [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreateTime], [UpdateTime]) VALUES (N'9A604AA2-9AE6-4A2F-8DDB-D9E0289EAD9E', N'1', N'测试会员', N'18510912123', N'男', N'2019-07-08 11:47:24', N'/upload/files/20210118/time_232747_old_name_hzy.png', N'<p>888</p>', N'/upload/files/20210118/time_233310_old_name_hzy.png', N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'2018-04-25 23:00:00', N'2021-01-19 14:19:47')
GO


-- ----------------------------
-- Table structure for SysFunction
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysFunction]') AND type IN ('U'))
	DROP TABLE [dbo].[SysFunction]
GO

CREATE TABLE [dbo].[SysFunction] (
  [Id] uniqueidentifier  NOT NULL,
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
INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'B6FD5425-504A-46A9-993B-2F8DC9158EB8', N'80', N'打印', N'Print', N'Print', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'C9518758-B2E1-4F51-B517-5282E273889C', N'10', N'显示', N'Display', N'Display', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'60', N'检索', N'Search', N'Search', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'383E7EE2-7690-46AC-9230-65155C84AA30', N'50', N'保存', N'Save', N'Save', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'9C388461-2704-4C5E-A729-72C17E9018E1', N'40', N'删除', N'Delete', N'Delete', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'20', N'添加', N'Insert', N'Insert', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'2401F4D0-60B0-4E2E-903F-84C603373572', N'70', N'导出', N'Export', N'Export', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'30', N'修改', N'Update', N'Update', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO


-- ----------------------------
-- Table structure for SysMenu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysMenu]') AND type IN ('U'))
	DROP TABLE [dbo].[SysMenu]
GO

CREATE TABLE [dbo].[SysMenu] (
  [Id] uniqueidentifier  NOT NULL,
  [Number] int  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Url] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Router] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ComponentName] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Icon] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ParentId] uniqueidentifier  NULL,
  [Show] int  NULL,
  [Close] int  NULL,
  [UpdateTime] datetime2(0)  NULL,
  [CreateTime] datetime2(0)  NULL,
  [JumpUrl] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[SysMenu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysMenu
-- ----------------------------
INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'9674D439-864E-4BF8-9DD8-08D7D70AD6BB', N'50', N'表格管理', NULL, NULL, NULL, N'TableOutlined', N'6F48B583-9C8F-490F-A3E0-81FC5F2E71B4', N'1', N'1', N'2021-01-16 17:32:07', N'2018-03-10 12:16:38', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'F55A8858-EDE4-4380-85B2-08D8B9F578EF', N'10', N'Antd Vue3.0组件库', N'views/antd_vue_components', N'/antd/vue/components', N'antd_vue_components', N'LayoutOutlined', N'6F48B583-9C8F-490F-A3E0-81FC5F2E71B4', N'1', N'1', N'2021-01-16 16:05:46', N'2021-01-16 16:05:22', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'15455A8D-262D-4266-85B3-08D8B9F578EF', N'40', N'图表 AntV G2', NULL, NULL, NULL, N'PieChartOutlined', N'6F48B583-9C8F-490F-A3E0-81FC5F2E71B4', N'1', N'1', N'2021-01-16 16:06:33', N'2021-01-16 16:06:33', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'63A6D076-3E22-4D26-85B4-08D8B9F578EF', N'10', N'基础图表', N'views/chart/base', N'/chart/base', N'chart_base', NULL, N'15455A8D-262D-4266-85B3-08D8B9F578EF', N'1', N'1', N'2021-01-16 16:07:24', N'2021-01-16 16:07:24', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'9B01F9F3-5621-4BC2-85B5-08D8B9F578EF', N'20', N'更多示例', N'views/chart/more', N'/chart/more', N'chart_more', NULL, N'15455A8D-262D-4266-85B3-08D8B9F578EF', N'1', N'1', N'2021-01-16 16:10:06', N'2021-01-16 16:10:06', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'CC99F568-A831-4EA8-4C7A-08D8BBA503BF', N'60', N'富文本编辑器', N'views/editor', N'/editor', N'editor', N'PicRightOutlined', N'6F48B583-9C8F-490F-A3E0-81FC5F2E71B4', N'1', N'1', N'2021-01-18 19:34:54', N'2021-01-18 19:34:28', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'130', N'菜单功能', N'views/system/menu/index', N'/system/menu', N'system_menu', N'MenuOutlined', N'9591F249-1471-44F7-86B5-6FDAE8B93888', N'1', N'1', N'2021-05-28 12:51:15', N'2018-03-10 12:16:38', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'9A27DFC2-4A66-11EB-87B1-4CEDFB69A3E8', N'180', N'接口文档', N'views/system/swagger', N'/system/swagger', N'system_swagger', N'FileSearchOutlined', N'9591F249-1471-44F7-86B5-6FDAE8B93888', N'1', N'1', N'2021-06-06 00:29:25', N'2018-03-10 12:17:03', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'D788896B-4033-11EB-A2CB-4CEDFB69A3E8', N'100', N'基础表格', N'views/baseList', N'/baseList', N'base_list', NULL, N'9674D439-864E-4BF8-9DD8-08D7D70AD6BB', N'1', N'1', N'2020-12-17 14:49:10', N'2020-12-17 14:49:12', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'35DC130E-4034-11EB-A2CB-4CEDFB69A3E8', N'110', N'标准表格', N'views/list/index', N'/list', N'list', NULL, N'9674D439-864E-4BF8-9DD8-08D7D70AD6BB', N'1', N'1', N'2020-12-17 14:51:05', N'2020-12-17 14:51:07', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'38FD48A9-4035-11EB-A2CB-4CEDFB69A3E8', N'30', N'按钮', N'views/button', N'/button', N'button', N'AppstoreOutlined', N'6F48B583-9C8F-490F-A3E0-81FC5F2E71B4', N'1', N'1', N'2021-01-16 16:04:05', N'2020-12-17 14:58:05', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'D29FDE94-0D6A-4A64-8446-55EE63DF5885', N'160', N'岗位管理', N'views/system/post/index', N'/system/post', N'system_post', N'IdcardOutlined', N'9591F249-1471-44F7-86B5-6FDAE8B93888', N'1', N'1', N'2021-06-06 00:29:11', N'2021-05-27 17:29:49', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'D721FC55-2174-40EB-BB37-5C54A158525A', N'120', N'功能管理', N'views/system/function/index', N'/system/function', N'system_function', N'ControlOutlined', N'9591F249-1471-44F7-86B5-6FDAE8B93888', N'1', N'1', N'2021-05-28 12:49:53', N'2018-03-10 12:16:38', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'9591F249-1471-44F7-86B5-6FDAE8B93888', N'100', N'系统管理', NULL, NULL, NULL, N'DesktopOutlined', NULL, N'1', N'1', N'2018-03-10 12:16:38', N'2018-03-10 12:16:38', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'6F48B583-9C8F-490F-A3E0-81FC5F2E71B4', N'10', N'更多示例', NULL, NULL, NULL, N'MoreOutlined', NULL, N'1', N'1', N'2021-06-06 00:29:45', N'2021-05-28 11:49:02', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'100', N'账户管理', N'views/system/user/index', N'/system/user', N'system_user', N'UserOutlined', N'9591F249-1471-44F7-86B5-6FDAE8B93888', N'1', N'1', N'2021-05-28 12:44:36', N'2018-03-10 12:16:38', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'BD024F3A-99A7-4407-861C-A016F243F222', N'140', N'角色功能', N'views/system/rolefunction/index', N'/system/role/function', N'system_role_function', N'UserSwitchOutlined', N'9591F249-1471-44F7-86B5-6FDAE8B93888', N'1', N'1', N'2021-05-28 12:53:04', N'2018-03-10 12:16:38', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'10', N'会员管理', N'views/base/member', N'/base/member', N'base_member', N'UsergroupAddOutlined', N'1EC76C4C-B9B3-4517-9854-F08CD11D653D', N'1', N'1', N'2021-05-28 12:58:22', N'2018-03-10 12:16:38', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'60AE9382-31AB-4276-A379-D3876E9BB783', N'110', N'角色管理', N'views/system/role/index', N'/system/role', N'system_role', N'TeamOutlined', N'9591F249-1471-44F7-86B5-6FDAE8B93888', N'1', N'1', N'2021-05-28 12:45:16', N'2018-03-10 12:16:38', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'F35D64AE-ECB7-4D06-ACFB-D91595966D9E', N'150', N'个人中心', N'views/system/personal_center/index', N'/system/personal/center', N'system_personal_center', N'FormOutlined', N'9591F249-1471-44F7-86B5-6FDAE8B93888', N'1', N'1', N'2021-06-06 00:28:43', N'2018-03-10 12:16:38', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'0ABFD53B-6BDE-42C6-9F99-E32775BC31DD', N'170', N'组织机构', N'views/system/organization/index', N'/system/organization', N'system_organization', N'ClusterOutlined', N'9591F249-1471-44F7-86B5-6FDAE8B93888', N'1', N'1', N'2021-06-06 00:29:19', N'2021-05-27 20:27:56', NULL)
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime], [JumpUrl]) VALUES (N'1EC76C4C-B9B3-4517-9854-F08CD11D653D', N'90', N'基础信息', NULL, NULL, NULL, N'GoldOutlined', NULL, N'1', N'1', N'2021-01-18 19:33:46', N'2018-03-10 12:16:38', NULL)
GO


-- ----------------------------
-- Table structure for SysMenuFunction
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysMenuFunction]') AND type IN ('U'))
	DROP TABLE [dbo].[SysMenuFunction]
GO

CREATE TABLE [dbo].[SysMenuFunction] (
  [Id] uniqueidentifier  NOT NULL,
  [MenuId] uniqueidentifier  NULL,
  [FunctionId] uniqueidentifier  NULL,
  [UpdateTime] datetime2(0)  NULL,
  [CreateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysMenuFunction] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysMenuFunction
-- ----------------------------
INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1F02B56D-D844-45A1-BF68-0500D19F0C95', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-28 12:51:15', N'2021-05-28 12:51:15')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'869A2231-5631-4067-B97B-08D88A2CED15', N'4CE21A81-1CAE-44D2-B29E-07058FF04B3E', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-04-18 22:08:06', N'2020-11-16 20:41:23')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'E28E11CD-27C5-475D-D6B1-08D8B9F5533B', N'F55A8858-EDE4-4380-85B2-08D8B9F578EF', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-04-18 22:08:06', N'2021-01-16 16:05:46')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'BD144568-A24E-4F7E-D6B2-08D8B9F5533B', N'15455A8D-262D-4266-85B3-08D8B9F578EF', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-04-18 22:08:06', N'2021-01-16 16:06:33')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'060D14F9-E066-44B9-D6B3-08D8B9F5533B', N'63A6D076-3E22-4D26-85B4-08D8B9F578EF', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-04-18 22:08:06', N'2021-01-16 16:07:24')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'E136CCDA-91CE-4041-D6B4-08D8B9F5533B', N'9B01F9F3-5621-4BC2-85B5-08D8B9F578EF', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-04-18 22:08:06', N'2021-01-16 16:10:06')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'B010F911-257E-4FA3-5B15-08D8BA019738', N'9674D439-864E-4BF8-9DD8-08D7D70AD6BB', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-04-18 22:08:06', N'2021-01-16 17:32:07')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'944F5D6A-19DC-4804-8374-08D8BB7CD668', N'D788896B-4033-11EB-A2CB-4CEDFB69A3E8', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-04-18 22:08:06', N'2021-01-18 14:46:52')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9D63D074-85E7-48BD-8375-08D8BB7CD668', N'35DC130E-4034-11EB-A2CB-4CEDFB69A3E8', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-04-18 22:08:06', N'2021-01-18 14:46:55')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'11D28148-61DA-4F49-8376-08D8BB7CD668', N'38FD48A9-4035-11EB-A2CB-4CEDFB69A3E8', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-04-18 22:08:06', N'2021-01-18 14:54:30')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'F38D6E67-3F6F-495D-B759-08D8BBA503C2', N'CC99F568-A831-4EA8-4C7A-08D8BBA503BF', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-04-18 22:08:06', N'2021-01-18 19:34:54')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5D8D881A-EA26-43E5-CD87-08D9283EFC24', N'F35D64AE-ECB7-4D06-ACFB-D91595966D9E', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-06-06 00:28:43', N'2021-06-06 00:28:43')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'339ADB40-D10C-4F44-CD89-08D9283EFC24', N'D29FDE94-0D6A-4A64-8446-55EE63DF5885', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2021-06-06 00:29:11', N'2021-06-06 00:29:11')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7D3D75DC-7BFE-482E-CD8A-08D9283EFC24', N'D29FDE94-0D6A-4A64-8446-55EE63DF5885', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2021-06-06 00:29:11', N'2021-06-06 00:29:11')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4A1A49BB-85CD-48E1-CD8B-08D9283EFC24', N'D29FDE94-0D6A-4A64-8446-55EE63DF5885', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2021-06-06 00:29:11', N'2021-06-06 00:29:11')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'B3A8B718-F660-4D8C-CD8C-08D9283EFC24', N'D29FDE94-0D6A-4A64-8446-55EE63DF5885', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2021-06-06 00:29:11', N'2021-06-06 00:29:11')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'74C2E47E-CB85-4C0D-CD8D-08D9283EFC24', N'D29FDE94-0D6A-4A64-8446-55EE63DF5885', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-06-06 00:29:11', N'2021-06-06 00:29:11')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'CA96585B-95D9-4D2F-CD8E-08D9283EFC24', N'D29FDE94-0D6A-4A64-8446-55EE63DF5885', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2021-06-06 00:29:11', N'2021-06-06 00:29:11')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'C5D9BF24-7E6F-4160-CD8F-08D9283EFC24', N'0ABFD53B-6BDE-42C6-9F99-E32775BC31DD', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2021-06-06 00:29:19', N'2021-06-06 00:29:19')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'A357E5C8-F021-447A-CD90-08D9283EFC24', N'0ABFD53B-6BDE-42C6-9F99-E32775BC31DD', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2021-06-06 00:29:19', N'2021-06-06 00:29:19')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'C7EB87B6-9A99-4C89-CD91-08D9283EFC24', N'0ABFD53B-6BDE-42C6-9F99-E32775BC31DD', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2021-06-06 00:29:19', N'2021-06-06 00:29:19')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'43A3097E-37EE-476A-CD92-08D9283EFC24', N'0ABFD53B-6BDE-42C6-9F99-E32775BC31DD', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2021-06-06 00:29:19', N'2021-06-06 00:29:19')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'C98C4DB7-DFAB-4193-CD93-08D9283EFC24', N'0ABFD53B-6BDE-42C6-9F99-E32775BC31DD', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2021-06-06 00:29:19', N'2021-06-06 00:29:19')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'B930B4C3-5136-43C5-CD94-08D9283EFC24', N'0ABFD53B-6BDE-42C6-9F99-E32775BC31DD', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-06-06 00:29:19', N'2021-06-06 00:29:19')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'15CC0317-A15C-43E3-CD95-08D9283EFC24', N'9A27DFC2-4A66-11EB-87B1-4CEDFB69A3E8', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-06-06 00:29:25', N'2021-06-06 00:29:25')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'C2207F27-9CAA-44F7-A31F-0B757B973E23', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'2401F4D0-60B0-4E2E-903F-84C603373572', N'2021-05-28 12:44:36', N'2021-05-28 12:44:36')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'511EF9D4-D4B6-4053-9B37-121F06B726C7', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2021-05-28 12:49:53', N'2021-05-28 12:49:53')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'81A43621-60CF-4F04-9279-13480D37E6A4', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'B6FD5425-504A-46A9-993B-2F8DC9158EB8', N'2021-05-28 12:51:15', N'2021-05-28 12:51:15')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5B21D63C-6611-4B39-9C26-1510118969B2', N'0B7F8E2C-9FAA-4496-9068-80B87BA1B64E', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'774FE6FF-3ECC-40B0-A8A3-159CD2492FE2', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'2401F4D0-60B0-4E2E-903F-84C603373572', N'2021-05-28 12:51:15', N'2021-05-28 12:51:15')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'983CA076-0761-48BF-85E3-18BB24685A09', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'2401F4D0-60B0-4E2E-903F-84C603373572', N'2021-05-28 12:45:16', N'2021-05-28 12:45:16')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8AAA6319-D36A-4FCD-8797-19D97A077E1B', N'74B837AE-D24F-4F57-B107-E20DBE70F5D3', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'179C8B22-EFDD-475C-AA78-1B939FF05876', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2021-05-28 12:51:15', N'2021-05-28 12:51:15')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7E466377-1810-4027-AE1B-227F53953B21', N'74B837AE-D24F-4F57-B107-E20DBE70F5D3', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'D455B476-834C-4EF2-91AE-24F60559E029', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'2401F4D0-60B0-4E2E-903F-84C603373572', N'2021-05-28 12:58:22', N'2021-05-28 12:58:22')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0A4ACC41-95D6-4CBC-A3CA-269E0A4061EB', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2021-05-28 12:44:36', N'2021-05-28 12:44:36')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'30B4B575-4881-41EA-AE33-27BFA151E423', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2021-05-28 12:58:22', N'2021-05-28 12:58:22')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4F40CE17-C29C-4448-9D1D-46AAB970789A', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2021-05-28 12:45:16', N'2021-05-28 12:45:16')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'44DD215E-1EDF-45AA-B6C6-4910ED14A228', N'B73C82F9-54EA-4F02-B7D9-FC3976BECB19', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4C74EE6A-DCBA-4192-B976-4E8FCF33A061', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-28 12:49:53', N'2021-05-28 12:49:53')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0943B658-9FE1-4C9B-B583-6899CC364605', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2021-05-28 12:51:15', N'2021-05-28 12:51:15')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'C6FAF480-7B10-4CD1-ABB5-69E0E4AE2B85', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2021-05-28 12:58:22', N'2021-05-28 12:58:22')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5689B539-88DB-49D2-8C5B-720E9EBC673E', N'74B837AE-D24F-4F57-B107-E20DBE70F5D3', N'2401F4D0-60B0-4E2E-903F-84C603373572', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'C848EDB2-00B3-4F67-9362-72D3A2EEA88B', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2021-05-28 12:45:16', N'2021-05-28 12:45:16')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'B8AA1A54-9076-4C72-A323-7B3B95AB26F4', N'74B837AE-D24F-4F57-B107-E20DBE70F5D3', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'3315859E-BAD8-42A6-A9FC-7DEAEB5F6B79', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'B6FD5425-504A-46A9-993B-2F8DC9158EB8', N'2021-05-28 12:49:53', N'2021-05-28 12:49:53')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'25CFD1D0-04C4-4B2C-B534-7F3C8C0EB06D', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-28 12:45:16', N'2021-05-28 12:45:16')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'546CC6AF-BFA3-4B61-8FA8-85713E38BC60', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2021-05-28 12:49:53', N'2021-05-28 12:49:53')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'CF317057-34FB-4A07-91C6-86A3CBC541FA', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2021-05-28 12:49:53', N'2021-05-28 12:49:53')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'23B4AF49-6A18-471D-9F09-88296C234619', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2021-05-28 12:49:53', N'2021-05-28 12:49:53')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7EC9B0FA-54EE-498E-A69B-8F689D019611', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2021-05-28 12:45:16', N'2021-05-28 12:45:16')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'C4BFE58E-1CB8-49DB-A942-919D46F79BE9', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2021-05-28 12:51:15', N'2021-05-28 12:51:15')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'A3074D55-141E-496E-A55C-93B5FD2DCE6C', N'74B837AE-D24F-4F57-B107-E20DBE70F5D3', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'A96CC666-927D-4D27-8174-9C321F41236D', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'2401F4D0-60B0-4E2E-903F-84C603373572', N'2021-05-28 12:49:53', N'2021-05-28 12:49:53')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'BB14769D-4760-4341-9FAF-9FA82EEADA65', N'2FF9BB67-AA42-48CF-80C9-6D1CFB6B1EAD', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7861B618-0B12-4A56-ABDA-A5E8D17AC5D7', N'2FF9BB67-AA42-48CF-80C9-6D1CFB6B1EAD', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8C85E128-83AD-4079-8754-AC5679B04DF6', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-28 12:44:36', N'2021-05-28 12:44:36')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'09A29222-8F8D-4CA6-9BD1-AEDDBABE7D7B', N'2DC579DC-2325-4063-B051-E92454EE3838', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-04-18 22:08:06', N'2020-11-16 13:24:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'C6E873FC-A228-4418-B4AC-AFC45A612AF7', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2021-05-28 12:58:22', N'2021-05-28 12:58:22')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5A0EA751-0C50-482A-BE15-AFEDB9FAAE64', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'B6FD5425-504A-46A9-993B-2F8DC9158EB8', N'2021-05-28 12:58:22', N'2021-05-28 12:58:22')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'101BAF28-DBFA-41E8-ACA3-B136E02AEE8B', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2021-05-28 12:49:53', N'2021-05-28 12:49:53')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4F666139-2C4A-400B-BD35-B67B8AA1FE7D', N'BD024F3A-99A7-4407-861C-A016F243F222', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-28 12:53:04', N'2021-05-28 12:53:04')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'DE9FA7C5-2C58-414F-8186-B68036044ED7', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2021-05-28 12:44:36', N'2021-05-28 12:44:36')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'E01F16A4-04C2-41DE-9C20-BE1747CF31AF', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2021-05-28 12:44:36', N'2021-05-28 12:44:36')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'92BD3806-C5B3-41FE-B6F9-C6FD7A9DD77E', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2021-05-28 12:58:22', N'2021-05-28 12:58:22')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'B1B627C4-AC62-4DAC-B4CC-C71392040543', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2021-05-28 12:51:15', N'2021-05-28 12:51:15')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'B2DD663B-67F3-478B-B8AA-CBE52480E133', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2021-05-28 12:51:15', N'2021-05-28 12:51:15')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0E354FD7-690B-4D22-A9DB-E5025E353BFE', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2021-05-28 12:58:22', N'2021-05-28 12:58:22')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'DBCB960D-C4CD-4D27-B1AA-E5AAE91B727D', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-28 12:58:22', N'2021-05-28 12:58:22')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'2CF7A5E1-A38E-45D6-949E-E8BB65F60A5C', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2021-05-28 12:44:36', N'2021-05-28 12:44:36')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ED0EAF25-AAFF-4E8B-9A85-F173603510EF', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2021-05-28 12:45:16', N'2021-05-28 12:45:16')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1B4203A4-9FC4-42F8-9122-F1B3CDE687E9', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2021-05-28 12:44:36', N'2021-05-28 12:44:36')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1A727D75-867E-4292-9024-F66A292B465F', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2021-05-28 12:45:16', N'2021-05-28 12:45:16')
GO


-- ----------------------------
-- Table structure for SysOrganization
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysOrganization]') AND type IN ('U'))
	DROP TABLE [dbo].[SysOrganization]
GO

CREATE TABLE [dbo].[SysOrganization] (
  [Id] uniqueidentifier  NOT NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [OrderNumber] int  NULL,
  [Leader] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Phone] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Email] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [State] int  NULL,
  [ParentId] uniqueidentifier  NULL,
  [UpdateTime] datetime2(0)  NULL,
  [CreateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysOrganization] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysOrganization
-- ----------------------------
INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'E898E8AD-2DE7-46E0-B6F3-08F5FB9662ED', N'财务部门', N'4', N'财务部门', N'12323452345', N'12312@qq.com', N'1', N'47C547EA-E07A-4475-A4F7-AE09E3D8FAFC', N'2021-05-27 22:33:13', N'2021-05-27 22:33:13')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'A5E87436-53D5-4FFF-8F2E-0AF511DB9BA4', N'研发部门', N'1', N'研发部门', N'1234323423', N'12312@qq.com', N'1', N'47C547EA-E07A-4475-A4F7-AE09E3D8FAFC', N'2021-05-27 22:32:29', N'2021-05-27 22:32:08')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'9CF32211-F255-4C2E-9C53-4258755E43C5', N'测试部门', N'3', N'测试部门', N'12313', N'123123@qq.com', N'1', N'47C547EA-E07A-4475-A4F7-AE09E3D8FAFC', N'2021-05-27 22:32:59', N'2021-05-27 22:32:59')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'1B001A4D-BCE5-4E09-BC96-4E7DA7686C48', N'北京分部', N'3', N'北京分部', N'132123', N'13131', N'1', N'F23777DD-2C03-449F-953B-DF91C19DEE5B', N'2021-05-27 22:33:44', N'2021-05-27 22:33:44')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'05E55B19-261A-4DF8-AEA0-83A56F1AEB7A', N'市场部门', N'2', N'市场部门', N'123213', N'123@qq.com', N'1', N'47C547EA-E07A-4475-A4F7-AE09E3D8FAFC', N'2021-05-27 22:32:46', N'2021-05-27 22:32:40')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'47C547EA-E07A-4475-A4F7-AE09E3D8FAFC', N'成都分部', N'2', N'成都分部', N'123123123', N'123@qq.com', N'1', N'F23777DD-2C03-449F-953B-DF91C19DEE5B', N'2021-05-27 22:31:45', N'2021-05-27 21:01:50')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'6E36F7EB-3D03-417D-8815-C0E0F19CE6E6', N'市场部门', N'1', N'市场部门', N'234124234', N'234234@qq.com', N'1', N'1B001A4D-BCE5-4E09-BC96-4E7DA7686C48', N'2021-05-27 22:33:57', N'2021-05-27 22:33:57')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'F23777DD-2C03-449F-953B-DF91C19DEE5B', N'阿里巴巴集团', N'1', N'hzy', N'18410912184', N'18410912184@qq.com', N'1', NULL, N'2021-05-27 20:50:31', N'2021-05-27 20:50:31')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'EB913607-932F-433B-8321-DFE35258BB88', N'运维部门', N'5', N'运维部门', N'1232133452', N'12341@qq.com', N'1', N'47C547EA-E07A-4475-A4F7-AE09E3D8FAFC', N'2021-05-27 22:33:25', N'2021-05-27 22:33:25')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'AEA25949-B0A0-49A3-9FBC-E80224B75FC1', N'财务部门', N'2', N'财务部门', N'435543535', N'123@qq.com', N'1', N'1B001A4D-BCE5-4E09-BC96-4E7DA7686C48', N'2021-05-27 22:34:11', N'2021-05-27 22:34:11')
GO


-- ----------------------------
-- Table structure for SysPost
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysPost]') AND type IN ('U'))
	DROP TABLE [dbo].[SysPost]
GO

CREATE TABLE [dbo].[SysPost] (
  [Id] uniqueidentifier  NOT NULL,
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
INSERT INTO [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [UpdateTime], [CreateTime]) VALUES (N'0716B4B0-9A06-43E9-8AE8-82C74875F83E', N'2', N'se', N'项目经理', N'1', NULL, N'2021-05-27 20:26:35', N'2021-05-27 20:26:35')
GO

INSERT INTO [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [UpdateTime], [CreateTime]) VALUES (N'96927C30-41D0-4CED-8E29-CBED35C90FB0', N'1', N'ceo', N'董事长', N'1', NULL, N'2021-05-27 20:26:22', N'2021-05-27 20:26:22')
GO

INSERT INTO [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [UpdateTime], [CreateTime]) VALUES (N'E46AF329-6D08-442C-9837-F22CFF954411', N'4', N'user', N'普通员工', N'1', NULL, N'2021-05-27 20:26:52', N'2021-05-27 20:26:52')
GO

INSERT INTO [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [UpdateTime], [CreateTime]) VALUES (N'F0C67537-8094-429A-B474-F54AC518609E', N'3', N'hr', N'人力资源', N'1', NULL, N'2021-05-27 20:26:44', N'2021-05-27 20:26:44')
GO


-- ----------------------------
-- Table structure for SysRole
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysRole]') AND type IN ('U'))
	DROP TABLE [dbo].[SysRole]
GO

CREATE TABLE [dbo].[SysRole] (
  [Id] uniqueidentifier  NOT NULL,
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
INSERT INTO [dbo].[SysRole] ([Id], [Number], [Name], [Remark], [IsDelete], [UpdateTime], [CreateTime]) VALUES (N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'1', N'超级管理员', N'拥有所有权限', N'0', N'2021-01-10 11:25:12', N'2016-07-06 17:59:20')
GO

INSERT INTO [dbo].[SysRole] ([Id], [Number], [Name], [Remark], [IsDelete], [UpdateTime], [CreateTime]) VALUES (N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2', N'普通用户', N'普通用户', N'1', N'2021-01-30 00:51:17', N'2016-07-06 17:59:20')
GO


-- ----------------------------
-- Table structure for SysRoleMenuFunction
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysRoleMenuFunction]') AND type IN ('U'))
	DROP TABLE [dbo].[SysRoleMenuFunction]
GO

CREATE TABLE [dbo].[SysRoleMenuFunction] (
  [Id] uniqueidentifier  NOT NULL,
  [RoleId] uniqueidentifier  NULL,
  [MenuId] uniqueidentifier  NULL,
  [FunctionId] uniqueidentifier  NULL,
  [UpdateTime] datetime2(0)  NULL,
  [CreateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysRoleMenuFunction] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysRoleMenuFunction
-- ----------------------------
INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'93CE6573-523E-4E3C-3D63-08D88BC25510', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'0B7F8E2C-9FAA-4496-9068-80B87BA1B64E', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-04-18 22:08:06', N'2020-11-18 21:03:36')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'463ACEA8-60B0-4A59-7DE7-08D8BB7C529A', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-01-18 14:45:40', N'2021-01-18 14:45:40')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'F1B431B3-D7EF-44CA-7DE8-08D8BB7C529A', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2021-01-18 14:45:40', N'2021-01-18 14:45:40')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'D80E356E-0D71-411F-7DE9-08D8BB7C529A', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2021-01-18 14:45:40', N'2021-01-18 14:45:40')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'2F2F0C63-2E13-4137-98DB-08D8BC47A2C8', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'F55A8858-EDE4-4380-85B2-08D8B9F578EF', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-01-19 14:58:36', N'2021-01-19 14:58:36')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0BE2633E-046D-40FA-98DC-08D8BC47A2C8', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'38FD48A9-4035-11EB-A2CB-4CEDFB69A3E8', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-01-19 14:58:38', N'2021-01-19 14:58:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1E882FBE-FD88-407E-98DD-08D8BC47A2C8', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'63A6D076-3E22-4D26-85B4-08D8B9F578EF', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-01-19 14:58:42', N'2021-01-19 14:58:42')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'DE19371D-5FBE-4FC3-98DE-08D8BC47A2C8', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'9B01F9F3-5621-4BC2-85B5-08D8B9F578EF', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-01-19 14:58:42', N'2021-01-19 14:58:42')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'12CEEF4D-03C0-45CC-98DF-08D8BC47A2C8', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'D788896B-4033-11EB-A2CB-4CEDFB69A3E8', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-01-19 14:58:43', N'2021-01-19 14:58:43')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1C082C5A-8383-443F-98E0-08D8BC47A2C8', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'35DC130E-4034-11EB-A2CB-4CEDFB69A3E8', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-01-19 14:58:44', N'2021-01-19 14:58:44')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'D5D321CE-28E6-4742-98E1-08D8BC47A2C8', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'CC99F568-A831-4EA8-4C7A-08D8BBA503BF', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-01-19 14:58:45', N'2021-01-19 14:58:45')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'99E29596-75A0-4736-98E2-08D8BC47A2C8', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'9A27DFC2-4A66-11EB-87B1-4CEDFB69A3E8', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-01-19 14:58:52', N'2021-01-19 14:58:52')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'C0C76981-828B-435E-98E3-08D8BC47A2C8', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-01-19 15:12:04', N'2021-01-19 15:12:04')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6A3D6AC5-11C7-4592-98E4-08D8BC47A2C8', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2021-01-19 15:12:04', N'2021-01-19 15:12:04')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ED97D135-4408-41CC-98E5-08D8BC47A2C8', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2021-01-19 15:12:04', N'2021-01-19 15:12:04')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'E18A8DAD-716D-49CD-98E6-08D8BC47A2C8', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2021-01-19 15:12:04', N'2021-01-19 15:12:04')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'AFFC5760-C5BD-43FB-98E7-08D8BC47A2C8', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2021-01-19 15:12:04', N'2021-01-19 15:12:04')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'EB2AC2A6-36AC-4EE1-F05E-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'38FD48A9-4035-11EB-A2CB-4CEDFB69A3E8', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-12 20:25:24', N'2021-05-12 20:25:24')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5EE46CD1-B2A3-4BC2-F05F-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'F55A8858-EDE4-4380-85B2-08D8B9F578EF', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-12 20:25:24', N'2021-05-12 20:25:24')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'EC8ED1BA-61C3-4219-F060-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'63A6D076-3E22-4D26-85B4-08D8B9F578EF', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-12 20:25:25', N'2021-05-12 20:25:25')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9D35E600-EE44-479A-F061-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'9B01F9F3-5621-4BC2-85B5-08D8B9F578EF', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-12 20:25:25', N'2021-05-12 20:25:25')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'FCCCD730-D83E-47B1-F062-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'D788896B-4033-11EB-A2CB-4CEDFB69A3E8', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-12 20:25:26', N'2021-05-12 20:25:26')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0946C554-84A7-4ADB-F063-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'35DC130E-4034-11EB-A2CB-4CEDFB69A3E8', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-12 20:25:27', N'2021-05-12 20:25:27')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'57A97A6C-CC65-4AC6-F064-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'CC99F568-A831-4EA8-4C7A-08D8BBA503BF', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-12 20:25:27', N'2021-05-12 20:25:27')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'EEE9D884-A577-40D2-F06A-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'BD024F3A-99A7-4407-861C-A016F243F222', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-12 20:25:32', N'2021-05-12 20:25:32')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6DFA0985-81FA-4242-F06B-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'F35D64AE-ECB7-4D06-ACFB-D91595966D9E', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-12 20:25:33', N'2021-05-12 20:25:33')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'915AC7F5-4E1B-4D92-F06C-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'9A27DFC2-4A66-11EB-87B1-4CEDFB69A3E8', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-12 20:25:33', N'2021-05-12 20:25:33')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'754AD754-BBC4-47BC-F088-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-12 20:25:38', N'2021-05-12 20:25:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'C636D222-58DC-410F-F089-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2021-05-12 20:25:38', N'2021-05-12 20:25:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'92CEC1E4-CC90-4C20-F08A-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2021-05-12 20:25:38', N'2021-05-12 20:25:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'C5AD81CC-09EC-4007-F08B-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2021-05-12 20:25:38', N'2021-05-12 20:25:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'F058D1C8-7633-4781-F08C-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2021-05-12 20:25:38', N'2021-05-12 20:25:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9967C23D-9101-4543-F08D-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2021-05-12 20:25:38', N'2021-05-12 20:25:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'2D23022C-DF34-4847-F08E-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'2401F4D0-60B0-4E2E-903F-84C603373572', N'2021-05-12 20:25:38', N'2021-05-12 20:25:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'D92CC026-DFCF-49FE-F08F-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'B6FD5425-504A-46A9-993B-2F8DC9158EB8', N'2021-05-12 20:25:38', N'2021-05-12 20:25:38')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'CB043048-142D-464D-F0A4-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-12 20:25:42', N'2021-05-12 20:25:42')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'82EB14DA-2B31-45D8-F0A5-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2021-05-12 20:25:42', N'2021-05-12 20:25:42')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8E87C5CB-1C6E-481E-F0A6-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2021-05-12 20:25:42', N'2021-05-12 20:25:42')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'623EAF4E-5263-4FB9-F0A7-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2021-05-12 20:25:42', N'2021-05-12 20:25:42')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'FF047BDD-04F4-4597-F0A8-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2021-05-12 20:25:42', N'2021-05-12 20:25:42')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'B3AC009F-017B-4512-F0A9-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2021-05-12 20:25:42', N'2021-05-12 20:25:42')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'F2891613-0A65-4C93-F0AA-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'2401F4D0-60B0-4E2E-903F-84C603373572', N'2021-05-12 20:25:42', N'2021-05-12 20:25:42')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'26250C7D-B504-44CC-F0BF-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-12 20:25:46', N'2021-05-12 20:25:46')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'E69FE992-E4A5-4AC9-F0C0-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2021-05-12 20:25:46', N'2021-05-12 20:25:46')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'FA279E29-F44F-4424-F0C1-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2021-05-12 20:25:46', N'2021-05-12 20:25:46')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0920F21B-FBBF-45F4-F0C2-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2021-05-12 20:25:46', N'2021-05-12 20:25:46')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'541450F0-DBD3-4094-F0C3-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2021-05-12 20:25:46', N'2021-05-12 20:25:46')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9AC7BDFB-7398-4DC8-F0C4-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2021-05-12 20:25:46', N'2021-05-12 20:25:46')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6C934FA6-EFF0-42C7-F0C5-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'2401F4D0-60B0-4E2E-903F-84C603373572', N'2021-05-12 20:25:46', N'2021-05-12 20:25:46')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'E02EF258-BE98-4A5C-F0E1-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-12 20:25:50', N'2021-05-12 20:25:50')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'97C80C3A-D00E-4788-F0E2-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2021-05-12 20:25:50', N'2021-05-12 20:25:50')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5D470AE4-66A5-4CDF-F0E3-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2021-05-12 20:25:50', N'2021-05-12 20:25:50')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7E74F26C-F63E-42F0-F0E4-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2021-05-12 20:25:50', N'2021-05-12 20:25:50')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'68AB8ACC-4D11-4E66-F0E5-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2021-05-12 20:25:50', N'2021-05-12 20:25:50')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8E1EA93C-398C-4FE7-F0E6-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'2401F4D0-60B0-4E2E-903F-84C603373572', N'2021-05-12 20:25:50', N'2021-05-12 20:25:50')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'E08A05A7-C494-4E32-F0E7-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'B6FD5425-504A-46A9-993B-2F8DC9158EB8', N'2021-05-12 20:25:50', N'2021-05-12 20:25:50')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4CA56FED-FC32-4456-F0E8-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2021-05-12 20:25:50', N'2021-05-12 20:25:50')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'C5ABDA7A-230D-469F-F104-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-05-12 20:25:54', N'2021-05-12 20:25:54')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9F341E22-87C3-498A-F105-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2021-05-12 20:25:54', N'2021-05-12 20:25:54')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'92837E44-E8D2-48A2-F106-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2021-05-12 20:25:54', N'2021-05-12 20:25:54')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'052DD69B-C809-4F62-F107-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2021-05-12 20:25:54', N'2021-05-12 20:25:54')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'A36D2F2E-56F4-4920-F108-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2021-05-12 20:25:54', N'2021-05-12 20:25:54')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'F65ADC84-D2A4-4F91-F109-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'2401F4D0-60B0-4E2E-903F-84C603373572', N'2021-05-12 20:25:54', N'2021-05-12 20:25:54')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'704A78F1-5C00-4169-F10A-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'B6FD5425-504A-46A9-993B-2F8DC9158EB8', N'2021-05-12 20:25:54', N'2021-05-12 20:25:54')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'C9D1ED28-5F58-4C7E-F10B-08D915410342', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2021-05-12 20:25:54', N'2021-05-12 20:25:54')
GO


-- ----------------------------
-- Table structure for SysUser
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysUser]') AND type IN ('U'))
	DROP TABLE [dbo].[SysUser]
GO

CREATE TABLE [dbo].[SysUser] (
  [Id] uniqueidentifier  NOT NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LoginName] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Password] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Phone] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Email] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [IsDelete] int  NULL,
  [OrganizationId] uniqueidentifier  NULL,
  [UpdateTime] datetime2(0)  NULL,
  [CreateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysUser] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysUser
-- ----------------------------
INSERT INTO [dbo].[SysUser] ([Id], [Name], [LoginName], [Password], [Phone], [Email], [IsDelete], [OrganizationId], [UpdateTime], [CreateTime]) VALUES (N'0198459E-2034-4533-B843-5D227AD20740', N'超级管理员', N'admin', N'123456', N'123123123', N'1396510655@qq.com', N'2', N'F23777DD-2C03-449F-953B-DF91C19DEE5B', N'2021-05-24 10:52:53', N'2017-04-06 19:55:53')
GO

INSERT INTO [dbo].[SysUser] ([Id], [Name], [LoginName], [Password], [Phone], [Email], [IsDelete], [OrganizationId], [UpdateTime], [CreateTime]) VALUES (N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'用户', N'user', N'123', N'456456456', N'18123456789@live.com', N'1', N'F23777DD-2C03-449F-953B-DF91C19DEE5B', N'2021-04-18 22:08:12', N'2017-04-06 19:55:53')
GO


-- ----------------------------
-- Table structure for SysUserPost
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysUserPost]') AND type IN ('U'))
	DROP TABLE [dbo].[SysUserPost]
GO

CREATE TABLE [dbo].[SysUserPost] (
  [Id] uniqueidentifier  NOT NULL,
  [UserId] uniqueidentifier  NULL,
  [PostId] uniqueidentifier  NULL,
  [UpdateTime] datetime2(0)  NULL,
  [CreateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysUserPost] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysUserPost
-- ----------------------------
INSERT INTO [dbo].[SysUserPost] ([Id], [UserId], [PostId], [UpdateTime], [CreateTime]) VALUES (N'14781042-D76B-41A0-9B75-4191FF66F1E2', N'0198459E-2034-4533-B843-5D227AD20740', N'96927C30-41D0-4CED-8E29-CBED35C90FB0', N'2021-07-23 17:52:05', N'2021-07-23 17:52:05')
GO

INSERT INTO [dbo].[SysUserPost] ([Id], [UserId], [PostId], [UpdateTime], [CreateTime]) VALUES (N'8BE16163-CE6B-4ABB-908C-F343C6DF5ECC', N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'0716B4B0-9A06-43E9-8AE8-82C74875F83E', N'2021-05-28 10:33:35', N'2021-05-28 10:33:35')
GO


-- ----------------------------
-- Table structure for SysUserRole
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysUserRole]') AND type IN ('U'))
	DROP TABLE [dbo].[SysUserRole]
GO

CREATE TABLE [dbo].[SysUserRole] (
  [Id] uniqueidentifier  NOT NULL,
  [UserId] uniqueidentifier  NULL,
  [RoleId] uniqueidentifier  NULL,
  [UpdateTime] datetime2(0)  NULL,
  [CreateTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysUserRole] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysUserRole
-- ----------------------------
INSERT INTO [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [UpdateTime], [CreateTime]) VALUES (N'2F892A33-FF5B-4C8A-94A6-95551455A78E', N'0198459E-2034-4533-B843-5D227AD20740', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'2021-07-23 17:52:05', N'2021-07-23 17:52:05')
GO

INSERT INTO [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [UpdateTime], [CreateTime]) VALUES (N'9C6E49E7-FCF0-4372-B726-9D9D8B9A55E8', N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2021-05-28 10:33:35', N'2021-05-28 10:33:35')
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

