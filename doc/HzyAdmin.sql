/*
 Navicat Premium Data Transfer

 Source Server         : 本地_SqlServer
 Source Server Type    : SQL Server
 Source Server Version : 14001000
 Source Host           : .:1433
 Source Catalog        : HzyAdminRazor
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14001000
 File Encoding         : 65001

 Date: 14/11/2021 22:03:39
*/


-- ----------------------------
-- Table structure for Member
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Member]') AND type IN ('U'))
	DROP TABLE [dbo].[Member]
GO

CREATE TABLE [dbo].[Member] (
  [Id] uniqueidentifier DEFAULT (newid()) NOT NULL,
  [Number] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Phone] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Sex] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Birthday] datetime  NOT NULL,
  [Photo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Introduce] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [FilePath] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [UserId] uniqueidentifier  NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL,
  [UpdateTime] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[Member] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Id',
'SCHEMA', N'dbo',
'TABLE', N'Member',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'Member',
'COLUMN', N'Number'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名称',
'SCHEMA', N'dbo',
'TABLE', N'Member',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'电话号码',
'SCHEMA', N'dbo',
'TABLE', N'Member',
'COLUMN', N'Phone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别',
'SCHEMA', N'dbo',
'TABLE', N'Member',
'COLUMN', N'Sex'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生日',
'SCHEMA', N'dbo',
'TABLE', N'Member',
'COLUMN', N'Birthday'
GO

EXEC sp_addextendedproperty
'MS_Description', N'头像',
'SCHEMA', N'dbo',
'TABLE', N'Member',
'COLUMN', N'Photo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'简介',
'SCHEMA', N'dbo',
'TABLE', N'Member',
'COLUMN', N'Introduce'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件',
'SCHEMA', N'dbo',
'TABLE', N'Member',
'COLUMN', N'FilePath'
GO

EXEC sp_addextendedproperty
'MS_Description', N'账户Id',
'SCHEMA', N'dbo',
'TABLE', N'Member',
'COLUMN', N'UserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'Member',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'Member',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'member',
'SCHEMA', N'dbo',
'TABLE', N'Member'
GO


-- ----------------------------
-- Records of Member
-- ----------------------------
INSERT INTO [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreateTime], [UpdateTime]) VALUES (N'96A1AA3D-A61A-42D0-954A-C71753FB2065', N'123', N'123', N'123', N'女', N'2018-04-25 23:00:00.000', N'/upload/files/20210319/time_223807_old_name_微信图片_20200521081252.jpg', NULL, NULL, N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'2020-10-24 00:07:42.470', N'2021-03-19 22:38:14.890')
GO

INSERT INTO [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreateTime], [UpdateTime]) VALUES (N'9A604AA2-9AE6-4A2F-8DDB-D9E0289EAD9E', N'1', N'测试会员', N'18510912123', N'男', N'2019-07-08 11:47:24.000', N'/upload/files/20210319/time_223801_old_name_HZY.IOT.png', N'<p>兄弟们牛逼</p>', N'/admin/libs/neditor/net/upload/image/20200329/6372111070665271023522535.png', N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'2018-04-25 23:00:00.000', N'2021-03-19 22:44:40.437')
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
  [UpdateTime] datetime  NOT NULL,
  [CreateTime] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[SysFunction] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Id',
'SCHEMA', N'dbo',
'TABLE', N'SysFunction',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'SysFunction',
'COLUMN', N'Number'
GO

EXEC sp_addextendedproperty
'MS_Description', N'功能名称',
'SCHEMA', N'dbo',
'TABLE', N'SysFunction',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'功能标识',
'SCHEMA', N'dbo',
'TABLE', N'SysFunction',
'COLUMN', N'ByName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'SysFunction',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SysFunction',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SysFunction',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'功能',
'SCHEMA', N'dbo',
'TABLE', N'SysFunction'
GO


