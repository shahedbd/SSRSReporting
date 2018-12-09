USE [SSRSReportingMVC]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 12/10/2018 12:24:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/10/2018 12:24:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/10/2018 12:24:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/10/2018 12:24:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/10/2018 12:24:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/10/2018 12:24:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserDetailsInfo]    Script Date: 12/10/2018 12:24:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetailsInfo](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IdentityID] [nvarchar](128) NULL,
	[Email] [nvarchar](256) NULL,
	[FirstName] [nvarchar](256) NULL,
	[LastName] [nvarchar](256) NULL,
	[NID] [bigint] NULL,
	[Country] [nvarchar](150) NULL,
	[CreationUser] [nvarchar](150) NULL,
	[CreationDateTime] [datetime] NULL,
	[LastUpdateUser] [nvarchar](150) NULL,
	[LastUpdateDateTime] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_UserDetailsInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a5c2b3fa-4188-4419-8f02-ea533603c1c3', N'devmlbd@gmail.com', 0, N'AEWEEar6I6/uBhO+WC56aoiokLlcoZQviB2/E/NJ7Zdt6VP04eLkDcuvAAXuuyPHQQ==', N'65116302-d131-43c4-92cb-d5a7051027bf', NULL, 0, 0, NULL, 1, 0, N'devmlbd@gmail.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'azureskybd@gmail.com', 0, N'AMvO8zeOteTPmmiBQr/xbPbxvyioVcNrDAE/bJrYBgZzBTY0Y5h5tfmQf0XihbGlFw==', N'be68ef6e-917e-46e3-b8ec-0d752b1f89df', NULL, 0, 0, NULL, 1, 0, N'azureskybd@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[UserDetailsInfo] ON 

GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (1, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (2, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (3, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (4, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (5, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (6, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (7, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (8, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (9, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (10, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (11, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (12, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (13, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (14, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (15, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (16, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (17, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (18, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (19, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (20, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (21, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (22, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (23, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (24, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (25, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (26, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (27, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (28, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (29, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (30, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (31, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (32, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (33, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (34, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (35, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (36, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (37, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (38, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (39, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (40, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (41, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (42, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (43, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (44, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (45, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (46, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (47, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (48, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (49, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (50, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (51, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (52, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (53, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (54, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (55, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (56, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (57, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (58, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (59, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (60, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (61, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (62, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (63, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (64, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (65, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (66, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (67, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (68, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (69, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (70, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (71, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (72, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (73, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (74, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (75, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (76, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (77, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (78, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (79, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (80, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (81, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (82, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (83, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (84, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (85, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (86, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (87, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (88, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'qazureskybd@gmail.com', N'sdsdsd', N'sdsdssd', 45, N'xdfgdfg', N'fsdffg', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (89, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (90, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'demouser@microsoft.com', N'Sahidul', N'Islam', 45665, N'Bangladesh', N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Dev', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[UserDetailsInfo] ([ID], [IdentityID], [Email], [FirstName], [LastName], [NID], [Country], [CreationUser], [CreationDateTime], [LastUpdateUser], [LastUpdateDateTime], [Status]) VALUES (91, N'd5c235f7-08bc-495a-bb13-61e10f95a589', N'azureskybd@gmail.com', N'Sahidul', N'Islam', 789798798798, N'Bangladesh', NULL, CAST(N'2018-12-09 21:05:04.000' AS DateTime), NULL, CAST(N'2018-12-12 00:00:00.000' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[UserDetailsInfo] OFF
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO

