USE [dubizzle]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 12/07/2015 02:42:06 ******/
DROP TABLE [dbo].[categories]
GO
/****** Object:  Table [dbo].[locations]    Script Date: 12/07/2015 02:42:07 ******/
DROP TABLE [dbo].[locations]
GO
/****** Object:  Table [dbo].[locations]    Script Date: 12/07/2015 02:42:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[locations](
	[location_id] [int] IDENTITY(1000,1) NOT NULL,
	[location_name] [char](30) NOT NULL,
 CONSTRAINT [PK_locations] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[locations] ON
INSERT [dbo].[locations] ([location_id], [location_name]) VALUES (1000, N'Dubai                         ')
INSERT [dbo].[locations] ([location_id], [location_name]) VALUES (1001, N'Ajman                         ')
INSERT [dbo].[locations] ([location_id], [location_name]) VALUES (1002, N'Sharjah                       ')
INSERT [dbo].[locations] ([location_id], [location_name]) VALUES (1003, N'Abu-Dhabi                     ')
SET IDENTITY_INSERT [dbo].[locations] OFF
/****** Object:  Table [dbo].[categories]    Script Date: 12/07/2015 02:42:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categories](
	[category_id] [int] IDENTITY(100,1) NOT NULL,
	[category_name] [char](30) NOT NULL,
	[category_photo] [varchar](200) NULL,
	[parent_id] [int] NOT NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