-- ----------------------------
-- Records of SysFunction
-- ----------------------------
INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'B6FD5425-504A-46A9-993B-2F8DC9158EB8', N'80', N'打印', N'Print', NULL, N'2016-06-20 13:40:52.360', N'2016-06-20 13:40:52.360')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'C9518758-B2E1-4F51-B517-5282E273889C', N'10', N'显示', N'Display', NULL, N'2021-03-19 22:32:59.627', N'2016-06-20 13:40:52.360')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'60', N'检索', N'Search', NULL, N'2016-06-20 13:40:52.360', N'2016-06-20 13:40:52.360')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'383E7EE2-7690-46AC-9230-65155C84AA30', N'50', N'保存', N'Save', NULL, N'2016-06-20 13:40:52.360', N'2016-06-20 13:40:52.360')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'9C388461-2704-4C5E-A729-72C17E9018E1', N'40', N'删除', N'Delete', NULL, N'2016-06-20 13:40:52.360', N'2016-06-20 13:40:52.360')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'20', N'添加', N'Insert', NULL, N'2016-06-20 13:40:52.360', N'2016-06-20 13:40:52.360')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'2401F4D0-60B0-4E2E-903F-84C603373572', N'70', N'导出', N'Export', NULL, N'2016-06-20 13:40:52.360', N'2016-06-20 13:40:52.360')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'30', N'修改', N'Update', NULL, N'2016-06-20 13:40:52.360', N'2016-06-20 13:40:52.360')
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
  [Icon] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ParentId] uniqueidentifier  NULL,
  [IsShow] int  NOT NULL,
  [IsClose] int  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateTime] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[SysMenu] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Id',
'SCHEMA', N'dbo',
'TABLE', N'SysMenu',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'SysMenu',
'COLUMN', N'Number'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单名称',
'SCHEMA', N'dbo',
'TABLE', N'SysMenu',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单地址',
'SCHEMA', N'dbo',
'TABLE', N'SysMenu',
'COLUMN', N'Url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单图标',
'SCHEMA', N'dbo',
'TABLE', N'SysMenu',
'COLUMN', N'Icon'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父级Id',
'SCHEMA', N'dbo',
'TABLE', N'SysMenu',
'COLUMN', N'ParentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否显示菜单',
'SCHEMA', N'dbo',
'TABLE', N'SysMenu',
'COLUMN', N'IsShow'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否可关闭',
'SCHEMA', N'dbo',
'TABLE', N'SysMenu',
'COLUMN', N'IsClose'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SysMenu',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SysMenu',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单',
'SCHEMA', N'dbo',
'TABLE', N'SysMenu'
GO


