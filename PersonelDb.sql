USE [master]
GO
/****** Object:  Database [PersonelDb]    Script Date: 12.01.2023 13:54:28 ******/
CREATE DATABASE [PersonelDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PersonelDb', FILENAME = N'D:\MSSQL\DATA\PersonelDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PersonelDb_log', FILENAME = N'D:\MSSQL\DATA\PersonelDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PersonelDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PersonelDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PersonelDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PersonelDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PersonelDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PersonelDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PersonelDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [PersonelDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PersonelDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PersonelDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PersonelDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PersonelDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PersonelDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PersonelDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PersonelDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PersonelDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PersonelDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PersonelDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PersonelDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PersonelDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PersonelDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PersonelDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PersonelDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PersonelDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PersonelDb] SET RECOVERY FULL 
GO
ALTER DATABASE [PersonelDb] SET  MULTI_USER 
GO
ALTER DATABASE [PersonelDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PersonelDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PersonelDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PersonelDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PersonelDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PersonelDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PersonelDb', N'ON'
GO
ALTER DATABASE [PersonelDb] SET QUERY_STORE = OFF
GO
USE [PersonelDb]
GO
/****** Object:  Table [dbo].[Tbl_Personel]    Script Date: 12.01.2023 13:54:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Personel](
	[Perid] [smallint] IDENTITY(1,1) NOT NULL,
	[PerAd] [varchar](10) NULL,
	[PerSoyad] [varchar](20) NULL,
	[PerSehir] [varchar](13) NULL,
	[PerMaas] [smallint] NULL,
	[PerDurum] [bit] NULL,
	[PerMeslek] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yonetici]    Script Date: 12.01.2023 13:54:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yonetici](
	[KullaniciAd] [varchar](10) NULL,
	[Sifre] [varchar](10) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Personel] ON 

INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (1, N'Baran', N'Yücedağ', N'Ankara', 2800, 1, N'Doktor')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (2, N'Emel', N'Çınar', N'Bursa', 2900, 1, N'Hemşire')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (3, N'Yavuz', N'Aslan', N'İstanbul', 3200, 1, N'Öğretmen')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (4, N'İsmail', N'Gemili', N'Bursa', 300, 0, N'Doktor')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (5, N'Eylül', N'Sarı', N'Ankara', 5780, 1, N'Mühendis')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (6, N'Mesut', N'Yücedağ', N'Aydın', 2500, 0, N'Öğretmen')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (7, N'Ali Mert', N'Yavuz', N'Malatya', 2600, 0, N'Doktor')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (8, N'Sinem', N'Tel', N'Ankara', 2750, 0, N'Yazılımcı')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (13, N'Ender', N'Kara', N'Bursa', 3200, 1, N'Mühendis')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (10, N'Arda', N'Güler', N'Yalova', 2800, 0, N'Öğretmen')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (11, N'Ömer', N'Dönmez', N'Malatya', 2500, 1, N'Mühendis')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (12, N'Mehmet', N'Yücedağ', N'Adana', 7500, 1, N'Antrenör')
SET IDENTITY_INSERT [dbo].[Tbl_Personel] OFF
GO
INSERT [dbo].[Tbl_Yonetici] ([KullaniciAd], [Sifre]) VALUES (N'admin34', N'123456')
INSERT [dbo].[Tbl_Yonetici] ([KullaniciAd], [Sifre]) VALUES (N'personel01', N'123456')
GO
USE [master]
GO
ALTER DATABASE [PersonelDb] SET  READ_WRITE 
GO
