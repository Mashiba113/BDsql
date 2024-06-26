USE [master]
GO
/****** Object:  Database [TourBaseRuz]    Script Date: 03.06.2024 14:04:36 ******/
CREATE DATABASE [TourBaseRuz]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TourBaseRuz', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TourBaseRuz.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TourBaseRuz_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TourBaseRuz_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TourBaseRuz] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TourBaseRuz].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TourBaseRuz] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TourBaseRuz] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TourBaseRuz] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TourBaseRuz] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TourBaseRuz] SET ARITHABORT OFF 
GO
ALTER DATABASE [TourBaseRuz] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TourBaseRuz] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TourBaseRuz] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TourBaseRuz] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TourBaseRuz] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TourBaseRuz] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TourBaseRuz] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TourBaseRuz] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TourBaseRuz] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TourBaseRuz] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TourBaseRuz] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TourBaseRuz] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TourBaseRuz] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TourBaseRuz] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TourBaseRuz] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TourBaseRuz] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TourBaseRuz] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TourBaseRuz] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TourBaseRuz] SET  MULTI_USER 
GO
ALTER DATABASE [TourBaseRuz] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TourBaseRuz] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TourBaseRuz] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TourBaseRuz] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TourBaseRuz] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TourBaseRuz] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TourBaseRuz] SET QUERY_STORE = ON
GO
ALTER DATABASE [TourBaseRuz] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TourBaseRuz]
GO
/****** Object:  Table [dbo].[Country1]    Script Date: 03.06.2024 14:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country1](
	[Code] [nchar](2) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Country1] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel1]    Script Date: 03.06.2024 14:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CountOfStars] [int] NOT NULL,
	[CountryCode] [nchar](2) NOT NULL,
 CONSTRAINT [PK_Hotel1_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelComment1]    Script Date: 03.06.2024 14:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelComment1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HotelId] [int] NOT NULL,
	[Text] [nvarchar](100) NOT NULL,
	[Author] [nvarchar](100) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_HotelComment1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelImage]    Script Date: 03.06.2024 14:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelImage](
	[Id] [int] NOT NULL,
	[HotelId] [int] NOT NULL,
	[ImageSource] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_HotelImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelOfTour]    Script Date: 03.06.2024 14:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelOfTour](
	[HotelId] [int] NOT NULL,
	[TourId] [int] NOT NULL,
 CONSTRAINT [PK_HotelOfTour] PRIMARY KEY CLUSTERED 
(
	[HotelId] ASC,
	[TourId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 03.06.2024 14:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TicketCount] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[imagePreview] [varbinary](max) NULL,
	[Price] [money] NOT NULL,
	[IsActual] [bit] NOT NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 03.06.2024 14:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfTour]    Script Date: 03.06.2024 14:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfTour](
	[TourId] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
 CONSTRAINT [PK_TypeOfTour] PRIMARY KEY CLUSTERED 
(
	[TourId] ASC,
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Country1] ([Code], [Name]) VALUES (N'ch', N'Китай')
INSERT [dbo].[Country1] ([Code], [Name]) VALUES (N'en', N'Англия')
INSERT [dbo].[Country1] ([Code], [Name]) VALUES (N'ru', N'Россия')
GO
SET IDENTITY_INSERT [dbo].[Hotel1] ON 

INSERT [dbo].[Hotel1] ([Id], [Name], [CountOfStars], [CountryCode]) VALUES (1, N'Космос', 5, N'ru')
INSERT [dbo].[Hotel1] ([Id], [Name], [CountOfStars], [CountryCode]) VALUES (2, N'Украина', 5, N'ru')
INSERT [dbo].[Hotel1] ([Id], [Name], [CountOfStars], [CountryCode]) VALUES (3, N'Four Season', 5, N'ru')
INSERT [dbo].[Hotel1] ([Id], [Name], [CountOfStars], [CountryCode]) VALUES (4, N'Тереза', 5, N'ru')
SET IDENTITY_INSERT [dbo].[Hotel1] OFF
GO
SET IDENTITY_INSERT [dbo].[HotelComment1] ON 

INSERT [dbo].[HotelComment1] ([Id], [HotelId], [Text], [Author], [CreationDate]) VALUES (1, 1, N'Замечательный', N'Иванов Иван', CAST(N'2024-02-17T00:00:00.000' AS DateTime))
INSERT [dbo].[HotelComment1] ([Id], [HotelId], [Text], [Author], [CreationDate]) VALUES (2, 2, N'Лучший отель', N'Джон Дое', CAST(N'2024-02-17T00:00:00.000' AS DateTime))
INSERT [dbo].[HotelComment1] ([Id], [HotelId], [Text], [Author], [CreationDate]) VALUES (3, 3, N'Есть к чему стремиться', N'Мария', CAST(N'2024-02-17T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[HotelComment1] OFF
GO
SET IDENTITY_INSERT [dbo].[Tour] ON 

INSERT [dbo].[Tour] ([Id], [TicketCount], [Name], [Description], [imagePreview], [Price], [IsActual]) VALUES (1, 127, N'Болгарское наследие', NULL, NULL, 35700.0000, 1)
INSERT [dbo].[Tour] ([Id], [TicketCount], [Name], [Description], [imagePreview], [Price], [IsActual]) VALUES (2, 92, N'Волшебный Восток', NULL, NULL, 77100.0000, 1)
INSERT [dbo].[Tour] ([Id], [TicketCount], [Name], [Description], [imagePreview], [Price], [IsActual]) VALUES (3, 72, N'Город с большими огнями', NULL, NULL, 93300.0000, 1)
INSERT [dbo].[Tour] ([Id], [TicketCount], [Name], [Description], [imagePreview], [Price], [IsActual]) VALUES (4, 143, N'Город четырх ветров', NULL, NULL, 72500.0000, 0)
SET IDENTITY_INSERT [dbo].[Tour] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([Id], [Name], [Description]) VALUES (1, N'Международный', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Description]) VALUES (2, N'внутренний', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Description]) VALUES (3, N'специализированный детский', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Description]) VALUES (4, N'экскурсионный', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Description]) VALUES (5, N'лечебно-оздоровительный', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Description]) VALUES (6, N'культурно-исторический', NULL)
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
ALTER TABLE [dbo].[Hotel1]  WITH CHECK ADD  CONSTRAINT [FK_Hotel1_Country1] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country1] ([Code])
GO
ALTER TABLE [dbo].[Hotel1] CHECK CONSTRAINT [FK_Hotel1_Country1]
GO
ALTER TABLE [dbo].[Hotel1]  WITH CHECK ADD  CONSTRAINT [FK_Hotel1_Tour] FOREIGN KEY([Id])
REFERENCES [dbo].[Tour] ([Id])
GO
ALTER TABLE [dbo].[Hotel1] CHECK CONSTRAINT [FK_Hotel1_Tour]
GO
ALTER TABLE [dbo].[HotelComment1]  WITH CHECK ADD  CONSTRAINT [FK_HotelComment1_Hotel1] FOREIGN KEY([Id])
REFERENCES [dbo].[Hotel1] ([Id])
GO
ALTER TABLE [dbo].[HotelComment1] CHECK CONSTRAINT [FK_HotelComment1_Hotel1]
GO
ALTER TABLE [dbo].[HotelImage]  WITH CHECK ADD  CONSTRAINT [FK_HotelImage_Hotel1] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotel1] ([Id])
GO
ALTER TABLE [dbo].[HotelImage] CHECK CONSTRAINT [FK_HotelImage_Hotel1]
GO
ALTER TABLE [dbo].[HotelOfTour]  WITH CHECK ADD  CONSTRAINT [FK_HotelOfTour_Tour] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Tour] ([Id])
GO
ALTER TABLE [dbo].[HotelOfTour] CHECK CONSTRAINT [FK_HotelOfTour_Tour]
GO
ALTER TABLE [dbo].[TypeOfTour]  WITH CHECK ADD  CONSTRAINT [FK_TypeOfTour_Tour] FOREIGN KEY([TourId])
REFERENCES [dbo].[Tour] ([Id])
GO
ALTER TABLE [dbo].[TypeOfTour] CHECK CONSTRAINT [FK_TypeOfTour_Tour]
GO
ALTER TABLE [dbo].[TypeOfTour]  WITH CHECK ADD  CONSTRAINT [FK_TypeOfTour_Type] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Type] ([Id])
GO
ALTER TABLE [dbo].[TypeOfTour] CHECK CONSTRAINT [FK_TypeOfTour_Type]
GO
USE [master]
GO
ALTER DATABASE [TourBaseRuz] SET  READ_WRITE 
GO
