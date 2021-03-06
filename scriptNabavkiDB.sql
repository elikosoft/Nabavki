USE [master]
GO
/****** Object:  Database [Nabavki]    Script Date: 21.05.2018 13:36:52 ******/
CREATE DATABASE [Nabavki] ON  PRIMARY 
( NAME = N'Nabavki', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLELIKOSOFT\MSSQL\DATA\Nabavki.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Nabavki_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLELIKOSOFT\MSSQL\DATA\Nabavki_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Nabavki].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Nabavki] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Nabavki] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Nabavki] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Nabavki] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Nabavki] SET ARITHABORT OFF 
GO
ALTER DATABASE [Nabavki] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Nabavki] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Nabavki] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Nabavki] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Nabavki] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Nabavki] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Nabavki] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Nabavki] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Nabavki] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Nabavki] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Nabavki] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Nabavki] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Nabavki] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Nabavki] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Nabavki] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Nabavki] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Nabavki] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Nabavki] SET RECOVERY FULL 
GO
ALTER DATABASE [Nabavki] SET  MULTI_USER 
GO
ALTER DATABASE [Nabavki] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Nabavki] SET DB_CHAINING OFF 
GO
USE [Nabavki]
GO
/****** Object:  User [test]    Script Date: 21.05.2018 13:36:52 ******/
CREATE USER [test] FOR LOGIN [test] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Artikli]    Script Date: 21.05.2018 13:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artikli](
	[IdArtikli] [int] IDENTITY(1,1) NOT NULL,
	[Sifra] [nvarchar](50) NULL,
	[Naziv] [nvarchar](150) NULL,
	[IdPartner] [int] NULL,
 CONSTRAINT [PK_Artikli] PRIMARY KEY CLUSTERED 
(
	[IdArtikli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Firma]    Script Date: 21.05.2018 13:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Firma](
	[IdFirma] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](150) NULL,
 CONSTRAINT [PK_Firma] PRIMARY KEY CLUSTERED 
(
	[IdFirma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Partner]    Script Date: 21.05.2018 13:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[IdPartner] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](150) NULL,
	[IdFirma] [int] NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[IdPartner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Firma] ON 

INSERT [dbo].[Firma] ([IdFirma], [Naziv]) VALUES (1, N'Elikosoft')
INSERT [dbo].[Firma] ([IdFirma], [Naziv]) VALUES (2, N'Linika')
INSERT [dbo].[Firma] ([IdFirma], [Naziv]) VALUES (3, N'Firma 1')
INSERT [dbo].[Firma] ([IdFirma], [Naziv]) VALUES (4, N'Firma 2')
INSERT [dbo].[Firma] ([IdFirma], [Naziv]) VALUES (5, N'Firma 3')
SET IDENTITY_INSERT [dbo].[Firma] OFF
SET IDENTITY_INSERT [dbo].[Partner] ON 

INSERT [dbo].[Partner] ([IdPartner], [Naziv], [IdFirma]) VALUES (1, N'Partner 1', 1)
INSERT [dbo].[Partner] ([IdPartner], [Naziv], [IdFirma]) VALUES (2, N'Partner 2', 1)
INSERT [dbo].[Partner] ([IdPartner], [Naziv], [IdFirma]) VALUES (3, N'Partner 3', 1)
INSERT [dbo].[Partner] ([IdPartner], [Naziv], [IdFirma]) VALUES (4, N'Linika', 1)
INSERT [dbo].[Partner] ([IdPartner], [Naziv], [IdFirma]) VALUES (5, N'Elikosoft', 2)
INSERT [dbo].[Partner] ([IdPartner], [Naziv], [IdFirma]) VALUES (6, N'Partner 4', 2)
INSERT [dbo].[Partner] ([IdPartner], [Naziv], [IdFirma]) VALUES (7, N'Partner5', 2)
INSERT [dbo].[Partner] ([IdPartner], [Naziv], [IdFirma]) VALUES (8, N'Partner 6', 3)
INSERT [dbo].[Partner] ([IdPartner], [Naziv], [IdFirma]) VALUES (9, N'Elikosoft', 4)
INSERT [dbo].[Partner] ([IdPartner], [Naziv], [IdFirma]) VALUES (10, N'Linika', 4)
INSERT [dbo].[Partner] ([IdPartner], [Naziv], [IdFirma]) VALUES (11, N'Partner 1', 5)
INSERT [dbo].[Partner] ([IdPartner], [Naziv], [IdFirma]) VALUES (12, N'Elikosoft', 5)
SET IDENTITY_INSERT [dbo].[Partner] OFF
ALTER TABLE [dbo].[Artikli]  WITH CHECK ADD  CONSTRAINT [FK_Artikli_Partner] FOREIGN KEY([IdPartner])
REFERENCES [dbo].[Partner] ([IdPartner])
GO
ALTER TABLE [dbo].[Artikli] CHECK CONSTRAINT [FK_Artikli_Partner]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_Firma] FOREIGN KEY([IdFirma])
REFERENCES [dbo].[Firma] ([IdFirma])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_Firma]
GO
USE [master]
GO
ALTER DATABASE [Nabavki] SET  READ_WRITE 
GO
