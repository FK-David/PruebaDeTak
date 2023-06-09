USE [master]
GO
/****** Object:  Database [PruebaTak]    Script Date: 09/05/2023 13:42:47 ******/
CREATE DATABASE [PruebaTak]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PruebaTak', FILENAME = N'C:\Users\yoshu\Desktop\MSSQL15.MSSQLSERVER\MSSQL\DATA\PruebaTak.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PruebaTak_log', FILENAME = N'C:\Users\yoshu\Desktop\MSSQL15.MSSQLSERVER\MSSQL\DATA\PruebaTak_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PruebaTak] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PruebaTak].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PruebaTak] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PruebaTak] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PruebaTak] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PruebaTak] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PruebaTak] SET ARITHABORT OFF 
GO
ALTER DATABASE [PruebaTak] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PruebaTak] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PruebaTak] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PruebaTak] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PruebaTak] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PruebaTak] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PruebaTak] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PruebaTak] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PruebaTak] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PruebaTak] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PruebaTak] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PruebaTak] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PruebaTak] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PruebaTak] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PruebaTak] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PruebaTak] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PruebaTak] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PruebaTak] SET RECOVERY FULL 
GO
ALTER DATABASE [PruebaTak] SET  MULTI_USER 
GO
ALTER DATABASE [PruebaTak] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PruebaTak] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PruebaTak] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PruebaTak] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PruebaTak] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PruebaTak] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PruebaTak', N'ON'
GO
ALTER DATABASE [PruebaTak] SET QUERY_STORE = OFF
GO
USE [PruebaTak]
GO
/****** Object:  Table [dbo].[Colaboradores]    Script Date: 09/05/2023 13:42:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colaboradores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[LastName] [nvarchar](max) NULL,
	[DateN] [date] NULL,
	[EstadoCivil] [nchar](10) NULL,
	[GradoAC] [nvarchar](max) NULL,
	[Direccion] [nvarchar](max) NULL,
 CONSTRAINT [PK_Colaboradores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Colaboradores] ON 

INSERT [dbo].[Colaboradores] ([Id], [Name], [LastName], [DateN], [EstadoCivil], [GradoAC], [Direccion]) VALUES (1, N'David', N'Lutin', CAST(N'2001-03-10' AS Date), N'Soltero   ', N'Diversificado', N'Lo de Fuentes')
INSERT [dbo].[Colaboradores] ([Id], [Name], [LastName], [DateN], [EstadoCivil], [GradoAC], [Direccion]) VALUES (2, N'Raul', N'Gomez', CAST(N'2000-05-01' AS Date), N'Casado    ', N'6to Primaria', N'Colinas')
INSERT [dbo].[Colaboradores] ([Id], [Name], [LastName], [DateN], [EstadoCivil], [GradoAC], [Direccion]) VALUES (3, N'Jose', N'Garcia', CAST(N'2002-04-12' AS Date), N'Soltero   ', N'Diversificado', N'Zona 10')
INSERT [dbo].[Colaboradores] ([Id], [Name], [LastName], [DateN], [EstadoCivil], [GradoAC], [Direccion]) VALUES (4, N'Vivi', N'Lutin ', CAST(N'2005-04-05' AS Date), N'Soltera   ', N'Basicos', N'Lo de Fuentes')
INSERT [dbo].[Colaboradores] ([Id], [Name], [LastName], [DateN], [EstadoCivil], [GradoAC], [Direccion]) VALUES (6, N'Sky', N'Santos', CAST(N'2000-07-31' AS Date), N'Casada    ', N'Diversificado', N'Miverva')
SET IDENTITY_INSERT [dbo].[Colaboradores] OFF
GO
USE [master]
GO
ALTER DATABASE [PruebaTak] SET  READ_WRITE 
GO
