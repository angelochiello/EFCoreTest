USE [master]
GO
/****** Object:  Database [Living]    Script Date: 05/08/2016 10:27:59 ******/
CREATE DATABASE [Living]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Living', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Living.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Living_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Living_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Living] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Living].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Living] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Living] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Living] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Living] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Living] SET ARITHABORT OFF 
GO
ALTER DATABASE [Living] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Living] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Living] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Living] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Living] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Living] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Living] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Living] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Living] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Living] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Living] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Living] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Living] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Living] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Living] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Living] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Living] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Living] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Living] SET  MULTI_USER 
GO
ALTER DATABASE [Living] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Living] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Living] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Living] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Living] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Living]
GO
/****** Object:  Table [dbo].[Human]    Script Date: 05/08/2016 10:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Human](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CurrentAge] [int] NOT NULL,
	[IsMale] [bit] NOT NULL,
 CONSTRAINT [PK_Human] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Living]    Script Date: 05/08/2016 10:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Living](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSpecificBeing] [int] NOT NULL,
	[LifeExpect] [int] NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_Living] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mammal]    Script Date: 05/08/2016 10:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mammal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MammalName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Mammal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Human] ON 

INSERT [dbo].[Human] ([Id], [CurrentAge], [IsMale]) VALUES (1, 23, 0)
INSERT [dbo].[Human] ([Id], [CurrentAge], [IsMale]) VALUES (2, 44, 1)
INSERT [dbo].[Human] ([Id], [CurrentAge], [IsMale]) VALUES (3, 78, 1)
INSERT [dbo].[Human] ([Id], [CurrentAge], [IsMale]) VALUES (4, 6, 0)
SET IDENTITY_INSERT [dbo].[Human] OFF
SET IDENTITY_INSERT [dbo].[Living] ON 

INSERT [dbo].[Living] ([Id], [IdSpecificBeing], [LifeExpect], [Type]) VALUES (1, 1, 80, 0)
INSERT [dbo].[Living] ([Id], [IdSpecificBeing], [LifeExpect], [Type]) VALUES (2, 2, 75, 0)
INSERT [dbo].[Living] ([Id], [IdSpecificBeing], [LifeExpect], [Type]) VALUES (3, 3, 75, 0)
INSERT [dbo].[Living] ([Id], [IdSpecificBeing], [LifeExpect], [Type]) VALUES (4, 4, 80, 0)
INSERT [dbo].[Living] ([Id], [IdSpecificBeing], [LifeExpect], [Type]) VALUES (5, 1, 25, 1)
INSERT [dbo].[Living] ([Id], [IdSpecificBeing], [LifeExpect], [Type]) VALUES (6, 2, 5, 1)
INSERT [dbo].[Living] ([Id], [IdSpecificBeing], [LifeExpect], [Type]) VALUES (7, 3, 15, 1)
INSERT [dbo].[Living] ([Id], [IdSpecificBeing], [LifeExpect], [Type]) VALUES (8, 4, 10, 1)
SET IDENTITY_INSERT [dbo].[Living] OFF
SET IDENTITY_INSERT [dbo].[Mammal] ON 

INSERT [dbo].[Mammal] ([Id], [MammalName]) VALUES (1, N'Horse')
INSERT [dbo].[Mammal] ([Id], [MammalName]) VALUES (2, N'Pig')
INSERT [dbo].[Mammal] ([Id], [MammalName]) VALUES (3, N'Dog')
INSERT [dbo].[Mammal] ([Id], [MammalName]) VALUES (4, N'Cat')
SET IDENTITY_INSERT [dbo].[Mammal] OFF
USE [master]
GO
ALTER DATABASE [Living] SET  READ_WRITE 
GO
