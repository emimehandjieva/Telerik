USE [master]
GO
/****** Object:  Database [Geography]    Script Date: 9.10.2015 г. 17:18:52 ******/
CREATE DATABASE [Geography]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Geography', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Geography.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Geography_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Geography_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Geography] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Geography].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Geography] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Geography] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Geography] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Geography] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Geography] SET ARITHABORT OFF 
GO
ALTER DATABASE [Geography] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Geography] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Geography] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Geography] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Geography] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Geography] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Geography] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Geography] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Geography] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Geography] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Geography] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Geography] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Geography] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Geography] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Geography] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Geography] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Geography] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Geography] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Geography] SET  MULTI_USER 
GO
ALTER DATABASE [Geography] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Geography] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Geography] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Geography] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Geography] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Geography]
GO
/****** Object:  Table [dbo].[ADDRESS]    Script Date: 9.10.2015 г. 17:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADDRESS](
	[id] [int] NOT NULL,
	[address_text] [nvarchar](max) NOT NULL,
	[town_id] [int] NOT NULL,
 CONSTRAINT [PK_ADDRESS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CONTINENT]    Script Date: 9.10.2015 г. 17:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONTINENT](
	[id] [int] NOT NULL,
	[name] [nchar](20) NOT NULL,
 CONSTRAINT [PK_CONTINENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COUNTRY]    Script Date: 9.10.2015 г. 17:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COUNTRY](
	[id] [int] NOT NULL,
	[name] [nchar](20) NOT NULL,
	[country_id] [int] NOT NULL,
 CONSTRAINT [PK_COUNTRY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PERSON]    Script Date: 9.10.2015 г. 17:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSON](
	[id] [int] NOT NULL,
	[first_name] [nchar](20) NOT NULL,
	[last_name] [nchar](20) NOT NULL,
	[address_id] [int] NOT NULL,
 CONSTRAINT [PK_PERSON] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TOWN]    Script Date: 9.10.2015 г. 17:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOWN](
	[id] [int] NOT NULL,
	[name] [nchar](20) NOT NULL,
	[country_id] [int] NOT NULL,
 CONSTRAINT [PK_TOWN] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (1, N'Wall Street 1', 1)
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (2, N'Rue du Blabla', 2)
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (3, N'Ul.Malko Turnovo 1', 3)
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (4, N'Sorry str , Hockey 21', 4)
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (5, N'Hut number 1', 5)
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (6, N'Nagaragawa 23', 6)
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (7, N'Wats Hau Ni Ma', 7)
INSERT [dbo].[CONTINENT] ([id], [name]) VALUES (1, N'Europe              ')
INSERT [dbo].[CONTINENT] ([id], [name]) VALUES (2, N'North America       ')
INSERT [dbo].[CONTINENT] ([id], [name]) VALUES (3, N'Asia                ')
INSERT [dbo].[CONTINENT] ([id], [name]) VALUES (4, N'Atlantis            ')
INSERT [dbo].[COUNTRY] ([id], [name], [country_id]) VALUES (1, N'USA                 ', 2)
INSERT [dbo].[COUNTRY] ([id], [name], [country_id]) VALUES (2, N'France              ', 1)
INSERT [dbo].[COUNTRY] ([id], [name], [country_id]) VALUES (3, N'Bulgaria            ', 1)
INSERT [dbo].[COUNTRY] ([id], [name], [country_id]) VALUES (4, N'Canada              ', 2)
INSERT [dbo].[COUNTRY] ([id], [name], [country_id]) VALUES (5, N'Atlantis            ', 4)
INSERT [dbo].[COUNTRY] ([id], [name], [country_id]) VALUES (6, N'Japan               ', 3)
INSERT [dbo].[COUNTRY] ([id], [name], [country_id]) VALUES (7, N'China               ', 3)
INSERT [dbo].[PERSON] ([id], [first_name], [last_name], [address_id]) VALUES (1, N'John                ', N'Smith               ', 1)
INSERT [dbo].[PERSON] ([id], [first_name], [last_name], [address_id]) VALUES (2, N'Mathilda            ', N'Lapetitte           ', 2)
INSERT [dbo].[PERSON] ([id], [first_name], [last_name], [address_id]) VALUES (3, N'Ivan                ', N'Dimitrov            ', 3)
INSERT [dbo].[PERSON] ([id], [first_name], [last_name], [address_id]) VALUES (4, N'Robyn               ', N'Scheratski          ', 4)
INSERT [dbo].[PERSON] ([id], [first_name], [last_name], [address_id]) VALUES (5, N'That Chick From     ', N'The animated movie  ', 5)
INSERT [dbo].[PERSON] ([id], [first_name], [last_name], [address_id]) VALUES (6, N'Hiro                ', N'Nakamura            ', 6)
INSERT [dbo].[PERSON] ([id], [first_name], [last_name], [address_id]) VALUES (7, N'Li                  ', N'Sun                 ', 7)
INSERT [dbo].[TOWN] ([id], [name], [country_id]) VALUES (1, N'New York            ', 1)
INSERT [dbo].[TOWN] ([id], [name], [country_id]) VALUES (2, N'Paris               ', 2)
INSERT [dbo].[TOWN] ([id], [name], [country_id]) VALUES (3, N'Sofia               ', 3)
INSERT [dbo].[TOWN] ([id], [name], [country_id]) VALUES (4, N'Toronto             ', 4)
INSERT [dbo].[TOWN] ([id], [name], [country_id]) VALUES (5, N'Atlantis            ', 5)
INSERT [dbo].[TOWN] ([id], [name], [country_id]) VALUES (6, N'Tokyo               ', 6)
INSERT [dbo].[TOWN] ([id], [name], [country_id]) VALUES (7, N'Bei Jing            ', 7)
ALTER TABLE [dbo].[ADDRESS]  WITH CHECK ADD  CONSTRAINT [FK_ADDRESS_TOWN] FOREIGN KEY([town_id])
REFERENCES [dbo].[TOWN] ([id])
GO
ALTER TABLE [dbo].[ADDRESS] CHECK CONSTRAINT [FK_ADDRESS_TOWN]
GO
ALTER TABLE [dbo].[COUNTRY]  WITH CHECK ADD  CONSTRAINT [FK_COUNTRY_CONTINENT] FOREIGN KEY([country_id])
REFERENCES [dbo].[CONTINENT] ([id])
GO
ALTER TABLE [dbo].[COUNTRY] CHECK CONSTRAINT [FK_COUNTRY_CONTINENT]
GO
ALTER TABLE [dbo].[PERSON]  WITH CHECK ADD  CONSTRAINT [FK_PERSON_ADDRESS] FOREIGN KEY([address_id])
REFERENCES [dbo].[ADDRESS] ([id])
GO
ALTER TABLE [dbo].[PERSON] CHECK CONSTRAINT [FK_PERSON_ADDRESS]
GO
ALTER TABLE [dbo].[TOWN]  WITH CHECK ADD  CONSTRAINT [FK_TOWN_COUNTRY] FOREIGN KEY([country_id])
REFERENCES [dbo].[COUNTRY] ([id])
GO
ALTER TABLE [dbo].[TOWN] CHECK CONSTRAINT [FK_TOWN_COUNTRY]
GO
USE [master]
GO
ALTER DATABASE [Geography] SET  READ_WRITE 
GO