-- ----------------------------
-- Records of SysMenu
-- ----------------------------
INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Icon], [ParentId], [IsShow], [IsClose], [UpdateTime], [CreateTime]) VALUES (N'9674D439-864E-4BF8-9DD8-08D7D70AD6BB', N'20', N'组件展示', N'api/Admin/Components/Index', N'el-icon-news', NULL, N'1', N'1', N'2021-03-20 15:03:32.200', N'2020-11-16 13:09:47.937')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Icon], [ParentId], [IsShow], [IsClose], [UpdateTime], [CreateTime]) VALUES (N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'130', N'菜单功能', N'api/Admin/SysMenu/Index', NULL, N'9591F249-1471-44F7-86B5-6FDAE8B93888', N'1', N'1', N'2018-03-10 12:18:33.997', N'2020-11-16 13:09:47.937')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Icon], [ParentId], [IsShow], [IsClose], [UpdateTime], [CreateTime]) VALUES (N'D721FC55-2174-40EB-BB37-5C54A158525A', N'120', N'功能管理', N'api/Admin/SysFunction/Index', NULL, N'9591F249-1471-44F7-86B5-6FDAE8B93888', N'1', N'1', N'2018-03-10 12:18:21.087', N'2020-11-16 13:09:47.937')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Icon], [ParentId], [IsShow], [IsClose], [UpdateTime], [CreateTime]) VALUES (N'6056054B-AC4F-6A84-0028-6DFB1196737F', N'30', N'富文本编辑器', N'/views/editor.html', N'el-icon-menu', NULL, N'1', N'1', N'2021-03-20 15:03:38.547', N'2021-03-20 14:23:07.260')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Icon], [ParentId], [IsShow], [IsClose], [UpdateTime], [CreateTime]) VALUES (N'6056089C-AC4F-6A84-0028-6DFF4EBD452C', N'40', N'图形报表', N'/views/chart/base.html', N'el-icon-s-data', NULL, N'1', N'1', N'2021-03-20 15:03:46.697', N'2021-03-20 14:37:16.310')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Icon], [ParentId], [IsShow], [IsClose], [UpdateTime], [CreateTime]) VALUES (N'6056092A-AC4F-6A84-0028-6E0561E0D506', N'50', N'Antv图形库', N'/views/chart/more.html', N'el-icon-s-marketing', NULL, N'1', N'1', N'2021-03-20 15:03:51.847', N'2021-03-20 14:39:38.743')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Icon], [ParentId], [IsShow], [IsClose], [UpdateTime], [CreateTime]) VALUES (N'9591F249-1471-44F7-86B5-6FDAE8B93888', N'100', N'系统管理', NULL, N'el-icon-monitor', NULL, N'1', N'1', N'2021-03-20 15:03:57.177', N'2020-11-16 13:09:47.937')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Icon], [ParentId], [IsShow], [IsClose], [UpdateTime], [CreateTime]) VALUES (N'0B7F8E2C-9FAA-4496-9068-80B87BA1B64E', N'1', N'首页', N'api/Admin/Home/Main', N'el-icon-s-home', NULL, N'1', N'0', N'2021-03-20 15:03:18.353', N'2020-11-16 13:09:47.937')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Icon], [ParentId], [IsShow], [IsClose], [UpdateTime], [CreateTime]) VALUES (N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'100', N'用户管理', N'api/Admin/SysUser/Index', NULL, N'9591F249-1471-44F7-86B5-6FDAE8B93888', N'1', N'1', N'2018-03-10 12:18:03.657', N'2020-11-16 13:09:47.937')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Icon], [ParentId], [IsShow], [IsClose], [UpdateTime], [CreateTime]) VALUES (N'BD024F3A-99A7-4407-861C-A016F243F222', N'140', N'角色功能', N'api/Admin/SysRoleMenuFunction/Index', NULL, N'9591F249-1471-44F7-86B5-6FDAE8B93888', N'1', N'1', N'2018-03-10 12:18:46.617', N'2020-11-16 13:09:47.937')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Icon], [ParentId], [IsShow], [IsClose], [UpdateTime], [CreateTime]) VALUES (N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'10', N'会员管理', N'api/Admin/Member/Index', NULL, N'1EC76C4C-B9B3-4517-9854-F08CD11D653D', N'1', N'1', N'2018-04-25 21:36:28.533', N'2020-11-16 13:09:47.937')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Icon], [ParentId], [IsShow], [IsClose], [UpdateTime], [CreateTime]) VALUES (N'60AE9382-31AB-4276-A379-D3876E9BB783', N'110', N'角色管理', N'api/Admin/SysRole/Index', NULL, N'9591F249-1471-44F7-86B5-6FDAE8B93888', N'1', N'1', N'2018-03-10 12:18:55.290', N'2020-11-16 13:09:47.937')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Icon], [ParentId], [IsShow], [IsClose], [UpdateTime], [CreateTime]) VALUES (N'F35D64AE-ECB7-4D06-ACFB-D91595966D9E', N'150', N'修改密码', N'api/Admin/ChangePassword/Index', NULL, N'9591F249-1471-44F7-86B5-6FDAE8B93888', N'1', N'1', N'2018-03-10 12:17:03.810', N'2020-11-16 13:09:47.937')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Icon], [ParentId], [IsShow], [IsClose], [UpdateTime], [CreateTime]) VALUES (N'1EC76C4C-B9B3-4517-9854-F08CD11D653D', N'10', N'基础信息', NULL, N'el-icon-coin', NULL, N'1', N'1', N'2021-03-20 15:03:25.110', N'2020-11-16 13:09:47.937')
GO


-- ----------------------------
-- Table structure for SysMenuFunction
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysMenuFunction]') AND type IN ('U'))
	DROP TABLE [dbo].[SysMenuFunction]
GO

CREATE TABLE [dbo].[SysMenuFunction] (
  [Id] uniqueidentifier  NOT NULL,
  [MenuId] uniqueidentifier  NOT NULL,
  [FunctionId] uniqueidentifier  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateTime] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[SysMenuFunction] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Id',
'SCHEMA', N'dbo',
'TABLE', N'SysMenuFunction',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SysMenuFunction',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SysMenuFunction',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单与功能绑定',
'SCHEMA', N'dbo',
'TABLE', N'SysMenuFunction'
GO


