/****** Object:  Table [dbo].[Bookings]    Script Date: 13.06.2025 20:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[GuestID] [int] NOT NULL,
	[RoomID] [int] NOT NULL,
	[CheckInDate] [datetime] NOT NULL,
	[CheckOutDate] [datetime] NOT NULL,
	[Adults] [int] NOT NULL,
	[Children] [int] NOT NULL,
	[TotalPrice] [decimal](10, 2) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CleaningSchedule]    Script Date: 13.06.2025 20:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CleaningSchedule](
	[CleaningID] [int] IDENTITY(1,1) NOT NULL,
	[RoomID] [int] NOT NULL,
	[AssignedTo] [int] NOT NULL,
	[ScheduledDate] [datetime] NOT NULL,
	[CompletedDate] [datetime] NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CleaningID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Floors]    Script Date: 13.06.2025 20:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Floors](
	[FloorID] [int] IDENTITY(1,1) NOT NULL,
	[FloorNumber] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FloorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guests]    Script Date: 13.06.2025 20:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guests](
	[GuestID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[PassportNumber] [nvarchar](50) NOT NULL,
	[PassportIssueDate] [date] NULL,
	[PassportIssuedBy] [nvarchar](255) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[GuestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 13.06.2025 20:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
	[PaymentMethod] [nvarchar](50) NOT NULL,
	[TransactionID] [nvarchar](100) NULL,
	[Status] [nvarchar](50) NOT NULL,
	[ProcessedBy] [int] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomCategories]    Script Date: 13.06.2025 20:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomCategories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[BasePrice] [decimal](10, 2) NOT NULL,
	[MaxOccupancy] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 13.06.2025 20:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[RoomNumber] [int] NOT NULL,
	[FloorID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 13.06.2025 20:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 13.06.2025 20:46:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](20) NULL,
	[RoleID] [int] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Floors] ON 

INSERT [dbo].[Floors] ([FloorID], [FloorNumber], [Description], [CreatedAt], [UpdatedAt]) VALUES (1, 1, N'Первый этаж - стандартные номера', CAST(N'2025-06-13T18:52:20.910' AS DateTime), CAST(N'2025-06-13T18:52:20.910' AS DateTime))
INSERT [dbo].[Floors] ([FloorID], [FloorNumber], [Description], [CreatedAt], [UpdatedAt]) VALUES (2, 2, N'Второй этаж - бизнес номера', CAST(N'2025-06-13T18:52:20.910' AS DateTime), CAST(N'2025-06-13T18:52:20.910' AS DateTime))
INSERT [dbo].[Floors] ([FloorID], [FloorNumber], [Description], [CreatedAt], [UpdatedAt]) VALUES (3, 3, N'Третий этаж - люксы и студии', CAST(N'2025-06-13T18:52:20.910' AS DateTime), CAST(N'2025-06-13T18:52:20.910' AS DateTime))
SET IDENTITY_INSERT [dbo].[Floors] OFF
GO
SET IDENTITY_INSERT [dbo].[RoomCategories] ON 

INSERT [dbo].[RoomCategories] ([CategoryID], [CategoryName], [Description], [BasePrice], [MaxOccupancy], [CreatedAt], [UpdatedAt]) VALUES (1, N'Одноместный стандарт', N'Стандартный одноместный номер', CAST(2500.00 AS Decimal(10, 2)), 1, CAST(N'2025-06-13T18:52:20.910' AS DateTime), CAST(N'2025-06-13T18:52:20.910' AS DateTime))
INSERT [dbo].[RoomCategories] ([CategoryID], [CategoryName], [Description], [BasePrice], [MaxOccupancy], [CreatedAt], [UpdatedAt]) VALUES (2, N'Одноместный эконом', N'Экономный одноместный номер', CAST(1800.00 AS Decimal(10, 2)), 1, CAST(N'2025-06-13T18:52:20.910' AS DateTime), CAST(N'2025-06-13T18:52:20.910' AS DateTime))
INSERT [dbo].[RoomCategories] ([CategoryID], [CategoryName], [Description], [BasePrice], [MaxOccupancy], [CreatedAt], [UpdatedAt]) VALUES (3, N'Стандарт двухместный с 2 раздельными кроватями', N'Стандартный двухместный номер с двумя кроватями', CAST(3500.00 AS Decimal(10, 2)), 2, CAST(N'2025-06-13T18:52:20.910' AS DateTime), CAST(N'2025-06-13T18:52:20.910' AS DateTime))
INSERT [dbo].[RoomCategories] ([CategoryID], [CategoryName], [Description], [BasePrice], [MaxOccupancy], [CreatedAt], [UpdatedAt]) VALUES (4, N'Эконом двухместный с 2 раздельными кроватями', N'Экономный двухместный номер с двумя кроватями', CAST(2800.00 AS Decimal(10, 2)), 2, CAST(N'2025-06-13T18:52:20.910' AS DateTime), CAST(N'2025-06-13T18:52:20.910' AS DateTime))
INSERT [dbo].[RoomCategories] ([CategoryID], [CategoryName], [Description], [BasePrice], [MaxOccupancy], [CreatedAt], [UpdatedAt]) VALUES (5, N'3-местный бюджет', N'Бюджетный трехместный номер', CAST(4200.00 AS Decimal(10, 2)), 3, CAST(N'2025-06-13T18:52:20.910' AS DateTime), CAST(N'2025-06-13T18:52:20.910' AS DateTime))
INSERT [dbo].[RoomCategories] ([CategoryID], [CategoryName], [Description], [BasePrice], [MaxOccupancy], [CreatedAt], [UpdatedAt]) VALUES (6, N'Бизнес с 1 или 2 кроватями', N'Бизнес номер с одной или двумя кроватями', CAST(5000.00 AS Decimal(10, 2)), 2, CAST(N'2025-06-13T18:52:20.910' AS DateTime), CAST(N'2025-06-13T18:52:20.910' AS DateTime))
INSERT [dbo].[RoomCategories] ([CategoryID], [CategoryName], [Description], [BasePrice], [MaxOccupancy], [CreatedAt], [UpdatedAt]) VALUES (7, N'Двухкомнатный двухместный стандарт с 1 или 2 кроватями', N'Двухкомнатный стандартный номер', CAST(6000.00 AS Decimal(10, 2)), 2, CAST(N'2025-06-13T18:52:20.910' AS DateTime), CAST(N'2025-06-13T18:52:20.910' AS DateTime))
INSERT [dbo].[RoomCategories] ([CategoryID], [CategoryName], [Description], [BasePrice], [MaxOccupancy], [CreatedAt], [UpdatedAt]) VALUES (8, N'Студия', N'Номер-студия', CAST(4500.00 AS Decimal(10, 2)), 2, CAST(N'2025-06-13T18:52:20.910' AS DateTime), CAST(N'2025-06-13T18:52:20.910' AS DateTime))
INSERT [dbo].[RoomCategories] ([CategoryID], [CategoryName], [Description], [BasePrice], [MaxOccupancy], [CreatedAt], [UpdatedAt]) VALUES (9, N'Люкс с 2 двуспальными кроватями', N'Люксовый номер с двумя двуспальными кроватями', CAST(8000.00 AS Decimal(10, 2)), 4, CAST(N'2025-06-13T18:52:20.910' AS DateTime), CAST(N'2025-06-13T18:52:20.910' AS DateTime))
SET IDENTITY_INSERT [dbo].[RoomCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (1, 101, 1, 1, N'Occupied', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (2, 102, 1, 1, N'Occupied', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (3, 103, 1, 2, N'Clean', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (4, 104, 1, 2, N'Occupied', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (5, 105, 1, 3, N'Occupied', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (6, 106, 1, 3, N'Clean', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (7, 107, 1, 4, N'Occupied', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (8, 108, 1, 4, N'Occupied', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (9, 109, 1, 5, N'Occupied', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (10, 110, 1, 5, N'Occupied', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (11, 201, 2, 6, N'Occupied', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (12, 202, 2, 6, N'Clean', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (13, 203, 2, 6, N'Occupied', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (14, 204, 2, 7, N'AssignedForCleaning', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (15, 205, 2, 7, N'Occupied', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (16, 206, 2, 7, N'Occupied', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (17, 207, 2, 1, N'Occupied', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (18, 208, 2, 1, N'Occupied', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (19, 209, 2, 1, N'Occupied', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (20, 301, 3, 8, N'Dirty', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (21, 302, 3, 8, N'Dirty', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (22, 303, 3, 8, N'Clean', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (23, 304, 3, 9, N'Occupied', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (24, 305, 3, 9, N'Clean', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomNumber], [FloorID], [CategoryID], [Status], [CreatedAt], [UpdatedAt]) VALUES (25, 306, 3, 9, N'Occupied', CAST(N'2025-06-13T18:52:20.917' AS DateTime), CAST(N'2025-06-13T18:52:20.917' AS DateTime))
SET IDENTITY_INSERT [dbo].[Rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRoles] ON 

INSERT [dbo].[UserRoles] ([RoleID], [RoleName], [Description], [CreatedAt], [UpdatedAt]) VALUES (1, N'Administrator', N'Полный доступ ко всем функциям системы', CAST(N'2025-06-13T18:52:20.907' AS DateTime), CAST(N'2025-06-13T18:52:20.907' AS DateTime))
INSERT [dbo].[UserRoles] ([RoleID], [RoleName], [Description], [CreatedAt], [UpdatedAt]) VALUES (2, N'Manager', N'Доступ к управлению номерами и бронированиями', CAST(N'2025-06-13T18:52:20.907' AS DateTime), CAST(N'2025-06-13T18:52:20.907' AS DateTime))
INSERT [dbo].[UserRoles] ([RoleID], [RoleName], [Description], [CreatedAt], [UpdatedAt]) VALUES (3, N'Receptionist', N'Доступ к регистрации гостей и обработке платежей', CAST(N'2025-06-13T18:52:20.907' AS DateTime), CAST(N'2025-06-13T18:52:20.907' AS DateTime))
INSERT [dbo].[UserRoles] ([RoleID], [RoleName], [Description], [CreatedAt], [UpdatedAt]) VALUES (4, N'Housekeeping', N'Доступ к управлению уборкой номеров', CAST(N'2025-06-13T18:52:20.907' AS DateTime), CAST(N'2025-06-13T18:52:20.907' AS DateTime))
INSERT [dbo].[UserRoles] ([RoleID], [RoleName], [Description], [CreatedAt], [UpdatedAt]) VALUES (5, N'Guest', N'Ограниченный доступ для просмотра и бронирования номеров', CAST(N'2025-06-13T18:52:20.907' AS DateTime), CAST(N'2025-06-13T18:52:20.907' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [Username], [Password], [FirstName], [LastName], [Email], [Phone], [RoleID], [IsActive], [CreatedAt], [UpdatedAt]) VALUES (1, N'admin', N'hashed_password', N'Admin', N'User', N'admin@hotel.com', N'+1234567890', 1, 1, CAST(N'2025-06-13T18:52:20.910' AS DateTime), CAST(N'2025-06-13T18:52:20.910' AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [UQ__Floors__632D9B2BE5B434AD]    Script Date: 13.06.2025 20:46:04 ******/
ALTER TABLE [dbo].[Floors] ADD UNIQUE NONCLUSTERED 
(
	[FloorNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__RoomCate__8517B2E00148635F]    Script Date: 13.06.2025 20:46:04 ******/
ALTER TABLE [dbo].[RoomCategories] ADD UNIQUE NONCLUSTERED 
(
	[CategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Rooms__AE10E07AA5856FED]    Script Date: 13.06.2025 20:46:04 ******/
ALTER TABLE [dbo].[Rooms] ADD UNIQUE NONCLUSTERED 
(
	[RoomNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__536C85E463DFDBDC]    Script Date: 13.06.2025 20:46:04 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__A9D1053419DD9A6E]    Script Date: 13.06.2025 20:46:04 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bookings] ADD  DEFAULT ((1)) FOR [Adults]
GO
ALTER TABLE [dbo].[Bookings] ADD  DEFAULT ((0)) FOR [Children]
GO
ALTER TABLE [dbo].[Bookings] ADD  DEFAULT ('Confirmed') FOR [Status]
GO
ALTER TABLE [dbo].[Bookings] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Bookings] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[CleaningSchedule] ADD  DEFAULT ('Scheduled') FOR [Status]
GO
ALTER TABLE [dbo].[CleaningSchedule] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[CleaningSchedule] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Floors] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Floors] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Guests] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Guests] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Payments] ADD  DEFAULT (getdate()) FOR [PaymentDate]
GO
ALTER TABLE [dbo].[Payments] ADD  DEFAULT ('Completed') FOR [Status]
GO
ALTER TABLE [dbo].[Payments] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Payments] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[RoomCategories] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[RoomCategories] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Rooms] ADD  DEFAULT ('Clean') FOR [Status]
GO
ALTER TABLE [dbo].[Rooms] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Rooms] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[UserRoles] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[UserRoles] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD FOREIGN KEY([GuestID])
REFERENCES [dbo].[Guests] ([GuestID])
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD FOREIGN KEY([RoomID])
REFERENCES [dbo].[Rooms] ([RoomID])
GO
ALTER TABLE [dbo].[CleaningSchedule]  WITH CHECK ADD FOREIGN KEY([AssignedTo])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[CleaningSchedule]  WITH CHECK ADD FOREIGN KEY([RoomID])
REFERENCES [dbo].[Rooms] ([RoomID])
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD FOREIGN KEY([ProcessedBy])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[RoomCategories] ([CategoryID])
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD FOREIGN KEY([FloorID])
REFERENCES [dbo].[Floors] ([FloorID])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[UserRoles] ([RoleID])
GO
