USE [dubizzle]
GO
/****** Object:  Table [dbo].[web_config]    Script Date: 12/8/2015 9:00:22 PM ******/
DROP TABLE [dbo].[web_config]
GO
/****** Object:  Table [dbo].[locations]    Script Date: 12/8/2015 9:00:22 PM ******/
DROP TABLE [dbo].[locations]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 12/8/2015 9:00:22 PM ******/
DROP TABLE [dbo].[categories]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 12/8/2015 9:00:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[locations]    Script Date: 12/8/2015 9:00:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[web_config]    Script Date: 12/8/2015 9:00:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[web_config](
	[config_id] [int] IDENTITY(10,1) NOT NULL,
	[config_name] [varchar](50) NOT NULL,
	[config_val] [varchar](200) NOT NULL,
 CONSTRAINT [PK_site_config] PRIMARY KEY CLUSTERED 
(
	[config_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (101, N'Car & Bikes', N'', N'admin', CAST(N'2015-12-07 15:19:37.447' AS DateTime), N'admin', CAST(N'2015-12-07 15:19:37.447' AS DateTime), 0, NULL)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (102, N'Real Estate', N'', N'admin', CAST(N'2015-12-07 15:19:37.447' AS DateTime), N'admin', CAST(N'2015-12-07 15:19:37.447' AS DateTime), 0, NULL)
INSERT [dbo].[categories] ([category_id], [category_name], [category_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted], [parent_id]) VALUES (103, N'Jobs', N'', N'admin', CAST(N'2015-12-07 15:19:37.447' AS DateTime), N'admin', CAST(N'2015-12-07 15:19:37.447' AS DateTime), 0, NULL)
SET IDENTITY_INSERT [dbo].[categories] OFF
SET IDENTITY_INSERT [dbo].[locations] ON 

INSERT [dbo].[locations] ([location_id], [location_name], [location_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted]) VALUES (1000, N'Abu Dhabi', N'', N'admin', CAST(N'2015-12-07 15:26:05.300' AS DateTime), N'admin', CAST(N'2015-12-07 15:26:05.300' AS DateTime), 0)
INSERT [dbo].[locations] ([location_id], [location_name], [location_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted]) VALUES (1001, N'Ajman', N'', N'admin', CAST(N'2015-12-07 15:26:05.300' AS DateTime), N'admin', CAST(N'2015-12-07 15:26:05.300' AS DateTime), 0)
INSERT [dbo].[locations] ([location_id], [location_name], [location_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted]) VALUES (1002, N'Dubai', N'', N'admin', CAST(N'2015-12-07 15:26:05.300' AS DateTime), N'admin', CAST(N'2015-12-07 15:26:05.300' AS DateTime), 0)
INSERT [dbo].[locations] ([location_id], [location_name], [location_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted]) VALUES (1003, N'Fujairah', N'', N'admin', CAST(N'2015-12-07 15:26:05.300' AS DateTime), N'admin', CAST(N'2015-12-07 15:26:05.300' AS DateTime), 0)
INSERT [dbo].[locations] ([location_id], [location_name], [location_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted]) VALUES (1004, N'Ras al-Khaimah', N'', N'admin', CAST(N'2015-12-07 15:26:05.300' AS DateTime), N'admin', CAST(N'2015-12-07 15:26:05.300' AS DateTime), 0)
INSERT [dbo].[locations] ([location_id], [location_name], [location_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted]) VALUES (1005, N'Sharjah', N'', N'admin', CAST(N'2015-12-07 15:26:05.300' AS DateTime), N'admin', CAST(N'2015-12-07 15:26:05.300' AS DateTime), 0)
INSERT [dbo].[locations] ([location_id], [location_name], [location_photo], [created_by], [created_date], [modified_by], [modified_date], [deleted]) VALUES (1006, N'Umm al-Quwain', N'', N'admin', CAST(N'2015-12-07 15:26:05.300' AS DateTime), N'admin', CAST(N'2015-12-07 15:26:05.300' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[locations] OFF
SET IDENTITY_INSERT [dbo].[web_config] ON 

INSERT [dbo].[web_config] ([config_id], [config_name], [config_val]) VALUES (10, N'website_name', N'Dubizzle | Online Buying & Selling')
INSERT [dbo].[web_config] ([config_id], [config_name], [config_val]) VALUES (11, N'website_desc', N'The best place to buy a house, sell a car or find a job in UAE')
INSERT [dbo].[web_config] ([config_id], [config_name], [config_val]) VALUES (12, N'website_logo', N'')
INSERT [dbo].[web_config] ([config_id], [config_name], [config_val]) VALUES (13, N'facebook_link', N'http://www.facebook.com')
INSERT [dbo].[web_config] ([config_id], [config_name], [config_val]) VALUES (14, N'twitter_link', N'http://www.twitter.com')
SET IDENTITY_INSERT [dbo].[web_config] OFF