-- ----------------------------
-- Records of SysMenuFunction
-- ----------------------------
INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9D7BAF7D-36B0-4B3B-A5AD-064C8DFC8324', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2019-07-08 18:37:14.633', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'E2D0C07A-E74F-46F2-8991-113CD58C4785', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'2401F4D0-60B0-4E2E-903F-84C603373572', N'2019-07-11 10:21:32.810', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0B81B937-FDC2-4A2C-90C4-11E9DDF3BA71', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2019-07-11 10:22:14.937', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8AAA6319-D36A-4FCD-8797-19D97A077E1B', N'74B837AE-D24F-4F57-B107-E20DBE70F5D3', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2019-07-08 21:15:57.680', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'CFC06085-563D-488D-807A-1B766180EFF9', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'2401F4D0-60B0-4E2E-903F-84C603373572', N'2019-07-08 18:37:25.673', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7F549D57-C5D3-4AD8-BC12-1E7C99AE4DE5', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2019-07-11 10:21:54.010', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8C0BF314-FA41-40D3-8D8C-20F614DD078A', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2019-07-11 10:21:32.807', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'A49B958C-F00C-4C0D-B031-21190E5C74FA', N'F35D64AE-ECB7-4D06-ACFB-D91595966D9E', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2018-04-22 15:47:38.933', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7E466377-1810-4027-AE1B-227F53953B21', N'74B837AE-D24F-4F57-B107-E20DBE70F5D3', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2019-07-08 21:15:57.680', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'D32E240A-AB34-41A3-92FC-249DAB655C3A', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'2401F4D0-60B0-4E2E-903F-84C603373572', N'2019-07-11 10:21:54.010', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'73CAAB90-AC89-4334-AE61-2B55F3D08826', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2019-07-11 10:21:54.007', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4A99997E-EF14-414B-94A6-2F480E5B2CD2', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'2401F4D0-60B0-4E2E-903F-84C603373572', N'2019-07-08 18:37:14.637', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'F134C325-EB68-498F-86B2-307C315EB8CC', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2019-07-11 10:22:14.940', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ED6454DC-3D01-47E2-86F3-40121F9C6976', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2019-07-08 18:37:25.670', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'92913243-421B-420D-9FBF-42D7DB59AEC9', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2019-07-08 18:37:14.627', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'397B5F2C-812E-431A-914D-43D318BC4242', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2019-07-08 18:37:25.667', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0CB00876-7247-4D4A-B68D-44F807232B3C', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2020-04-04 11:32:16.203', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'44DD215E-1EDF-45AA-B6C6-4910ED14A228', N'B73C82F9-54EA-4F02-B7D9-FC3976BECB19', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2020-04-04 11:44:37.933', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6529E142-E4DE-44A7-9ACB-53DF1796480C', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2019-07-08 18:37:14.630', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1E827FF5-B7C8-43DD-B9ED-571D376B3DCE', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2019-07-11 10:22:14.940', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'26CF07DF-7C4B-4C59-B091-57479A28A8AC', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2019-07-08 18:37:14.630', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'540D4CFB-1B2F-4736-80CA-5A613642B5B4', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2019-07-11 10:21:32.807', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'C6DBD0F0-DB95-4251-895B-6009239106CC', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2019-07-11 10:22:14.937', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'EF36A4F2-A70E-4AE3-923B-609910127A33', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2019-07-11 10:21:32.807', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'D72A7E1A-94A2-4D7C-BA13-6727398F8E35', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2019-07-11 10:21:54.010', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5689B539-88DB-49D2-8C5B-720E9EBC673E', N'74B837AE-D24F-4F57-B107-E20DBE70F5D3', N'2401F4D0-60B0-4E2E-903F-84C603373572', N'2019-07-08 21:15:57.680', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'B8AA1A54-9076-4C72-A323-7B3B95AB26F4', N'74B837AE-D24F-4F57-B107-E20DBE70F5D3', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2019-07-08 21:15:57.680', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'842D38FC-29A2-4A9E-8949-84D76FC6A259', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2019-07-11 10:21:32.803', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'AFBD3366-4C4F-46B1-8F96-903CFE6F8A00', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2019-07-08 18:37:14.633', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'A3074D55-141E-496E-A55C-93B5FD2DCE6C', N'74B837AE-D24F-4F57-B107-E20DBE70F5D3', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2019-07-08 21:15:57.680', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'E60670D2-4ADE-449C-8A4B-9AD7D5179A43', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2019-07-11 10:21:54.003', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'D6F2707F-70AB-45F0-9C57-9D11EE5078D2', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2019-07-08 18:37:25.670', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'2AB18520-EE93-40F1-8633-9F5B174AC14E', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2019-07-08 18:37:25.667', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'BB14769D-4760-4341-9FAF-9FA82EEADA65', N'2FF9BB67-AA42-48CF-80C9-6D1CFB6B1EAD', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2018-06-28 11:30:09.723', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7861B618-0B12-4A56-ABDA-A5E8D17AC5D7', N'2FF9BB67-AA42-48CF-80C9-6D1CFB6B1EAD', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2018-06-28 11:30:09.723', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0B9170F7-E444-49A2-9F0C-A7E02EA1C33E', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'B6FD5425-504A-46A9-993B-2F8DC9158EB8', N'2019-07-11 10:21:54.010', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'09A29222-8F8D-4CA6-9BD1-AEDDBABE7D7B', N'2DC579DC-2325-4063-B051-E92454EE3838', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2020-01-02 22:14:55.447', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'D62F6C43-AE93-4D50-A6F0-B64C9CACEC7B', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2019-07-11 10:21:32.807', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'F0A60DC3-46AD-4FAC-9A28-BD05EB8F11D6', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'2401F4D0-60B0-4E2E-903F-84C603373572', N'2019-07-11 10:22:14.947', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'FFD4AEBD-6283-4C52-976B-C09B70F8034B', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'B6FD5425-504A-46A9-993B-2F8DC9158EB8', N'2019-07-11 10:22:14.947', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'42FC1519-61C2-4501-BB4E-CD160BEA87A5', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2019-07-08 18:37:14.630', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'259C0396-8390-4632-BE02-D02DC1C17123', N'BD024F3A-99A7-4407-861C-A016F243F222', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2018-07-31 13:51:51.553', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'30507F21-C866-4494-AE07-DAE4D3906295', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2019-07-08 18:37:25.673', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9D079F5A-C791-4628-B0D6-E3F7C8580A08', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2019-07-11 10:21:54.010', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'60560EB6-7F51-E024-0000-E549143BF5F6', N'0B7F8E2C-9FAA-4496-9068-80B87BA1B64E', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-03-20 15:03:18.397', N'2021-03-20 15:03:18.397')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'60560EC4-7F51-E024-0000-E54A2749B449', N'9674D439-864E-4BF8-9DD8-08D7D70AD6BB', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-03-20 15:03:32.210', N'2021-03-20 15:03:32.210')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'60560ECA-7F51-E024-0000-E54B497FEC5D', N'6056054B-AC4F-6A84-0028-6DFB1196737F', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-03-20 15:03:38.557', N'2021-03-20 15:03:38.557')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'60560ED2-7F51-E024-0000-E54C4408109A', N'6056089C-AC4F-6A84-0028-6DFF4EBD452C', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-03-20 15:03:46.703', N'2021-03-20 15:03:46.703')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'60560ED7-7F51-E024-0000-E54D2ACE412E', N'6056092A-AC4F-6A84-0028-6E0561E0D506', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-03-20 15:03:51.860', N'2021-03-20 15:03:51.860')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'FA162511-0213-4DA2-9FBF-E5F45AF5B7FC', N'7C34C2FD-98ED-4655-AA04-BB00B915A751', N'B6FD5425-504A-46A9-993B-2F8DC9158EB8', N'2019-07-11 10:21:32.810', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8B445869-735C-4582-8AF1-EC41D78A58DD', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2019-07-11 10:22:14.943', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1C127383-0C46-44AC-8784-F8AE8A6DC390', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2019-07-08 18:37:25.667', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'CA5601EC-7CD9-4577-A699-FC7C3C4C1308', N'D721FC55-2174-40EB-BB37-5C54A158525A', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2019-07-11 10:21:54.003', N'2020-11-16 13:24:03.533')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9BEE8A50-35BC-4198-B172-FFA341B9BC6E', N'E5D4DA6B-AAB0-4AAA-982F-43673E8152C0', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2019-07-11 10:22:14.943', N'2020-11-16 13:24:03.533')
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
  [IsDelete] int  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateTime] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[SysRole] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Id',
