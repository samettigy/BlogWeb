USE [master]
GO
/****** Object:  Database [BlogWebDB]    Script Date: 5/9/2023 9:50:25 AM ******/
CREATE DATABASE [BlogWebDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BlogWebDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BlogWebDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BlogWebDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BlogWebDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BlogWebDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BlogWebDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BlogWebDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BlogWebDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BlogWebDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BlogWebDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BlogWebDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [BlogWebDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BlogWebDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BlogWebDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BlogWebDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BlogWebDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BlogWebDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BlogWebDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BlogWebDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BlogWebDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BlogWebDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BlogWebDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BlogWebDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BlogWebDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BlogWebDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BlogWebDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BlogWebDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BlogWebDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BlogWebDB] SET RECOVERY FULL 
GO
ALTER DATABASE [BlogWebDB] SET  MULTI_USER 
GO
ALTER DATABASE [BlogWebDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BlogWebDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BlogWebDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BlogWebDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BlogWebDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BlogWebDB', N'ON'
GO
USE [BlogWebDB]
GO
/****** Object:  Table [dbo].[TBLDENEYIM]    Script Date: 5/9/2023 9:50:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLDENEYIM](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[BASLIK] [varchar](50) NULL,
	[ALTBASLIK] [varchar](50) NULL,
	[ACIKLAMA] [varchar](1000) NULL,
	[TARIH] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLEGITIM]    Script Date: 5/9/2023 9:50:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLEGITIM](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[BASLIK] [varchar](50) NULL,
	[ALTBASLIK] [varchar](50) NULL,
	[ACIKLAMA] [varchar](250) NULL,
	[GNOT] [varchar](10) NULL,
	[TARIH] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLHAKKIMDA]    Script Date: 5/9/2023 9:50:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLHAKKIMDA](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](30) NULL,
	[SOYAD] [varchar](30) NULL,
	[ADRES] [varchar](150) NULL,
	[MAIL] [varchar](50) NULL,
	[TELEFON] [varchar](20) NULL,
	[KISANOT] [varchar](1000) NULL,
	[FOTOGRAF] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLHOBILER]    Script Date: 5/9/2023 9:50:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLHOBILER](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[HOBI] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLSERTIFIKALAR]    Script Date: 5/9/2023 9:50:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLSERTIFIKALAR](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[SERTIFIKALAR] [varchar](300) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLYETENEKLER]    Script Date: 5/9/2023 9:50:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLYETENEKLER](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[YETENEK] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TBLDENEYIM] ON 

INSERT [dbo].[TBLDENEYIM] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [TARIH]) VALUES (1, N'Panasonic', N'IT HelpDesk', N'Bilgi teknolojileri uzmanı, büyük veri merkezleri ile firmaların bilişim sistemlerini ayakta tutan kişidir. Bilgi teknoloji uzmanı bilgisayar ağlarını, fiziksel donanımları, yazılımları, sistemleri, sesli ve görüntülü iletişim araçlarını yönetip aktif ve sorunsuz bir şekilde çalışmasını sağlar.', N'2021 - 2022')
INSERT [dbo].[TBLDENEYIM] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [TARIH]) VALUES (2, N'Tofaş', N'IT HelpDesk', N'Bilgi teknolojileri uzmanı, büyük veri merkezleri ile firmaların bilişim sistemlerini ayakta tutan kişidir. Bilgi teknoloji uzmanı bilgisayar ağlarını, fiziksel donanımları, yazılımları, sistemleri, sesli ve görüntülü iletişim araçlarını yönetip aktif ve sorunsuz bir şekilde çalışmasını sağlar.', N'2020 - 2021')
SET IDENTITY_INSERT [dbo].[TBLDENEYIM] OFF
SET IDENTITY_INSERT [dbo].[TBLEGITIM] ON 

INSERT [dbo].[TBLEGITIM] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [GNOT], [TARIH]) VALUES (1, N'Kurtköy Çok Programlı Lisesi', N'Bilişim Teknolojileri', N'Bilgisayar Teknolojileri', N'75,35', N'2012-2016')
INSERT [dbo].[TBLEGITIM] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [GNOT], [TARIH]) VALUES (2, N'Namık Kemal Üniversitesi', N'Teknik Bilimler MYO', N'Bilgisayar Programcılığı', N'2,57', N'2017 - 2019')
SET IDENTITY_INSERT [dbo].[TBLEGITIM] OFF
SET IDENTITY_INSERT [dbo].[TBLHAKKIMDA] ON 

INSERT [dbo].[TBLHAKKIMDA] ([ID], [AD], [SOYAD], [ADRES], [MAIL], [TELEFON], [KISANOT], [FOTOGRAF]) VALUES (1, N'Samet', N'Tığ', N'Pendik İstanbul', N'samettig@hotmail.com', N'0545 262 1945', N'1998 yılında Giresun''da doğdum. 2019 yılında Namık Kemal Üniversitesi''nde eğitimimi tamamladım. ', NULL)
SET IDENTITY_INSERT [dbo].[TBLHAKKIMDA] OFF
SET IDENTITY_INSERT [dbo].[TBLHOBILER] ON 

INSERT [dbo].[TBLHOBILER] ([ID], [HOBI]) VALUES (1, N'Tiyatroya gitmeyi ve kitap okumayı sanatsal anlamda çok severim.')
INSERT [dbo].[TBLHOBILER] ([ID], [HOBI]) VALUES (2, N'Futbol, basketbol ve Voleybol oynamayı çok severim.')
SET IDENTITY_INSERT [dbo].[TBLHOBILER] OFF
SET IDENTITY_INSERT [dbo].[TBLSERTIFIKALAR] ON 

INSERT [dbo].[TBLSERTIFIKALAR] ([ID], [SERTIFIKALAR]) VALUES (1, N'Microsoft Azure Developer Associate')
INSERT [dbo].[TBLSERTIFIKALAR] ([ID], [SERTIFIKALAR]) VALUES (2, N'ICCW Yazılım Uzmanlığı')
INSERT [dbo].[TBLSERTIFIKALAR] ([ID], [SERTIFIKALAR]) VALUES (3, N'FSM Vakıf Üniversitesi Yazılım Uzmanlığı')
INSERT [dbo].[TBLSERTIFIKALAR] ([ID], [SERTIFIKALAR]) VALUES (4, N'MEB Kurumsal Kaynak Planlama ve Veri Analizi')
INSERT [dbo].[TBLSERTIFIKALAR] ([ID], [SERTIFIKALAR]) VALUES (5, N'İşkur MEB Kurumsal Kaynak Planlama ve Veri Analizi')
SET IDENTITY_INSERT [dbo].[TBLSERTIFIKALAR] OFF
SET IDENTITY_INSERT [dbo].[TBLYETENEKLER] ON 

INSERT [dbo].[TBLYETENEKLER] ([ID], [YETENEK]) VALUES (1, N'Yazılım süreç modellemeleri')
INSERT [dbo].[TBLYETENEKLER] ([ID], [YETENEK]) VALUES (2, N'İş akış diyagramları')
INSERT [dbo].[TBLYETENEKLER] ([ID], [YETENEK]) VALUES (3, N'Veri tabanı yönetim sistemi oluşturma')
INSERT [dbo].[TBLYETENEKLER] ([ID], [YETENEK]) VALUES (4, N'Backend tarafında kodlama')
INSERT [dbo].[TBLYETENEKLER] ([ID], [YETENEK]) VALUES (5, N'Kurumsal Mimariler ile proje geliştirme')
INSERT [dbo].[TBLYETENEKLER] ([ID], [YETENEK]) VALUES (6, N'Eğitmenlik')
INSERT [dbo].[TBLYETENEKLER] ([ID], [YETENEK]) VALUES (7, N'Agile mimarisinde proje geliştirme')
INSERT [dbo].[TBLYETENEKLER] ([ID], [YETENEK]) VALUES (8, N'Scrum masterlik')
SET IDENTITY_INSERT [dbo].[TBLYETENEKLER] OFF
USE [master]
GO
ALTER DATABASE [BlogWebDB] SET  READ_WRITE 
GO
