USE [master]
GO
/****** Object:  Database [HotelManagement]    Script Date: 03/04/2024 8:25:52 SA ******/
CREATE DATABASE [HotelManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HotelManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\HotelManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HotelManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\HotelManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [HotelManagement] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotelManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HotelManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HotelManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HotelManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HotelManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [HotelManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HotelManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HotelManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HotelManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HotelManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HotelManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HotelManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HotelManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HotelManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HotelManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HotelManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HotelManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HotelManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HotelManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HotelManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HotelManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HotelManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HotelManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [HotelManagement] SET  MULTI_USER 
GO
ALTER DATABASE [HotelManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HotelManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HotelManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HotelManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HotelManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HotelManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'HotelManagement', N'ON'
GO
ALTER DATABASE [HotelManagement] SET QUERY_STORE = ON
GO
ALTER DATABASE [HotelManagement] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [HotelManagement]
GO
/****** Object:  Table [dbo].[tbl_Account]    Script Date: 03/04/2024 8:25:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Account](
	[username] [varchar](30) NOT NULL,
	[pass] [varchar](30) NULL,
	[ten] [nvarchar](50) NULL,
	[chucvu] [nvarchar](20) NULL,
	[sdt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_BookedRoom]    Script Date: 03/04/2024 8:25:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_BookedRoom](
	[ID_BK] [int] NOT NULL,
	[ID_R] [int] NULL,
	[ID_KH] [int] NULL,
	[NgayNhan] [date] NULL,
	[NgayTra] [date] NULL,
	[bkstatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_BK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ChiTietHD_DV]    Script Date: 03/04/2024 8:25:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiTietHD_DV](
	[ID_HD] [int] NOT NULL,
	[ID_DV] [int] NOT NULL,
	[NgayDung] [date] NULL,
	[SoLuong] [tinyint] NULL,
	[GhiChu] [nvarchar](100) NULL,
	[DenBu] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_HD] ASC,
	[ID_DV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_DV]    Script Date: 03/04/2024 8:25:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_DV](
	[ID_DV] [int] NOT NULL,
	[Ten_DV] [nvarchar](30) NULL,
	[SL_DV] [tinyint] NULL,
	[Gia_DV] [money] NULL,
	[GhiChu_DV] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HD]    Script Date: 03/04/2024 8:25:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HD](
	[ID_HD] [int] NOT NULL,
	[ID_BK] [int] NULL,
	[ID_NV] [varchar](6) NULL,
	[CheckinDate] [date] NULL,
	[CheckinTime] [time](7) NULL,
	[CheckoutDate] [date] NULL,
	[CheckoutTime] [time](7) NULL,
	[SoDem] [tinyint] NULL,
	[hdstatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_HD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HotelRoom]    Script Date: 03/04/2024 8:25:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HotelRoom](
	[ID_R] [int] NOT NULL,
	[Ten_R] [nvarchar](20) NULL,
	[Loai_R] [nvarchar](20) NULL,
	[SoGiuong_R] [tinyint] NULL,
	[Gia_R] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_R] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KH]    Script Date: 03/04/2024 8:25:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KH](
	[ID_KH] [int] NOT NULL,
	[Ten_KH] [nvarchar](20) NULL,
	[DC_KH] [nvarchar](30) NULL,
	[SDT_KH] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KH_stay]    Script Date: 03/04/2024 8:25:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KH_stay](
	[ID_HD] [int] NOT NULL,
	[Ten_KH_stay] [nvarchar](30) NULL,
	[CCCD_KH_stay] [varchar](20) NULL,
	[NgaySinh] [date] NULL,
	[QuocTich] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NV]    Script Date: 03/04/2024 8:25:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NV](
	[ID_NV] [varchar](6) NOT NULL,
	[Ho_NV] [nvarchar](20) NULL,
	[Ten_NV] [nvarchar](10) NULL,
	[CCCD_NV] [char](12) NULL,
	[ChucVu] [nvarchar](30) NULL,
	[Luong] [money] NULL,
	[GT] [nvarchar](10) NULL,
	[DC_NV] [nvarchar](30) NULL,
	[SDT_NV] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_NV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_RoomStatus]    Script Date: 03/04/2024 8:25:52 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_RoomStatus](
	[ID_R] [int] NOT NULL,
	[statusRoom] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_R] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_BookedRoom]  WITH CHECK ADD  CONSTRAINT [KN_ID_KH_BK] FOREIGN KEY([ID_KH])
REFERENCES [dbo].[tbl_KH] ([ID_KH])
GO
ALTER TABLE [dbo].[tbl_BookedRoom] CHECK CONSTRAINT [KN_ID_KH_BK]
GO
ALTER TABLE [dbo].[tbl_BookedRoom]  WITH CHECK ADD  CONSTRAINT [KN_ID_R_BK] FOREIGN KEY([ID_R])
REFERENCES [dbo].[tbl_HotelRoom] ([ID_R])
GO
ALTER TABLE [dbo].[tbl_BookedRoom] CHECK CONSTRAINT [KN_ID_R_BK]
GO
ALTER TABLE [dbo].[tbl_ChiTietHD_DV]  WITH CHECK ADD  CONSTRAINT [KN_ID_DV_CT] FOREIGN KEY([ID_DV])
REFERENCES [dbo].[tbl_DV] ([ID_DV])
GO
ALTER TABLE [dbo].[tbl_ChiTietHD_DV] CHECK CONSTRAINT [KN_ID_DV_CT]
GO
ALTER TABLE [dbo].[tbl_ChiTietHD_DV]  WITH CHECK ADD  CONSTRAINT [KN_ID_HD_CT] FOREIGN KEY([ID_HD])
REFERENCES [dbo].[tbl_HD] ([ID_HD])
GO
ALTER TABLE [dbo].[tbl_ChiTietHD_DV] CHECK CONSTRAINT [KN_ID_HD_CT]
GO
ALTER TABLE [dbo].[tbl_HD]  WITH CHECK ADD  CONSTRAINT [KN_ID_BK_HD] FOREIGN KEY([ID_BK])
REFERENCES [dbo].[tbl_BookedRoom] ([ID_BK])
GO
ALTER TABLE [dbo].[tbl_HD] CHECK CONSTRAINT [KN_ID_BK_HD]
GO
ALTER TABLE [dbo].[tbl_HD]  WITH CHECK ADD  CONSTRAINT [KN_ID_NV_HD] FOREIGN KEY([ID_NV])
REFERENCES [dbo].[tbl_NV] ([ID_NV])
GO
ALTER TABLE [dbo].[tbl_HD] CHECK CONSTRAINT [KN_ID_NV_HD]
GO
ALTER TABLE [dbo].[tbl_KH_stay]  WITH CHECK ADD  CONSTRAINT [KN_ID_HD_KHS] FOREIGN KEY([ID_HD])
REFERENCES [dbo].[tbl_HD] ([ID_HD])
GO
ALTER TABLE [dbo].[tbl_KH_stay] CHECK CONSTRAINT [KN_ID_HD_KHS]
GO
ALTER TABLE [dbo].[tbl_RoomStatus]  WITH CHECK ADD  CONSTRAINT [KN_ID_RS_R] FOREIGN KEY([ID_R])
REFERENCES [dbo].[tbl_RoomStatus] ([ID_R])
GO
ALTER TABLE [dbo].[tbl_RoomStatus] CHECK CONSTRAINT [KN_ID_RS_R]
GO
USE [master]
GO
ALTER DATABASE [HotelManagement] SET  READ_WRITE 
GO