'SCHEMA', N'dbo',
'TABLE', N'SysRole',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'SysRole',
'COLUMN', N'Number'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色名称',
'SCHEMA', N'dbo',
'TABLE', N'SysRole',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'SysRole',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'能否删除',
'SCHEMA', N'dbo',
'TABLE', N'SysRole',
'COLUMN', N'IsDelete'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SysRole',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SysRole',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色',
'SCHEMA', N'dbo',
'TABLE', N'SysRole'
GO


-- ----------------------------
-- Records of SysRole
-- ----------------------------
INSERT INTO [dbo].[SysRole] ([Id], [Number], [Name], [Remark], [IsDelete], [UpdateTime], [CreateTime]) VALUES (N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'1', N'超级管理员', N'拥有所有权限', N'2', N'2016-06-20 10:20:10.000', N'2016-07-06 17:59:20.000')
GO

INSERT INTO [dbo].[SysRole] ([Id], [Number], [Name], [Remark], [IsDelete], [UpdateTime], [CreateTime]) VALUES (N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2', N'普通用户', N'普通用户', N'1', N'2021-03-19 22:32:55.817', N'2016-07-06 17:59:20.000')
GO


-- ----------------------------
-- Table structure for SysRoleMenuFunction
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysRoleMenuFunction]') AND type IN ('U'))
	DROP TABLE [dbo].[SysRoleMenuFunction]
