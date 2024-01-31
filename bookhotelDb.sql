USE [master]
GO
/****** Object:  Database [BookHotelDb]    Script Date: 25.01.2024 22:16:15 ******/
CREATE DATABASE [BookHotelDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookHotelDb', FILENAME = N'D:\Dprogram files\MS SQL\MSSQL16.MSSQLSERVER\MSSQL\DATA\BookHotelDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BookHotelDb_log', FILENAME = N'D:\Dprogram files\MS SQL\MSSQL16.MSSQLSERVER\MSSQL\DATA\BookHotelDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BookHotelDb] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookHotelDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookHotelDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BookHotelDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BookHotelDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BookHotelDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BookHotelDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [BookHotelDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BookHotelDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BookHotelDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BookHotelDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BookHotelDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BookHotelDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BookHotelDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BookHotelDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BookHotelDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BookHotelDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BookHotelDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BookHotelDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BookHotelDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BookHotelDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BookHotelDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BookHotelDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BookHotelDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BookHotelDb] SET RECOVERY FULL 
GO
ALTER DATABASE [BookHotelDb] SET  MULTI_USER 
GO
ALTER DATABASE [BookHotelDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BookHotelDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BookHotelDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BookHotelDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BookHotelDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BookHotelDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BookHotelDb', N'ON'
GO
ALTER DATABASE [BookHotelDb] SET QUERY_STORE = ON
GO
ALTER DATABASE [BookHotelDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BookHotelDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25.01.2024 22:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 25.01.2024 22:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 25.01.2024 22:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 25.01.2024 22:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 25.01.2024 22:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 25.01.2024 22:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 25.01.2024 22:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Age] [int] NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 25.01.2024 22:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 25.01.2024 22:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[IsStatus] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[CommentDateTime] [datetime2](7) NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 25.01.2024 22:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IsStatus] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Hotels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 25.01.2024 22:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReservationId] [int] NOT NULL,
	[ReservationDate] [datetime2](7) NOT NULL,
	[TotalPrice] [float] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Reservation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReservationDetail]    Script Date: 25.01.2024 22:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservationDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[CheckIn] [datetime2](7) NULL,
	[CheckOut] [datetime2](7) NULL,
	[AdultCount] [int] NULL,
	[ChildCount] [int] NULL,
	[RoomId] [int] NOT NULL,
	[RoomQuantity] [int] NULL,
	[SpecialRequest] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_ReservationDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 25.01.2024 22:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [int] NOT NULL,
	[BedCount] [int] NOT NULL,
	[BathCount] [int] NOT NULL,
	[Wifi] [bit] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[IsStatus] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Smoke] [bit] NOT NULL,
	[HotelId] [int] NOT NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240117225908_dsasa', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240118203453_defaaead', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240118221351_fdsf', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240118225518_sfaer', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240118230040_sade23', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240118231737_rpj232r2o', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240118232816_yenitablo', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240120183410_saeq23', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240120183611_wfe322e', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240120211241_jpe2', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240120211536_j2eedwe', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240121181630_32eewd', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240121181857_r3dc3', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240121195627_rp3d', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240122174748_sde3', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240123201649_r2k3d', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240123201834_r2k3ddw2w2', N'6.0.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240123203321_324rwd', N'6.0.26')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'9163cab0-0de5-4883-afa5-d9ae35ca1c52', N'Guest', N'GUEST', N'9a48fb62-77ac-42e3-a1b5-5b807c77ddbf')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'9fbd184f-f704-4521-b096-1322d95539c0', N'Admin', N'ADMIN', N'368d3a8a-aa9b-49ba-be2c-e470dc4362f9')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a30d4d03-9a98-4787-9208-629f4cd38e61', N'User', N'USER', N'f4d194af-bcd0-4746-a186-ab1cd170391c')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bd0d6ef0-b3f2-485e-a8f5-5900f2d702e3', N'9fbd184f-f704-4521-b096-1322d95539c0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e3d8490b-8424-4ae4-8623-3f1091c4e63a', N'9fbd184f-f704-4521-b096-1322d95539c0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1b0d81d2-8dc9-4e05-b27c-b08c1c9727ed', N'a30d4d03-9a98-4787-9208-629f4cd38e61')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'536c2b0d-e890-40c5-b229-33ffe26e729e', N'a30d4d03-9a98-4787-9208-629f4cd38e61')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9f1d1b6c-f2d0-4e37-b246-b41fb204608b', N'a30d4d03-9a98-4787-9208-629f4cd38e61')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Age], [Discriminator], [Image], [Name], [Surname]) VALUES (N'1b0d81d2-8dc9-4e05-b27c-b08c1c9727ed', N'jack@shine.com', N'JACK@SHINE.COM', N'jack@shine.com', N'JACK@SHINE.COM', 0, N'AQAAAAEAACcQAAAAEF889ugR4hyK36znrFBO0ac1qSE7zgX5azopiMBtaaIml64tbVW9MUX0wQ/2D/RiJA==', N'36PNLFL6G5C4U4653LLE52PS3PP4SCWR', N'b5c731d8-bf24-4cf4-b778-ce692fd10b9d', NULL, 0, 0, NULL, 1, 0, 0, N'ApplicationUser', NULL, N'Jack', N'Ryan')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Age], [Discriminator], [Image], [Name], [Surname]) VALUES (N'536c2b0d-e890-40c5-b229-33ffe26e729e', N'ali@shine.com', N'ALI@SHINE.COM', N'ali@shine.com', N'ALI@SHINE.COM', 0, N'AQAAAAEAACcQAAAAEJFP0R8dDc21q4YDJBVH5xr2D5ahC5gKcVMOdZVFWsne3UTYvTTmvVlIcl2JgexN0g==', N'XBXJL6XKZNYK5EFBVCOPM5I63OTMKV7Q', N'875aae0e-96db-41fb-b9e7-b03fada858a0', NULL, 0, 0, NULL, 1, 0, 0, N'ApplicationUser', NULL, N'Ali', N'Veli')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Age], [Discriminator], [Image], [Name], [Surname]) VALUES (N'9f1d1b6c-f2d0-4e37-b246-b41fb204608b', N'batuhan@shine.com', N'BATUHAN@SHINE.COM', N'batuhan@shine.com', N'BATUHAN@SHINE.COM', 0, N'AQAAAAEAACcQAAAAELC2n3SCGAOdYeuNFmRe6ChaTlPS7krNUbKX2JGWNZOVTM+tJdQhmh1aZ4xvEsIQUw==', N'JT64477PCPPCJXMZMZBQQDUDFPARWAIT', N'30572969-2dc4-4385-8146-1cf9ed8586c5', NULL, 0, 0, NULL, 1, 0, 0, N'ApplicationUser', NULL, N'Batuhan', N'Çelik')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Age], [Discriminator], [Image], [Name], [Surname]) VALUES (N'bd0d6ef0-b3f2-485e-a8f5-5900f2d702e3', N'adminyedek@shine.com', N'ADMINYEDEK@SHINE.COM', N'adminyedek@shine.com', N'ADMINYEDEK@SHINE.COM', 0, N'AQAAAAEAACcQAAAAEER4jj8Zfm+2vFIFDkqgJlsLZ5RJoM/Bpmo4ZSCPCY0M/pA3ygzcBNba0OJZO/2jPw==', N'QUSKXO6I2CKL6NGKXT7NTZ4C5UT2DUJD', N'ff8ba49b-5d4a-44a0-87c6-980da541d950', NULL, 0, 0, NULL, 1, 0, 0, N'ApplicationUser', NULL, N'admin2', N'yedek')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Age], [Discriminator], [Image], [Name], [Surname]) VALUES (N'e3d8490b-8424-4ae4-8623-3f1091c4e63a', N'admin@shine.com', N'ADMIN@SHINE.COM', N'admin@shine.com', N'ADMIN@SHINE.COM', 0, N'AQAAAAEAACcQAAAAEPVJ6MNhXrSQm+qA3kF6YgCAHclqXom5m7R+ybCxFVenF7chnOXSBVreKCj/Nthpzw==', N'Z52GMEWZBPOVGQDNM4A2QUJIU3JOOGAS', N'84a8176e-70cf-416c-9ff1-f6975373236a', NULL, 0, 0, NULL, 1, 0, 0, N'ApplicationUser', NULL, N'Batuhan', N'Çelik')
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([Id], [Name], [Surname], [Email], [PhoneNumber], [Message], [IsStatus], [IsDelete], [CommentDateTime]) VALUES (1, N'Batuhan', N'Çelik', N'batu@shine.com', N'5479862135', N'güzel bir otel.', 1, 1, CAST(N'2024-01-24T00:23:02.1921805' AS DateTime2))
INSERT [dbo].[Comment] ([Id], [Name], [Surname], [Email], [PhoneNumber], [Message], [IsStatus], [IsDelete], [CommentDateTime]) VALUES (3, N'Kuzey', N'Tekin', N'kuzey@shine.com', N'5479652345', N'Otelinizde kaldığım süre boyunca harika bir deneyim yaşadım! Odalar temiz ve konforlu, personel son derece yardımseverdi. ', 1, 0, CAST(N'2024-01-24T22:58:48.1853524' AS DateTime2))
INSERT [dbo].[Comment] ([Id], [Name], [Surname], [Email], [PhoneNumber], [Message], [IsStatus], [IsDelete], [CommentDateTime]) VALUES (4, N'Ezel', N'Bayraktar', N'ezel@shine.com', N'53547896532', N' Otelin konumu mükemmel, çevresindeki yerlere kolayca ulaşım sağlamak mümkün. Fiyat-performans dengesi de oldukça başarılı. ', 1, 0, CAST(N'2024-01-24T22:59:33.5163001' AS DateTime2))
INSERT [dbo].[Comment] ([Id], [Name], [Surname], [Email], [PhoneNumber], [Message], [IsStatus], [IsDelete], [CommentDateTime]) VALUES (5, N'Mehmet', N'Erel', N'mehmet@shine.com', N'5896413217', N' Otelin konumu mükemmel, çevresindeki yerlere kolayca ulaşım sağlamak mümkün. Fiyat-performans dengesi de oldukça başarılı. ', 1, 0, CAST(N'2024-01-24T23:00:42.4468378' AS DateTime2))
INSERT [dbo].[Comment] ([Id], [Name], [Surname], [Email], [PhoneNumber], [Message], [IsStatus], [IsDelete], [CommentDateTime]) VALUES (6, N'Batuhan', N'Çelik', N'batu@shine.com', N'5496521347', N'Otelinizde geçirdiğim zaman benim için unutulmaz bir deneyimdi! Odaların şıklığı ve temizliği beni etkiledi. Personel, samimi ve yardımsever tavırlarıyla konaklamamı daha da özel kıldı. ', 1, 0, CAST(N'2024-01-24T23:04:26.5531986' AS DateTime2))
INSERT [dbo].[Comment] ([Id], [Name], [Surname], [Email], [PhoneNumber], [Message], [IsStatus], [IsDelete], [CommentDateTime]) VALUES (7, N'Yavuz', N'Yar', N'yavuz@shine.com', N'5479863214', N'Otelin genel atmosferi oldukça sakin ve huzur vericiydi. Odalar geniş, temiz ve modern bir tasarıma sahipti. Yatağın rahatlığı ve temiz çarşaflar, günün yorgunluğunu atmak için mükemmel bir ortam sağladı. Ayrıca, oda içindeki detaylara verilen özen beni etkiledi.', 0, 0, CAST(N'2024-01-25T14:38:15.0011243' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Hotels] ON 

INSERT [dbo].[Hotels] ([Id], [City], [Country], [Name], [IsStatus], [IsDelete]) VALUES (1, N'Istanbul', N'Türkiye', N'Shine Hotel', 1, 0)
SET IDENTITY_INSERT [dbo].[Hotels] OFF
GO
SET IDENTITY_INSERT [dbo].[Reservation] ON 

INSERT [dbo].[Reservation] ([Id], [ReservationId], [ReservationDate], [TotalPrice], [IsDelete]) VALUES (1, 1, CAST(N'2024-01-22T00:27:40.3070741' AS DateTime2), 120, 1)
INSERT [dbo].[Reservation] ([Id], [ReservationId], [ReservationDate], [TotalPrice], [IsDelete]) VALUES (2, 2, CAST(N'2024-01-22T01:37:23.8130645' AS DateTime2), 980.16666666666674, 1)
INSERT [dbo].[Reservation] ([Id], [ReservationId], [ReservationDate], [TotalPrice], [IsDelete]) VALUES (3, 4, CAST(N'2024-01-22T16:41:45.5658120' AS DateTime2), 4800, 1)
INSERT [dbo].[Reservation] ([Id], [ReservationId], [ReservationDate], [TotalPrice], [IsDelete]) VALUES (4, 5, CAST(N'2024-01-22T16:52:55.8635547' AS DateTime2), 2880, 1)
INSERT [dbo].[Reservation] ([Id], [ReservationId], [ReservationDate], [TotalPrice], [IsDelete]) VALUES (5, 6, CAST(N'2024-01-22T20:43:01.3256200' AS DateTime2), 1440, 1)
INSERT [dbo].[Reservation] ([Id], [ReservationId], [ReservationDate], [TotalPrice], [IsDelete]) VALUES (6, 7, CAST(N'2024-01-22T20:50:08.7582713' AS DateTime2), 1920, 1)
INSERT [dbo].[Reservation] ([Id], [ReservationId], [ReservationDate], [TotalPrice], [IsDelete]) VALUES (7, 8, CAST(N'2024-01-22T20:55:57.8840890' AS DateTime2), 240, 1)
INSERT [dbo].[Reservation] ([Id], [ReservationId], [ReservationDate], [TotalPrice], [IsDelete]) VALUES (8, 9, CAST(N'2024-01-22T20:56:12.6259628' AS DateTime2), 240, 1)
INSERT [dbo].[Reservation] ([Id], [ReservationId], [ReservationDate], [TotalPrice], [IsDelete]) VALUES (9, 10, CAST(N'2024-01-22T21:04:54.6656976' AS DateTime2), 1440, 1)
INSERT [dbo].[Reservation] ([Id], [ReservationId], [ReservationDate], [TotalPrice], [IsDelete]) VALUES (10, 11, CAST(N'2024-01-22T21:06:11.7049986' AS DateTime2), 1200, 1)
INSERT [dbo].[Reservation] ([Id], [ReservationId], [ReservationDate], [TotalPrice], [IsDelete]) VALUES (11, 12, CAST(N'2024-01-22T21:07:12.2075382' AS DateTime2), 360, 1)
INSERT [dbo].[Reservation] ([Id], [ReservationId], [ReservationDate], [TotalPrice], [IsDelete]) VALUES (12, 13, CAST(N'2024-01-25T11:53:01.5856515' AS DateTime2), 11400, 0)
INSERT [dbo].[Reservation] ([Id], [ReservationId], [ReservationDate], [TotalPrice], [IsDelete]) VALUES (13, 14, CAST(N'2024-01-25T13:56:20.8079854' AS DateTime2), 40000, 0)
SET IDENTITY_INSERT [dbo].[Reservation] OFF
GO
SET IDENTITY_INSERT [dbo].[ReservationDetail] ON 

INSERT [dbo].[ReservationDetail] ([Id], [ApplicationUserId], [Name], [Surname], [PhoneNumber], [CheckIn], [CheckOut], [AdultCount], [ChildCount], [RoomId], [RoomQuantity], [SpecialRequest], [Email], [IsDelete]) VALUES (1, N'e3d8490b-8424-4ae4-8623-3f1091c4e63a', N'Batuhan', N'Çelik', N'5344698721', CAST(N'2024-01-30T00:00:00.0000000' AS DateTime2), CAST(N'2024-02-08T00:00:00.0000000' AS DateTime2), 1, 1, 2, 1, N'selam', N'batu@shine.com', 1)
INSERT [dbo].[ReservationDetail] ([Id], [ApplicationUserId], [Name], [Surname], [PhoneNumber], [CheckIn], [CheckOut], [AdultCount], [ChildCount], [RoomId], [RoomQuantity], [SpecialRequest], [Email], [IsDelete]) VALUES (2, NULL, N'Jack', N'har', N'32423412', CAST(N'2024-01-29T01:36:00.0000000' AS DateTime2), CAST(N'2024-02-02T03:37:00.0000000' AS DateTime2), 2, 1, 2, 1, N'asda', N'jack@shine.com', 1)
INSERT [dbo].[ReservationDetail] ([Id], [ApplicationUserId], [Name], [Surname], [PhoneNumber], [CheckIn], [CheckOut], [AdultCount], [ChildCount], [RoomId], [RoomQuantity], [SpecialRequest], [Email], [IsDelete]) VALUES (3, NULL, N'dklşf', N'aa', N'2332', CAST(N'2024-01-31T00:00:00.0000000' AS DateTime2), CAST(N'2024-02-10T00:00:00.0000000' AS DateTime2), 2, 1, 2, 2, N'wfwffdfds', N'sda@hotm.com', 1)
INSERT [dbo].[ReservationDetail] ([Id], [ApplicationUserId], [Name], [Surname], [PhoneNumber], [CheckIn], [CheckOut], [AdultCount], [ChildCount], [RoomId], [RoomQuantity], [SpecialRequest], [Email], [IsDelete]) VALUES (4, NULL, N'dklşf', N'aa', N'2332', CAST(N'2024-01-31T00:00:00.0000000' AS DateTime2), CAST(N'2024-02-10T00:00:00.0000000' AS DateTime2), 2, 1, 2, 2, N'wfwffdfds', N'sda@hotm.com', 1)
INSERT [dbo].[ReservationDetail] ([Id], [ApplicationUserId], [Name], [Surname], [PhoneNumber], [CheckIn], [CheckOut], [AdultCount], [ChildCount], [RoomId], [RoomQuantity], [SpecialRequest], [Email], [IsDelete]) VALUES (5, NULL, N'dene', N'deneme', N'da', CAST(N'2024-01-23T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-27T00:00:00.0000000' AS DateTime2), 2, 1, 2, 3, N'deneeme', N'den@shine.com', 1)
INSERT [dbo].[ReservationDetail] ([Id], [ApplicationUserId], [Name], [Surname], [PhoneNumber], [CheckIn], [CheckOut], [AdultCount], [ChildCount], [RoomId], [RoomQuantity], [SpecialRequest], [Email], [IsDelete]) VALUES (6, NULL, N'deneme', N'deneme', N'46489886', CAST(N'2024-01-23T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-26T00:00:00.0000000' AS DateTime2), 2, 2, 2, 2, N'deneme', N'den@shine.com', 1)
INSERT [dbo].[ReservationDetail] ([Id], [ApplicationUserId], [Name], [Surname], [PhoneNumber], [CheckIn], [CheckOut], [AdultCount], [ChildCount], [RoomId], [RoomQuantity], [SpecialRequest], [Email], [IsDelete]) VALUES (7, N'e3d8490b-8424-4ae4-8623-3f1091c4e63a', N'Jack', N'Ryan', N'4684568', CAST(N'2024-01-23T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-27T00:00:00.0000000' AS DateTime2), 2, 2, 2, 2, N'nice', N'batu@bat.com', 1)
INSERT [dbo].[ReservationDetail] ([Id], [ApplicationUserId], [Name], [Surname], [PhoneNumber], [CheckIn], [CheckOut], [AdultCount], [ChildCount], [RoomId], [RoomQuantity], [SpecialRequest], [Email], [IsDelete]) VALUES (8, N'e3d8490b-8424-4ae4-8623-3f1091c4e63a', N'Mike', N'Tos', N'46856884', CAST(N'2024-01-23T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-24T00:00:00.0000000' AS DateTime2), 2, 1, 2, 1, N'good', N'mike@shine.com', 1)
INSERT [dbo].[ReservationDetail] ([Id], [ApplicationUserId], [Name], [Surname], [PhoneNumber], [CheckIn], [CheckOut], [AdultCount], [ChildCount], [RoomId], [RoomQuantity], [SpecialRequest], [Email], [IsDelete]) VALUES (9, N'e3d8490b-8424-4ae4-8623-3f1091c4e63a', N'Mike', N'Tos', N'46856884', CAST(N'2024-01-23T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-24T00:00:00.0000000' AS DateTime2), 2, 1, 2, 1, N'good', N'mike@shine.com', 1)
INSERT [dbo].[ReservationDetail] ([Id], [ApplicationUserId], [Name], [Surname], [PhoneNumber], [CheckIn], [CheckOut], [AdultCount], [ChildCount], [RoomId], [RoomQuantity], [SpecialRequest], [Email], [IsDelete]) VALUES (10, N'e3d8490b-8424-4ae4-8623-3f1091c4e63a', N'a', N'a', N'4', CAST(N'2024-01-23T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-26T00:00:00.0000000' AS DateTime2), 2, 1, 2, 2, N'nice', N'batu@bat.com', 1)
INSERT [dbo].[ReservationDetail] ([Id], [ApplicationUserId], [Name], [Surname], [PhoneNumber], [CheckIn], [CheckOut], [AdultCount], [ChildCount], [RoomId], [RoomQuantity], [SpecialRequest], [Email], [IsDelete]) VALUES (11, N'e3d8490b-8424-4ae4-8623-3f1091c4e63a', N'sa', N'sfdfd', N'sa48998', CAST(N'2024-01-24T00:00:00.0000000' AS DateTime2), CAST(N'2024-02-03T00:00:00.0000000' AS DateTime2), 1, 1, 2, 1, N'sadas', N'asad@hf.com', 1)
INSERT [dbo].[ReservationDetail] ([Id], [ApplicationUserId], [Name], [Surname], [PhoneNumber], [CheckIn], [CheckOut], [AdultCount], [ChildCount], [RoomId], [RoomQuantity], [SpecialRequest], [Email], [IsDelete]) VALUES (12, N'e3d8490b-8424-4ae4-8623-3f1091c4e63a', N'adşd', N'adsşlsd', N'2648849', CAST(N'2024-01-24T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-27T00:00:00.0000000' AS DateTime2), 1, 1, 2, 1, N'asssda', N'asad@hf.com', 1)
INSERT [dbo].[ReservationDetail] ([Id], [ApplicationUserId], [Name], [Surname], [PhoneNumber], [CheckIn], [CheckOut], [AdultCount], [ChildCount], [RoomId], [RoomQuantity], [SpecialRequest], [Email], [IsDelete]) VALUES (13, NULL, N'Ali', N'Veli', N'5689743214', CAST(N'2024-01-26T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-28T00:00:00.0000000' AS DateTime2), 2, 0, 4, 1, N'Yataklar ayrı olsun.', N'ali@shine.com', 0)
INSERT [dbo].[ReservationDetail] ([Id], [ApplicationUserId], [Name], [Surname], [PhoneNumber], [CheckIn], [CheckOut], [AdultCount], [ChildCount], [RoomId], [RoomQuantity], [SpecialRequest], [Email], [IsDelete]) VALUES (14, N'9f1d1b6c-f2d0-4e37-b246-b41fb204608b', N'Batuhan', N'Çelik', N'5385412536', CAST(N'2024-01-26T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-30T00:00:00.0000000' AS DateTime2), 2, 0, 6, 1, N'Havaalanı servisi istiyorum.', N'batuhan@shine.com', 0)
SET IDENTITY_INSERT [dbo].[ReservationDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([Id], [Description], [Price], [BedCount], [BathCount], [Wifi], [Image], [Name], [IsStatus], [IsDelete], [Smoke], [HotelId]) VALUES (1, N'qwe', 1, 2, 2, 0, N'empty.jpg', N'asdj', 0, 1, 1, 1)
INSERT [dbo].[Rooms] ([Id], [Description], [Price], [BedCount], [BathCount], [Wifi], [Image], [Name], [IsStatus], [IsDelete], [Smoke], [HotelId]) VALUES (2, N'Rahat ve zarif Superior odalar, sizi evinizdeymiş gibi hissetitrecek. Modern mobilyalar, konforlu yataklar ve dikkat çekici detaylarla donatılmış odalarımızda unutulmaz bir konaklama sizi bekliyor.', 1800, 2, 1, 0, N'df30b2c8-261f-4805-b913-25ce1790ce0a.jpg', N'Superior Oda', 1, 0, 1, 1)
INSERT [dbo].[Rooms] ([Id], [Description], [Price], [BedCount], [BathCount], [Wifi], [Image], [Name], [IsStatus], [IsDelete], [Smoke], [HotelId]) VALUES (3, N'Genç ve enerjik bir atmosferle tasarlanan Junior Suit odalarımız, modern şıklık ve konforu bir araya getiriyor. İdeal konumu, geniş yaşam alanları ve özel detayları ile unutulmaz bir konaklama sunuyor. ', 2400, 3, 1, 1, N'094a4338-d7f8-443e-bbba-b843ab334980.jpg', N'Junior Suite', 1, 0, 1, 1)
INSERT [dbo].[Rooms] ([Id], [Description], [Price], [BedCount], [BathCount], [Wifi], [Image], [Name], [IsStatus], [IsDelete], [Smoke], [HotelId]) VALUES (4, N'Senior Suite odalarımız, sizi sıradanlıktan uzaklaştıracak özel dokunuşlarla tasarlandı. Konforlu yataklar, şık mobilyalar ve dikkat çekici detaylarla dolu odalarımızda kendinizi özel hissedin.', 2850, 3, 1, 1, N'408029e3-966c-454a-9e9a-f5b98d89d2d1.jpg', N'Senior Suite', 1, 0, 0, 1)
INSERT [dbo].[Rooms] ([Id], [Description], [Price], [BedCount], [BathCount], [Wifi], [Image], [Name], [IsStatus], [IsDelete], [Smoke], [HotelId]) VALUES (5, N'Balayı süitlerimizde romantizmin tadını çıkarın. Özel dekorasyon, jakuzi ve hoşgörü dolu atmosferimizle unutulmaz bir balayı sizi bekliyor.', 3400, 2, 1, 1, N'24b0e3b0-7184-46e6-a55f-662f33fc0b7e.jpg', N'Balayı Suite', 1, 0, 0, 1)
INSERT [dbo].[Rooms] ([Id], [Description], [Price], [BedCount], [BathCount], [Wifi], [Image], [Name], [IsStatus], [IsDelete], [Smoke], [HotelId]) VALUES (6, N'Kral süitlerimiz, lüksün ve konforun zirvesini temsil eder. Geniş yaşam alanları, özel teraslar ve özel hizmetlerle dolu bir kraliyet deneyimi yaşamak için sizleri bekliyoruz.', 5000, 4, 2, 1, N'4c13ec16-4b89-4656-8be4-d39e6b160f35.jpg', N'King Suite', 1, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Rooms] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 25.01.2024 22:16:15 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 25.01.2024 22:16:15 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 25.01.2024 22:16:15 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 25.01.2024 22:16:15 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 25.01.2024 22:16:15 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 25.01.2024 22:16:15 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 25.01.2024 22:16:15 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reservation_ReservationId]    Script Date: 25.01.2024 22:16:15 ******/
CREATE NONCLUSTERED INDEX [IX_Reservation_ReservationId] ON [dbo].[Reservation]
(
	[ReservationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ReservationDetail_ApplicationUserId]    Script Date: 25.01.2024 22:16:15 ******/
CREATE NONCLUSTERED INDEX [IX_ReservationDetail_ApplicationUserId] ON [dbo].[ReservationDetail]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReservationDetail_RoomId]    Script Date: 25.01.2024 22:16:15 ******/
CREATE NONCLUSTERED INDEX [IX_ReservationDetail_RoomId] ON [dbo].[ReservationDetail]
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rooms_HotelId]    Script Date: 25.01.2024 22:16:15 ******/
CREATE NONCLUSTERED INDEX [IX_Rooms_HotelId] ON [dbo].[Rooms]
(
	[HotelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[Rooms] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Smoke]
GO
ALTER TABLE [dbo].[Rooms] ADD  DEFAULT ((0)) FOR [HotelId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_ReservationDetail_ReservationId] FOREIGN KEY([ReservationId])
REFERENCES [dbo].[ReservationDetail] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_ReservationDetail_ReservationId]
GO
ALTER TABLE [dbo].[ReservationDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReservationDetail_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ReservationDetail] CHECK CONSTRAINT [FK_ReservationDetail_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[ReservationDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReservationDetail_Rooms_RoomId] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ReservationDetail] CHECK CONSTRAINT [FK_ReservationDetail_Rooms_RoomId]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_Hotels_HotelId] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_Hotels_HotelId]
GO
USE [master]
GO
ALTER DATABASE [BookHotelDb] SET  READ_WRITE 
GO
