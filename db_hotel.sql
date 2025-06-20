USE [hotel_demo]
GO
/****** Object:  Table [dbo].[Cards]    Script Date: 14.06.2025 0:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cards](
	[CardID] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[DestroyDate] [date] NOT NULL,
 CONSTRAINT [PK__Cards__55FECD8E3CD3E4ED] PRIMARY KEY CLUSTERED 
(
	[CardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 14.06.2025 0:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[ClientName] [nvarchar](100) NOT NULL,
	[Passport] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK__Clients__E67E1A0430C17A08] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelServices]    Script Date: 14.06.2025 0:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelServices](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK__HotelSer__C51BB0EA7E4CD3BE] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderedServices]    Script Date: 14.06.2025 0:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderedServices](
	[OrderServiceID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 14.06.2025 0:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NOT NULL,
	[RoomID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[CardID] [int] NOT NULL,
	[CheckIn] [datetime] NOT NULL,
	[CheckOut] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 14.06.2025 0:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
	[PaymentMethod] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 14.06.2025 0:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomCleaning]    Script Date: 14.06.2025 0:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomCleaning](
	[CleaningID] [int] IDENTITY(1,1) NOT NULL,
	[RoomID] [int] NOT NULL,
	[CleaningDate] [datetime] NOT NULL,
	[CleanerName] [nvarchar](100) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Notes] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK__RoomClea__2D02F90B616C82CA] PRIMARY KEY CLUSTERED 
(
	[CleaningID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 14.06.2025 0:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[Floor] [int] NOT NULL,
	[RoomNumber] [int] NOT NULL,
	[RoomCategory] [nvarchar](255) NOT NULL,
	[RoomStatus] [nvarchar](50) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 14.06.2025 0:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[Blocked] [bit] NOT NULL,
	[PasswordChanged] [bit] NOT NULL,
 CONSTRAINT [PK__Users__1788CCAC656A4CD4] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderedServices]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderedServices]  WITH CHECK ADD  CONSTRAINT [FK__OrderedSe__Servi__44FF419A] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[HotelServices] ([ServiceID])
GO
ALTER TABLE [dbo].[OrderedServices] CHECK CONSTRAINT [FK__OrderedSe__Servi__44FF419A]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__CardID__31EC6D26] FOREIGN KEY([CardID])
REFERENCES [dbo].[Cards] ([CardID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__CardID__31EC6D26]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__ClientID__2F10007B] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__ClientID__2F10007B]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([RoomID])
REFERENCES [dbo].[Rooms] ([RoomID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__UserID__30F848ED] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__UserID__30F848ED]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[RoomCleaning]  WITH CHECK ADD  CONSTRAINT [FK__RoomClean__RoomI__3F466844] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Rooms] ([RoomID])
GO
ALTER TABLE [dbo].[RoomCleaning] CHECK CONSTRAINT [FK__RoomClean__RoomI__3F466844]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK__Users__RoleID__267ABA7A] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK__Users__RoleID__267ABA7A]
GO
