USE [master]
GO
/****** Object:  Database [BiometricRegistration]    Script Date: 5/5/2019 2:29:51 AM ******/
CREATE DATABASE [BiometricRegistration]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BiometricRegistration', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BiometricRegistration.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BiometricRegistration_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BiometricRegistration_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BiometricRegistration] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BiometricRegistration].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BiometricRegistration] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BiometricRegistration] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BiometricRegistration] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BiometricRegistration] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BiometricRegistration] SET ARITHABORT OFF 
GO
ALTER DATABASE [BiometricRegistration] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BiometricRegistration] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BiometricRegistration] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BiometricRegistration] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BiometricRegistration] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BiometricRegistration] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BiometricRegistration] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BiometricRegistration] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BiometricRegistration] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BiometricRegistration] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BiometricRegistration] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BiometricRegistration] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BiometricRegistration] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BiometricRegistration] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BiometricRegistration] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BiometricRegistration] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BiometricRegistration] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BiometricRegistration] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BiometricRegistration] SET  MULTI_USER 
GO
ALTER DATABASE [BiometricRegistration] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BiometricRegistration] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BiometricRegistration] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BiometricRegistration] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BiometricRegistration] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BiometricRegistration] SET QUERY_STORE = OFF
GO
USE [BiometricRegistration]
GO
/****** Object:  Table [dbo].[tbl_Registration]    Script Date: 5/5/2019 2:29:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Registration](
	[ID] [bigint] NULL,
	[RegistrationNumber] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Photo] [image] NULL,
	[FingerPrint] [image] NULL,
	[iid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbl_Registration] PRIMARY KEY CLUSTERED 
(
	[iid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Registration] ON 

INSERT [dbo].[tbl_Registration] ([ID], [RegistrationNumber], [FullName], [Photo], [FingerPrint], [iid]) VALUES (1, N'121', N'Porosh', 0x, 0x, 32)
INSERT [dbo].[tbl_Registration] ([ID], [RegistrationNumber], [FullName], [Photo], [FingerPrint], [iid]) VALUES (12, N'0121', N'Porosh', 0x, 0x, 33)
SET IDENTITY_INSERT [dbo].[tbl_Registration] OFF
USE [master]
GO
ALTER DATABASE [BiometricRegistration] SET  READ_WRITE 
GO
