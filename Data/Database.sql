USE [master]
GO
/****** Object:  Database [FakeProduct]    Script Date: 08/18/2015 13:11:10 ******/
CREATE DATABASE [FakeProduct] ON  PRIMARY 
( NAME = N'FakeProduct', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\FakeProduct.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FakeProduct_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\FakeProduct_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FakeProduct] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FakeProduct].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FakeProduct] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [FakeProduct] SET ANSI_NULLS OFF
GO
ALTER DATABASE [FakeProduct] SET ANSI_PADDING OFF
GO
ALTER DATABASE [FakeProduct] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [FakeProduct] SET ARITHABORT OFF
GO
ALTER DATABASE [FakeProduct] SET AUTO_CLOSE ON
GO
ALTER DATABASE [FakeProduct] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [FakeProduct] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [FakeProduct] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [FakeProduct] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [FakeProduct] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [FakeProduct] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [FakeProduct] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [FakeProduct] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [FakeProduct] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [FakeProduct] SET  ENABLE_BROKER
GO
ALTER DATABASE [FakeProduct] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [FakeProduct] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [FakeProduct] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [FakeProduct] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [FakeProduct] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [FakeProduct] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [FakeProduct] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [FakeProduct] SET  READ_WRITE
GO
ALTER DATABASE [FakeProduct] SET RECOVERY SIMPLE
GO
ALTER DATABASE [FakeProduct] SET  MULTI_USER
GO
ALTER DATABASE [FakeProduct] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [FakeProduct] SET DB_CHAINING OFF
GO
USE [FakeProduct]
GO
/****** Object:  Table [dbo].[topic]    Script Date: 08/18/2015 13:11:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[topic](
	[userid] [varchar](50) NULL,
	[id] [varchar](50) NULL,
	[topic] [varchar](50) NULL,
	[image] [varchar](50) NULL,
	[decription] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[topic] ([userid], [id], [topic], [image], [decription]) VALUES (N'1003', N'1', N'garden', N'Bike Portalbanner2.jpg', N'good')
INSERT [dbo].[topic] ([userid], [id], [topic], [image], [decription]) VALUES (N'1003', N'2', N'blue', N'Bike Portalbanner2.jpg', N'sports bike')
INSERT [dbo].[topic] ([userid], [id], [topic], [image], [decription]) VALUES (N'1003', N'3', N'blue', N'Bike Portalbanner2.jpg', N'sports bike')
/****** Object:  Table [dbo].[Singlekey]    Script Date: 08/18/2015 13:11:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Singlekey](
	[Keyword] [varchar](90) NULL,
	[Score] [int] NULL,
	[flag] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Singlekey] ([Keyword], [Score], [flag]) VALUES (N'good', 2, N'0')
INSERT [dbo].[Singlekey] ([Keyword], [Score], [flag]) VALUES (N'bad', -1, N'0')
INSERT [dbo].[Singlekey] ([Keyword], [Score], [flag]) VALUES (N'nice', 1, N'1')
INSERT [dbo].[Singlekey] ([Keyword], [Score], [flag]) VALUES (N'excellent', 3, N'0')
INSERT [dbo].[Singlekey] ([Keyword], [Score], [flag]) VALUES (N'mast', 3, N'0')
/****** Object:  Table [dbo].[Products]    Script Date: 08/18/2015 13:11:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[Pid] [int] NULL,
	[PName] [varchar](100) NULL,
	[Pimg] [varchar](80) NULL,
	[type] [varchar](50) NULL,
	[Psdesc] [varchar](1000) NULL,
	[Pprice] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Products] ([Pid], [PName], [Pimg], [type], [Psdesc], [Pprice]) VALUES (101, N'Nokia Lumia 625 ', N'images\nokia\Nokia Lumia 625.jpg', N'Nokia', N'The device hosts a 4.7-inch IPS LCD capacitive touchscreen with pixel density of about 199 PPI', 7500)
INSERT [dbo].[Products] ([Pid], [PName], [Pimg], [type], [Psdesc], [Pprice]) VALUES (103, N'Nokia 105', N'images\nokia\nokia 105.jpg', N'Nokia', N'The Nokia 105 is an affordable phone from Nokia', 1000)
INSERT [dbo].[Products] ([Pid], [PName], [Pimg], [type], [Psdesc], [Pprice]) VALUES (104, N'Samsung Galaxy Grand Max', N'images\samsung\samsung galaxy grand max.jpg', N'Samsung', N'Samsung Galaxy Grand Max is a smartphone based on Android 4.4.4 KitKat', 12500)
INSERT [dbo].[Products] ([Pid], [PName], [Pimg], [type], [Psdesc], [Pprice]) VALUES (105, N'Samsung Galaxy S4', N'images\samsung\samsung galaxy s4.jpg', N'Samsung', N'The Samsung Galaxy S4 runs Android 4.2.2 Jelly Bean OS and can be upgraded to KitKat', 15000)
INSERT [dbo].[Products] ([Pid], [PName], [Pimg], [type], [Psdesc], [Pprice]) VALUES (106, N'Samsung Galaxy Core 2', N'images\samsung\Samsung Galaxy Core 2.jpg', N'Samsung', N'Samsung Galaxy Core 2 is a dual-SIM budget Android (KitKat) smartphone', 6000)
INSERT [dbo].[Products] ([Pid], [PName], [Pimg], [type], [Psdesc], [Pprice]) VALUES (107, N'Apple iPhone 6', N'images\apple\Apple iPhone 6.jpg', N'Apple', N'The Apple iPhone 6 features a 4.7-inch display with sapphire crystal glass protection', 42000)
INSERT [dbo].[Products] ([Pid], [PName], [Pimg], [type], [Psdesc], [Pprice]) VALUES (108, N'Apple iPhone 4S', N'images\apple\Apple iPhone 4S.jpg', N'Apple', N'Apple iPhone 4S 8 GB is a smartphone that runs Apple iOS 5', 12000)
INSERT [dbo].[Products] ([Pid], [PName], [Pimg], [type], [Psdesc], [Pprice]) VALUES (109, N'Apple iPhone 5S', N'images\apple\Apple iPhone 5S.jpg', N'Apple', N'Apple iPhone 5S is a smartphone that runs Apple''s iOS 7', 35000)
INSERT [dbo].[Products] ([Pid], [PName], [Pimg], [type], [Psdesc], [Pprice]) VALUES (110, N'Sony Xperia M2 Dual', N'images\sony\Sony Xperia M2 Dual.jpg', N'Sony', N'Sony Xperia M2 Dual runs on Android v4.3 Jelly Bean operating system', 11000)
INSERT [dbo].[Products] ([Pid], [PName], [Pimg], [type], [Psdesc], [Pprice]) VALUES (111, N'Sony Xperia E1 Dual', N'images\sony\Sony Xperia E1 Dual.jpg', N'Sony', N'Sony Xperia E1 Dual runs on Android 4.3 Jelly Bean operating system', 5000)
INSERT [dbo].[Products] ([Pid], [PName], [Pimg], [type], [Psdesc], [Pprice]) VALUES (112, N'Sony Xperia C3', N'images\sony\Sony Xperia C3.jpg', N'Sony', N'Sony Xperia C3 runs Android 4.4 KitKat', 16000)
INSERT [dbo].[Products] ([Pid], [PName], [Pimg], [type], [Psdesc], [Pprice]) VALUES (113, N'Nokia-X', N'images\nokia\Nokia-X.jpg', N'Nokia', N'The camera lacks autofocus', 15000)
INSERT [dbo].[Products] ([Pid], [PName], [Pimg], [type], [Psdesc], [Pprice]) VALUES (114, N'Nokia Lumia 720', N'images\nokia\Nokia Lumia 720.jpg', N'Nokia', N'The Nokia Lumia 720 runs on Microsoft Windows Phone 8 OS (upgradable)', 15000)
INSERT [dbo].[Products] ([Pid], [PName], [Pimg], [type], [Psdesc], [Pprice]) VALUES (115, N'Nokia Asha 501', N'images\nokia\Nokia Asha 501.jpg', N'Nokia', N'The Nokia Asha 501 features a 3.5-inch touchscreen display with a resolution of 320 x 240 pixels', 4000)
INSERT [dbo].[Products] ([Pid], [PName], [Pimg], [type], [Psdesc], [Pprice]) VALUES (116, N'Nokia Asha 210', N'images\nokia\Nokia Asha 210.jpg', N'Nokia', N'okia Asha 210 is the latest QWERTY offering from Nokia', 4500)
/****** Object:  Table [dbo].[order1]    Script Date: 08/18/2015 13:11:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[order1](
	[uid] [varchar](50) NULL,
	[items] [varchar](50) NULL,
	[quantity] [varchar](50) NULL,
	[cost] [varchar](50) NULL,
	[Total] [varchar](50) NULL,
	[modeofpayment] [varchar](50) NULL,
	[date] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[order1] ([uid], [items], [quantity], [cost], [Total], [modeofpayment], [date]) VALUES (N'1003', N'Apple iPhone 5S-1,Apple iPhone 4S-1,', N' 1 ,1 ,', N'12000', N'47000', N'COD', N'12-Jun-15')
INSERT [dbo].[order1] ([uid], [items], [quantity], [cost], [Total], [modeofpayment], [date]) VALUES (N'1001', N'Nokia 105-1,Apple iPhone 6-1,', N' 1 ,1 ,', N'42000', N'43000', N'COD', N'25-06-15')
/****** Object:  Table [dbo].[Multikey]    Script Date: 08/18/2015 13:11:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Multikey](
	[Keyword] [varchar](90) NULL,
	[Score] [int] NULL,
	[flag] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Multikey] ([Keyword], [Score], [flag]) VALUES (N'very good', 2, N'0')
INSERT [dbo].[Multikey] ([Keyword], [Score], [flag]) VALUES (N'very bad', -1, N'0')
INSERT [dbo].[Multikey] ([Keyword], [Score], [flag]) VALUES (N'very nice', 2, N'0')
INSERT [dbo].[Multikey] ([Keyword], [Score], [flag]) VALUES (N'very happy', 2, N'0')
INSERT [dbo].[Multikey] ([Keyword], [Score], [flag]) VALUES (N'very sad', -2, N'0')
INSERT [dbo].[Multikey] ([Keyword], [Score], [flag]) VALUES (N'not good', -1, N'0')
INSERT [dbo].[Multikey] ([Keyword], [Score], [flag]) VALUES (N'not bad', 1, N'0')
/****** Object:  Table [dbo].[Login]    Script Date: 08/18/2015 13:11:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[Fname] [varchar](50) NOT NULL,
	[Mname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[Contact] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Uid] [int] NOT NULL,
	[Gender] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Login] ([Fname], [Mname], [Lname], [Email], [Contact], [City], [Address], [Username], [Password], [Uid], [Gender]) VALUES (N'Neeraj', N'Prasad', N'Sawant', N'n.sawant@gmail.com', N'9855445566', N'Mumbai', N'Andheri', N'nrj', N'nrj', 1001, N'Male')
INSERT [dbo].[Login] ([Fname], [Mname], [Lname], [Email], [Contact], [City], [Address], [Username], [Password], [Uid], [Gender]) VALUES (N'rahul', N'rohit', N'dube', N'jfjfj@ghhg.com', N'9855442211', N'', N'', N'rahul', N'1234', 1002, N'Male')
INSERT [dbo].[Login] ([Fname], [Mname], [Lname], [Email], [Contact], [City], [Address], [Username], [Password], [Uid], [Gender]) VALUES (N'mary', N'antony', N'samy', N'maryantony32@yahoo.co.in', N'7045087277', N'mumbai', N'mira road', N'marysamy', N'samy', 1003, N'Female')
/****** Object:  Table [dbo].[FakeC]    Script Date: 08/18/2015 13:11:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FakeC](
	[Ip] [varchar](50) NULL,
	[Rate] [varchar](50) NULL,
	[Count] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[FakeC] ([Ip], [Rate], [Count]) VALUES (N'192.168.0.14', N'4', N'11')
/****** Object:  Table [dbo].[FakeB]    Script Date: 08/18/2015 13:11:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FakeB](
	[Ip] [varchar](50) NULL,
	[Brand1] [varchar](50) NULL,
	[Rate1] [varchar](50) NULL,
	[Count1] [varchar](50) NULL,
	[Brand2] [varchar](50) NULL,
	[Rate2] [varchar](50) NULL,
	[Count2] [varchar](50) NULL,
	[Brand3] [varchar](50) NULL,
	[Rate3] [varchar](50) NULL,
	[Count3] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[FakeB] ([Ip], [Brand1], [Rate1], [Count1], [Brand2], [Rate2], [Count2], [Brand3], [Rate3], [Count3]) VALUES (N'192.168.0.14', N'C', N'1', N'4', N'B', N'8', N'4', N'A', N'2', N'3')
/****** Object:  Table [dbo].[comment]    Script Date: 08/18/2015 13:11:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comment](
	[userid] [varchar](50) NULL,
	[comment] [varchar](50) NULL,
	[product_name] [varchar](50) NULL,
	[id] [varchar](50) NULL,
	[rate] [int] NULL,
	[Ip] [varchar](50) NULL,
	[product_company] [varchar](50) NULL,
	[Flag] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[comment] ([userid], [comment], [product_name], [id], [rate], [Ip], [product_company], [Flag]) VALUES (N'1001', N'Nice Phone in great price', N'Nokia 105', N'1', 2, N'192.168.0.14', N'A', N'Yes')
INSERT [dbo].[comment] ([userid], [comment], [product_name], [id], [rate], [Ip], [product_company], [Flag]) VALUES (N'1001', N'nice phone with great price', N'Nokia 105', N'2', 3, N'192.168.0.14', N'A', N'Yes')
INSERT [dbo].[comment] ([userid], [comment], [product_name], [id], [rate], [Ip], [product_company], [Flag]) VALUES (N'1001', N'nice phone with great price', N'Nokia 105', N'3', 1, N'192.168.0.14', N'A', N'Yes')
INSERT [dbo].[comment] ([userid], [comment], [product_name], [id], [rate], [Ip], [product_company], [Flag]) VALUES (N'1001', N'nice phone with great price', N'Nokia 105', N'4', 8, N'192.168.0.14', N'B', N'Yes')
INSERT [dbo].[comment] ([userid], [comment], [product_name], [id], [rate], [Ip], [product_company], [Flag]) VALUES (N'1002', N'nice phone with great price', N'Nokia 105', N'5', 8, N'192.168.0.14', N'B', N'Yes')
INSERT [dbo].[comment] ([userid], [comment], [product_name], [id], [rate], [Ip], [product_company], [Flag]) VALUES (N'1002', N'nice phone with great price', N'Nokia 105', N'6', 8, N'192.168.0.14', N'B', N'Yes')
INSERT [dbo].[comment] ([userid], [comment], [product_name], [id], [rate], [Ip], [product_company], [Flag]) VALUES (N'1002', N'nice phone with great price', N'Nokia 105', N'7', 8, N'192.168.0.14', N'B', N'Yes')
INSERT [dbo].[comment] ([userid], [comment], [product_name], [id], [rate], [Ip], [product_company], [Flag]) VALUES (N'1001', N'nice phone with great price', N'Nokia 105', N'8', 2, N'192.168.0.14', N'C', N'Yes')
INSERT [dbo].[comment] ([userid], [comment], [product_name], [id], [rate], [Ip], [product_company], [Flag]) VALUES (N'1001', N'nice phone with great price', N'Nokia 105', N'9', 2, N'192.168.0.14', N'C', N'Yes')
INSERT [dbo].[comment] ([userid], [comment], [product_name], [id], [rate], [Ip], [product_company], [Flag]) VALUES (N'1001', N'nice phone with great price', N'Nokia 105', N'10', 2, N'192.168.0.14', N'C', N'Yes')
INSERT [dbo].[comment] ([userid], [comment], [product_name], [id], [rate], [Ip], [product_company], [Flag]) VALUES (N'1002', N'nice phone with great price', N'Nokia 105', N'11', 1, N'192.168.0.14', N'C', N'Yes')
/****** Object:  Table [dbo].[cart]    Script Date: 08/18/2015 13:11:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cart](
	[User_id] [varchar](50) NULL,
	[Item] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[Cost] [int] NULL,
	[Total_cost] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[2key]    Script Date: 08/18/2015 13:11:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[2key](
	[Keywords] [varchar](120) NULL,
	[Score] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[2key] ([Keywords], [Score]) VALUES (N'v good', 1)
INSERT [dbo].[2key] ([Keywords], [Score]) VALUES (N'v bad', 2)
INSERT [dbo].[2key] ([Keywords], [Score]) VALUES (N'n nice', 2)
/****** Object:  Table [dbo].[1key]    Script Date: 08/18/2015 13:11:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[1key](
	[Keywords] [varchar](70) NULL,
	[Score] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
