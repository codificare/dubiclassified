USE [dubizzle]
GO
/****** Object:  StoredProcedure [dbo].[GetCategories]    Script Date: 12/14/2015 01:28:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCategories]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetCategories]
GO
/****** Object:  StoredProcedure [dbo].[GetSubCategories]    Script Date: 12/14/2015 01:28:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSubCategories]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetSubCategories]
GO
/****** Object:  Table [dbo].[locations]    Script Date: 12/14/2015 01:28:06 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_locations_deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[locations] DROP CONSTRAINT [DF_locations_deleted]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[locations]') AND type in (N'U'))
DROP TABLE [dbo].[locations]
GO
/****** Object:  Table [dbo].[web_config]    Script Date: 12/14/2015 01:28:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_config]') AND type in (N'U'))
DROP TABLE [dbo].[web_config]
GO
/****** Object:  Table [dbo].[ads]    Script Date: 12/14/2015 01:28:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ads]') AND type in (N'U'))
DROP TABLE [dbo].[ads]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 12/14/2015 01:28:06 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_categories_deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF_categories_deleted]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[categories]') AND type in (N'U'))
DROP TABLE [dbo].[categories]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 12/14/2015 01:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[categories](
	[category_id] [int] IDENTITY(100,1) NOT NULL,
	[category_name] [varchar](20) NOT NULL,
	[category_photo] [varchar](100) NULL,
	[created_by] [varchar](20) NULL,
	[created_date] [datetime] NULL,
	[modified_by] [varchar](20) NULL,
	[modified_date] [datetime] NULL,
	[deleted] [bit] NULL CONSTRAINT [DF_categories_deleted]  DEFAULT ((0)),
	[parent_id] [int] NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (101, N'Car & Bikes', N'', N'admin', CAST(0x0000A56700FC9512 AS DateTime), N'admin', CAST(0x0000A56700FC9512 AS DateTime), 0, NULL)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (102, N'Real Estate', N'', N'admin', CAST(0x0000A56700FC9512 AS DateTime), N'admin', CAST(0x0000A56700FC9512 AS DateTime), 0, NULL)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (103, N'Jobs', N'', N'admin', CAST(0x0000A56700FC9512 AS DateTime), N'admin', CAST(0x0000A56700FC9512 AS DateTime), 0, NULL)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (104, N'IT', N'', N'admin', CAST(0x0000A56D0156897F AS DateTime), N'admin', CAST(0x0000A56D0156897F AS DateTime), 0, 103)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (105, N'Finance', N'', N'admin', CAST(0x0000A56D0156897F AS DateTime), N'admin', CAST(0x0000A56D0156897F AS DateTime), 0, 103)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (106, N'Online Jobs', N'', N'admin', CAST(0x0000A56D0156897F AS DateTime), N'admin', CAST(0x0000A56D0156897F AS DateTime), 0, 103)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (107, N'House For Rent', N'', N'admin', CAST(0x0000A56D01573EA0 AS DateTime), N'admin', CAST(0x0000A56D01573EA0 AS DateTime), 0, 102)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (108, N'House For Sale', N'', N'admin', CAST(0x0000A56D01573EA0 AS DateTime), N'admin', CAST(0x0000A56D01573EA0 AS DateTime), 0, 102)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (109, N'Shops For Rent', N'', N'admin', CAST(0x0000A56D01573EA0 AS DateTime), N'admin', CAST(0x0000A56D01573EA0 AS DateTime), 0, 102)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (110, N'Shops For Sale', N'', N'admin', CAST(0x0000A56D01573EA0 AS DateTime), N'admin', CAST(0x0000A56D01573EA0 AS DateTime), 0, 102)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (111, N'Plots For Sale', N'', N'admin', CAST(0x0000A56D01573EA0 AS DateTime), N'admin', CAST(0x0000A56D01573EA0 AS DateTime), 0, 102)
SET IDENTITY_INSERT [dbo].[categories] OFF
/****** Object:  Table [dbo].[ads]    Script Date: 12/14/2015 01:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ads]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ads](
	[ad_id] [int] IDENTITY(10,1) NOT NULL,
	[title] [varchar](50) NOT NULL,
	[description] [varchar](1000) NOT NULL,
	[price] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[subcat_id] [int] NOT NULL,
	[location_id] [int] NOT NULL,
	[condition_id] [int] NULL,
	[posted_by] [varchar](20) NULL,
	[posted_date] [datetime] NULL,
	[expire_date] [datetime] NULL,
	[views] [smallint] NULL,
	[deleted] [bit] NULL,
	[blocked] [bit] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[web_config]    Script Date: 12/14/2015 01:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_config]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[web_config](
	[config_id] [int] IDENTITY(10,1) NOT NULL,
	[config_name] [varchar](50) NOT NULL,
	[config_val] [varchar](200) NOT NULL,
 CONSTRAINT [PK_site_config] PRIMARY KEY CLUSTERED 
(
	[config_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[web_config] ON
INSERT [dbo].[web_config] ([config_id], [config_name], [config_val]) VALUES (10, N'website_name', N'Dubizzle | Online Buying & Selling')
INSERT [dbo].[web_config] ([config_id], [config_name], [config_val]) VALUES (11, N'website_desc', N'The best place to buy a house, sell a car or find a job in UAE')
INSERT [dbo].[web_config] ([config_id], [config_name], [config_val]) VALUES (12, N'website_logo', N'')
INSERT [dbo].[web_config] ([config_id], [config_name], [config_val]) VALUES (13, N'facebook_link', N'http://www.facebook.com')
INSERT [dbo].[web_config] ([config_id], [config_name], [config_val]) VALUES (14, N'twitter_link', N'http://www.twitter.com')
SET IDENTITY_INSERT [dbo].[web_config] OFF
/****** Object:  Table [dbo].[locations]    Script Date: 12/14/2015 01:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[locations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[locations](
	[location_id] [int] IDENTITY(1000,1) NOT NULL,
	[location_name] [varchar](20) NOT NULL,
	[location_photo] [varchar](100) NULL,
	[created_by] [varchar](20) NULL,
	[created_date] [datetime] NULL,
	[modified_by] [varchar](20) NULL,
	[modified_date] [datetime] NULL,
	[deleted] [bit] NULL CONSTRAINT [DF_locations_deleted]  DEFAULT ((0)),
 CONSTRAINT [PK_locations] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[locations] ON
INSERT [dbo].[locations] ([location_id], [location_name], [location_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted]) VALUES (1000, N'Abu Dhabi', N'', N'admin', CAST(0x0000A56700FE5B96 AS DateTime), N'admin', CAST(0x0000A56700FE5B96 AS DateTime), 0)
INSERT [dbo].[locations] ([location_id], [location_name], [location_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted]) VALUES (1001, N'Ajman', N'', N'admin', CAST(0x0000A56700FE5B96 AS DateTime), N'admin', CAST(0x0000A56700FE5B96 AS DateTime), 0)
INSERT [dbo].[locations] ([location_id], [location_name], [location_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted]) VALUES (1002, N'Dubai', N'', N'admin', CAST(0x0000A56700FE5B96 AS DateTime), N'admin', CAST(0x0000A56700FE5B96 AS DateTime), 0)
INSERT [dbo].[locations] ([location_id], [location_name], [location_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted]) VALUES (1003, N'Fujairah', N'', N'admin', CAST(0x0000A56700FE5B96 AS DateTime), N'admin', CAST(0x0000A56700FE5B96 AS DateTime), 0)
INSERT [dbo].[locations] ([location_id], [location_name], [location_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted]) VALUES (1004, N'Ras al-Khaimah', N'', N'admin', CAST(0x0000A56700FE5B96 AS DateTime), N'admin', CAST(0x0000A56700FE5B96 AS DateTime), 0)
INSERT [dbo].[locations] ([location_id], [location_name], [location_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted]) VALUES (1005, N'Sharjah', N'', N'admin', CAST(0x0000A56700FE5B96 AS DateTime), N'admin', CAST(0x0000A56700FE5B96 AS DateTime), 0)
INSERT [dbo].[locations] ([location_id], [location_name], [location_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted]) VALUES (1006, N'Umm al-Quwain', N'', N'admin', CAST(0x0000A56700FE5B96 AS DateTime), N'admin', CAST(0x0000A56700FE5B96 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[locations] OFF
/****** Object:  StoredProcedure [dbo].[GetSubCategories]    Script Date: 12/14/2015 01:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSubCategories]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSubCategories] 
AS
BEGIN

SELECT
	ROW_NUMBER() OVER (ORDER BY c1.category_id) AS SR,
	c2.category_id AS CATEGORY_ID,
	c1.category_id AS SUB_CATEGORY_ID,
	c2.category_name AS CATEGORY_NAME,
	c1.category_name AS SUB_CATEGORY_NAME,
	c1.category_photo AS PHOTO,
	c1.created_by AS CREATED_BY,
	CONVERT(VARCHAR, c1.created_date, 101) AS CREATED_DATE,
	c1.modified_by AS MODIFIED_BY,
	CONVERT(VARCHAR, c1.modified_date, 101) AS MODIFIED_DATE
FROM categories c1
JOIN categories c2
	ON c2.category_id = c1.parent_id
	AND ISNULL(c2.deleted, 0) = 0
WHERE ISNULL(c1.parent_id, '''') <> ''''
AND ISNULL(c1.deleted, 0) = 0

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetCategories]    Script Date: 12/14/2015 01:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCategories]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCategories]

AS
BEGIN

SELECT
	ROW_NUMBER() OVER (ORDER BY category_id) AS SR,
	category_id AS CATEGORY_ID,
	category_name AS CATEGORY_NAME,
	category_photo AS PHOTO,
	created_by AS CREATED_BY,
	CONVERT(VARCHAR, created_date, 101) AS CREATED_DATE,
	modified_by AS MODIFIED_BY,
	CONVERT(VARCHAR, modified_date, 101) AS MODIFIED_DATE
FROM categories
WHERE ISNULL(parent_id, '''') = ''''
AND ISNULL(deleted, 0) = 0

END
' 
END
GO
