USE [HzyAdminSpa]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2021/5/12 23:05:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Sex] [nvarchar](255) NULL,
	[Birthday] [datetime] NOT NULL,
	[Photo] [nvarchar](255) NULL,
	[Introduce] [nvarchar](255) NULL,
	[FilePath] [nvarchar](255) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK__FreeSqlT__3214EC0764A3C16E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysFunction]    Script Date: 2021/5/12 23:05:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysFunction](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[ByName] [nvarchar](255) NULL,
	[Remark] [nvarchar](255) NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK__SysFunct__3214EC0749F8ECB2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysMenu]    Script Date: 2021/5/12 23:05:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysMenu](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Url] [nvarchar](255) NULL,
	[Router] [nvarchar](255) NULL,
	[ComponentName] [nvarchar](255) NULL,
	[Icon] [nvarchar](255) NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Show] [int] NOT NULL,
	[Close] [int] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK__FreeSqlT__3214EC07A99B1246] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysMenuFunction]    Script Date: 2021/5/12 23:05:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysMenuFunction](
	[Id] [uniqueidentifier] NOT NULL,
	[MenuId] [uniqueidentifier] NOT NULL,
	[FunctionId] [uniqueidentifier] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK__SysMenuF__3214EC07594C72BD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysOrganization]    Script Date: 2021/5/12 23:05:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysOrganization](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NULL,
	[OrderNumber] [int] NULL,
	[Leader] [varchar](255) NULL,
	[Phone] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[State] [int] NULL,
	[ParentId] [uniqueidentifier] NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_SysOrganization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysPost]    Script Date: 2021/5/12 23:05:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysPost](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [int] NULL,
	[Code] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[State] [int] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_SysPost] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysRole]    Script Date: 2021/5/12 23:05:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRole](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Remark] [nvarchar](255) NULL,
	[IsDelete] [int] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK__SysRole__3214EC07CF50E1D0] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysRoleMenuFunction]    Script Date: 2021/5/12 23:05:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRoleMenuFunction](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[MenuId] [uniqueidentifier] NOT NULL,
	[FunctionId] [uniqueidentifier] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK__SysRoleM__3214EC075D76B808] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUser]    Script Date: 2021/5/12 23:05:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUser](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NULL,
	[LoginName] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
	[Phone] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[IsDelete] [int] NOT NULL,
	[OrganizationId] [uniqueidentifier] NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK__FreeSqlT__3214EC076071EA08] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUserPost]    Script Date: 2021/5/12 23:05:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUserPost](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[PostId] [uniqueidentifier] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_SysUserPost] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUserRole]    Script Date: 2021/5/12 23:05:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUserRole](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK__SysUserR__3214EC070ABEE823] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreateTime], [UpdateTime]) VALUES (N'96a1aa3d-a61a-42d0-954a-c71753fb2065', N'123', N'123', N'123', N'女', CAST(N'2018-04-25T23:00:00.000' AS DateTime), NULL, N'<p>123</p>', NULL, N'ac18f496-e93d-42f0-b59e-e321acc85335', CAST(N'2020-10-24T00:07:42.470' AS DateTime), CAST(N'2021-04-18T22:08:05.613' AS DateTime))
INSERT [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreateTime], [UpdateTime]) VALUES (N'9a604aa2-9ae6-4a2f-8ddb-d9e0289ead9e', N'1', N'测试会员', N'18510912123', N'男', CAST(N'2019-07-08T11:47:24.000' AS DateTime), N'/upload/files/20210118/time_232747_old_name_hzy.png', N'<p>888</p>', N'/upload/files/20210118/time_233310_old_name_hzy.png', N'ac18f496-e93d-42f0-b59e-e321acc85335', CAST(N'2018-04-25T23:00:00.000' AS DateTime), CAST(N'2021-01-19T14:19:47.290' AS DateTime))
GO
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', 80, N'打印', N'Print', N'Print', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2016-06-20T13:40:52.360' AS DateTime))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'c9518758-b2e1-4f51-b517-5282e273889c', 10, N'显示', N'Display', N'Display', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2016-06-20T13:40:52.360' AS DateTime))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'f27ecb0a-197d-47b1-b243-59a8c71302bf', 60, N'检索', N'Search', N'Search', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2016-06-20T13:40:52.360' AS DateTime))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'383e7ee2-7690-46ac-9230-65155c84aa30', 50, N'保存', N'Save', N'Save', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2016-06-20T13:40:52.360' AS DateTime))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'9c388461-2704-4c5e-a729-72c17e9018e1', 40, N'删除', N'Delete', N'Delete', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2016-06-20T13:40:52.360' AS DateTime))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', 20, N'添加', N'Insert', N'Insert', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2016-06-20T13:40:52.360' AS DateTime))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'2401f4d0-60b0-4e2e-903f-84c603373572', 70, N'导出', N'Export', N'Export', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2016-06-20T13:40:52.360' AS DateTime))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'e7ef2a05-8317-41c3-b588-99519fe88bf9', 30, N'修改', N'Update', N'Update', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2016-06-20T13:40:52.360' AS DateTime))
GO
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'9674d439-864e-4bf8-9dd8-08d7d70ad6bb', 50, N'表格管理', NULL, NULL, NULL, N'TableOutlined', NULL, 1, 1, CAST(N'2021-01-16T17:32:06.673' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'f55a8858-ede4-4380-85b2-08d8b9f578ef', 10, N'Antd Vue3.0组件库', N'views/antd_vue_components', N'/antd/vue/components', N'antd_vue_components', N'LayoutOutlined', NULL, 1, 1, CAST(N'2021-01-16T16:05:45.767' AS DateTime), CAST(N'2021-01-16T16:05:22.003' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'15455a8d-262d-4266-85b3-08d8b9f578ef', 40, N'图表 AntV G2', NULL, NULL, NULL, N'PieChartOutlined', NULL, 1, 1, CAST(N'2021-01-16T16:06:32.607' AS DateTime), CAST(N'2021-01-16T16:06:32.607' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'63a6d076-3e22-4d26-85b4-08d8b9f578ef', 10, N'基础图表', N'views/chart/base', N'/chart/base', N'chart_base', NULL, N'15455a8d-262d-4266-85b3-08d8b9f578ef', 1, 1, CAST(N'2021-01-16T16:07:24.477' AS DateTime), CAST(N'2021-01-16T16:07:24.477' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', 20, N'更多示例', N'views/chart/more', N'/chart/more', N'chart_more', NULL, N'15455a8d-262d-4266-85b3-08d8b9f578ef', 1, 1, CAST(N'2021-01-16T16:10:06.310' AS DateTime), CAST(N'2021-01-16T16:10:06.310' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'cc99f568-a831-4ea8-4c7a-08d8bba503bf', 60, N'富文本编辑器', N'views/editor', N'/editor', N'editor', N'PicRightOutlined', NULL, 1, 1, CAST(N'2021-01-18T19:34:54.180' AS DateTime), CAST(N'2021-01-18T19:34:27.983' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 130, N'菜单功能', N'views/system/menu/index', N'/system/menu', N'system_menu', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2021-01-01T18:39:59.000' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', 160, N'接口文档', N'views/system/swagger', N'/system/swagger', N'system_swagger', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2018-03-10T12:17:03.000' AS DateTime), CAST(N'2018-03-10T12:17:03.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'5c013900-4032-11eb-a2cb-4cedfb69a3e8', 1, N'首页', N'views/home', NULL, N'home', N'HomeOutlined', NULL, 1, 0, CAST(N'2021-01-19T14:58:16.830' AS DateTime), CAST(N'2020-12-17T14:37:26.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'd788896b-4033-11eb-a2cb-4cedfb69a3e8', 100, N'基础表格', N'views/baseList', N'/baseList', N'base_list', NULL, N'9674d439-864e-4bf8-9dd8-08d7d70ad6bb', 1, 1, CAST(N'2020-12-17T14:49:10.000' AS DateTime), CAST(N'2020-12-17T14:49:12.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'35dc130e-4034-11eb-a2cb-4cedfb69a3e8', 110, N'标准表格', N'views/list/index', N'/list', N'list', NULL, N'9674d439-864e-4bf8-9dd8-08d7d70ad6bb', 1, 1, CAST(N'2020-12-17T14:51:05.000' AS DateTime), CAST(N'2020-12-17T14:51:07.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', 30, N'按钮', N'views/button', N'/button', N'button', N'AppstoreOutlined', NULL, 1, 1, CAST(N'2021-01-16T16:04:04.707' AS DateTime), CAST(N'2020-12-17T14:58:05.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'd721fc55-2174-40eb-bb37-5c54a158525a', 120, N'功能管理', N'views/system/function/index', N'/system/function', N'system_function', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2021-01-30T00:50:47.730' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'9591f249-1471-44f7-86b5-6fdae8b93888', 100, N'系统管理', NULL, NULL, NULL, N'DesktopOutlined', NULL, 1, 1, CAST(N'2018-03-10T12:16:38.000' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 100, N'账户管理', N'views/system/user/index', N'/system/user', N'system_user', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'bd024f3a-99a7-4407-861c-a016f243f222', 140, N'角色功能', N'views/system/rolefunction/index', N'/system/role/function', N'system_role_function', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2021-01-10T12:21:06.057' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'7c34c2fd-98ed-4655-aa04-bb00b915a751', 10, N'会员管理', N'views/base/member', N'/base/member', N'base_member', NULL, N'1ec76c4c-b9b3-4517-9854-f08cd11d653d', 1, 1, CAST(N'2018-04-25T21:36:28.000' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'60ae9382-31ab-4276-a379-d3876e9bb783', 110, N'角色管理', N'views/system/role/index', N'/system/role', N'system_role', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2020-12-28T19:47:52.000' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', 150, N'修改密码', N'views/system/changePassword/index', N'/system/change/password', N'system_change_password', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2021-01-01T18:57:08.000' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'1ec76c4c-b9b3-4517-9854-f08cd11d653d', 90, N'基础信息', NULL, NULL, NULL, N'GoldOutlined', NULL, 1, 1, CAST(N'2021-01-18T19:33:46.250' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
GO
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9d7baf7d-36b0-4b3b-a5ad-064c8dfc8324', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'869a2231-5631-4067-b97b-08d88a2ced15', N'4ce21a81-1cae-44d2-b29e-07058ff04b3e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T20:41:23.383' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e13e5d24-1753-4610-146e-08d8b51eb5f0', N'bd024f3a-99a7-4407-861c-a016f243f222', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-10T12:21:06.067' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e28e11cd-27c5-475d-d6b1-08d8b9f5533b', N'f55a8858-ede4-4380-85b2-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-16T16:05:45.777' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'bd144568-a24e-4f7e-d6b2-08d8b9f5533b', N'15455a8d-262d-4266-85b3-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-16T16:06:32.617' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'060d14f9-e066-44b9-d6b3-08d8b9f5533b', N'63a6d076-3e22-4d26-85b4-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-16T16:07:24.490' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e136ccda-91ce-4041-d6b4-08d8b9f5533b', N'9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-16T16:10:06.317' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b010f911-257e-4fa3-5b15-08d8ba019738', N'9674d439-864e-4bf8-9dd8-08d7d70ad6bb', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-16T17:32:06.777' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'944f5d6a-19dc-4804-8374-08d8bb7cd668', N'd788896b-4033-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-18T14:46:52.047' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9d63d074-85e7-48bd-8375-08d8bb7cd668', N'35dc130e-4034-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-18T14:46:55.093' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'11d28148-61da-4f49-8376-08d8bb7cd668', N'38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-18T14:54:30.050' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'87415a83-bdda-41b4-8377-08d8bb7cd668', N'9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-18T14:54:52.073' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f38d6e67-3f6f-495d-b759-08d8bba503c2', N'cc99f568-a831-4ea8-4c7a-08d8bba503bf', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-18T19:34:54.190' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'44556847-a63d-430c-895c-08d8bc479908', N'5c013900-4032-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-19T14:58:16.923' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'13c4defb-6d15-4e0a-e39f-08d91540fe0d', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-05-12T20:25:13.417' AS DateTime), CAST(N'2021-05-12T20:25:13.417' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c7ad9c6b-5736-43d5-e3a0-08d91540fe0d', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-05-12T20:25:13.430' AS DateTime), CAST(N'2021-05-12T20:25:13.430' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd5a0b0cc-7045-487a-e3a1-08d91540fe0d', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-05-12T20:25:13.433' AS DateTime), CAST(N'2021-05-12T20:25:13.433' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'285ed47f-3f46-4443-e3a2-08d91540fe0d', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:13.433' AS DateTime), CAST(N'2021-05-12T20:25:13.433' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'261ad456-12c5-447d-e3a3-08d91540fe0d', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-05-12T20:25:13.437' AS DateTime), CAST(N'2021-05-12T20:25:13.437' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4c222766-19fd-43d2-e3a4-08d91540fe0d', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2021-05-12T20:25:13.437' AS DateTime), CAST(N'2021-05-12T20:25:13.437' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6d055aeb-3650-4103-e3a5-08d91540fe0d', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-05-12T20:25:13.440' AS DateTime), CAST(N'2021-05-12T20:25:13.440' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9719cf6e-bba6-47a9-e3a6-08d91540fe0d', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-05-12T20:25:13.440' AS DateTime), CAST(N'2021-05-12T20:25:13.440' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e2d0c07a-e74f-46f2-8991-113cd58c4785', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5b21d63c-6611-4b39-9c26-1510118969b2', N'0b7f8e2c-9faa-4496-9068-80b87ba1b64e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8aaa6319-d36a-4fcd-8797-19d97a077e1b', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8c0bf314-fa41-40d3-8d8c-20f614dd078a', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'a49b958c-f00c-4c0d-b031-21190e5c74fa', N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7e466377-1810-4027-ae1b-227f53953b21', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4a99997e-ef14-414b-94a6-2f480e5b2cd2', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6014ad67-86c5-e5cc-00f2-3beb1a1d0b43', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-30T00:50:47.750' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6014ad67-86c5-e5cc-00f2-3bec016a966e', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-30T00:50:47.753' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6014ad67-86c5-e5cc-00f2-3bed6302ed1f', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-30T00:50:47.757' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6014ad67-86c5-e5cc-00f2-3bee1680c46c', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-30T00:50:47.757' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6014ad67-86c5-e5cc-00f2-3bef391195f0', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-30T00:50:47.760' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6014ad67-86c5-e5cc-00f2-3bf0451398fb', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-30T00:50:47.760' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6014ad67-86c5-e5cc-00f2-3bf17bb44851', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-30T00:50:47.763' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6014ad67-86c5-e5cc-00f2-3bf23b0d82fa', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-30T00:50:47.763' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6014ad6e-86c5-e5cc-00f2-3bf346dc6f7e', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-30T00:50:54.897' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6014ad6e-86c5-e5cc-00f2-3bf43ad1a03e', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-30T00:50:54.900' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6014ad6e-86c5-e5cc-00f2-3bf50300f3a4', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-30T00:50:54.903' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6014ad6e-86c5-e5cc-00f2-3bf60443227f', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-30T00:50:54.907' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6014ad6e-86c5-e5cc-00f2-3bf766e72202', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-30T00:50:54.907' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6014ad6e-86c5-e5cc-00f2-3bf82fdbb360', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-30T00:50:54.910' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6014ad6e-86c5-e5cc-00f2-3bf9301ee73d', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2021-01-30T00:50:54.910' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'92913243-421b-420d-9fbf-42d7db59aec9', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0cb00876-7247-4d4a-b68d-44f807232b3c', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'44dd215e-1edf-45aa-b6c6-4910ed14a228', N'b73c82f9-54ea-4f02-b7d9-fc3976becb19', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6529e142-e4de-44a7-9acb-53df1796480c', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'26cf07df-7c4b-4c59-b091-57479a28a8ac', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'540d4cfb-1b2f-4736-80ca-5a613642b5b4', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ef36a4f2-a70e-4ae3-923b-609910127a33', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5689b539-88db-49d2-8c5b-720e9ebc673e', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b8aa1a54-9076-4c72-a323-7b3b95ab26f4', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'842d38fc-29a2-4a9e-8949-84d76fc6a259', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'afbd3366-4c4f-46b1-8f96-903cfe6f8a00', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'a3074d55-141e-496e-a55c-93b5fd2dce6c', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'bb14769d-4760-4341-9faf-9fa82eeada65', N'2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7861b618-0b12-4a56-abda-a5e8d17ac5d7', N'2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'09a29222-8f8d-4ca6-9bd1-aeddbabe7d7b', N'2dc579dc-2325-4063-b051-e92454ee3838', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd62f6c43-ae93-4d50-a6f0-b64c9cacec7b', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'42fc1519-61c2-4501-bb4e-cd160bea87a5', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'fa162511-0213-4da2-9fbf-e5f45af5b7fc', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
GO
INSERT [dbo].[SysRole] ([Id], [Number], [Name], [Remark], [IsDelete], [UpdateTime], [CreateTime]) VALUES (N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 1, N'超级管理员', N'拥有所有权限', 0, CAST(N'2021-01-10T11:25:12.393' AS DateTime), CAST(N'2016-07-06T17:59:20.000' AS DateTime))
INSERT [dbo].[SysRole] ([Id], [Number], [Name], [Remark], [IsDelete], [UpdateTime], [CreateTime]) VALUES (N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 2, N'普通用户', N'普通用户', 1, CAST(N'2021-01-30T00:51:17.020' AS DateTime), CAST(N'2016-07-06T17:59:20.000' AS DateTime))
GO
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'93ce6573-523e-4e3c-3d63-08d88bc25510', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'0b7f8e2c-9faa-4496-9068-80b87ba1b64e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:05.613' AS DateTime), CAST(N'2020-11-18T21:03:35.763' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'463acea8-60b0-4a59-7de7-08d8bb7c529a', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-18T14:45:39.620' AS DateTime), CAST(N'2021-01-18T14:45:39.620' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f1b431b3-d7ef-44ca-7de8-08d8bb7c529a', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-01-18T14:45:39.620' AS DateTime), CAST(N'2021-01-18T14:45:39.620' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd80e356e-0d71-411f-7de9-08d8bb7c529a', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-01-18T14:45:39.623' AS DateTime), CAST(N'2021-01-18T14:45:39.623' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'cb03537e-b361-4a47-98da-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'5c013900-4032-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:33.270' AS DateTime), CAST(N'2021-01-19T14:58:33.270' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'2f2f0c63-2e13-4137-98db-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'f55a8858-ede4-4380-85b2-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:36.467' AS DateTime), CAST(N'2021-01-19T14:58:36.467' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0be2633e-046d-40fa-98dc-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:38.150' AS DateTime), CAST(N'2021-01-19T14:58:38.150' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1e882fbe-fd88-407e-98dd-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'63a6d076-3e22-4d26-85b4-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:41.640' AS DateTime), CAST(N'2021-01-19T14:58:41.640' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'de19371d-5fbe-4fc3-98de-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:42.270' AS DateTime), CAST(N'2021-01-19T14:58:42.270' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'12ceef4d-03c0-45cc-98df-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'd788896b-4033-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:43.020' AS DateTime), CAST(N'2021-01-19T14:58:43.020' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1c082c5a-8383-443f-98e0-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'35dc130e-4034-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:43.800' AS DateTime), CAST(N'2021-01-19T14:58:43.800' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd5d321ce-28e6-4742-98e1-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'cc99f568-a831-4ea8-4c7a-08d8bba503bf', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:44.733' AS DateTime), CAST(N'2021-01-19T14:58:44.733' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'99e29596-75a0-4736-98e2-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:51.523' AS DateTime), CAST(N'2021-01-19T14:58:51.523' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c0c76981-828b-435e-98e3-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T15:12:04.367' AS DateTime), CAST(N'2021-01-19T15:12:04.367' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6a3d6ac5-11c7-4592-98e4-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-01-19T15:12:04.377' AS DateTime), CAST(N'2021-01-19T15:12:04.377' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ed97d135-4408-41cc-98e5-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-01-19T15:12:04.380' AS DateTime), CAST(N'2021-01-19T15:12:04.380' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e18a8dad-716d-49cd-98e6-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-01-19T15:12:04.383' AS DateTime), CAST(N'2021-01-19T15:12:04.383' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'affc5760-c5bd-43fb-98e7-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-01-19T15:12:04.383' AS DateTime), CAST(N'2021-01-19T15:12:04.383' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'154dfe60-9cb3-49ba-f05d-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'5c013900-4032-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:22.143' AS DateTime), CAST(N'2021-05-12T20:25:22.143' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'eb2ac2a6-36ac-4ee1-f05e-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:24.030' AS DateTime), CAST(N'2021-05-12T20:25:24.030' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5ee46cd1-b2a3-4bc2-f05f-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'f55a8858-ede4-4380-85b2-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:24.407' AS DateTime), CAST(N'2021-05-12T20:25:24.407' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ec8ed1ba-61c3-4219-f060-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'63a6d076-3e22-4d26-85b4-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:25.113' AS DateTime), CAST(N'2021-05-12T20:25:25.113' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9d35e600-ee44-479a-f061-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:25.487' AS DateTime), CAST(N'2021-05-12T20:25:25.487' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'fcccd730-d83e-47b1-f062-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd788896b-4033-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:26.020' AS DateTime), CAST(N'2021-05-12T20:25:26.020' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0946c554-84a7-4adb-f063-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'35dc130e-4034-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:26.887' AS DateTime), CAST(N'2021-05-12T20:25:26.887' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'57a97a6c-cc65-4ac6-f064-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'cc99f568-a831-4ea8-4c7a-08d8bba503bf', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:27.290' AS DateTime), CAST(N'2021-05-12T20:25:27.290' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'eee9d884-a577-40d2-f06a-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'bd024f3a-99a7-4407-861c-a016f243f222', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:32.227' AS DateTime), CAST(N'2021-05-12T20:25:32.227' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6dfa0985-81fa-4242-f06b-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:32.697' AS DateTime), CAST(N'2021-05-12T20:25:32.697' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'915ac7f5-4e1b-4d92-f06c-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:33.380' AS DateTime), CAST(N'2021-05-12T20:25:33.380' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'754ad754-bbc4-47bc-f088-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:37.897' AS DateTime), CAST(N'2021-05-12T20:25:37.897' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c636d222-58dc-410f-f089-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-05-12T20:25:37.897' AS DateTime), CAST(N'2021-05-12T20:25:37.897' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'92cec1e4-cc90-4c20-f08a-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-05-12T20:25:37.897' AS DateTime), CAST(N'2021-05-12T20:25:37.897' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c5ad81cc-09ec-4007-f08b-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-05-12T20:25:37.897' AS DateTime), CAST(N'2021-05-12T20:25:37.897' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f058d1c8-7633-4781-f08c-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-05-12T20:25:37.897' AS DateTime), CAST(N'2021-05-12T20:25:37.897' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9967c23d-9101-4543-f08d-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-05-12T20:25:37.897' AS DateTime), CAST(N'2021-05-12T20:25:37.897' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'2d23022c-df34-4847-f08e-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-05-12T20:25:37.897' AS DateTime), CAST(N'2021-05-12T20:25:37.897' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd92cc026-dfcf-49fe-f08f-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2021-05-12T20:25:37.897' AS DateTime), CAST(N'2021-05-12T20:25:37.897' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'cb043048-142d-464d-f0a4-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:41.613' AS DateTime), CAST(N'2021-05-12T20:25:41.613' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'82eb14da-2b31-45d8-f0a5-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-05-12T20:25:41.613' AS DateTime), CAST(N'2021-05-12T20:25:41.613' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8e87c5cb-1c6e-481e-f0a6-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-05-12T20:25:41.613' AS DateTime), CAST(N'2021-05-12T20:25:41.613' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'623eaf4e-5263-4fb9-f0a7-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-05-12T20:25:41.613' AS DateTime), CAST(N'2021-05-12T20:25:41.613' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ff047bdd-04f4-4597-f0a8-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-05-12T20:25:41.613' AS DateTime), CAST(N'2021-05-12T20:25:41.613' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b3ac009f-017b-4512-f0a9-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-05-12T20:25:41.613' AS DateTime), CAST(N'2021-05-12T20:25:41.613' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f2891613-0a65-4c93-f0aa-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-05-12T20:25:41.613' AS DateTime), CAST(N'2021-05-12T20:25:41.613' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'26250c7d-b504-44cc-f0bf-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:46.413' AS DateTime), CAST(N'2021-05-12T20:25:46.413' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e69fe992-e4a5-4ac9-f0c0-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-05-12T20:25:46.413' AS DateTime), CAST(N'2021-05-12T20:25:46.413' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'fa279e29-f44f-4424-f0c1-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-05-12T20:25:46.413' AS DateTime), CAST(N'2021-05-12T20:25:46.413' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0920f21b-fbbf-45f4-f0c2-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-05-12T20:25:46.413' AS DateTime), CAST(N'2021-05-12T20:25:46.413' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'541450f0-dbd3-4094-f0c3-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-05-12T20:25:46.413' AS DateTime), CAST(N'2021-05-12T20:25:46.413' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9ac7bdfb-7398-4dc8-f0c4-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-05-12T20:25:46.413' AS DateTime), CAST(N'2021-05-12T20:25:46.413' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6c934fa6-eff0-42c7-f0c5-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-05-12T20:25:46.413' AS DateTime), CAST(N'2021-05-12T20:25:46.413' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e02ef258-be98-4a5c-f0e1-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:49.933' AS DateTime), CAST(N'2021-05-12T20:25:49.933' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'97c80c3a-d00e-4788-f0e2-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-05-12T20:25:49.933' AS DateTime), CAST(N'2021-05-12T20:25:49.933' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5d470ae4-66a5-4cdf-f0e3-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-05-12T20:25:49.933' AS DateTime), CAST(N'2021-05-12T20:25:49.933' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7e74f26c-f63e-42f0-f0e4-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-05-12T20:25:49.933' AS DateTime), CAST(N'2021-05-12T20:25:49.933' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'68ab8acc-4d11-4e66-f0e5-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-05-12T20:25:49.933' AS DateTime), CAST(N'2021-05-12T20:25:49.933' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8e1ea93c-398c-4fe7-f0e6-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-05-12T20:25:49.933' AS DateTime), CAST(N'2021-05-12T20:25:49.933' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e08a05a7-c494-4e32-f0e7-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2021-05-12T20:25:49.933' AS DateTime), CAST(N'2021-05-12T20:25:49.933' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4ca56fed-fc32-4456-f0e8-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-05-12T20:25:49.933' AS DateTime), CAST(N'2021-05-12T20:25:49.933' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c5abda7a-230d-469f-f104-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:53.777' AS DateTime), CAST(N'2021-05-12T20:25:53.777' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9f341e22-87c3-498a-f105-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-05-12T20:25:53.777' AS DateTime), CAST(N'2021-05-12T20:25:53.777' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'92837e44-e8d2-48a2-f106-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-05-12T20:25:53.777' AS DateTime), CAST(N'2021-05-12T20:25:53.777' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'052dd69b-c809-4f62-f107-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-05-12T20:25:53.777' AS DateTime), CAST(N'2021-05-12T20:25:53.777' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'a36d2f2e-56f4-4920-f108-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-05-12T20:25:53.777' AS DateTime), CAST(N'2021-05-12T20:25:53.777' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f65adc84-d2a4-4f91-f109-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-05-12T20:25:53.777' AS DateTime), CAST(N'2021-05-12T20:25:53.777' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'704a78f1-5c00-4169-f10a-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2021-05-12T20:25:53.777' AS DateTime), CAST(N'2021-05-12T20:25:53.777' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c9d1ed28-5f58-4c7e-f10b-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-05-12T20:25:53.777' AS DateTime), CAST(N'2021-05-12T20:25:53.777' AS DateTime))
GO
INSERT [dbo].[SysUser] ([Id], [Name], [LoginName], [Password], [Phone], [Email], [IsDelete], [OrganizationId], [UpdateTime], [CreateTime]) VALUES (N'0198459e-2034-4533-b843-5d227ad20740', N'超级管理员', N'admin', N'123456', N'123123123', N'1396510655@qq.com', 2, NULL, CAST(N'2021-04-18T22:13:51.983' AS DateTime), CAST(N'2017-04-06T19:55:53.083' AS DateTime))
INSERT [dbo].[SysUser] ([Id], [Name], [LoginName], [Password], [Phone], [Email], [IsDelete], [OrganizationId], [UpdateTime], [CreateTime]) VALUES (N'ac18f496-e93d-42f0-b59e-e321acc85335', N'用户', N'user', N'123', N'456456456', N'18123456789@live.com', 1, NULL, CAST(N'2021-04-18T22:08:12.477' AS DateTime), CAST(N'2017-04-06T19:55:53.083' AS DateTime))
GO
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [UpdateTime], [CreateTime]) VALUES (N'20d00b23-39da-46e2-9679-aabe6a87d922', N'0198459e-2034-4533-b843-5d227ad20740', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', CAST(N'2021-05-12T20:23:23.347' AS DateTime), CAST(N'2021-05-12T20:23:23.347' AS DateTime))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [UpdateTime], [CreateTime]) VALUES (N'91be813f-a59b-40ea-937d-f4ce118cd63b', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2021-05-12T20:23:26.427' AS DateTime), CAST(N'2021-05-12T20:23:26.427' AS DateTime))
GO
ALTER TABLE [dbo].[Member] ADD  CONSTRAINT [DF_Member_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Member] ADD  CONSTRAINT [DF_Member_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[SysOrganization] ADD  CONSTRAINT [DF_SysOrganization_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[SysPost] ADD  CONSTRAINT [DF_SysPost_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[SysUserPost] ADD  CONSTRAINT [DF_SysUserPost_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[SysUserPost] ADD  CONSTRAINT [DF_SysUserPost_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member', @level2type=N'COLUMN',@level2name=N'Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member', @level2type=N'COLUMN',@level2name=N'Birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member', @level2type=N'COLUMN',@level2name=N'Introduce'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member', @level2type=N'COLUMN',@level2name=N'FilePath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'member' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysFunction', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysFunction', @level2type=N'COLUMN',@level2name=N'Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysFunction', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysFunction', @level2type=N'COLUMN',@level2name=N'ByName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysFunction', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysFunction', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysFunction', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysFunction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'路由地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'Router'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vue组件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'ComponentName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'Show'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可关闭' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'Close'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenuFunction', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenuFunction', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenuFunction', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单与功能绑定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenuFunction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganization', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganization', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganization', @level2type=N'COLUMN',@level2name=N'OrderNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganization', @level2type=N'COLUMN',@level2name=N'Leader'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganization', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganization', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganization', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganization', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganization', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganization', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysPost', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysPost', @level2type=N'COLUMN',@level2name=N'Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysPost', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysPost', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysPost', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysPost', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysPost', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'能否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRoleMenuFunction', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRoleMenuFunction', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRoleMenuFunction', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色菜单功能绑定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRoleMenuFunction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'LoginName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户邮件地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'能否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserPost', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserPost', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserPost', @level2type=N'COLUMN',@level2name=N'PostId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserPost', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserPost', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserRole', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserRole', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserRole', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户与角色绑定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserRole'
GO
