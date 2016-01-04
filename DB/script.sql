USE [dubizzle]
GO
/****** Object:  ForeignKey [FK_ads_ads]    Script Date: 01/05/2016 01:23:10 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ads_ads]') AND parent_object_id = OBJECT_ID(N'[dbo].[ads]'))
ALTER TABLE [dbo].[ads] DROP CONSTRAINT [FK_ads_ads]
GO
/****** Object:  StoredProcedure [dbo].[Admin_GetCategories]    Script Date: 01/05/2016 01:23:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_GetCategories]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Admin_GetCategories]
GO
/****** Object:  StoredProcedure [dbo].[Admin_GetLocations]    Script Date: 01/05/2016 01:23:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_GetLocations]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Admin_GetLocations]
GO
/****** Object:  StoredProcedure [dbo].[Admin_GetSubCategories]    Script Date: 01/05/2016 01:23:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_GetSubCategories]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Admin_GetSubCategories]
GO
/****** Object:  StoredProcedure [dbo].[User_GetAdsList]    Script Date: 01/05/2016 01:23:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetAdsList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_GetAdsList]
GO
/****** Object:  StoredProcedure [dbo].[User_GetCategories]    Script Date: 01/05/2016 01:23:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetCategories]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_GetCategories]
GO
/****** Object:  StoredProcedure [dbo].[User_GetConditions]    Script Date: 01/05/2016 01:23:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetConditions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_GetConditions]
GO
/****** Object:  StoredProcedure [dbo].[User_GetLocations]    Script Date: 01/05/2016 01:23:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetLocations]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_GetLocations]
GO
/****** Object:  StoredProcedure [dbo].[User_GetMainPageData]    Script Date: 01/05/2016 01:23:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetMainPageData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_GetMainPageData]
GO
/****** Object:  StoredProcedure [dbo].[User_GetSingleAdDetails]    Script Date: 01/05/2016 01:23:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetSingleAdDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_GetSingleAdDetails]
GO
/****** Object:  StoredProcedure [dbo].[User_GetSubCategories]    Script Date: 01/05/2016 01:23:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetSubCategories]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_GetSubCategories]
GO
/****** Object:  Table [dbo].[users]    Script Date: 01/05/2016 01:23:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[web_config]    Script Date: 01/05/2016 01:23:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_config]') AND type in (N'U'))
DROP TABLE [dbo].[web_config]
GO
/****** Object:  Table [dbo].[ads]    Script Date: 01/05/2016 01:23:10 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ads_ads]') AND parent_object_id = OBJECT_ID(N'[dbo].[ads]'))
ALTER TABLE [dbo].[ads] DROP CONSTRAINT [FK_ads_ads]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ads]') AND type in (N'U'))
DROP TABLE [dbo].[ads]
GO
/****** Object:  Table [dbo].[ads_img]    Script Date: 01/05/2016 01:23:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ads_img]') AND type in (N'U'))
DROP TABLE [dbo].[ads_img]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 01/05/2016 01:23:10 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_categories_deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF_categories_deleted]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[categories]') AND type in (N'U'))
DROP TABLE [dbo].[categories]
GO
/****** Object:  Table [dbo].[condition]    Script Date: 01/05/2016 01:23:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[condition]') AND type in (N'U'))
DROP TABLE [dbo].[condition]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetRelativeDuration]    Script Date: 01/05/2016 01:23:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetRelativeDuration]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_GetRelativeDuration]
GO
/****** Object:  Table [dbo].[locations]    Script Date: 01/05/2016 01:23:10 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_locations_deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[locations] DROP CONSTRAINT [DF_locations_deleted]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[locations]') AND type in (N'U'))
DROP TABLE [dbo].[locations]
GO
/****** Object:  Table [dbo].[locations]    Script Date: 01/05/2016 01:23:10 ******/
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
/****** Object:  UserDefinedFunction [dbo].[fn_GetRelativeDuration]    Script Date: 01/05/2016 01:23:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetRelativeDuration]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[fn_GetRelativeDuration] 
(
	@date datetime
)
RETURNS VARCHAR(30)
AS
BEGIN

DECLARE @d1 datetime= getdate();
DECLARE @d2 datetime= @date;
DECLARE @diff FLOAT= DATEDIFF(DAY, @d2, @d1);

DECLARE @duration VARCHAR(30);

IF(@d2 < @d1)
BEGIN
SELECT @duration = 
CAST((CASE  
WHEN @diff = 0 
THEN ''Today'' 
ELSE
	(CASE  
	WHEN (@diff = 1)
	THEN ''Yesterday''
	ELSE
		(CASE  
		WHEN (@diff > 1 AND @diff < 7)
		THEN CONVERT(VARCHAR, @diff)+ '' Day(s) Ago''
		ELSE
			(CASE  
			WHEN (@diff >= 7 AND @diff < 30)
			THEN CONVERT(VARCHAR,CAST(@diff/7 AS NUMERIC(3))) + '' Week(s) Ago''
			ELSE
				(CASE  
					WHEN (@diff >= 30 AND @diff < 365)
					THEN  CONVERT(VARCHAR,CAST(@diff/30 AS NUMERIC(3))) +'' Month(s) Ago''
					ELSE
						(CASE  
						WHEN (@diff >= 365)
						THEN  CONVERT(VARCHAR,CAST(@diff/365.25 AS NUMERIC(3))) +'' Year(s) Ago'' 
						ELSE
						''''	
						END)	
				END)
			END)	
		END)
	END) 
END) AS VARCHAR)

END
ELSE
BEGIN
	SET @duration = ''N/A''
END

	-- Return the result of the function
	RETURN @duration

END
' 
END
GO
/****** Object:  Table [dbo].[condition]    Script Date: 01/05/2016 01:23:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[condition]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[condition](
	[condition_id] [int] IDENTITY(10,1) NOT NULL,
	[title] [varchar](20) NOT NULL,
 CONSTRAINT [PK_condition] PRIMARY KEY CLUSTERED 
(
	[condition_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[condition] ON
INSERT [dbo].[condition] ([condition_id], [title]) VALUES (10, N'NEW')
INSERT [dbo].[condition] ([condition_id], [title]) VALUES (11, N'EXCELLENT')
INSERT [dbo].[condition] ([condition_id], [title]) VALUES (12, N'VERY GOOD')
INSERT [dbo].[condition] ([condition_id], [title]) VALUES (13, N'GOOD')
INSERT [dbo].[condition] ([condition_id], [title]) VALUES (14, N'FAIR')
INSERT [dbo].[condition] ([condition_id], [title]) VALUES (15, N'POOR')
SET IDENTITY_INSERT [dbo].[condition] OFF
/****** Object:  Table [dbo].[categories]    Script Date: 01/05/2016 01:23:10 ******/
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
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (112, N'Cars for Sale', N'', N'admin', CAST(0x0000A56E0139F793 AS DateTime), N'admin', CAST(0x0000A56E0139F793 AS DateTime), 0, 101)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (113, N'Cars for Rent', N'', N'admin', CAST(0x0000A56E0139F793 AS DateTime), N'admin', CAST(0x0000A56E0139F793 AS DateTime), 0, 101)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (114, N'Bikes for Sale', N'', N'admin', CAST(0x0000A56E0139F793 AS DateTime), N'admin', CAST(0x0000A56E0139F793 AS DateTime), 0, 101)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (115, N'Bikes for Rent', N'', N'admin', CAST(0x0000A56E0139F793 AS DateTime), N'admin', CAST(0x0000A56E0139F793 AS DateTime), 0, 101)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (116, N'Mobiles & Tablets', N'', N'admin', CAST(0x0000A56E013BAE8A AS DateTime), N'admin', CAST(0x0000A56E013BAE8A AS DateTime), 0, NULL)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (117, N'Computers', N'', N'admin', CAST(0x0000A56E013BAE8A AS DateTime), N'admin', CAST(0x0000A56E013BAE8A AS DateTime), 0, NULL)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (118, N'Smart Phones', N'', N'admin', CAST(0x0000A56E013C110B AS DateTime), N'admin', CAST(0x0000A56E013C110B AS DateTime), 0, 116)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (119, N'Tablets', N'', N'admin', CAST(0x0000A56E013C110B AS DateTime), N'admin', CAST(0x0000A56E013C110B AS DateTime), 0, 116)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (120, N'Accessories', N'', N'admin', CAST(0x0000A56E013C110B AS DateTime), N'admin', CAST(0x0000A56E013C110B AS DateTime), 0, 116)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (121, N'Desktops', N'', N'admin', CAST(0x0000A56E013C3AF1 AS DateTime), N'admin', CAST(0x0000A56E013C3AF1 AS DateTime), 0, 117)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (122, N'Laptops', N'', N'admin', CAST(0x0000A56E013C3AF1 AS DateTime), N'admin', CAST(0x0000A56E013C3AF1 AS DateTime), 0, 117)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (123, N'Accessories', N'', N'admin', CAST(0x0000A56E013C3AF1 AS DateTime), N'admin', CAST(0x0000A56E013C3AF1 AS DateTime), 0, 117)
SET IDENTITY_INSERT [dbo].[categories] OFF
/****** Object:  Table [dbo].[ads_img]    Script Date: 01/05/2016 01:23:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ads_img]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ads_img](
	[ad_img_id] [int] NOT NULL,
	[ad_id] [int] NOT NULL,
	[url] [varchar](max) NULL,
	[deleted] [bit] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ads]    Script Date: 01/05/2016 01:23:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ads]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ads](
	[ad_id] [int] IDENTITY(1000,1) NOT NULL,
	[title] [varchar](50) NOT NULL,
	[description] [varchar](1000) NOT NULL,
	[price] [int] NOT NULL,
	[price_fixed] [bit] NULL,
	[category_id] [int] NOT NULL,
	[subcat_id] [int] NOT NULL,
	[location_id] [int] NOT NULL,
	[condition_id] [int] NULL,
	[posted_by] [varchar](20) NULL,
	[posted_date] [datetime] NULL,
	[expire_date] [datetime] NULL,
	[contact_no] [int] NULL,
	[views] [smallint] NULL,
	[deleted] [bit] NULL,
	[blocked] [bit] NULL,
 CONSTRAINT [PK_ads] PRIMARY KEY CLUSTERED 
(
	[ad_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ads] ON
INSERT [dbo].[ads] ([ad_id], [title], [description], [price], [price_fixed], [category_id], [subcat_id], [location_id], [condition_id], [posted_by], [posted_date], [expire_date], [contact_no], [views], [deleted], [blocked]) VALUES (1, N'iPhone 6s for Sale (Unlocked)', N'i am selling my iPhone 6s. Came from UK. Unlocked, Check warranty.', 600, NULL, 116, 118, 1002, 12, N'user1', CAST(0x0000A571010CA36E AS DateTime), CAST(0x0000A58F010CA36E AS DateTime), NULL, 0, 0, 0)
INSERT [dbo].[ads] ([ad_id], [title], [description], [price], [price_fixed], [category_id], [subcat_id], [location_id], [condition_id], [posted_by], [posted_date], [expire_date], [contact_no], [views], [deleted], [blocked]) VALUES (2, N'iPhone 4s in Good Condition', N'any description. any description. any description.', 300, NULL, 116, 118, 1002, 13, N'user2', CAST(0x0000A571010CDAAF AS DateTime), CAST(0x0000A58F010CDAAF AS DateTime), NULL, 0, 0, 0)
INSERT [dbo].[ads] ([ad_id], [title], [description], [price], [price_fixed], [category_id], [subcat_id], [location_id], [condition_id], [posted_by], [posted_date], [expire_date], [contact_no], [views], [deleted], [blocked]) VALUES (3, N'iPhone 6s for Sale (Unlocked)', N'i am selling my iPhone 6s. Came from UK. Unlocked, Check warranty.', 600, NULL, 116, 118, 1002, 12, N'user1', CAST(0x0000A5710139A815 AS DateTime), CAST(0x0000A58F0139A815 AS DateTime), NULL, 0, 0, 0)
INSERT [dbo].[ads] ([ad_id], [title], [description], [price], [price_fixed], [category_id], [subcat_id], [location_id], [condition_id], [posted_by], [posted_date], [expire_date], [contact_no], [views], [deleted], [blocked]) VALUES (4, N'iPhone 4s in Good Condition', N'any description. any description. any description.', 300, NULL, 116, 118, 1002, 13, N'user2', CAST(0x0000A5710139A815 AS DateTime), CAST(0x0000A58F0139A815 AS DateTime), NULL, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[ads] OFF
/****** Object:  Table [dbo].[web_config]    Script Date: 01/05/2016 01:23:10 ******/
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
/****** Object:  Table [dbo].[users]    Script Date: 01/05/2016 01:23:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[users](
	[user_id] [int] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[password_change_date] [datetime] NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[email] [varchar](100) NOT NULL,
	[contact_no] [int] NOT NULL,
	[last_active_date] [datetime] NULL,
	[created_date] [datetime] NULL,
	[deleted] [bit] NULL,
	[blocked] [bit] NULL,
	[active] [bit] NULL,
	[activation_code] [varchar](max) NULL,
	[ads_limit] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[User_GetSubCategories]    Script Date: 01/05/2016 01:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetSubCategories]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_GetSubCategories]
  @CATEGORY_ID VARCHAR(20)  
AS    
BEGIN  
SELECT  
 category_id AS [ID],  
 category_name AS [NAME]  
FROM categories  
WHERE ISNULL(deleted, 0) = 0  
--AND ISNULL(parent_id, 0) <> 0  
AND parent_id = @CATEGORY_ID
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_GetSingleAdDetails]    Script Date: 01/05/2016 01:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetSingleAdDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[User_GetSingleAdDetails] 

AS
BEGIN
SELECT
	ad.ad_id AS [ID],
	ad.title AS [TITLE],
	ad.description AS [DESC],
	''AED '' + CONVERT(VARCHAR, ad.price) AS [PRICE],
	con.title AS [CONDITION],
	ad.contact_no AS [CONTACT],
	loc.location_name
	+ '' > '' + (SELECT
			categories.category_name
		FROM categories
		WHERE categories.category_id = ad.category_id)
	+ '' > '' + (SELECT
			categories.category_name
		FROM categories
		WHERE categories.category_id = ad.subcat_id)
	AS [LOC],
	REPLACE(CONVERT(VARCHAR(30), ad.posted_date, 106), '' '', ''-'') + '' ['' + dbo.fn_GetRelativeDuration(ad.posted_date) + '']'' AS POSTED_DATE,
	ad.posted_by AS [POSTED_BY],
	ad.[views] AS [VISITOR]
FROM ads ad
JOIN locations loc
	ON loc.location_id = ad.location_id
RIGHT JOIN condition con
	ON con.condition_id = ad.condition_id
JOIN categories cat
	ON cat.parent_id = ad.category_id
	AND cat.category_id = ad.subcat_id
	AND ISNULL(cat.deleted, ''0'') = ''0''
WHERE ISNULL(ad.deleted, ''0'') = ''0''
AND ISNULL(ad.blocked, ''0'') = ''0''
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_GetMainPageData]    Script Date: 01/05/2016 01:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetMainPageData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[User_GetMainPageData] 
	
AS
BEGIN

--For Categories
SELECT
	c.category_id AS CATEGORY_ID,
	c.category_name AS CATEGORY_NAME,
	(SELECT
			COUNT(*)
		FROM ads a
		JOIN categories c
			ON a.category_id = c.category_id
		WHERE ISNULL(a.deleted, 0) = 0
		AND ISNULL(a.blocked, 0) = 0)
	AS [C_COUNT]
FROM categories c
WHERE ISNULL(c.parent_id, '''') = ''''
AND ISNULL(c.deleted, 0) = 0
ORDER BY 2

--For Subcategories
SELECT
	sc.parent_id AS CATEGORY_ID,
	sc.category_id AS SUB_CATEGORY_ID,
	sc.category_name AS SUB_CATEGORY_NAME,
	(SELECT
			COUNT(*)
		FROM ads a
		JOIN categories sc
			ON a.subcat_id = sc.category_id
		WHERE ISNULL(a.deleted, 0) = 0
		AND ISNULL(a.blocked, 0) = 0)
	AS [SC_COUNT]
FROM categories sc
WHERE ISNULL(sc.parent_id, '''') <> ''''
AND ISNULL(sc.deleted, 0) = 0
ORDER BY 3

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_GetLocations]    Script Date: 01/05/2016 01:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetLocations]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[User_GetLocations] 
	
AS
BEGIN
SELECT
	location_id AS ID,
	location_name AS [NAME]
FROM locations
WHERE ISNULL(deleted, 0) = 0
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_GetConditions]    Script Date: 01/05/2016 01:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetConditions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[User_GetConditions] 

AS
BEGIN
SELECT
	condition_id AS [ID],
	title AS [NAME]
FROM condition
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_GetCategories]    Script Date: 01/05/2016 01:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetCategories]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[User_GetCategories] 

AS
BEGIN
SELECT
	category_id AS [ID],
	category_name AS [NAME]
FROM categories
WHERE ISNULL(deleted, 0) = 0
AND ISNULL(parent_id, 0) = 0
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_GetAdsList]    Script Date: 01/05/2016 01:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetAdsList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================  
-- Author:  <Author,,Name>  
-- Create date: <Create Date,,>  
-- Description: <Description,,>  
-- =============================================  
CREATE PROCEDURE [dbo].[User_GetAdsList]  
  
AS  
BEGIN
SELECT
	ad.ad_id AS ID,
	ad.title AS TITLE,
	ad.price AS PRICE,
	con.title AS CONDITION,
	(SELECT
			categories.category_name
		FROM categories
		WHERE categories.category_id = ad.category_id)
	+ '' > '' + (SELECT
			categories.category_name
		FROM categories
		WHERE categories.category_id = ad.subcat_id)
	AS CATEGORY,
	loc.location_name AS LOCATION,
	REPLACE(CONVERT(VARCHAR(30), ad.posted_date, 106), '' '', ''-'') + '' ['' + dbo.fn_GetRelativeDuration(ad.posted_date) + '']'' AS POSTED_DATE,
	ad.[views] AS VISITOR
FROM ads ad
JOIN locations loc
	ON loc.location_id = ad.location_id
RIGHT JOIN condition con
	ON con.condition_id = ad.condition_id
JOIN categories cat
	ON cat.parent_id = ad.category_id
	AND cat.category_id = ad.subcat_id
	AND ISNULL(cat.deleted, ''0'') = ''0''
WHERE ISNULL(ad.deleted, ''0'') = ''0''
AND ISNULL(ad.blocked, ''0'') = ''0''
ORDER BY ad.posted_date DESC
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Admin_GetSubCategories]    Script Date: 01/05/2016 01:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_GetSubCategories]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Admin_GetSubCategories] 
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

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Admin_GetLocations]    Script Date: 01/05/2016 01:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_GetLocations]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Admin_GetLocations] 

AS
BEGIN
SELECT
	ROW_NUMBER() OVER (ORDER BY location_name) AS SR,
	location_id AS ID,
	location_name AS NAME,
	location_photo AS PHOTO_URL,
	created_by AS CREATED_BY,
	CONVERT(VARCHAR, created_date, 101) AS CREATED_DATE,
	modified_by AS MODIFIED_BY,
	CONVERT(VARCHAR, modified_date, 101) AS MODIFIED_DATE
FROM locations
WHERE ISNULL(deleted, 0) = 0
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Admin_GetCategories]    Script Date: 01/05/2016 01:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_GetCategories]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Admin_GetCategories]

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
/****** Object:  ForeignKey [FK_ads_ads]    Script Date: 01/05/2016 01:23:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ads_ads]') AND parent_object_id = OBJECT_ID(N'[dbo].[ads]'))
ALTER TABLE [dbo].[ads]  WITH CHECK ADD  CONSTRAINT [FK_ads_ads] FOREIGN KEY([ad_id])
REFERENCES [dbo].[ads] ([ad_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ads_ads]') AND parent_object_id = OBJECT_ID(N'[dbo].[ads]'))
ALTER TABLE [dbo].[ads] CHECK CONSTRAINT [FK_ads_ads]
GO