GO

CREATE TABLE [dbo].[SysRoleMenuFunction] (
  [Id] uniqueidentifier  NOT NULL,
  [RoleId] uniqueidentifier  NOT NULL,
  [MenuId] uniqueidentifier  NOT NULL,
  [FunctionId] uniqueidentifier  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateTime] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[SysRoleMenuFunction] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Id',
'SCHEMA', N'dbo',
'TABLE', N'SysRoleMenuFunction',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SysRoleMenuFunction',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SysRoleMenuFunction',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色菜单功能绑定',
'SCHEMA', N'dbo',
'TABLE', N'SysRoleMenuFunction'
GO


-- ----------------------------
-- Records of SysRoleMenuFunction
-- ----------------------------
INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'69319296-75C1-4B22-3D5A-08D88BC25510', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2020-11-18 21:03:28.657', N'2020-11-18 21:03:28.657')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'E0E47543-352F-49EC-3D5B-08D88BC25510', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2020-11-18 21:03:28.660', N'2020-11-18 21:03:28.660')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'87804130-196F-4B2A-3D5C-08D88BC25510', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2020-11-18 21:03:28.660', N'2020-11-18 21:03:28.660')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0EB1ED6F-1DCC-44B7-3D5D-08D88BC25510', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'9C388461-2704-4C5E-A729-72C17E9018E1', N'2020-11-18 21:03:28.663', N'2020-11-18 21:03:28.663')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'F40568CB-4371-4764-3D5E-08D88BC25510', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'383E7EE2-7690-46AC-9230-65155C84AA30', N'2020-11-18 21:03:28.663', N'2020-11-18 21:03:28.663')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5CE16C83-2D00-46F2-3D5F-08D88BC25510', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'38D864FF-F6E7-43AF-8C5C-8BBCF9FA586D', N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'2020-11-18 21:03:28.667', N'2020-11-18 21:03:28.667')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'BE0E9EBC-B255-4F4C-3D60-08D88BC25510', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2020-11-18 21:03:29.317', N'2020-11-18 21:03:29.317')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6DD6132A-2628-4805-3D61-08D88BC25510', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'2020-11-18 21:03:29.320', N'2020-11-18 21:03:29.320')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'CC7F7E79-341F-4A30-3D62-08D88BC25510', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'60AE9382-31AB-4276-A379-D3876E9BB783', N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'2020-11-18 21:03:29.323', N'2020-11-18 21:03:29.323')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'93CE6573-523E-4E3C-3D63-08D88BC25510', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'0B7F8E2C-9FAA-4496-9068-80B87BA1B64E', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2020-11-18 21:03:35.763', N'2020-11-18 21:03:35.763')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'605526AA-B311-0944-0031-EC9058D528C9', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'9674D439-864E-4BF8-9DD8-08D7D70AD6BB', N'C9518758-B2E1-4F51-B517-5282E273889C', N'2021-03-19 22:33:14.807', N'2021-03-19 22:33:14.807')
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
  [Email] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [IsDelete] int  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateTime] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[SysUser] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Id',
'SCHEMA', N'dbo',
'TABLE', N'SysUser',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'账户名称',
'SCHEMA', N'dbo',
'TABLE', N'SysUser',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'登录账号',
'SCHEMA', N'dbo',
'TABLE', N'SysUser',
'COLUMN', N'LoginName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'SysUser',
'COLUMN', N'Password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'账户邮件地址',
'SCHEMA', N'dbo',
'TABLE', N'SysUser',
'COLUMN', N'Email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'能否删除',
'SCHEMA', N'dbo',
'TABLE', N'SysUser',
'COLUMN', N'IsDelete'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SysUser',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SysUser',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统账号',
'SCHEMA', N'dbo',
'TABLE', N'SysUser'
GO


-- ----------------------------
-- Records of SysUser
-- ----------------------------
INSERT INTO [dbo].[SysUser] ([Id], [Name], [LoginName], [Password], [Email], [IsDelete], [UpdateTime], [CreateTime]) VALUES (N'0198459E-2034-4533-B843-5D227AD20740', N'管理员', N'admin', N'123456', N'1396510655@qq.com', N'2', N'2021-11-14 21:58:18.613', N'2017-04-06 19:55:53.000')
GO

INSERT INTO [dbo].[SysUser] ([Id], [Name], [LoginName], [Password], [Email], [IsDelete], [UpdateTime], [CreateTime]) VALUES (N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'用户', N'user', N'123', N'18123456789@live.com', N'1', N'2021-11-14 21:58:59.767', N'2017-04-06 19:55:53.000')
GO


-- ----------------------------
-- Table structure for SysUserRole
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysUserRole]') AND type IN ('U'))
	DROP TABLE [dbo].[SysUserRole]
GO

CREATE TABLE [dbo].[SysUserRole] (
  [Id] uniqueidentifier  NOT NULL,
  [UserId] uniqueidentifier  NOT NULL,
  [RoleId] uniqueidentifier  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateTime] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[SysUserRole] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Id',
'SCHEMA', N'dbo',
'TABLE', N'SysUserRole',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SysUserRole',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SysUserRole',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户与角色绑定',
'SCHEMA', N'dbo',
'TABLE', N'SysUserRole'
GO


-- ----------------------------
-- Records of SysUserRole
-- ----------------------------
INSERT INTO [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [UpdateTime], [CreateTime]) VALUES (N'DEDC5FF5-A54F-44F7-986E-6AC47216E54F', N'0198459E-2034-4533-B843-5D227AD20740', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'2021-11-14 21:58:18.620', N'2021-11-14 21:58:18.620')
GO

INSERT INTO [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [UpdateTime], [CreateTime]) VALUES (N'CCBC9F7D-D518-446B-BCBA-7201BAC535A6', N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2021-11-14 21:58:59.773', N'2021-11-14 21:58:59.773')
GO


-- ----------------------------
-- Primary Key structure for table Member
-- ----------------------------
ALTER TABLE [dbo].[Member] ADD CONSTRAINT [PK__FreeSqlT__3214EC0764A3C16E] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysFunction
-- ----------------------------
ALTER TABLE [dbo].[SysFunction] ADD CONSTRAINT [PK__SysFunct__3214EC0749F8ECB2] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysMenu
-- ----------------------------
ALTER TABLE [dbo].[SysMenu] ADD CONSTRAINT [PK__FreeSqlT__3214EC07A99B1246] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysMenuFunction
-- ----------------------------
ALTER TABLE [dbo].[SysMenuFunction] ADD CONSTRAINT [PK__SysMenuF__3214EC07594C72BD] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysRole
-- ----------------------------
ALTER TABLE [dbo].[SysRole] ADD CONSTRAINT [PK__SysRole__3214EC07CF50E1D0] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysRoleMenuFunction
-- ----------------------------
ALTER TABLE [dbo].[SysRoleMenuFunction] ADD CONSTRAINT [PK__SysRoleM__3214EC075D76B808] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysUser
-- ----------------------------
ALTER TABLE [dbo].[SysUser] ADD CONSTRAINT [PK__FreeSqlT__3214EC079C566918] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysUserRole
-- ----------------------------
ALTER TABLE [dbo].[SysUserRole] ADD CONSTRAINT [PK__SysUserR__3214EC070ABEE823] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

