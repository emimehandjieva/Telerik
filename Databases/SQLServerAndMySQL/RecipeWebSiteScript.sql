USE [master]
GO
/****** Object:  Database [RecipeWebSite]    Script Date: 10/07/2015 12:59:13 ******/
CREATE DATABASE [RecipeWebSite] ON  PRIMARY 
( NAME = N'RecipeWebSite', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.EMISQL\MSSQL\DATA\RecipeWebSite.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RecipeWebSite_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.EMISQL\MSSQL\DATA\RecipeWebSite_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RecipeWebSite] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RecipeWebSite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RecipeWebSite] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [RecipeWebSite] SET ANSI_NULLS OFF
GO
ALTER DATABASE [RecipeWebSite] SET ANSI_PADDING OFF
GO
ALTER DATABASE [RecipeWebSite] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [RecipeWebSite] SET ARITHABORT OFF
GO
ALTER DATABASE [RecipeWebSite] SET AUTO_CLOSE ON
GO
ALTER DATABASE [RecipeWebSite] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [RecipeWebSite] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [RecipeWebSite] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [RecipeWebSite] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [RecipeWebSite] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [RecipeWebSite] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [RecipeWebSite] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [RecipeWebSite] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [RecipeWebSite] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [RecipeWebSite] SET  ENABLE_BROKER
GO
ALTER DATABASE [RecipeWebSite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [RecipeWebSite] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [RecipeWebSite] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [RecipeWebSite] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [RecipeWebSite] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [RecipeWebSite] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [RecipeWebSite] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [RecipeWebSite] SET  READ_WRITE
GO
ALTER DATABASE [RecipeWebSite] SET RECOVERY SIMPLE
GO
ALTER DATABASE [RecipeWebSite] SET  MULTI_USER
GO
ALTER DATABASE [RecipeWebSite] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [RecipeWebSite] SET DB_CHAINING OFF
GO
USE [RecipeWebSite]
GO
/****** Object:  Table [dbo].[Journal]    Script Date: 10/07/2015 12:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Journal](
	[Date] [datetime] NULL,
	[Operation] [varchar](6) NULL,
	[Table_name] [varchar](20) NULL,
	[Old_Values] [varchar](max) NULL,
	[New_values] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A400C97858 AS DateTime), N'Insert', N'Users', NULL, N'1;emimehandjieva@gmail.com;darsi2011;Just the Master and creator of all that is this website;admin')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A400CA02EC AS DateTime), N'Update', N'Users', N'1;emimehandjieva@gmail.com;darsi2011;Just the Master and creator of all that is this website;admin', N'1;emimehandjieva@gmail.com;darsi2011;Just the Master and creator of all that is this website;admin')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A400CA24C6 AS DateTime), N'Insert', N'Users', NULL, N'2;ivanovanov@abv.bg;123456;I am the first user! Follow my lead;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500B1AAED AS DateTime), N'Update', N'Users', N'1;emimehandjieva@gmail.com;darsi2011;Just the Master and creator of all that is this website;admin', N'1;emimehandjieva@gmail.com;darsi2011;Just the Master and creator of all that is this website;admin')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500B1AF51 AS DateTime), N'Update', N'Users', N'2;ivanovanov@abv.bg;123456;I am the first user! Follow my lead;user', N'2;ivanovanov@abv.bg;123456;I am the first user! Follow my lead;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61BED AS DateTime), N'Insert', N'Ingredients', NULL, N'1;Пиле                                    ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C05 AS DateTime), N'Insert', N'Ingredients', NULL, N'5;Мляко                                   ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C0A AS DateTime), N'Insert', N'Ingredients', NULL, N'4;Ориз                                    ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C10 AS DateTime), N'Insert', N'Ingredients', NULL, N'3;Картофи                                 ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C15 AS DateTime), N'Insert', N'Ingredients', NULL, N'2;Лук                                     ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C1A AS DateTime), N'Insert', N'Ingredients', NULL, N'6;Гъби                                    ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C1F AS DateTime), N'Insert', N'Ingredients', NULL, N'7;Бира                                    ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C24 AS DateTime), N'Insert', N'Ingredients', NULL, N'8;Домати                                  ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C29 AS DateTime), N'Insert', N'Ingredients', NULL, N'9;Брашно                                  ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C2E AS DateTime), N'Insert', N'Ingredients', NULL, N'10;Яйца                                    ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C32 AS DateTime), N'Insert', N'Ingredients', NULL, N'11;Захар                                   ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C37 AS DateTime), N'Insert', N'Ingredients', NULL, N'12;Канела                                  ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C3C AS DateTime), N'Insert', N'Ingredients', NULL, N'13;Водка                                   ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C41 AS DateTime), N'Insert', N'Ingredients', NULL, N'14;Сок от боровинки                        ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C46 AS DateTime), N'Insert', N'Ingredients', NULL, N'15;Сок от портокал                         ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C4B AS DateTime), N'Insert', N'Ingredients', NULL, N'16;Текила                                  ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C50 AS DateTime), N'Insert', N'Ingredients', NULL, N'17;Сирене                                  ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C55 AS DateTime), N'Insert', N'Ingredients', NULL, N'18;Кашкавал                                ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C59 AS DateTime), N'Insert', N'Ingredients', NULL, N'19;Прясно мляко                            ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D61C5E AS DateTime), N'Insert', N'Ingredients', NULL, N'20;Кисело мляко                            ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D668DF AS DateTime), N'Insert', N'Categories', NULL, N'1;Супи                                              ;Течна храна,която хората обичат да консумират зимно време,за да се стоплят')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D668E4 AS DateTime), N'Insert', N'Categories', NULL, N'2;Десерти                                           ;Смисълът на живота')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D668E9 AS DateTime), N'Insert', N'Categories', NULL, N'3;Основни                                           ;Същинската част от храненето')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D668EE AS DateTime), N'Insert', N'Categories', NULL, N'4;Напитки                                           ;Течни изкушения')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D668F2 AS DateTime), N'Insert', N'Categories', NULL, N'5;Коледни рецепти                                   ;За това специално време от годината')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D69BF5 AS DateTime), N'Insert', N'Categories', NULL, N'6;Специални поводи                                  ;Изискани рецепти за всички особено важни дни от Вашия живот')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D6BF42 AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D6BF6B AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D6BF72 AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D6BF78 AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D6BF7E AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D6BF84 AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D6BF8A AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D6BF92 AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D702FC AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D70302 AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D7030A AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D70313 AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D70319 AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D7031F AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D70326 AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D7AEA9 AS DateTime), N'Insert', N'Steps', NULL, N'1;1;Загрейте леко мазнината (1-2 минути)')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E9F462 AS DateTime), N'Insert', N'Ingredients', NULL, N'21;Морков                                  ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500EA0195 AS DateTime), N'Insert', N'Ingredients', NULL, N'22;Черен пипер                             ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500EA3720 AS DateTime), N'Insert', N'Ingredients', NULL, N'23;Лимонов сок                             ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500EA3C36 AS DateTime), N'Insert', N'Ingredients', NULL, N'24;Олио                                    ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500EA50EA AS DateTime), N'Insert', N'Ingredients', NULL, N'25;Сода бикарбонат                         ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500EA662E AS DateTime), N'Insert', N'Ingredients', NULL, N'26;Какао                                   ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500EA8616 AS DateTime), N'Insert', N'Ingredients', NULL, N'27;Фиде                                    ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500EA8A13 AS DateTime), N'Insert', N'Ingredients', NULL, N'28;Сол                                     ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500EAAED5 AS DateTime), N'Insert', N'Ingredients', NULL, N'29;Царевично нишесте                       ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500ED91B9 AS DateTime), N'Insert', N'Ingredients', NULL, N'30;мед                                     ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500ED9A72 AS DateTime), N'Update', N'Ingredients', N'30;мед                                     ', N'30;Мед                                     ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500F07759 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500F07903 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500F079F9 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500F07B78 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500F07F7B AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500F082AF AS DateTime), N'Update', N'Recipes', NULL, N'1;Пържени яйца                  ;3;199;3;1;Това е моето любимо ядене;1')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500F0856D AS DateTime), N'Update', N'Recipes', NULL, N'2;Меден кекс                    ;45;460;2;1;Това е рецепта,която си измислих вчера;1')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500F0882A AS DateTime), N'Update', N'Recipes', NULL, N'3;Пилешка супа                  ;30;46;1;1;Зимна супичка;2')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500F08D2E AS DateTime), N'Update', N'Recipes', NULL, N'4;Пържено пиле                  ;25;312;3;2;Хапчици ;4')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500F09139 AS DateTime), N'Update', N'Recipes', NULL, N'5;Пиле с ориз                   ;70;126;3;1;Най-добре да се приготви събота на обяд;3')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500F0B674 AS DateTime), N'Insert', N'Steps', NULL, N'1;6;Отворете бирата')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500F0C3B5 AS DateTime), N'Insert', N'Steps', NULL, N'2;6;По желание изсипете бирата в чаша')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500F0CF12 AS DateTime), N'Insert', N'Steps', NULL, N'3;6;Наздраве!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A50104F0F2 AS DateTime), N'Update', N'Recipes', N'1;Пържени яйца                  ;3;199;3;1;Това е моето любимо ядене;1', N'1;Пържени яйца                  ;3;199;3;1;Това е моето любимо ядене;1')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A50104F549 AS DateTime), N'Update', N'Recipes', N'2;Меден кекс                    ;45;460;2;1;Това е рецепта,която си измислих вчера;1', N'2;Меден кекс                    ;45;460;2;1;Това е рецепта,която си измислих вчера;1')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A50104FC6A AS DateTime), N'Update', N'Recipes', N'3;Пилешка супа                  ;30;46;1;1;Зимна супичка;2', N'3;Пилешка супа                  ;30;46;1;1;Зимна супичка;2')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A50104FE6F AS DateTime), N'Update', N'Recipes', N'4;Пържено пиле                  ;25;312;3;2;Хапчици ;4', N'4;Пържено пиле                  ;25;312;3;2;Хапчици ;4')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A50105023B AS DateTime), N'Update', N'Recipes', N'5;Пиле с ориз                   ;70;126;3;1;Най-добре да се приготви събота на обяд;3', N'5;Пиле с ориз                   ;70;126;3;1;Най-добре да се приготви събота на обяд;3')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D7D23C AS DateTime), N'Insert', N'Steps', NULL, N'2;1;Добавете в мазнината щипка сол и щипка червен пипер ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D7FD7D AS DateTime), N'Insert', N'Steps', NULL, N'3;1;Счупете яйцата в ръба на най-близката маса (леко!) и ги ги изсипете в мазнината.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D84CC8 AS DateTime), N'Insert', N'Steps', NULL, N'4;1;Пържете на умерен огън (не най-силната степен на котлона), докато желтъкът се забули леко от побелелия белтък или не стане светло жълт ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D874B0 AS DateTime), N'Insert', N'Steps', NULL, N'5;1;По желание добавете черен пипер , чубрица или счукан чесън,разбъркан с кисело мляко и мъничко сол.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D87CC3 AS DateTime), N'Insert', N'Steps', NULL, N'6;1;Да Ви е сладко!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A700B7ECCB AS DateTime), N'Update', N'Users', N'1;emimehandjieva@gmail.com;darsi2011;Just the Master and creator of all that is this website;admin', N'1;emimehandjieva@gmail.com;darsi2011;Just the Master and creator of all that is this website;admin')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A700B7F718 AS DateTime), N'Update', N'Users', N'1;emimehandjieva@gmail.com;darsi2011;Just the Master and creator of all that is this website;admin', N'1;emimehandjieva@gmail.com;darsi2011;Just the Master and creator of all that is this website;admin')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A700B961AC AS DateTime), N'Update', N'Users', N'1;emimehandjieva@gmail.com;darsi2011;Just the Master and creator of all that is this website;admin', N'1;emimehandjieva@gmail.com;darsi2011;Just the Master and creator of all that is this website;admin')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A700BD18EB AS DateTime), N'Update', N'Users', N'1;emimehandjieva@gmail.com;darsi2011;Just the Master and creator of all that is this website;admin', N'1;;darsi2011;Just the Master and creator of all that is this website;admin')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A700BD9CF7 AS DateTime), N'Update', N'Users', N'1;;darsi2011;Just the Master and creator of all that is this website;admin', N'1;emiadmin@abv.bg;darsi2011;Just the Master and creator of all that is this website;admin')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A700C2C8DF AS DateTime), N'Update', N'Users', N'1;emiadmin@abv.bg;darsi2011;Just the Master and creator of all that is this website;admin', N'1;emiadmin@abv.bg;darsi2011;;admin')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A700C2CF2D AS DateTime), N'Update', N'Users', N'1;emiadmin@abv.bg;darsi2011;;admin', N'1;emiadmin@abv.bg;darsi2011;;admin')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A700C2E01F AS DateTime), N'Update', N'Users', N'1;emiadmin@abv.bg;darsi2011;;admin', N'1;emiadmin@abv.bg;darsi2011;;admin')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A700C39712 AS DateTime), N'Update', N'Users', N'1;emiadmin@abv.bg;darsi2011;;admin', N'1;emiadmin@abv.bg;darsi2011;Обичам дългите разходки по плажа, рокличките и Рамщайн. Най-съкровената ми мечта е да стана програмист,защото така ще получавам прилични пари без да се натоварвам много и без да ми се иска да се самоубия заради безсмислието и скуката на работното място.Ако работя и с баи данни повече, ще е прекрасно.Както се вижда, не ме бива много-много с фронт енд нещата, така че се надявам да избегна този момент в кариерата си, макар и да ме съмнява.;admin')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A700C7CF18 AS DateTime), N'Update', N'Users', N'1;emiadmin@abv.bg;darsi2011;Обичам дългите разходки по плажа, рокличките и Рамщайн. Най-съкровената ми мечта е да стана програмист,защото така ще получавам прилични пари без да се натоварвам много и без да ми се иска да се самоубия заради безсмислието и скуката на работното място.Ако работя и с баи данни повече, ще е прекрасно.Както се вижда, не ме бива много-много с фронт енд нещата, така че се надявам да избегна този момент в кариерата си, макар и да ме съмнява.;admin', N'1;emiadmin@abv.bg;darsi2012;Обичам дългите разходки по плажа, рокличките и Рамщайн. Най-съкровената ми мечта е да стана програмист,защото така ще получавам прилични пари без да се натоварвам много и без да ми се иска да се самоубия заради безсмислието и скуката на работното място.Ако работя и с баи данни повече, ще е прекрасно.Както се вижда, не ме бива много-много с фронт енд нещата, така че се надявам да избегна този момент в кариерата си, макар и да ме съмнява.;admin')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A700DFE5FA AS DateTime), N'Update', N'Recipes', N'1;Пържени яйца                  ;3;199;3;1;Това е моето любимо ядене;1', N'1;Пържени яйца                  ;10;199;3;1;Това е моето любимо ядене;1')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4AC013C4E16 AS DateTime), N'Insert', N'Recipes', NULL, N'16;Палачинки                     ;40;400;2;1;Това е за мен неделя сутринта;2')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4AC01483EBA AS DateTime), N'Insert', N'Recipes', NULL, N'17;Коледни сладки                ;360;486;1;1;Весела Коледа;1')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4AC014FE814 AS DateTime), N'Insert', N'Users', NULL, N'3;newuser@abv.bg;blaaaa;I like cooking;')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4AC01503790 AS DateTime), N'Update', N'Users', N'1;emiadmin@abv.bg;darsi2012;Обичам дългите разходки по плажа, рокличките и Рамщайн. Най-съкровената ми мечта е да стана програмист,защото така ще получавам прилични пари без да се натоварвам много и без да ми се иска да се самоубия заради безсмислието и скуката на работното място.Ако работя и с баи данни повече, ще е прекрасно.Както се вижда, не ме бива много-много с фронт енд нещата, така че се надявам да избегна този момент в кариерата си, макар и да ме съмнява.;admin', N'1;emiadmin@abv.bg;darsi2011;Обичам дългите разходки по плажа, рокличките и Рамщайн. Най-съкровената ми мечта е да стана програмист,защото така ще получавам прилични пари без да се натоварвам много и без да ми се иска да се самоубия заради безсмислието и скуката на работното място.Ако работя и с баи данни повече, ще е прекрасно.Както се вижда, не ме бива много-много с фронт енд нещата, така че се надявам да избегна този момент в кариерата си, макар и да ме съмнява.;admin')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4AC0166295E AS DateTime), N'Insert', N'Ingredients', NULL, N'31;                                        ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4AC01727C71 AS DateTime), N'Insert', N'Users', NULL, N'5;emi_emi@emi.com;moonmoon;I''m blue da budidabuda;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4AD014F5BC4 AS DateTime), N'Update', N'Users', N'1;emiadmin@abv.bg;darsi2011;Обичам дългите разходки по плажа, рокличките и Рамщайн. Най-съкровената ми мечта е да стана програмист,защото така ще получавам прилични пари без да се натоварвам много и без да ми се иска да се самоубия заради безсмислието и скуката на работното място.Ако работя и с баи данни повече, ще е прекрасно.Както се вижда, не ме бива много-много с фронт енд нещата, така че се надявам да избегна този момент в кариерата си, макар и да ме съмнява.;admin', N'1;emiadmin@abv.bg;darsi2011;Обичам дългите разходки по плажа, рокличките и Рамщайн. Най-съкровената ми мечта е да стана програмист,защото така ще получавам прилични пари без да се натоварвам много и без да ми се иска да се самоубия заради безсмислието и скуката на работното място.Ако работя и с баи данни повече, ще е прекрасно.Както се вижда, не ме бива много-много с фронт енд нещата, така че се надявам да избегна този момент в кариерата си, макар и да ме съмнява.;admin')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BC00C92DEF AS DateTime), N'Insert', N'Users', NULL, N'9;testing@abv.bg;;;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BC00CFE445 AS DateTime), N'Insert', N'Users', NULL, N'11;emitest@gmail.com;;;user')
GO
print 'Processed 100 total records'
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CE9962 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CE9F35 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CEA031 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CEA0A4 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CEA141 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CEA1CF AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CEA258 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CEEA93 AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CEF633 AS DateTime), N'Update', N'Recipes', NULL, N'18;Пълнени гъби                  ;20;200;3;1;Взета рецепта от 1001recepti.com;3')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CEFBD4 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CF047C AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CF077C AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CF0A32 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CF0D42 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CF1023 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CF1255 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CF1627 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CF1A93 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500D8DCD7 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E50EFC AS DateTime), N'Insert', N'Steps', NULL, N'1;2;Разбийте с миксер яйцата, постепенно добавяйки ахарта в тях')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E53034 AS DateTime), N'Insert', N'Steps', NULL, N'2;2;Добавете содата в киселото мляко и разбъркайте, добавете към яйцата и захарта')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E53FAE AS DateTime), N'Insert', N'Steps', NULL, N'3;2;Добавете и меда и канелата')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E5715A AS DateTime), N'Insert', N'Steps', NULL, N'4;3;Намажете тавичка с олио или масло(за маслото трябва леко да я нагреете предварително)')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E59651 AS DateTime), N'Insert', N'Steps', NULL, N'5;2;Изсипете сместа и печете на 200 градуса около 20 минутки')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E5B4C0 AS DateTime), N'Insert', N'Steps', NULL, N'6;2;За да проверите дали е готов кекса, забучете в него клечка за зъби - ако е суха,значи кексът е готов.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E5D932 AS DateTime), N'Insert', N'Steps', NULL, N'7;2;По желание поръсете с пудра захар целия кекс след като го извадите от тавичката.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E66728 AS DateTime), N'Insert', N'Steps', NULL, N'1;3;Сложете около 2 литра вода в голяма тенджера. Добавете в нея пилешкото месо и около 1/2 лъжичка сол.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E68E13 AS DateTime), N'Insert', N'Steps', NULL, N'2;3;Варете пилето максимум около час (трябва да стане бяло цялото, проверете дали не е сурово отвътре!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E6BA20 AS DateTime), N'Update', N'Steps', N'2;3;Варете пилето максимум около час (трябва да стане бяло цялото, проверете дали не е сурово отвътре!', N'2;3;Варете пилето максимум около час (трябва да стане бяло цялото, проверете дали не е сурово отвътре!Лесен начин да разберете дали е готово е да се опитате да го отделоите от костите -ако лесно се отделя,значи е сварено.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E71E07 AS DateTime), N'Insert', N'Steps', NULL, N'3;3;Нарежете зеленчуците на малки кубчета - първо се добавят моркова и лука ( който може да позапържите предварително ако искате), след 5 минутки картофите, а след още 5 може да добавите фиде.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E723D7 AS DateTime), N'Update', N'Steps', N'3;3;Нарежете зеленчуците на малки кубчета - първо се добавят моркова и лука ( който може да позапържите предварително ако искате), след 5 минутки картофите, а след още 5 може да добавите фиде.', N'3;3;')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E72A27 AS DateTime), N'Insert', N'Steps', NULL, N'4;3;Нарежете зеленчуците на малки кубчета - първо се добавят моркова и лука ( който може да позапържите предварително ако искате), след 5 минутки картофите, а след още 5 може да добавите фиде.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E75B12 AS DateTime), N'Update', N'Steps', N'3;3;', N'3;3;Извадете пилето от бульона, но не хвърляйте нито едното от двете . Пилето сложете в чинийка , а бульона оставете на котлона.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E77C13 AS DateTime), N'Update', N'Steps', N'4;3;Нарежете зеленчуците на малки кубчета - първо се добавят моркова и лука ( който може да позапържите предварително ако искате), след 5 минутки картофите, а след още 5 може да добавите фиде.', N'4;3;Нарежете зеленчуците на малки кубчета и ги добавете постепенно към бульона- първо се добавят моркова и лука ( който може да позапържите предварително ако искате), след 5 минутки картофите, а след още 5 може да добавите фиде.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E7B2CA AS DateTime), N'Insert', N'Steps', NULL, N'5;3;Обезкостете пилето и го накъсайте на дребни парченца, които после изсипете в супата.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E7D3A0 AS DateTime), N'Insert', N'Steps', NULL, N'6;3;След сваляне на супата от котлона добавете чубрица, магданоз, черен пипер и други подправки по желание.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E81B79 AS DateTime), N'Insert', N'Steps', NULL, N'7;3;Да Ви е сладко!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E8307C AS DateTime), N'Insert', N'Steps', NULL, N'1;4; Пилето се измива и подсушава')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E8413A AS DateTime), N'Insert', N'Steps', NULL, N'2;4;Нарязва се на 10 парчета. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E848AA AS DateTime), N'Insert', N'Steps', NULL, N'3;4; В купа се разбърква брашното, нишестето, 1 ч. л. сол и 1/8 ч. л. смлян черен пипер.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E856C6 AS DateTime), N'Insert', N'Steps', NULL, N'4;4;От сместа се отделя 3/4 ч. ч. , която се прехвърля в плик и се оставя на страни')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E864F9 AS DateTime), N'Insert', N'Steps', NULL, N'5;4;В останалата смес се овалват пилешките парчета месо.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E87300 AS DateTime), N'Insert', N'Steps', NULL, N'6;4;Прясното мляко се разбърква с лимоновия сок и се оставя на страни 5 минути.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E87CD0 AS DateTime), N'Insert', N'Steps', NULL, N'7;4;В дълбока купа се сипва млякото и след това се потапят панираните пилешки парчета.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E8865F AS DateTime), N'Insert', N'Steps', NULL, N'8;4;Купата се покрива и пилешкото месо се маринова от 3 до 12 часа в хладилник.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E89281 AS DateTime), N'Insert', N'Steps', NULL, N'9;4;В голям и дълбок тиган се загрява олиото до 175 С.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E8AA04 AS DateTime), N'Insert', N'Steps', NULL, N'10;4;Пилешките парчета се изваждат от млякото.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E8B565 AS DateTime), N'Insert', N'Steps', NULL, N'11;4;Овалват се в отделената брашнена смес от предната вечер. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E8C0DD AS DateTime), N'Insert', N'Steps', NULL, N'12;4;Пускат се в сгорещеното олио.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E8CC80 AS DateTime), N'Insert', N'Steps', NULL, N'13;4;Пилето се пържи на части до златист цвят и готовност от двете страни около 16-20 минути.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E8D503 AS DateTime), N'Insert', N'Steps', NULL, N'15;4;Пърженото пиле се изважда и се оставя да престои 5 минути преди поднасяне.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E8E76C AS DateTime), N'Insert', N'Steps', NULL, N'16;4;Да Ви е сладко!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E9015A AS DateTime), N'Insert', N'Steps', NULL, N'8;2;Да Ви е сладко!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E9671C AS DateTime), N'Insert', N'Steps', NULL, N'1;5;Пилешкото месо се измива добре и се слага да ври в подсолена вода. След като заври се отпенва и се добавят една глава нарязан лук и няколко зърна черен пипер. Варим до почти пълна готовност но месото.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E97198 AS DateTime), N'Insert', N'Steps', NULL, N'2;5;В тиган в повечко мазнина (ориза обича повече мазнина) се запържва другата нарязана глава лук с настъргания/нарязан морков. Прибавя се измитият ориз и се запържва докато стане прозрачен. Към края се добавя и куркумата. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E98447 AS DateTime), N'Insert', N'Steps', NULL, N'3;5;В тава се слагат оризът, отгоре свареното пилешко месо, налива се от бульона и се подправя на вкус със сол и млян черен пипер. Поръсва се с джоджен и се слага да се пече в умерена фурна. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E98B23 AS DateTime), N'Insert', N'Steps', NULL, N'4;5;След като ястието е готово (течността не трябва да е напълно поета от ориза) се вади от фурната, поръсва се със сока на половин лимон и се покрива с фолио за около 15-20 минути През това време ориза си *дръпва* остатъчната течност и мазнина. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4A500E9972A AS DateTime), N'Insert', N'Steps', NULL, N'5;5;Да Ви е сладко!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BC00AE28B9 AS DateTime), N'Update', N'Users', N'1;emiadmin@abv.bg;darsi2011;Обичам дългите разходки по плажа, рокличките и Рамщайн. Най-съкровената ми мечта е да стана програмист,защото така ще получавам прилични пари без да се натоварвам много и без да ми се иска да се самоубия заради безсмислието и скуката на работното място.Ако работя и с баи данни повече, ще е прекрасно.Както се вижда, не ме бива много-много с фронт енд нещата, така че се надявам да избегна този момент в кариерата си, макар и да ме съмнява.;admin', N'1;emiadmin@gmail.com;darsi2011;Обичам дългите разходки по плажа, рокличките и Рамщайн. Най-съкровената ми мечта е да стана програмист,защото така ще получавам прилични пари без да се натоварвам много и без да ми се иска да се самоубия заради безсмислието и скуката на работното място.Ако работя и с баи данни повече, ще е прекрасно.Както се вижда, не ме бива много-много с фронт енд нещата, така че се надявам да избегна този момент в кариерата си, макар и да ме съмнява.;admin')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CFE534 AS DateTime), N'Update', N'Recipes', NULL, N'7;Блъди мери                    ;5;64;4;1;Солено И алкохолно;3')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CFE767 AS DateTime), N'Update', N'Recipes', NULL, N'8;Водка с портокалов сок        ;5;100;4;1;За свежа напитка;2')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CFEABC AS DateTime), N'Update', N'Recipes', NULL, N'9;Текила сънрайз                ;5;110;4;1;Наздраве! ;2')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CFED20 AS DateTime), N'Update', N'Recipes', NULL, N'10;Панирани гъби                 ;15;157;3;2;Наздраве! ;2')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4AC0153E5BA AS DateTime), N'Insert', N'Categories', NULL, N'7;Коледни                                           ;')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4AC0172FE51 AS DateTime), N'Insert', N'Users', NULL, N'7;emiii@gmail.com;eeee;Аз съм само цвят лилав...;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BC00AE5B06 AS DateTime), N'Update', N'Users', N'1;emiadmin@gmail.com;darsi2011;Обичам дългите разходки по плажа, рокличките и Рамщайн. Най-съкровената ми мечта е да стана програмист,защото така ще получавам прилични пари без да се натоварвам много и без да ми се иска да се самоубия заради безсмислието и скуката на работното място.Ако работя и с баи данни повече, ще е прекрасно.Както се вижда, не ме бива много-много с фронт енд нещата, така че се надявам да избегна този момент в кариерата си, макар и да ме съмнява.;admin', N'1;emiadmin@gmail.com;darsi~2015;Обичам дългите разходки по плажа, рокличките и Рамщайн. Най-съкровената ми мечта е да стана програмист,защото така ще получавам прилични пари без да се натоварвам много и без да ми се иска да се самоубия заради безсмислието и скуката на работното място.Ако работя и с баи данни повече, ще е прекрасно.Както се вижда, не ме бива много-много с фронт енд нещата, така че се надявам да избегна този момент в кариерата си, макар и да ме съмнява.;admin')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BC00C98363 AS DateTime), N'Update', N'Users', N'2;ivanovanov@abv.bg;123456;I am the first user! Follow my lead;user', N'2;ivanovanov@abv.bg;1234567;I am the first user! Follow my lead;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BC00CAEF49 AS DateTime), N'Update', N'Users', N'3;newuser@abv.bg;blaaaa;I like cooking;', N'3;newuser@abv.bg;blaaaa;I like cooking;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CF1E24 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CFE252 AS DateTime), N'Update', N'Recipes', NULL, N'6;Бира                          ;0;45;4;1;Най-добре да се приготви събота на обяд;1')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CFF171 AS DateTime), N'Update', N'Recipes', NULL, N'11;Мляко с ориз                  ;40;130;2;1;Любима рецепта от детството ;2')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CFF6F5 AS DateTime), N'Update', N'Recipes', NULL, N'12;Паниран кашкавал              ;10;430;3;1;Децата го обожават ;1')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CFF865 AS DateTime), N'Update', N'Recipes', NULL, N'13;Панирани сиренца              ;10;330;3;1;Децата го обожават ;1')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CFFB70 AS DateTime), N'Update', N'Recipes', NULL, N'14;Мляко с канела                ;3;55;4;1;Децата го обожават ;1')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00CFFD89 AS DateTime), N'Update', N'Recipes', NULL, N'15;Пиле с картофи                ;80;330;3;2;Децата го обожават ;3')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00D002F2 AS DateTime), N'Update', N'Recipes', N'17;Коледни сладки                ;360;486;1;1;Весела Коледа;1', N'17;Коледни сладки                ;360;486;1;1;Весела Коледа;4')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00D007FF AS DateTime), N'Update', N'Recipes', N'18;Пълнени гъби                  ;20;200;3;1;Взета рецепта от 1001recepti.com;3', N'18;Пълнени гъби                  ;20;200;3;1;Взета рецепта от 1001recepti.com;2')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00D02FD5 AS DateTime), N'Update', N'Ingredients', N'31;                                        ', N'31;                Шунка                   ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00D3C63B AS DateTime), N'Insert', N'Ingredients', NULL, N'32;Сос Уорчестър                           ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00D41AB8 AS DateTime), N'Insert', N'Ingredients', NULL, N'33;Сос Табаско                             ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00D421BB AS DateTime), N'Insert', N'Ingredients', NULL, N'34;Лед                                     ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00D44FBA AS DateTime), N'Update', N'Recipes', N'6;Бира                          ;0;45;4;1;Най-добре да се приготви събота на обяд;1', N'6;Бира                          ;0;45;4;13;Най-добре да се приготви събота на обяд;1')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00D5056C AS DateTime), N'Insert', N'Ingredients', NULL, N'35;Доматен сок                             ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00D85647 AS DateTime), N'Insert', N'Users', NULL, N'15;office@1001recepti.com;12345678;Служебен профил за 1001рецепти, с цел да се признае авторството на техните рецепти в този сайт;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DA5A79 AS DateTime), N'Insert', N'Users', NULL, N'16;info@mandja.com;12345678;Служебен профил за сайтът mandja.com , с цел да се признае авторство върху техните рецепти;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C1014F6675 AS DateTime), N'Update', N'Users', N'2;ivanovanov@abv.bg;1234567;I am the first user! Follow my lead;user', N'2;ivanuser@gmail.com;1234567;I am the first user! Follow my lead;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C1014F6CD3 AS DateTime), N'Update', N'Users', N'2;ivanuser@gmail.com;1234567;I am the first user! Follow my lead;user', N'2;ivanuser@gmail.com;1234567;I am the first user! Follow my lead;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C1014F9EB4 AS DateTime), N'Update', N'Users', N'2;ivanuser@gmail.com;1234567;I am the first user! Follow my lead;user', N'2;ivanuser@gmail.com;1234567;Аз съм първият потребител.Нямам име и лице, но съм важен за този уебсайт. Както и уебсайтът е важен за мен;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C1014FA5FC AS DateTime), N'Update', N'Users', N'2;ivanuser@gmail.com;1234567;Аз съм първият потребител.Нямам име и лице, но съм важен за този уебсайт. Както и уебсайтът е важен за мен;user', N'2;ivanuser@gmail.com;1234567;Аз съм първият потребител.Нямам име и лице, но съм важен за този уебсайт. Както и уебсайтът е важен за мен;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C10161BEBC AS DateTime), N'Delete', N'Recipes', N'18;Пълнени гъби                  ;20;200;3;1;Взета рецепта от 1001recepti.com;2', NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C4014FBA25 AS DateTime), N'Delete', N'Users', N'9;testing@abv.bg;;;user', NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D1AF52 AS DateTime), N'Update', N'Recipes', N'12;Паниран кашкавал              ;10;430;3;1;Децата го обожават ;1', N'12;Паниран кашкавал              ;10;430;3;15;Децата го обожават ;1')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D2679E AS DateTime), N'Insert', N'Ingredients', NULL, N'40;Галета                                  ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D2AB36 AS DateTime), N'Insert', N'Steps', NULL, N'1;12;Нарязвате кашкавала на правоъгълници с дебилина около 2 см. и го оставяте за 30 мин. в фризер. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D2B726 AS DateTime), N'Insert', N'Steps', NULL, N'2;12;Брашното се смесва с 100 мл. студена вода и щипка сол и се бърка до получаване на гладка каша. Отделно се разбиват яйцата.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D2C143 AS DateTime), N'Insert', N'Steps', NULL, N'3;12;Кашкавалът се потапя в купа с студена вода, след това в брашнената каша, след това в галетата, а накрая в разбитите яйца.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D2D059 AS DateTime), N'Insert', N'Steps', NULL, N'4;12;Пържат се веднага в олио, след това се отцеждат върху кухненска хартия или салфетка. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D2D80C AS DateTime), N'Insert', N'Steps', NULL, N'5;12;Да Ви е сладко!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D31391 AS DateTime), N'Update', N'Recipes', N'12;Паниран кашкавал              ;10;430;3;15;Децата го обожават ;1', N'12;Паниран кашкавал              ;10;430;3;13;Децата го обожават ;1')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D31569 AS DateTime), N'Update', N'Recipes', N'13;Панирани сиренца              ;10;330;3;1;Децата го обожават ;1', N'13;Панирани сиренца              ;10;330;3;13;Децата го обожават ;1')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D464D6 AS DateTime), N'Insert', N'Steps', NULL, N'1;13;Нарежете сиренето на хапки и го сложете във фризера. Използвайте добре зряло и твърдо краве сирене.')
GO
print 'Processed 200 total records'
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D480B3 AS DateTime), N'Insert', N'Steps', NULL, N'2;13;В купа пресейте брашното. Направете кладенче, добавете яйцата и малко олио и започнете да разбърквате с брашното. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D49292 AS DateTime), N'Insert', N'Steps', NULL, N'3;13;Бъркайте и постепенно долейте и бирата')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D4A01B AS DateTime), N'Insert', N'Steps', NULL, N'4;13;Добавете останалото олио и объркайте внимателно с предварително разбитите на сняг белтъци, към които сте добавили малко сол.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D4AD10 AS DateTime), N'Insert', N'Steps', NULL, N'5;13;Оваляйте сиренцата първо в брашно, после в панировката. Пускайте ги в силно сгорещена мазнина да се изпържат от двете страни.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D4CD8F AS DateTime), N'Insert', N'Steps', NULL, N'6;13;След изпържване поставете в съдинка, постлана със салфетка,за да се отцеди мазнината от тях.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D4E047 AS DateTime), N'Insert', N'Steps', NULL, N'7;13;Сервирайте с лимонче и салата.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D4EA19 AS DateTime), N'Insert', N'Steps', NULL, N'8;13;Да Ви е сладко!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D565EF AS DateTime), N'Insert', N'Steps', NULL, N'1;14;Стоплете млякото до предпочитана от Вас температура.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D5778A AS DateTime), N'Insert', N'Steps', NULL, N'2;14;Добавете канела, при нужда добавете още малко канела.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00D23463 AS DateTime), N'Insert', N'Users', NULL, N'13;admin@grad.bg;12345678;Този профил е създаден от името на уебсайта recepti.gotvach.bg , чиито рецепти ще бъдат използвани и съответно е важно да се признае авторството на въпросния сайт;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00D370D3 AS DateTime), N'Update', N'Users', N'13;admin@grad.bg;12345678;Този профил е създаден от името на уебсайта recepti.gotvach.bg , чиито рецепти ще бъдат използвани и съответно е важно да се признае авторството на въпросния сайт;user', N'13;admin@grad.bg;12345678;Този профил е създаден от името на уебсайта recepti.gotvach.bg , чиито рецепти ще бъдат използвани и съответно е важно да се признае авторството на въпросния сайт;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00D37772 AS DateTime), N'Update', N'Users', N'13;admin@grad.bg;12345678;Този профил е създаден от името на уебсайта recepti.gotvach.bg , чиито рецепти ще бъдат използвани и съответно е важно да се признае авторството на въпросния сайт;user', N'13;admin@grad.bg;12345678;Този профил е създаден от името на уебсайта recepti.gotvach.bg , чиито рецепти ще бъдат използвани и съответно е важно да се признае авторството на въпросния сайт;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00D6F112 AS DateTime), N'Insert', N'Steps', NULL, N'1;7;Сложете в шейкър 2-3 бучки лед и долейте водката, доматения сок, сос Уорчестър и Табаско и малко сол и черен пипер на вкус. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00D6FF58 AS DateTime), N'Insert', N'Steps', NULL, N'2;7;Разбийте всичко добре и излейте коктейла във висока чаша. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00D7135C AS DateTime), N'Insert', N'Steps', NULL, N'3;7;Украсата на Блъди Мери (Bloody Mary) може да варира - с резен лайм, резен домат или чери доматчета по ръба, както и стръкче целина. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00D72814 AS DateTime), N'Insert', N'Steps', NULL, N'4;7;Наздраве!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00D8CCBE AS DateTime), N'Update', N'Recipes', N'8;Водка с портокалов сок        ;5;100;4;1;За свежа напитка;2', N'8;Водка с портокалов сок        ;5;100;4;15;За свежа напитка;2')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DB4E87 AS DateTime), N'Insert', N'Steps', NULL, N'1;8;Водката и портокаловият сок се охлаждат добре в хладилника, след което се смесват и разбиват добре, интензивно.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DB5A2F AS DateTime), N'Insert', N'Steps', NULL, N'2;8;Коктейлът се сервира с бучка лед.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DC68BF AS DateTime), N'Update', N'Recipes', N'9;Текила сънрайз                ;5;110;4;1;Наздраве! ;2', N'9;Текила сънрайз                ;5;110;4;13;Наздраве! ;2')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DC6B55 AS DateTime), N'Update', N'Recipes', N'8;Водка с портокалов сок        ;5;100;4;15;За свежа напитка;2', N'8;Водка с портокалов сок        ;5;100;4;16;За свежа напитка;2')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DC88DB AS DateTime), N'Insert', N'Ingredients', NULL, N'36;Гренадин                                ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DC8ED8 AS DateTime), N'Insert', N'Ingredients', NULL, N'37;Портокал                                ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DD3E05 AS DateTime), N'Insert', N'Steps', NULL, N'1;9;Всички съставки освен гренадина, се смесват в шейкър с лед,бъркат се интензивно.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DD69DC AS DateTime), N'Insert', N'Steps', NULL, N'2;9;Слага се готовата напитка във високи чаши, добавя се внимателно (и много бавно!) гренадина за да падне на дъното и се декорира с резенче портокал.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DD77DC AS DateTime), N'Insert', N'Steps', NULL, N'3;9;Наздраве!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DD7FB6 AS DateTime), N'Insert', N'Steps', NULL, N'3;8;Наздраве!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DDDD31 AS DateTime), N'Update', N'Recipes', N'10;Панирани гъби                 ;15;157;3;2;Наздраве! ;2', N'10;Панирани гъби                 ;15;157;3;15;Наздраве! ;2')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DDF0C9 AS DateTime), N'Update', N'Recipes', N'10;Панирани гъби                 ;15;157;3;15;Наздраве! ;2', N'10;Панирани гъби                 ;15;157;3;15;Всичко започва дбре, когато панирате гъбки!;2')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DE05FE AS DateTime), N'Update', N'Recipes', N'17;Коледни сладки                ;360;486;1;1;Весела Коледа;4', N'17;Коледни сладки                ;360;486;2;1;Весела Коледа;4')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DF02E3 AS DateTime), N'Insert', N'Steps', NULL, N'1;10;Гъбите се измиват добре и се бланшират за 2 минути във вряща подсолена вода. Изваждат се и се оставят да се отцедят добре.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DF097A AS DateTime), N'Insert', N'Steps', NULL, N'2;10;През това време в купа се разбиват яйцата, прибавя се брашното и отново се разбива до получаване на гъста каша. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DF13C5 AS DateTime), N'Insert', N'Steps', NULL, N'3;10;Добавят се бирата, сол и черен пипер на вкус.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DF28D9 AS DateTime), N'Insert', N'Steps', NULL, N'4;10;Всяка гъба се потапя в панировката обилно и се пържи в сгорещено олио до зачервяване. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DF2E19 AS DateTime), N'Insert', N'Steps', NULL, N'5;10; Готовите панирани гъби се отцеждат върху кухненска хартия, за да се отстрани излишната мазнина.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DF479D AS DateTime), N'Insert', N'Steps', NULL, N'6;10;Може да добавите резенче лимон по желание (важи за всичко панирано)')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DF5252 AS DateTime), N'Insert', N'Steps', NULL, N'7;10;Да Ви е сладко!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00DFB9FB AS DateTime), N'Update', N'Recipes', N'11;Мляко с ориз                  ;40;130;2;1;Любима рецепта от детството ;2', N'11;Мляко с ориз                  ;40;130;2;15;Любима рецепта от детството ;2')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00E0089E AS DateTime), N'Insert', N'Ingredients', NULL, N'38;Вода                                    ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00E0D8A3 AS DateTime), N'Insert', N'Ingredients', NULL, N'39;Ванилия                                 ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00E12216 AS DateTime), N'Insert', N'Steps', NULL, N'1;11;Оризът (250 г) се сипва в тенджера и се залива с водата (150 мл.). Бърка се на силен огън, докато я поеме за около 5 минути.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00E1310F AS DateTime), N'Insert', N'Steps', NULL, N'2;11;Намалява се котлонът и се долива прясното мляко (1 л.). Добавят се захарта (7 с.л.) и ванилията (1 ч.л.). Оризът се вари в млякото, докато го поеме - за около 20-25 минути (зависи от вида ориз, бланшираният ориз, например, се готви по-бързо).')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00E13DD8 AS DateTime), N'Insert', N'Steps', NULL, N'3;11;Млякото с ориз се разделя на порции в 4 големи купи и се поръсва с канела на прах (1/2 ч.л.). Десертът се оставя да изстине. Може да се сервира така или да се охлади в хладилник.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4BF00E1778E AS DateTime), N'Insert', N'Steps', NULL, N'4;11;Да Ви е сладко!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C700F24F0B AS DateTime), N'Insert', N'Ingredients', NULL, N'52;Краставици                              ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C700F441D7 AS DateTime), N'Insert', N'Users', NULL, N'17;teeest@abv.bg;12345678;Аз съм тестови потребител;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C700FDE97A AS DateTime), N'Delete', N'Users', N'3;newuser@abv.bg;blaaaa;I like cooking;user', NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C700FE6512 AS DateTime), N'Insert', N'Recipes', NULL, N'23;Тест                          ;278;529;2;1;вдЯВФявф;1')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C700FE7ADB AS DateTime), N'Delete', N'Recipes', N'23;Тест                          ;278;529;2;1;вдЯВФявф;1', NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C7013D35AC AS DateTime), N'Insert', N'Users', NULL, N'18;EMI@gmai.com;emitest;sdfasf;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4D0018B0903 AS DateTime), N'Insert', N'Users', NULL, N'19;dadada@dada.da;dada;dadada;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D58B58 AS DateTime), N'Insert', N'Steps', NULL, N'3;14;Сервирайте с или без бисквити, ако е точно преди лягане - без!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D593D6 AS DateTime), N'Insert', N'Steps', NULL, N'4;14;Наздраве!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D653B6 AS DateTime), N'Insert', N'Ingredients', NULL, N'41;Масло                                   ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D7445E AS DateTime), N'Insert', N'Ingredients', NULL, N'42;Хляб                                    ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D81B8C AS DateTime), N'Insert', N'Steps', NULL, N'1;15;Изчистване на пилето:')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D840FD AS DateTime), N'Insert', N'Steps', NULL, N'2;15;Сложете олиото на дъното на тавичката.Отгоре сложете почистеното, измито и подсушено пиле, овкусено със сол. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D85940 AS DateTime), N'Insert', N'Steps', NULL, N'3;15;Наоколо подредете четвъртинките обелени картофи, сложете още няколко филийки сланина и сложете да се пече в слаба фурна(150-180 градуса)')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D86806 AS DateTime), N'Insert', N'Steps', NULL, N'4;16;По време на печенето, поливайте леко пилето и картофите със стопено масло. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D8AD18 AS DateTime), N'Insert', N'Steps', NULL, N'5;15;Малко преди края на печенето добавете нарязания на призмички хляб, полейте с малко масло и доизпечете. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D8B9B2 AS DateTime), N'Insert', N'Steps', NULL, N'6;15;Поднесете печеното пиле с картофи със зеленчукова салата.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500D8C2F1 AS DateTime), N'Insert', N'Steps', NULL, N'7;15;Да Ви е сладко!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500EECE91 AS DateTime), N'Insert', N'Steps', NULL, N'1;16;От прясното мляко (1/2 л.), яйцата (3 бр), брашното (250 г), разтопеното масло (1 с.л.) и солта (1 щип.) се разбива палачинково тесто с консистенция малко по-рядка от боза. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500EEE3BA AS DateTime), N'Update', N'Steps', N'1;16;От прясното мляко (1/2 л.), яйцата (3 бр), брашното (250 г), разтопеното масло (1 с.л.) и солта (1 щип.) се разбива палачинково тесто с консистенция малко по-рядка от боза. ', N'1;16;')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500EEF805 AS DateTime), N'Update', N'Steps', N'1;16;', N'1;16;От прясното мляко (1/2 л.), яйцата (3 бр), брашното (250 г), разтопеното масло (1 с.л.) и солта (1 щип.) се разбива палачинково тесто с консистенция малко по-рядка от боза. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500EF02A1 AS DateTime), N'Insert', N'Steps', NULL, N'2;16;От тестото се пекат палачинки до изчерпване на количеството. От посочените продукти би трябвало да се получат около 10-12 палачинки.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500EF1D63 AS DateTime), N'Insert', N'Steps', NULL, N'3;16;!!!Тънкостта на вкусните палачинки е в добре разбитото с миксер тесто, в което няма бучки, в добавената супена лъжица разтопено масло, благодарение на което палачинките не залепват и се отделят с лекота от повърхността на тефлоновия тиган, а също и в краткото време на котлона, така че да не загорят.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500EF36AA AS DateTime), N'Insert', N'Steps', NULL, N'4;16;Винаги бъдете внимателни, когато приготвяте палачинки, няколко секунди невнимание и те могат да загорят!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500EF700B AS DateTime), N'Insert', N'Steps', NULL, N'5;16;Препоръчителни комбинации от администратора: сирене, кашкавал(натърган), сладко от смокини, комбинация от захар и кокосови стърготини (намажете палачинката и с допълнотелно масло), канела с мед')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500EF98C5 AS DateTime), N'Insert', N'Steps', NULL, N'6;16;Да Ви е сладко!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F058A6 AS DateTime), N'Insert', N'Users', NULL, N'12;mama@abv.bg;12345678;Това са рецептите на администраторовата майка, които са отделени със свой профил;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F0D355 AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F0D692 AS DateTime), N'Update', N'Recipes', N'16;Палачинки                     ;40;400;2;1;Това е за мен неделя сутринта;2', N'16;Палачинки                     ;40;300;2;1;Това е за мен неделя сутринта;2')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F153CE AS DateTime), N'Update', N'Recipes', NULL, N'18;Американски палачинки         ;40;283;1;12;Сутрешни приключения;3')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F15AC7 AS DateTime), N'Update', N'Recipes', N'18;Американски палачинки         ;40;283;1;12;Сутрешни приключения;3', N'18;Американски палачинки         ;40;283;1;12;Сутрешни приключения;3')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F2702A AS DateTime), N'Insert', N'Steps', NULL, N'1;18;Смесвате яйцата и солта и бъркате енергично и продължително.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F28D7C AS DateTime), N'Insert', N'Steps', NULL, N'2;18;Бавно добавяте брашното (с цел то да не покрие 3 км околовръст с тънък слой бял прах).')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F2B91F AS DateTime), N'Insert', N'Steps', NULL, N'3;18;Добавяте содата бикарбонат и млякото, олиото.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F2C911 AS DateTime), N'Insert', N'Steps', NULL, N'4;18;Оставяте сместа да престои поне 20 минути, може и повече.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F2ECA8 AS DateTime), N'Insert', N'Steps', NULL, N'5;18;Загрявате котлон и ги печете- дебели , но не с голям радиус .')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F2FD74 AS DateTime), N'Insert', N'Steps', NULL, N'6;18;Намажете палачинките със сладко, кленов сироп, мед.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F306A8 AS DateTime), N'Insert', N'Steps', NULL, N'7;18;Да Ви е сладко!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F488C7 AS DateTime), N'Insert', N'Recipes', NULL, N'19;Родопски пататник             ;55;300;3;12;За любителите на традиционната българска кухня - едно по-нет;4')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F5352E AS DateTime), N'Insert', N'Ingredients', NULL, N'43;Джоджен                                 ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F5CB10 AS DateTime), N'Insert', N'Steps', NULL, N'1;19;Обеквате картофите и ги настъргвате на едро')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F5E0C3 AS DateTime), N'Insert', N'Steps', NULL, N'2;19;Настъргвате и лука в същата съдинка')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F5E917 AS DateTime), N'Update', N'Steps', N'1;19;Обеквате картофите и ги настъргвате на едро', N'1;19;Обелвате картофите и ги настъргвате на едро')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F62134 AS DateTime), N'Insert', N'Steps', NULL, N'3;19;Добавяте последователно : яйцата ,брашното(бавно и внимателно),олиото, джодженът, солта, пипера')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F64FCB AS DateTime), N'Insert', N'Steps', NULL, N'4;19;Загрявате тавичката и я намазвате с масло .Разстилате сместа в нея.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F664FF AS DateTime), N'Insert', N'Steps', NULL, N'5;19;Печете 40 минути на 220 градуса.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F712F5 AS DateTime), N'Insert', N'Recipes', NULL, N'20;Катми                         ;60;300;2;12;Традиционна тракийска рецепта;3')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F719FB AS DateTime), N'Update', N'Recipes', N'20;Катми                         ;60;300;2;12;Традиционна тракийска рецепта;3', N'20;Катми                         ;60;300;2;12;Традиционна тракийска рецепта;3')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F757F3 AS DateTime), N'Insert', N'Ingredients', NULL, N'44;Мая                                     ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F83E2E AS DateTime), N'Insert', N'Steps', NULL, N'1;20;Смесватемаята с малко топличка вода (телесна температура например).Добавяте брашното,яйцата, захарта, солта. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F857C4 AS DateTime), N'Insert', N'Steps', NULL, N'2;20;Оставяте да втасва на топло, докато не се получат хубаво шупли.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F8A3ED AS DateTime), N'Insert', N'Steps', NULL, N'3;20;Печете до изчерпване на тестото. С толкова продукти би трябвало да се получат до 30 катми(може би по-малко).')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F8AD66 AS DateTime), N'Insert', N'Steps', NULL, N'4;20;Да Ви е сладко!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F94A3B AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F96897 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F96FA0 AS DateTime), N'Update', N'Recipes', NULL, N'21;Лесни мъфини                  ;40;280;2;12;Използвах чужда рецепта, но не съм записала от кого е. Щом с;2')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500F97432 AS DateTime), N'Update', N'Recipes', N'21;Лесни мъфини                  ;40;280;2;12;Използвах чужда рецепта, но не съм записала от кого е. Щом с;2', N'21;Лесни мъфини                  ;40;280;2;12;Използвах чужда рецепта, но не съм записала от кого е. Щом с;2')
GO
print 'Processed 300 total records'
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FA5FE3 AS DateTime), N'Insert', N'Ingredients', NULL, N'45;Бакплувер                               ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FA7387 AS DateTime), N'Update', N'Ingredients', N'45;Бакплувер                               ', N'45;Бакпулвер                               ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FA9828 AS DateTime), N'Insert', N'Steps', NULL, N'1;21;Тестото за мъфините се приготвя, като най-напред се разбива яйцето със захарта, а след това се добавя киселото мляко. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FAA772 AS DateTime), N'Insert', N'Steps', NULL, N'2;21;Продуктите се разбиват, а след това се добавя разтопеното масло или ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FABAD1 AS DateTime), N'Insert', N'Steps', NULL, N'3;21;Разпределяме сместа във форми за мъфини с помощта на лъжица. За предпочитане е да се използва метална тава за мъфини, като във всяка купичка е поставена хартийка за мъфин. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FACC57 AS DateTime), N'Insert', N'Steps', NULL, N'4;21;Мъфините се пекат в предварително загрята до 180С градуса фурна за около 20-25 минути.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FAE9CE AS DateTime), N'Insert', N'Steps', NULL, N'5;21;В сместа може да добавите какао за шоколадови мъфини (2 лъжици), или малки парченца шоколад.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FAF240 AS DateTime), N'Insert', N'Steps', NULL, N'6;21;Да Ви е сладко!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FD7C0B AS DateTime), N'Insert', N'Categories', NULL, N'8;Екзотични                                         ;За случаите, в които искате да пробвате нещо ново и различно')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FD8739 AS DateTime), N'Insert', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FD8CB3 AS DateTime), N'Update', N'Recipes', NULL, NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FDAD64 AS DateTime), N'Update', N'Recipes', NULL, N'22;Суши - хосо маки със сьомга   ;150;111;8;1;Рецептата е базирана на традиционните, общодостъпни рецепти ;4')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FDEA11 AS DateTime), N'Insert', N'Ingredients', NULL, N'46;Нори водорасли(водорасли за суши)       ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FE25EC AS DateTime), N'Insert', N'Ingredients', NULL, N'47;Оцет                                    ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FE39C2 AS DateTime), N'Insert', N'Ingredients', NULL, N'48;Сьомга                                  ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FE4C5B AS DateTime), N'Insert', N'Ingredients', NULL, N'49;Уасаби                                  ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FE5733 AS DateTime), N'Insert', N'Ingredients', NULL, N'50;Соев Сос                                ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FE7564 AS DateTime), N'Insert', N'Ingredients', NULL, N'51;Крема сирене                            ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FF9659 AS DateTime), N'Insert', N'Steps', NULL, N'1;22;Измивате ориза неколкократно,със студена вода - до момента, в който водата , в която е ориза, не стане чиста, т/е/ нишестето от нея е измито.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FFBC5C AS DateTime), N'Insert', N'Steps', NULL, N'2;22;Слагате ориза да се вари, като правилото е водата да достига нивото на китката ви, след като опрете с ръка ориза в тенджерата.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C500FFCF6A AS DateTime), N'Insert', N'Steps', NULL, N'3;22;Варите, докато стане готов и оставяте още 5 минути под капака')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C501008972 AS DateTime), N'Insert', N'Steps', NULL, N'4;22;Сгрявате оцета малко, смесвате със захарта и солта.Разстилате ориза в широка тава и постепенно заливате ориза със сместа, докато с едната ръка (или с помощ от приятел) веете над ориза с ветрило, вестник или друго подръчно средство.Така ориза се охлажда и стяга, което улеснява манупулацията по-нататък.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C50100A241 AS DateTime), N'Insert', N'Steps', NULL, N'5;22;Нарязвате сьомгата, краставицата на тънки и дълги ивици.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C501022B44 AS DateTime), N'Insert', N'Steps', NULL, N'6;22;Върху бамбукова постелка (или рогозка, с каквото разполагате) поставяте стреч фолио, за да не залепва сушито.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C501025773 AS DateTime), N'Insert', N'Steps', NULL, N'7;22;Слагате едно нори и върху него разстилате ориз , като покривате олътно норито, но не правите твърде дебел слой.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C501029BB5 AS DateTime), N'Insert', N'Steps', NULL, N'8;22;Върху ориза нареждате в една лента по средата сьомга и краставица, добавяте крема сирене по желание.Може да сложите и съвсем малко уасаби ако сте любители на лютото.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C50102B738 AS DateTime), N'Insert', N'Steps', NULL, N'9;22;Завивате внимателно рулото, като се стараете да стане максимално плътно и стегнато.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C50102D6D9 AS DateTime), N'Insert', N'Steps', NULL, N'10;22;Готовите рула може да сложите в хладилника за 30-60 минути за по-лесно нарязване, макар да не е задължително.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C50102FED3 AS DateTime), N'Insert', N'Steps', NULL, N'11;22;Рулото се реже на резенчета с помощта на най-острият нож, който имате.Преди всяко резенче е хубаво да изчиствате острието от ориз и да нарязвате ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C50103368B AS DateTime), N'Update', N'Steps', N'9;22;Завивате внимателно рулото, като се стараете да стане максимално плътно и стегнато.', N'9;22;Завивате внимателно рулото, като се стараете да стане максимално плътно и стегнато.За да закрепите норито около ориза стабилно, слагате малко вода(или ако имате, от сместа с оцета), мокрото водорасло става лепливо и може да бъде залепено за долния слой.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C5010375EA AS DateTime), N'Update', N'Steps', N'11;22;Рулото се реже на резенчета с помощта на най-острият нож, който имате.Преди всяко резенче е хубаво да изчиствате острието от ориз и да нарязвате ', N'11;22;Рулото се реже на резенчета с помощта на най-острия нож, който имате.Преди всяко резенче е хубаво да изчиствате острието от ориз и да го потапяте във вода - отново, така омеква водораслото и е по-податливо на промяна. ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C501038FA8 AS DateTime), N'Insert', N'Steps', NULL, N'12;22;Смесвате уасаби(половин 1.л. ) със соев сос (1 ч.л.).')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C501039DA1 AS DateTime), N'Insert', N'Steps', NULL, N'13;22;д')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C50103AC69 AS DateTime), N'Update', N'Steps', N'12;22;Смесвате уасаби(половин 1.л. ) със соев сос (1 ч.л.).', N'12;22;Смесвате уасаби(половин 1.л. ) със соев сос (1 ч.л.).Добре е всеки гост да разполага със своя купичка с този сос.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C50103C509 AS DateTime), N'Update', N'Steps', N'13;22;д', N'13;22;Сервирате, като всяка хапка се потапя в соев сос с уасаби преди да бъде хапната.')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C50103CD83 AS DateTime), N'Insert', N'Steps', NULL, N'14;22;Да Ви е сладко!')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C700F457CA AS DateTime), N'Update', N'Users', N'17;teeest@abv.bg;12345678;Аз съм тестови потребител;user', N'17;teeest@abv.bg;12345678;Аз съм тестови потребител;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C700F46520 AS DateTime), N'Update', N'Users', N'17;teeest@abv.bg;12345678;Аз съм тестови потребител;user', N'17;tests@abv.bg;12345678;Аз съм тестови потребител;user')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C700F94412 AS DateTime), N'Update', N'Ingredients', N'31;                Шунка                   ', N'31;                Шунка                   ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C700F95D5C AS DateTime), N'Insert', N'Ingredients', NULL, N'53;                                        ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C700FA2FF1 AS DateTime), N'Insert', N'Ingredients', NULL, N'54;Карагьоз                                ')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C700FA690A AS DateTime), N'Delete', N'Categories', N'6;Специални поводи                                  ;Изискани рецепти за всички особено важни дни от Вашия живот', NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C700FA981B AS DateTime), N'Delete', N'Categories', N'7;Коледни                                           ;', NULL)
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C700F89AAE AS DateTime), N'Update', N'Recipes', N'18;Американски палачинки         ;40;283;1;12;Сутрешни приключения;3', N'18;Американски палачинки         ;40;283;2;12;Сутрешни приключения;3')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C700F8AC28 AS DateTime), N'Update', N'Recipes', N'17;Коледни сладки                ;360;486;2;1;Весела Коледа;4', N'17;Коледни сладки                ;360;486;5;1;Весела Коледа;4')
INSERT [dbo].[Journal] ([Date], [Operation], [Table_name], [Old_Values], [New_values]) VALUES (CAST(0x0000A4C700F986B7 AS DateTime), N'Update', N'Ingredients', N'53;                                        ', N'53;           Червен пипер                 ')
/****** Object:  Table [dbo].[Categories]    Script Date: 10/07/2015 12:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[category_id] [int] NOT NULL,
	[category_name] [char](50) NOT NULL,
	[cathergory_desc] [nvarchar](max) NOT NULL,
	[modif_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [CategoryDataUniqueness] ON [dbo].[Categories] 
(
	[category_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([category_id], [category_name], [cathergory_desc], [modif_date]) VALUES (1, N'Супи                                              ', N'Течна храна,която хората обичат да консумират зимно време,за да се стоплят', CAST(0x0000A4A500D668DC AS DateTime))
INSERT [dbo].[Categories] ([category_id], [category_name], [cathergory_desc], [modif_date]) VALUES (2, N'Десерти                                           ', N'Смисълът на живота', CAST(0x0000A4A500D668E2 AS DateTime))
INSERT [dbo].[Categories] ([category_id], [category_name], [cathergory_desc], [modif_date]) VALUES (3, N'Основни                                           ', N'Същинската част от храненето', CAST(0x0000A4A500D668E7 AS DateTime))
INSERT [dbo].[Categories] ([category_id], [category_name], [cathergory_desc], [modif_date]) VALUES (4, N'Напитки                                           ', N'Течни изкушения', CAST(0x0000A4A500D668EB AS DateTime))
INSERT [dbo].[Categories] ([category_id], [category_name], [cathergory_desc], [modif_date]) VALUES (5, N'Коледни рецепти                                   ', N'За това специално време от годината', CAST(0x0000A4A500D668F0 AS DateTime))
INSERT [dbo].[Categories] ([category_id], [category_name], [cathergory_desc], [modif_date]) VALUES (8, N'Екзотични                                         ', N'За случаите, в които искате да пробвате нещо ново и различно', CAST(0x0000A4C500FD7C08 AS DateTime))
INSERT [dbo].[Categories] ([category_id], [category_name], [cathergory_desc], [modif_date]) VALUES (9, N'За домашни любимци                                ', N'За животните с любов', CAST(0x0000A4C700FDC99A AS DateTime))
/****** Object:  StoredProcedure [dbo].[insert_category]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insert_category] 
@cat_id int=null,
@cat_name char(50)=null,
@cat_desc nvarchar(max)=null
as 
begin 
	declare @message nvarchar(40)
		insert into Categories(category_id,category_name,cathergory_desc)
		values(@cat_id,@cat_name,@cat_desc)
		
end
GO
/****** Object:  Table [dbo].[Ingredients]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ingredients](
	[ingredient_id] [int] NOT NULL,
	[ingredient_name] [char](40) NOT NULL,
	[ingredient_image] [image] NULL,
	[modif_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ingredient_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IngredientsDataUniqueness] ON [dbo].[Ingredients] 
(
	[ingredient_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (1, N'Пиле                                    ', NULL, CAST(0x0000A4A500D61BEB AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (2, N'Лук                                     ', NULL, CAST(0x0000A4A500D61C13 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (3, N'Картофи                                 ', NULL, CAST(0x0000A4A500D61C0D AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (4, N'Ориз                                    ', NULL, CAST(0x0000A4A500D61C07 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (5, N'Мляко                                   ', NULL, CAST(0x0000A4A500D61C03 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (6, N'Гъби                                    ', NULL, CAST(0x0000A4A500D61C18 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (7, N'Бира                                    ', NULL, CAST(0x0000A4A500D61C1D AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (8, N'Домати                                  ', NULL, CAST(0x0000A4A500D61C22 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (9, N'Брашно                                  ', NULL, CAST(0x0000A4A500D61C27 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (10, N'Яйца                                    ', NULL, CAST(0x0000A4A500D61C2B AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (11, N'Захар                                   ', NULL, CAST(0x0000A4A500D61C30 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (12, N'Канела                                  ', NULL, CAST(0x0000A4A500D61C35 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (13, N'Водка                                   ', NULL, CAST(0x0000A4A500D61C3A AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (14, N'Сок от боровинки                        ', NULL, CAST(0x0000A4A500D61C3F AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (15, N'Сок от портокал                         ', NULL, CAST(0x0000A4A500D61C43 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (16, N'Текила                                  ', NULL, CAST(0x0000A4A500D61C48 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (17, N'Сирене                                  ', NULL, CAST(0x0000A4A500D61C4E AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (18, N'Кашкавал                                ', NULL, CAST(0x0000A4A500D61C53 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (19, N'Прясно мляко                            ', NULL, CAST(0x0000A4A500D61C57 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (20, N'Кисело мляко                            ', NULL, CAST(0x0000A4A500D61C5C AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (21, N'Морков                                  ', NULL, CAST(0x0000A4A500E9F45F AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (22, N'Черен пипер                             ', NULL, CAST(0x0000A4A500EA0193 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (23, N'Лимонов сок                             ', NULL, CAST(0x0000A4A500EA371D AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (24, N'Олио                                    ', NULL, CAST(0x0000A4A500EA3C32 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (25, N'Сода бикарбонат                         ', NULL, CAST(0x0000A4A500EA50E8 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (26, N'Какао                                   ', NULL, CAST(0x0000A4A500EA662C AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (27, N'Фиде                                    ', NULL, CAST(0x0000A4A500EA8611 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (28, N'Сол                                     ', NULL, CAST(0x0000A4A500EA8A10 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (29, N'Царевично нишесте                       ', NULL, CAST(0x0000A4A500EAAED2 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (30, N'Мед                                     ', NULL, CAST(0x0000A4A500ED9A70 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (31, N'                Шунка                   ', NULL, CAST(0x0000A4C700F94410 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (32, N'Сос Уорчестър                           ', NULL, CAST(0x0000A4BF00D3C639 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (33, N'Сос Табаско                             ', NULL, CAST(0x0000A4BF00D41AB5 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (34, N'Лед                                     ', NULL, CAST(0x0000A4BF00D421B9 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (35, N'Доматен сок                             ', NULL, CAST(0x0000A4BF00D50569 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (36, N'Гренадин                                ', NULL, CAST(0x0000A4BF00DC88D9 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (37, N'Портокал                                ', NULL, CAST(0x0000A4BF00DC8ED6 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (38, N'Вода                                    ', NULL, CAST(0x0000A4BF00E0089B AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (39, N'Ванилия                                 ', NULL, CAST(0x0000A4BF00E0D8A0 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (40, N'Галета                                  ', NULL, CAST(0x0000A4C500D2679C AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (41, N'Масло                                   ', NULL, CAST(0x0000A4C500D653B4 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (42, N'Хляб                                    ', NULL, CAST(0x0000A4C500D7445C AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (43, N'Джоджен                                 ', NULL, CAST(0x0000A4C500F5352C AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (44, N'Мая                                     ', NULL, CAST(0x0000A4C500F757F1 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (45, N'Бакпулвер                               ', NULL, CAST(0x0000A4C500FA7385 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (46, N'Нори водорасли(водорасли за суши)       ', NULL, CAST(0x0000A4C500FDEA0E AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (47, N'Оцет                                    ', NULL, CAST(0x0000A4C500FE25EA AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (48, N'Сьомга                                  ', NULL, CAST(0x0000A4C500FE39BF AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (49, N'Уасаби                                  ', NULL, CAST(0x0000A4C500FE4C58 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (50, N'Соев Сос                                ', NULL, CAST(0x0000A4C500FE5730 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (51, N'Крема сирене                            ', NULL, CAST(0x0000A4C500FE7561 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (52, N'Краставици                              ', NULL, CAST(0x0000A4C700F24F08 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (53, N'           Червен пипер                 ', NULL, CAST(0x0000A4C700F986B5 AS DateTime))
INSERT [dbo].[Ingredients] ([ingredient_id], [ingredient_name], [ingredient_image], [modif_date]) VALUES (54, N'Карагьоз                                ', NULL, CAST(0x0000A4C700FA2FED AS DateTime))
/****** Object:  StoredProcedure [dbo].[last_category_id]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[last_category_id]
@cat_id int=null output
as
begin
set nocount on;
set @cat_id =(select MAX(category_id) from Categories )+1
end
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] NOT NULL,
	[user_email] [nvarchar](50) NOT NULL,
	[user_password] [nvarchar](20) NOT NULL,
	[user_desc] [nvarchar](max) NULL,
	[modif_date] [datetime] NULL,
	[profile_picture] [nvarchar](50) NULL,
	[role] [nvarchar](10) NOT NULL,
	[user_name] [nchar](20) NOT NULL,
 CONSTRAINT [PK__Users__B9BE370F0BC6C43E] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UserDataUniqueness] ON [dbo].[Users] 
(
	[user_email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Users] ([user_id], [user_email], [user_password], [user_desc], [modif_date], [profile_picture], [role], [user_name]) VALUES (1, N'emiadmin@gmail.com', N'darsi~2015', N'Обичам дългите разходки по плажа, рокличките и Рамщайн. Най-съкровената ми мечта е да стана програмист,защото така ще получавам прилични пари без да се натоварвам много и без да ми се иска да се самоубия заради безсмислието и скуката на работното място.Ако работя и с баи данни повече, ще е прекрасно.Както се вижда, не ме бива много-много с фронт енд нещата, така че се надявам да избегна този момент в кариерата си, макар и да ме съмнява.', CAST(0x0000A4BC00AE5B04 AS DateTime), N'IMG_1544.JPG', N'admin', N'emiadmin            ')
INSERT [dbo].[Users] ([user_id], [user_email], [user_password], [user_desc], [modif_date], [profile_picture], [role], [user_name]) VALUES (2, N'ivanuser@gmail.com', N'1234567', N'Аз съм първият потребител.Нямам име и лице, но съм важен за този уебсайт. Както и уебсайтът е важен за мен', CAST(0x0000A4C1014FA5F8 AS DateTime), N'2.jpg', N'user', N'ivanuser            ')
INSERT [dbo].[Users] ([user_id], [user_email], [user_password], [user_desc], [modif_date], [profile_picture], [role], [user_name]) VALUES (5, N'emi_emi@emi.com', N'moonmoon', N'I''m blue da budidabuda', CAST(0x0000A4AC01727C6E AS DateTime), N'4.jpg', N'user', N'emii                ')
INSERT [dbo].[Users] ([user_id], [user_email], [user_password], [user_desc], [modif_date], [profile_picture], [role], [user_name]) VALUES (7, N'emiii@gmail.com', N'eeee', N'Аз съм само цвят лилав...', CAST(0x0000A4AC0172FE4C AS DateTime), N'flat,800x800,075,t.jpg', N'user', N'emiemi              ')
INSERT [dbo].[Users] ([user_id], [user_email], [user_password], [user_desc], [modif_date], [profile_picture], [role], [user_name]) VALUES (11, N'emitest@gmail.com', N'', N'', CAST(0x0000A4BC00CFE441 AS DateTime), N'22.jpg', N'user', N'emitest             ')
INSERT [dbo].[Users] ([user_id], [user_email], [user_password], [user_desc], [modif_date], [profile_picture], [role], [user_name]) VALUES (12, N'mama@abv.bg', N'12345678', N'Това са рецептите на администраторовата майка, които са отделени със свой профил', CAST(0x0000A4C500F058A0 AS DateTime), NULL, N'user', N'мама                ')
INSERT [dbo].[Users] ([user_id], [user_email], [user_password], [user_desc], [modif_date], [profile_picture], [role], [user_name]) VALUES (13, N'admin@grad.bg', N'12345678', N'Този профил е създаден от името на уебсайта recepti.gotvach.bg , чиито рецепти ще бъдат използвани и съответно е важно да се признае авторството на въпросния сайт', CAST(0x0000A4BF00D3776E AS DateTime), N'gotvach.jpg', N'user', N'gotvachbg           ')
INSERT [dbo].[Users] ([user_id], [user_email], [user_password], [user_desc], [modif_date], [profile_picture], [role], [user_name]) VALUES (15, N'office@1001recepti.com', N'12345678', N'Служебен профил за 1001рецепти, с цел да се признае авторството на техните рецепти в този сайт', CAST(0x0000A4BF00D85644 AS DateTime), N'1001.jpg', N'user', N'1001recepti         ')
INSERT [dbo].[Users] ([user_id], [user_email], [user_password], [user_desc], [modif_date], [profile_picture], [role], [user_name]) VALUES (16, N'info@mandja.com', N'12345678', N'Служебен профил за сайтът mandja.com , с цел да се признае авторство върху техните рецепти', CAST(0x0000A4BF00DA5A74 AS DateTime), N'mandja.jpg', N'user', N'mandja.com          ')
INSERT [dbo].[Users] ([user_id], [user_email], [user_password], [user_desc], [modif_date], [profile_picture], [role], [user_name]) VALUES (17, N'tests@abv.bg', N'12345678', N'Аз съм тестови потребител', CAST(0x0000A4C700F4651E AS DateTime), N'a9L8XeL_460s.jpg', N'user', N'teeest              ')
INSERT [dbo].[Users] ([user_id], [user_email], [user_password], [user_desc], [modif_date], [profile_picture], [role], [user_name]) VALUES (18, N'EMI@gmai.com', N'emitest', N'sdfasf', CAST(0x0000A4C7013D35AA AS DateTime), N'Fantasy__038816_.jpg', N'user', N'emitest             ')
INSERT [dbo].[Users] ([user_id], [user_email], [user_password], [user_desc], [modif_date], [profile_picture], [role], [user_name]) VALUES (19, N'dadada@dada.da', N'dada', N'dadada', CAST(0x0000A4D0018B08EC AS DateTime), N'a9L8XeL_460s.jpg', N'user', N'dadada              ')
/****** Object:  Table [dbo].[Recipes]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Recipes](
	[recipe_id] [int] NOT NULL,
	[recipe_name] [char](30) NOT NULL,
	[time_to_cook] [int] NOT NULL,
	[calories] [int] NULL,
	[recipe_info] [nvarchar](max) NULL,
	[category_id] [int] NULL,
	[submitter] [int] NULL,
	[submittercomment] [nvarchar](max) NULL,
	[modif_date] [datetime] NULL,
	[difficulty] [int] NULL,
	[recipe_image] [nvarchar](50) NULL,
 CONSTRAINT [PK__Recipes__3571ED9B7F60ED59] PRIMARY KEY CLUSTERED 
(
	[recipe_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [RecipeDataUniqueness] ON [dbo].[Recipes] 
(
	[recipe_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (1, N'Пържени яйца                  ', 10, 199, N'Най-лесното ядене на света', 3, 1, N'Това е моето любимо ядене', CAST(0x0000A4A700DFE5F6 AS DateTime), 1, N'1.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (2, N'Меден кекс                    ', 45, 460, N'Рецепта за любителите на канелата', 2, 1, N'Това е рецепта,която си измислих вчера', CAST(0x0000A4A50104F546 AS DateTime), 1, N'2.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (3, N'Пилешка супа                  ', 30, 46, N'Шупа', 1, 1, N'Зимна супичка', CAST(0x0000A4A50104FC66 AS DateTime), 2, N'3.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (4, N'Пържено пиле                  ', 25, 312, N'Пане', 3, 2, N'Хапчици ', CAST(0x0000A4A50104FE6C AS DateTime), 4, N'4.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (5, N'Пиле с ориз                   ', 70, 126, N'на всички любимото', 3, 1, N'Най-добре да се приготви събота на обяд', CAST(0x0000A4A501050238 AS DateTime), 3, N'5.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (6, N'Бира                          ', 0, 45, N'Наздраве', 4, 13, N'Най-добре да се приготви събота на обяд', CAST(0x0000A4BF00D44FB6 AS DateTime), 1, N'6.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (7, N'Блъди мери                    ', 5, 64, N'Наздраве', 4, 1, N'Солено И алкохолно', CAST(0x0000A4BF00CFE531 AS DateTime), 3, N'7.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (8, N'Водка с портокалов сок        ', 5, 100, N'Наздраве', 4, 16, N'За свежа напитка', CAST(0x0000A4BF00DC6B53 AS DateTime), 2, N'8.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (9, N'Текила сънрайз                ', 5, 110, N'Ако все още нямате история с текила, време е...', 4, 13, N'Наздраве! ', CAST(0x0000A4BF00DC68BD AS DateTime), 2, N'9.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (10, N'Панирани гъби                 ', 15, 157, N'Гъбарска история', 3, 15, N'Всичко започва дбре, когато панирате гъбки!', CAST(0x0000A4BF00DDF0C6 AS DateTime), 2, N'10.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (11, N'Мляко с ориз                  ', 40, 130, N'Всички го помним от детската градина', 2, 15, N'Любима рецепта от детството ', CAST(0x0000A4BF00DFB9F8 AS DateTime), 2, N'11.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (12, N'Паниран кашкавал              ', 10, 430, N'Бързо,лесно,вкусно', 3, 13, N'Децата го обожават ', CAST(0x0000A4C500D3138E AS DateTime), 1, N'12.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (13, N'Панирани сиренца              ', 10, 330, N'Бързо,лесно,вкусно', 3, 13, N'Децата го обожават ', CAST(0x0000A4C500D31566 AS DateTime), 1, N'13.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (14, N'Мляко с канела                ', 3, 55, N'Ако не можете да заспите', 4, 1, N'Децата го обожават ', CAST(0x0000A4BF00CFFB6D AS DateTime), 1, N'14.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (15, N'Пиле с картофи                ', 80, 330, N'Неделна идилия', 3, 2, N'Децата го обожават ', CAST(0x0000A4BF00CFFD85 AS DateTime), 3, N'15.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (16, N'Палачинки                     ', 40, 300, N'Добавете масло,захар и кокосови стърготини за невероятна комбинация', 2, 1, N'Това е за мен неделя сутринта', CAST(0x0000A4C500F0D68E AS DateTime), 2, N'16.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (17, N'Коледни сладки                ', 360, 486, N'Много е препоръчително да ги пазите далеч от най-лакомите поне една седмица на сухо и топло място', 5, 1, N'Весела Коледа', CAST(0x0000A4C700F8AC24 AS DateTime), 4, N'17.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (18, N'Американски палачинки         ', 40, 283, N'Американцките палачинки а по-малки и по-дебели , но са интересна вариация на рецептата, която си струва да опитате', 2, 12, N'Сутрешни приключения', CAST(0x0000A4C700F89AAB AS DateTime), 3, N'18.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (19, N'Родопски пататник             ', 55, 300, N'Класическа рецепта от южна България', 3, 12, N'За любителите на традиционната българска кухня - едно по-нетипично ястие', CAST(0x0000A4C500F488C4 AS DateTime), 4, N'19.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (20, N'Катми                         ', 60, 300, N'От на баба златните рецепти', 2, 12, N'Традиционна тракийска рецепта', CAST(0x0000A4C500F719F8 AS DateTime), 3, N'20.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (21, N'Лесни мъфини                  ', 40, 280, N'Много добра рецепта за първият Ви опит с мъфините.', 2, 12, N'Използвах чужда рецепта, но не съм записала от кого е. Щом съм я копирала,значи ме е впечатлила и да ви кажа, не съм се излъгала. Благодаря на източника!!! ', CAST(0x0000A4C500F9742F AS DateTime), 2, N'21.jpg')
INSERT [dbo].[Recipes] ([recipe_id], [recipe_name], [time_to_cook], [calories], [recipe_info], [category_id], [submitter], [submittercomment], [modif_date], [difficulty], [recipe_image]) VALUES (22, N'Суши - хосо маки със сьомга   ', 150, 111, N'Основна рецепта за суши, класика сред супи рецептите.Рецептата е осъвършенствана с годините и след много моксултации и практически опити с японски приятели. ', 8, 1, N'Рецептата е базирана на традиционните, общодостъпни рецепти за хосо маки, но с практически съвети, събирани с години.', CAST(0x0000A4C500FDAD61 AS DateTime), 4, N'22.jpg')
/****** Object:  StoredProcedure [dbo].[last_ingr_id]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[last_ingr_id]
@ingr_id int=null output
as
begin
set nocount on;
set @ingr_id =(select MAX(ingredient_id) from Ingredients )+1
print @ingr_id
end
GO
/****** Object:  StoredProcedure [dbo].[update_userspass]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[update_userspass]
@user_name nvarchar(50)=null,
@user_oldpass nvarchar(20)=null,
@user_newpass nvarchar(20)=null
as
begin 
declare @mess nvarchar(50),
			@rows int
	select @rows = COUNT (*) from Users
	where user_name=@user_name and user_password = @user_oldpass
	if @rows=0
		Begin 
			Set @mess=N'Няма такъв потребител!'
			raiserror (@mess,16,1)
			return 
		end
	begin try 
		update Users
		set user_password= @user_newpass
		where user_name=@user_name
	end try 
	begin catch 
		set @mess=N'Паролата не може да бъде сменена!'
		raiserror (@mess,16,1)
		return 
	end catch 
end
GO
/****** Object:  StoredProcedure [dbo].[update_usersmail]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[update_usersmail]
@user_name nvarchar(50)=null,
@user_mail nvarchar(100)=null
as 
begin 
declare @mess nvarchar(50),
			@rows int
	select @rows = COUNT (*) from Users
	where user_name=@user_name
	if @rows=0
		Begin 
			Set @mess=N'Няма такава съставка!'
			raiserror (@mess,16,1)
			return 
		end
	begin try 
		update Users
		set user_email=@user_mail
		where user_name=@user_name
	end try 
	begin catch 
		set @mess=N'Профилната снимка не може да бъде променена!'
		raiserror (@mess,16,1)
		return 
	end catch 
end
GO
/****** Object:  StoredProcedure [dbo].[update_usersdesc]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[update_usersdesc]
@user_name nvarchar(50)=null,
@user_desc nvarchar(max)=null
as
begin 
declare @mess nvarchar(50),
			@rows int
	select @rows = COUNT (*) from Users
	where user_name=@user_name
	if @rows=0
		Begin 
			Set @mess=N'Няма такъв потребител!'
			raiserror (@mess,16,1)
			return 
		end
	begin try 
		update Users
		set user_desc=@user_desc
		where user_name=@user_name
	end try 
	begin catch 
		set @mess=N'Описанието не може да бъде сменено!'
		raiserror (@mess,16,1)
		return 
	end catch 
end
GO
/****** Object:  StoredProcedure [dbo].[update_users]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[update_users]
@user_name nvarchar(50)=null,
@profile_pic nvarchar(100)=null
as 
begin 
declare @mess nvarchar(50),
			@rows int
	select @rows = COUNT (*) from Users
	where user_name=@user_name
	if @rows=0
		Begin 
			Set @mess=N'Няма такава съставка!'
			raiserror (@mess,16,1)
			return 
		end
	begin try 
		update Users
		set profile_picture=@profile_pic
		where user_name=@user_name
	end try 
	begin catch 
		set @mess=N'Профилната снимка не може да бъде променена!'
		raiserror (@mess,16,1)
		return 
	end catch 
end
GO
/****** Object:  StoredProcedure [dbo].[insert_users]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insert_users] 
@user_id int=null,
@user_email nvarchar(50)=null,
@user_pass nvarchar(20)=null,
@user_desc nvarchar(max)=null,
@profile_picture nvarchar(50)=null,
@role nvarchar(10) = null,
@user_name nchar(20)=null
as 
begin 
	declare @msg nvarchar(60)
	begin try
		insert into Users (user_id,user_email,user_password,user_desc,profile_picture,role,user_name)
		values (@user_id,@user_email,@user_pass,@user_desc,@profile_picture,@role,@user_name)
	end try
	begin catch 
		set @msg='Добавянето на потребител не е възможно!'
		raiserror(@msg,16,1)
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[delete_users]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[delete_users]
@user_id int=null
as 
begin 
declare @mess nvarchar(50),
			@rows int
	select @rows = COUNT (*) from Users
	where user_id=@user_id
	if @rows=0
		Begin 
			Set @mess=N'Няма такава съставка!'
			raiserror (@mess,16,1)
			return 
		end
	begin try 
		delete from Users
		where user_id=@user_id
	end try 
	begin catch 
		set @mess=N'Съставката не може да бъде изтрита!'
		raiserror (@mess,16,1)
		return 
	end catch 
end
GO
/****** Object:  StoredProcedure [dbo].[insert_ingr]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insert_ingr]
@ingr_id int=null,
@ingr_name char(40)=null
as 
begin 
	declare @msg nvarchar(60)
	begin try
		insert into Ingredients (ingredient_id,ingredient_name)
		values (@ingr_id,@ingr_name)
	end try
	begin catch 
		set @msg=N'Не може да бъде добавена съставката!'
		raiserror(@msg,16,1)
		return
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[last_user_id]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[last_user_id]
@user_id int=null output
as
begin
set nocount on;
set @user_id =(select MAX(user_id) from Users )+1
end
GO
/****** Object:  StoredProcedure [dbo].[CheckUsers]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure 
[dbo].[CheckUsers]  
@name nvarchar(50),
@pass nvarchar(20),
@result int output
as 
begin 
	if exists (select * from Users
			where user_name=@name and user_password=@pass) 
		set @result= (select user_id from Users where user_name = @name and user_password=@pass)
	else 
		set @result=0 
	return @result 
end
GO
/****** Object:  StoredProcedure [dbo].[CheckUserID]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure 
[dbo].[CheckUserID] 
@name nvarchar(50) =null,
@pass nvarchar(20)=null,
@id int=null output
as 
begin 
set @id=0
if exists (select * from Users
			where user_name=@name and user_password=@pass) 
		set @id= (select user_id from Users
			where user_name=@name and user_password=@pass) 
	else 
		set @id=0
		print @id
	return @id
end
GO
/****** Object:  StoredProcedure [dbo].[CheckRole]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CheckRole] 
@user_name nvarchar(50),
@role int output 
as 
begin 
declare @temp nvarchar(20);
set @temp = (Select role from Users where user_name = @user_name);
	if @temp= 'admin'
		set @role= 1
	else 
		set @role = 0
return @role
end
GO
/****** Object:  StoredProcedure [dbo].[delete_ingr]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[delete_ingr]
@ingr_id int=null
as 
begin 
	declare @mess nvarchar(50),
			@rows int
	select @rows = COUNT (*) from Ingredients
	where ingredient_id=@ingr_id
	if @rows=0
		Begin 
			Set @mess=N'Няма такава съставка!'
			raiserror (@mess,16,1)
			return 
		end
	begin try 
		delete from Ingredients
		where ingredient_id=@ingr_id
	end try 
	begin catch 
		set @mess=N'Съставката не може да бъде изтрита!'
		raiserror (@mess,16,1)
		return 
	end catch 
end
GO
/****** Object:  Table [dbo].[Favourites]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favourites](
	[recipe_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[modif_date] [datetime] NULL,
 CONSTRAINT [favourites_pk] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[recipe_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Favourites] ([recipe_id], [user_id], [modif_date]) VALUES (1, 1, CAST(0x0000A4A600FCB297 AS DateTime))
INSERT [dbo].[Favourites] ([recipe_id], [user_id], [modif_date]) VALUES (2, 1, CAST(0x0000A4A6010B8D26 AS DateTime))
INSERT [dbo].[Favourites] ([recipe_id], [user_id], [modif_date]) VALUES (3, 1, CAST(0x0000A4A60107A348 AS DateTime))
INSERT [dbo].[Favourites] ([recipe_id], [user_id], [modif_date]) VALUES (4, 1, CAST(0x0000A4AD013B24F8 AS DateTime))
INSERT [dbo].[Favourites] ([recipe_id], [user_id], [modif_date]) VALUES (5, 1, CAST(0x0000A4AD01395B17 AS DateTime))
INSERT [dbo].[Favourites] ([recipe_id], [user_id], [modif_date]) VALUES (6, 1, CAST(0x0000A4AD013B176A AS DateTime))
INSERT [dbo].[Favourites] ([recipe_id], [user_id], [modif_date]) VALUES (7, 1, CAST(0x0000A4AD013B0ECF AS DateTime))
INSERT [dbo].[Favourites] ([recipe_id], [user_id], [modif_date]) VALUES (10, 1, CAST(0x0000A4AD013B4047 AS DateTime))
/****** Object:  StoredProcedure [dbo].[last_recipe_id]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[last_recipe_id]
@recipe_id int=null output
as
begin
set nocount on;
set @recipe_id =(select MAX(recipe_id) from Recipes )+1
print @recipe_id
end
GO
/****** Object:  StoredProcedure [dbo].[insert_recipes]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insert_recipes]
@recipe_id int=null,
@recipe_name nvarchar(50)=null,
@ttc int = null,
@calories int =null,
@recipe_info nvarchar(max)=null,
@category_id int = null,
@submitter int=null,
@submittercomment nvarchar(max)=null,
@difficulty int = null,
@recipe_image nvarchar(50)=null

as 
begin 
	declare @mess nvarchar(40)
	--begin try 
		insert into Recipes (
		recipe_id,
		recipe_name,
		time_to_cook,
		calories,
		category_id,
		recipe_info,
		submitter,
		submittercomment,
		difficulty,
		recipe_image)
		values (
		@recipe_id,
		@recipe_name,
		@ttc,
		@calories,
		@category_id,
		@recipe_info,
		@submitter,
		@submittercomment,
		@difficulty,
		@recipe_image)
	--end try
	--begin catch 
	--	set @mess=N'Не е възможно да се осъществи запис!'
	--	Raiserror(@mess,16,1)
	--	return 
	--end catch
end
GO
/****** Object:  Table [dbo].[Steps]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Steps](
	[step_number] [int] NOT NULL,
	[recipe_id] [int] NOT NULL,
	[step_description] [nvarchar](max) NOT NULL,
	[modif_date] [datetime] NULL,
 CONSTRAINT [recipe_steps_pk] PRIMARY KEY CLUSTERED 
(
	[step_number] ASC,
	[recipe_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 1, N'Загрейте леко мазнината (1-2 минути)', CAST(0x0000A4A500D7AEBA AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 2, N'Разбийте с миксер яйцата, постепенно добавяйки ахарта в тях', CAST(0x0000A4A500E50F00 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 3, N'Сложете около 2 литра вода в голяма тенджера. Добавете в нея пилешкото месо и около 1/2 лъжичка сол.', CAST(0x0000A4A500E6672D AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 4, N' Пилето се измива и подсушава', CAST(0x0000A4A500E83081 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 5, N'Пилешкото месо се измива добре и се слага да ври в подсолена вода. След като заври се отпенва и се добавят една глава нарязан лук и няколко зърна черен пипер. Варим до почти пълна готовност но месото.', CAST(0x0000A4A500E96720 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 6, N'Отворете бирата', CAST(0x0000A4A500F0B678 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 7, N'Сложете в шейкър 2-3 бучки лед и долейте водката, доматения сок, сос Уорчестър и Табаско и малко сол и черен пипер на вкус. ', CAST(0x0000A4BF00D6F115 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 8, N'Водката и портокаловият сок се охлаждат добре в хладилника, след което се смесват и разбиват добре, интензивно.', CAST(0x0000A4BF00DB4E8A AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 9, N'Всички съставки освен гренадина, се смесват в шейкър с лед,бъркат се интензивно.', CAST(0x0000A4BF00DD3E0A AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 10, N'Гъбите се измиват добре и се бланшират за 2 минути във вряща подсолена вода. Изваждат се и се оставят да се отцедят добре.', CAST(0x0000A4BF00DF02E7 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 11, N'Оризът (250 г) се сипва в тенджера и се залива с водата (150 мл.). Бърка се на силен огън, докато я поеме за около 5 минути.', CAST(0x0000A4BF00E1221A AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 12, N'Нарязвате кашкавала на правоъгълници с дебилина около 2 см. и го оставяте за 30 мин. в фризер. ', CAST(0x0000A4C500D2AB3A AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 13, N'Нарежете сиренето на хапки и го сложете във фризера. Използвайте добре зряло и твърдо краве сирене.', CAST(0x0000A4C500D464DA AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 14, N'Стоплете млякото до предпочитана от Вас температура.', CAST(0x0000A4C500D565F5 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 15, N'Изчистване на пилето:', CAST(0x0000A4C500D81B90 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 16, N'От прясното мляко (1/2 л.), яйцата (3 бр), брашното (250 г), разтопеното масло (1 с.л.) и солта (1 щип.) се разбива палачинково тесто с консистенция малко по-рядка от боза. ', CAST(0x0000A4C500EEF809 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 18, N'Смесвате яйцата и солта и бъркате енергично и продължително.', CAST(0x0000A4C500F2702D AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 19, N'Обелвате картофите и ги настъргвате на едро', CAST(0x0000A4C500F5E91A AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 20, N'Смесватемаята с малко топличка вода (телесна температура например).Добавяте брашното,яйцата, захарта, солта. ', CAST(0x0000A4C500F83E32 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 21, N'Тестото за мъфините се приготвя, като най-напред се разбива яйцето със захарта, а след това се добавя киселото мляко. ', CAST(0x0000A4C500FA982C AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (1, 22, N'Измивате ориза неколкократно,със студена вода - до момента, в който водата , в която е ориза, не стане чиста, т/е/ нишестето от нея е измито.', CAST(0x0000A4C500FF965D AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 1, N'Добавете в мазнината щипка сол и щипка червен пипер ', CAST(0x0000A4A500D7D240 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 2, N'Добавете содата в киселото мляко и разбъркайте, добавете към яйцата и захарта', CAST(0x0000A4A500E53038 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 3, N'Варете пилето максимум около час (трябва да стане бяло цялото, проверете дали не е сурово отвътре!Лесен начин да разберете дали е готово е да се опитате да го отделоите от костите -ако лесно се отделя,значи е сварено.', CAST(0x0000A4A500E6BA23 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 4, N'Нарязва се на 10 парчета. ', CAST(0x0000A4A500E8413F AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 5, N'В тиган в повечко мазнина (ориза обича повече мазнина) се запържва другата нарязана глава лук с настъргания/нарязан морков. Прибавя се измитият ориз и се запържва докато стане прозрачен. Към края се добавя и куркумата. ', CAST(0x0000A4A500E9719C AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 6, N'По желание изсипете бирата в чаша', CAST(0x0000A4A500F0C3BA AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 7, N'Разбийте всичко добре и излейте коктейла във висока чаша. ', CAST(0x0000A4BF00D6FF5C AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 8, N'Коктейлът се сервира с бучка лед.', CAST(0x0000A4BF00DB5A33 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 9, N'Слага се готовата напитка във високи чаши, добавя се внимателно (и много бавно!) гренадина за да падне на дъното и се декорира с резенче портокал.', CAST(0x0000A4BF00DD69E0 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 10, N'През това време в купа се разбиват яйцата, прибавя се брашното и отново се разбива до получаване на гъста каша. ', CAST(0x0000A4BF00DF097F AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 11, N'Намалява се котлонът и се долива прясното мляко (1 л.). Добавят се захарта (7 с.л.) и ванилията (1 ч.л.). Оризът се вари в млякото, докато го поеме - за около 20-25 минути (зависи от вида ориз, бланшираният ориз, например, се готви по-бързо).', CAST(0x0000A4BF00E13113 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 12, N'Брашното се смесва с 100 мл. студена вода и щипка сол и се бърка до получаване на гладка каша. Отделно се разбиват яйцата.', CAST(0x0000A4C500D2B72A AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 13, N'В купа пресейте брашното. Направете кладенче, добавете яйцата и малко олио и започнете да разбърквате с брашното. ', CAST(0x0000A4C500D480B7 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 14, N'Добавете канела, при нужда добавете още малко канела.', CAST(0x0000A4C500D5778E AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 15, N'Сложете олиото на дъното на тавичката.Отгоре сложете почистеното, измито и подсушено пиле, овкусено със сол. ', CAST(0x0000A4C500D84101 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 16, N'От тестото се пекат палачинки до изчерпване на количеството. От посочените продукти би трябвало да се получат около 10-12 палачинки.', CAST(0x0000A4C500EF02A5 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 18, N'Бавно добавяте брашното (с цел то да не покрие 3 км околовръст с тънък слой бял прах).', CAST(0x0000A4C500F28D80 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 19, N'Настъргвате и лука в същата съдинка', CAST(0x0000A4C500F5E0C7 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 20, N'Оставяте да втасва на топло, докато не се получат хубаво шупли.', CAST(0x0000A4C500F857C8 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 21, N'Продуктите се разбиват, а след това се добавя разтопеното масло или ', CAST(0x0000A4C500FAA776 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (2, 22, N'Слагате ориза да се вари, като правилото е водата да достига нивото на китката ви, след като опрете с ръка ориза в тенджерата.', CAST(0x0000A4C500FFBC60 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 1, N'Счупете яйцата в ръба на най-близката маса (леко!) и ги ги изсипете в мазнината.', CAST(0x0000A4A500D7FD82 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 2, N'Добавете и меда и канелата', CAST(0x0000A4A500E53FB3 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 3, N'Извадете пилето от бульона, но не хвърляйте нито едното от двете . Пилето сложете в чинийка , а бульона оставете на котлона.', CAST(0x0000A4A500E75B16 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 4, N' В купа се разбърква брашното, нишестето, 1 ч. л. сол и 1/8 ч. л. смлян черен пипер.', CAST(0x0000A4A500E848AF AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 5, N'В тава се слагат оризът, отгоре свареното пилешко месо, налива се от бульона и се подправя на вкус със сол и млян черен пипер. Поръсва се с джоджен и се слага да се пече в умерена фурна. ', CAST(0x0000A4A500E9844B AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 6, N'Наздраве!', CAST(0x0000A4A500F0CF17 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 7, N'Украсата на Блъди Мери (Bloody Mary) може да варира - с резен лайм, резен домат или чери доматчета по ръба, както и стръкче целина. ', CAST(0x0000A4BF00D71360 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 8, N'Наздраве!', CAST(0x0000A4BF00DD7FBA AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 9, N'Наздраве!', CAST(0x0000A4BF00DD77E0 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 10, N'Добавят се бирата, сол и черен пипер на вкус.', CAST(0x0000A4BF00DF13C9 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 11, N'Млякото с ориз се разделя на порции в 4 големи купи и се поръсва с канела на прах (1/2 ч.л.). Десертът се оставя да изстине. Може да се сервира така или да се охлади в хладилник.', CAST(0x0000A4BF00E13DDC AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 12, N'Кашкавалът се потапя в купа с студена вода, след това в брашнената каша, след това в галетата, а накрая в разбитите яйца.', CAST(0x0000A4C500D2C147 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 13, N'Бъркайте и постепенно долейте и бирата', CAST(0x0000A4C500D49295 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 14, N'Сервирайте с или без бисквити, ако е точно преди лягане - без!', CAST(0x0000A4C500D58B72 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 15, N'Наоколо подредете четвъртинките обелени картофи, сложете още няколко филийки сланина и сложете да се пече в слаба фурна(150-180 градуса)', CAST(0x0000A4C500D85944 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 16, N'!!!Тънкостта на вкусните палачинки е в добре разбитото с миксер тесто, в което няма бучки, в добавената супена лъжица разтопено масло, благодарение на което палачинките не залепват и се отделят с лекота от повърхността на тефлоновия тиган, а също и в краткото време на котлона, така че да не загорят.', CAST(0x0000A4C500EF1D67 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 18, N'Добавяте содата бикарбонат и млякото, олиото.', CAST(0x0000A4C500F2B923 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 19, N'Добавяте последователно : яйцата ,брашното(бавно и внимателно),олиото, джодженът, солта, пипера', CAST(0x0000A4C500F62137 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 20, N'Печете до изчерпване на тестото. С толкова продукти би трябвало да се получат до 30 катми(може би по-малко).', CAST(0x0000A4C500F8A3F1 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 21, N'Разпределяме сместа във форми за мъфини с помощта на лъжица. За предпочитане е да се използва метална тава за мъфини, като във всяка купичка е поставена хартийка за мъфин. ', CAST(0x0000A4C500FABAD5 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (3, 22, N'Варите, докато стане готов и оставяте още 5 минути под капака', CAST(0x0000A4C500FFCF6F AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 1, N'Пържете на умерен огън (не най-силната степен на котлона), докато желтъкът се забули леко от побелелия белтък или не стане светло жълт ', CAST(0x0000A4A500D84CCD AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 2, N'Намажете тавичка с олио или масло(за маслото трябва леко да я нагреете предварително)', CAST(0x0000A4A500E57868 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 3, N'Нарежете зеленчуците на малки кубчета и ги добавете постепенно към бульона- първо се добавят моркова и лука ( който може да позапържите предварително ако искате), след 5 минутки картофите, а след още 5 може да добавите фиде.', CAST(0x0000A4A500E77C18 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 4, N'От сместа се отделя 3/4 ч. ч. , която се прехвърля в плик и се оставя на страни', CAST(0x0000A4A500E856CA AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 5, N'След като ястието е готово (течността не трябва да е напълно поета от ориза) се вади от фурната, поръсва се със сока на половин лимон и се покрива с фолио за около 15-20 минути През това време ориза си *дръпва* остатъчната течност и мазнина. ', CAST(0x0000A4A500E98B29 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 7, N'Наздраве!', CAST(0x0000A4BF00D72818 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 10, N'Всяка гъба се потапя в панировката обилно и се пържи в сгорещено олио до зачервяване. ', CAST(0x0000A4BF00DF28DC AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 11, N'Да Ви е сладко!', CAST(0x0000A4BF00E17792 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 12, N'Пържат се веднага в олио, след това се отцеждат върху кухненска хартия или салфетка. ', CAST(0x0000A4C500D2D05D AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 13, N'Добавете останалото олио и объркайте внимателно с предварително разбитите на сняг белтъци, към които сте добавили малко сол.', CAST(0x0000A4C500D4A01F AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 14, N'Наздраве!', CAST(0x0000A4C500D593DA AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 15, N'По време на печенето, поливайте леко пилето и картофите със стопено масло. ', CAST(0x0000A4C500D885A9 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 16, N'Винаги бъдете внимателни, когато приготвяте палачинки, няколко секунди невнимание и те могат да загорят!', CAST(0x0000A4C500EF36AE AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 18, N'Оставяте сместа да престои поне 20 минути, може и повече.', CAST(0x0000A4C500F2C914 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 19, N'Загрявате тавичката и я намазвате с масло .Разстилате сместа в нея.', CAST(0x0000A4C500F64FCF AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 20, N'Да Ви е сладко!', CAST(0x0000A4C500F8AD6A AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 21, N'Мъфините се пекат в предварително загрята до 180С градуса фурна за около 20-25 минути.', CAST(0x0000A4C500FACC5B AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (4, 22, N'Сгрявате оцета малко, смесвате със захарта и солта.Разстилате ориза в широка тава и постепенно заливате ориза със сместа, докато с едната ръка (или с помощ от приятел) веете над ориза с ветрило, вестник или друго подръчно средство.Така ориза се охлажда и стяга, което улеснява манупулацията по-нататък.', CAST(0x0000A4C501008976 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (5, 1, N'По желание добавете черен пипер , чубрица или счукан чесън,разбъркан с кисело мляко и мъничко сол.', CAST(0x0000A4A500D874B4 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (5, 2, N'Изсипете сместа и печете на 200 градуса около 20 минутки', CAST(0x0000A4A500E59656 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (5, 3, N'Обезкостете пилето и го накъсайте на дребни парченца, които после изсипете в супата.', CAST(0x0000A4A500E7B2CE AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (5, 4, N'В останалата смес се овалват пилешките парчета месо.', CAST(0x0000A4A500E864FE AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (5, 5, N'Да Ви е сладко!', CAST(0x0000A4A500E9972E AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (5, 10, N' Готовите панирани гъби се отцеждат върху кухненска хартия, за да се отстрани излишната мазнина.', CAST(0x0000A4BF00DF2E1F AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (5, 12, N'Да Ви е сладко!', CAST(0x0000A4C500D2D810 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (5, 13, N'Оваляйте сиренцата първо в брашно, после в панировката. Пускайте ги в силно сгорещена мазнина да се изпържат от двете страни.', CAST(0x0000A4C500D4AD15 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (5, 15, N'Малко преди края на печенето добавете нарязания на призмички хляб, полейте с малко масло и доизпечете. ', CAST(0x0000A4C500D8AD1C AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (5, 16, N'Препоръчителни комбинации от администратора: сирене, кашкавал(натърган), сладко от смокини, комбинация от захар и кокосови стърготини (намажете палачинката и с допълнотелно масло), канела с мед', CAST(0x0000A4C500EF700F AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (5, 18, N'Загрявате котлон и ги печете- дебели , но не с голям радиус .', CAST(0x0000A4C500F2ECAC AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (5, 19, N'Печете 40 минути на 220 градуса.', CAST(0x0000A4C500F66503 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (5, 21, N'В сместа може да добавите какао за шоколадови мъфини (2 лъжици), или малки парченца шоколад.', CAST(0x0000A4C500FAE9D2 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (5, 22, N'Нарязвате сьомгата, краставицата на тънки и дълги ивици.', CAST(0x0000A4C50100A245 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (6, 1, N'Да Ви е сладко!', CAST(0x0000A4A500D87CC7 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (6, 2, N'За да проверите дали е готов кекса, забучете в него клечка за зъби - ако е суха,значи кексът е готов.', CAST(0x0000A4A500E5B4C5 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (6, 3, N'След сваляне на супата от котлона добавете чубрица, магданоз, черен пипер и други подправки по желание.', CAST(0x0000A4A500E7D3A4 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (6, 4, N'Прясното мляко се разбърква с лимоновия сок и се оставя на страни 5 минути.', CAST(0x0000A4A500E87304 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (6, 10, N'Може да добавите резенче лимон по желание (важи за всичко панирано)', CAST(0x0000A4BF00DF47A1 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (6, 13, N'След изпържване поставете в съдинка, постлана със салфетка,за да се отцеди мазнината от тях.', CAST(0x0000A4C500D4CD93 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (6, 15, N'Поднесете печеното пиле с картофи със зеленчукова салата.', CAST(0x0000A4C500D8B9B7 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (6, 16, N'Да Ви е сладко!', CAST(0x0000A4C500EF98C9 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (6, 18, N'Намажете палачинките със сладко, кленов сироп, мед.', CAST(0x0000A4C500F2FD78 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (6, 21, N'Да Ви е сладко!', CAST(0x0000A4C500FAF246 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (6, 22, N'Върху бамбукова постелка (или рогозка, с каквото разполагате) поставяте стреч фолио, за да не залепва сушито.', CAST(0x0000A4C501022B48 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (7, 2, N'По желание поръсете с пудра захар целия кекс след като го извадите от тавичката.', CAST(0x0000A4A500E5D936 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (7, 3, N'Да Ви е сладко!', CAST(0x0000A4A500E81B7D AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (7, 4, N'В дълбока купа се сипва млякото и след това се потапят панираните пилешки парчета.', CAST(0x0000A4A500E87CD4 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (7, 10, N'Да Ви е сладко!', CAST(0x0000A4BF00DF5256 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (7, 13, N'Сервирайте с лимонче и салата.', CAST(0x0000A4C500D4E04C AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (7, 15, N'Да Ви е сладко!', CAST(0x0000A4C500D8C2F6 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (7, 18, N'Да Ви е сладко!', CAST(0x0000A4C500F306AC AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (7, 22, N'Слагате едно нори и върху него разстилате ориз , като покривате олътно норито, но не правите твърде дебел слой.', CAST(0x0000A4C501025777 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (8, 2, N'Да Ви е сладко!', CAST(0x0000A4A500E9015E AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (8, 4, N'Купата се покрива и пилешкото месо се маринова от 3 до 12 часа в хладилник.', CAST(0x0000A4A500E88664 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (8, 13, N'Да Ви е сладко!', CAST(0x0000A4C500D4EA1D AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (8, 22, N'Върху ориза нареждате в една лента по средата сьомга и краставица, добавяте крема сирене по желание.Може да сложите и съвсем малко уасаби ако сте любители на лютото.', CAST(0x0000A4C501029BB9 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (9, 4, N'В голям и дълбок тиган се загрява олиото до 175 С.', CAST(0x0000A4A500E89285 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (9, 22, N'Завивате внимателно рулото, като се стараете да стане максимално плътно и стегнато.За да закрепите норито около ориза стабилно, слагате малко вода(или ако имате, от сместа с оцета), мокрото водорасло става лепливо и може да бъде залепено за долния слой.', CAST(0x0000A4C50103368F AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (10, 4, N'Пилешките парчета се изваждат от млякото.', CAST(0x0000A4A500E8AA09 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (10, 22, N'Готовите рула може да сложите в хладилника за 30-60 минути за по-лесно нарязване, макар да не е задължително.', CAST(0x0000A4C50102D6DD AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (11, 4, N'Овалват се в отделената брашнена смес от предната вечер. ', CAST(0x0000A4A500E8B569 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (11, 22, N'Рулото се реже на резенчета с помощта на най-острия нож, който имате.Преди всяко резенче е хубаво да изчиствате острието от ориз и да го потапяте във вода - отново, така омеква водораслото и е по-податливо на промяна. ', CAST(0x0000A4C5010375EF AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (12, 4, N'Пускат се в сгорещеното олио.', CAST(0x0000A4A500E8C0E3 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (12, 22, N'Смесвате уасаби(половин 1.л. ) със соев сос (1 ч.л.).Добре е всеки гост да разполага със своя купичка с този сос.', CAST(0x0000A4C50103AC6C AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (13, 4, N'Пилето се пържи на части до златист цвят и готовност от двете страни около 16-20 минути.', CAST(0x0000A4A500E8CC84 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (13, 22, N'Сервирате, като всяка хапка се потапя в соев сос с уасаби преди да бъде хапната.', CAST(0x0000A4C50103C50D AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (14, 22, N'Да Ви е сладко!', CAST(0x0000A4C50103CD87 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (15, 4, N'Пърженото пиле се изважда и се оставя да престои 5 минути преди поднасяне.', CAST(0x0000A4A500E8D508 AS DateTime))
INSERT [dbo].[Steps] ([step_number], [recipe_id], [step_description], [modif_date]) VALUES (16, 4, N'Да Ви е сладко!', CAST(0x0000A4A500E8E770 AS DateTime))
/****** Object:  Table [dbo].[Reviews]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[review_text] [nvarchar](max) NOT NULL,
	[recipe_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[dateandtime] [datetime] NOT NULL,
	[modif_date] [datetime] NULL,
	[review_number] [int] NOT NULL,
 CONSTRAINT [reviews_pk] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[recipe_id] ASC,
	[review_number] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Reviews] ([review_text], [recipe_id], [user_id], [dateandtime], [modif_date], [review_number]) VALUES (N'Бърза и удобна рецепта, подходяща за начинаещи', 1, 1, CAST(0x0000A4AC00DFE5F6 AS DateTime), CAST(0x0000A4C700F65D69 AS DateTime), 1)
INSERT [dbo].[Reviews] ([review_text], [recipe_id], [user_id], [dateandtime], [modif_date], [review_number]) VALUES (N'test', 1, 1, CAST(0x0000A4C700F65D67 AS DateTime), CAST(0x0000A4C700F65D69 AS DateTime), 2)
INSERT [dbo].[Reviews] ([review_text], [recipe_id], [user_id], [dateandtime], [modif_date], [review_number]) VALUES (N'Препоръчваме с оцет или кисело мляко :) ', 3, 1, CAST(0x0000A4A400C97858 AS DateTime), CAST(0x0000A4AD00FA2A55 AS DateTime), 4)
INSERT [dbo].[Reviews] ([review_text], [recipe_id], [user_id], [dateandtime], [modif_date], [review_number]) VALUES (N'Testing', 3, 1, CAST(0x0000A4AD00FA2A53 AS DateTime), CAST(0x0000A4AD00FA2A55 AS DateTime), 5)
INSERT [dbo].[Reviews] ([review_text], [recipe_id], [user_id], [dateandtime], [modif_date], [review_number]) VALUES (N'Благодаря,наистина ми помогна да си опържа яйца!', 1, 2, CAST(0x0000A4AC01115636 AS DateTime), CAST(0x0000A4AC010E38AB AS DateTime), 2)
INSERT [dbo].[Reviews] ([review_text], [recipe_id], [user_id], [dateandtime], [modif_date], [review_number]) VALUES (N'Чудесна за оздравяване', 3, 2, CAST(0x0000A4A400C97858 AS DateTime), CAST(0x0000A4AC0114FB33 AS DateTime), 3)
INSERT [dbo].[Reviews] ([review_text], [recipe_id], [user_id], [dateandtime], [modif_date], [review_number]) VALUES (N'Коментар', 13, 17, CAST(0x0000A4C700F846F6 AS DateTime), CAST(0x0000A4C700F853FC AS DateTime), 1)
INSERT [dbo].[Reviews] ([review_text], [recipe_id], [user_id], [dateandtime], [modif_date], [review_number]) VALUES (N'Коментар', 13, 17, CAST(0x0000A4C700F853FC AS DateTime), CAST(0x0000A4C700F853FC AS DateTime), 2)
INSERT [dbo].[Reviews] ([review_text], [recipe_id], [user_id], [dateandtime], [modif_date], [review_number]) VALUES (N'С голямо нетърпение чакаме да получим повече информация за рецептата, макар да е юли месец!', 17, 17, CAST(0x0000A4C700F8EB8C AS DateTime), CAST(0x0000A4C700F8EB8C AS DateTime), 1)
/****** Object:  Table [dbo].[Recipe_Ingredient]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipe_Ingredient](
	[ingredient_id] [int] NOT NULL,
	[recipe_id] [int] NOT NULL,
	[ingredient_quantity] [nvarchar](50) NOT NULL,
	[modif_date] [datetime] NULL,
 CONSTRAINT [recipe_ingredient_pk] PRIMARY KEY CLUSTERED 
(
	[ingredient_id] ASC,
	[recipe_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (1, 3, N'2 бутчета или половин пиле', CAST(0x0000A4A500EE573D AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (1, 4, N'900гр.', CAST(0x0000A4A500EF576E AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (1, 5, N'1 цяло пиле ( на порции)', CAST(0x0000A4A500EFCEA8 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (1, 15, N'1 цяло пиле', CAST(0x0000A4C500D5F9EC AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (2, 3, N'1 малка глава', CAST(0x0000A4A500EE9C01 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (2, 5, N'2 глави', CAST(0x0000A4A500EFEF94 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (2, 19, N'1 глава', CAST(0x0000A4C500F4C416 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (3, 3, N'2 броя', CAST(0x0000A4A500EE81E1 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (3, 15, N'600гр.', CAST(0x0000A4C500D66A30 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (3, 19, N'8-9 едри ', CAST(0x0000A4C500F4AD44 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (4, 5, N'2 ч.ч.', CAST(0x0000A4A500F00AD6 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (4, 11, N'250 гр.', CAST(0x0000A4BF00DFECE0 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (4, 22, N'750 гр.', CAST(0x0000A4C700F2198E AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (6, 10, N'1 кг', CAST(0x0000A4BF00DE4B68 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (7, 6, N'1 бутилка (работи и с по-големи количества)', CAST(0x0000A4A500F0F828 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (7, 10, N'3 с.л.', CAST(0x0000A4BF00DE9FEE AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (7, 13, N'250 гр.', CAST(0x0000A4C500D3D658 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (9, 2, N'2 ч.ч.', CAST(0x0000A4A500ED2B02 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (9, 4, N'3/4 ч.ч.', CAST(0x0000A4A500EF10D8 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (9, 10, N'150 гр.', CAST(0x0000A4BF00DE8725 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (9, 12, N'150гр', CAST(0x0000A4C500D28D57 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (9, 13, N'250гр', CAST(0x0000A4C500D39046 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (9, 16, N'250 гр.', CAST(0x0000A4C500EE79C5 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (9, 18, N'140гр', CAST(0x0000A4C500F1CA70 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (9, 19, N'4 с.л.', CAST(0x0000A4C500F502D4 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (9, 20, N'1 кг', CAST(0x0000A4C500F794EA AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (9, 21, N'1 ч.ч.', CAST(0x0000A4C500F9F70D AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (10, 1, N'2 бр.', CAST(0x0000A4A500EC2E0C AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (10, 2, N'2 бр.', CAST(0x0000A4A500ECA2A9 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (10, 10, N'2', CAST(0x0000A4BF00DE7F72 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (10, 12, N'3 бр', CAST(0x0000A4C500D24A25 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (10, 13, N'3 бр', CAST(0x0000A4C500D3A9E8 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (10, 16, N'3бр', CAST(0x0000A4C500EE64B8 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (10, 18, N'2 бр.', CAST(0x0000A4C500F16DA6 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (10, 19, N'4 ', CAST(0x0000A4C500F9A19F AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (10, 20, N'2 бр (може и без тях)', CAST(0x0000A4C500F7C813 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (10, 21, N'1бр', CAST(0x0000A4C500F99C61 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (11, 2, N'1 ч.ч.', CAST(0x0000A4A500ECEE43 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (11, 11, N'7 с.л.', CAST(0x0000A4BF00E0BA32 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (11, 20, N'На вкус ( не много)', CAST(0x0000A4C500F7EA6B AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (11, 21, N'1 ч.ч.', CAST(0x0000A4C500F9D5B0 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (11, 22, N'3 с.л.', CAST(0x0000A4C501002818 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (12, 2, N'1/2 ч.л.', CAST(0x0000A4A500EE0F17 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (12, 11, N'1 ч.л.', CAST(0x0000A4BF00E10A65 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (12, 14, N'2 щипки', CAST(0x0000A4C500D54A07 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (13, 7, N'60 мл', CAST(0x0000A4BF00D52878 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (13, 8, N'1 1/2 ч.ч.', CAST(0x0000A4BF00DB3579 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (13, 9, N'60мл', CAST(0x0000A4BF00DCAD97 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (15, 8, N'3 ч.ч.', CAST(0x0000A4BF00DB30D9 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (15, 9, N'120 мл', CAST(0x0000A4BF00DD0D4A AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (17, 13, N'300-400гр', CAST(0x0000A4C500D3717E AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (18, 12, N'500 гр', CAST(0x0000A4C500D2438E AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (19, 4, N'500 мл ( или малко по-малко)', CAST(0x0000A4A500EF374F AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (19, 11, N'1 литър', CAST(0x0000A4BF00DFF47F AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (19, 14, N'200 мл', CAST(0x0000A4C500D54162 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (19, 16, N'500мл', CAST(0x0000A4C500EE4D27 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (19, 18, N'200 мл', CAST(0x0000A4C500F23492 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (20, 2, N'1 ч.ч.', CAST(0x0000A4A500ED007E AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (20, 21, N'200 гр.', CAST(0x0000A4C500FA08A4 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (21, 3, N'1 брой', CAST(0x0000A4A500EE94A2 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (21, 5, N'1 бр.', CAST(0x0000A4A500EFFBE7 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (22, 7, N'също на вкус', CAST(0x0000A4BF00D6B491 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (22, 10, N'на вкус', CAST(0x0000A4BF00DED3E7 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (22, 19, N'няколко щипки', CAST(0x0000A4C500F59AA1 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (23, 4, N'1 с.л.', CAST(0x0000A4A500EF4F3F AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (23, 5, N'от половин лимон или 2-3 с.л.', CAST(0x0000A4A500F03BA0 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (23, 7, N'1 ч.л.', CAST(0x0000A4BF00D55951 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (23, 9, N'10 мл', CAST(0x0000A4BF00DCEE58 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (24, 1, N'50 гр.', CAST(0x0000A4A500EC51FE AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (24, 2, N'1/2 ч.ч.', CAST(0x0000A4A500ED4051 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (24, 4, N'1,5 ч.ч.', CAST(0x0000A4A500EF6D82 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (24, 10, N'100 мл', CAST(0x0000A4BF00DEB80A AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (24, 13, N'100мл', CAST(0x0000A4C500D421B9 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (24, 15, N'2 с.л.', CAST(0x0000A4C500D6268F AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (24, 18, N'50 мл. ', CAST(0x0000A4C500F50CFE AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (24, 19, N'3 с.л.', CAST(0x0000A4C500F52C96 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (25, 2, N'1 с.л.', CAST(0x0000A4A500EDD014 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (25, 18, N'1 равна ч.л.', CAST(0x0000A4C500F51F05 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (26, 2, N'1 с.л.', CAST(0x0000A4A500EE21C7 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (27, 3, N'1 гнездо', CAST(0x0000A4A500EEBD2D AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (28, 1, N'1 щипка', CAST(0x0000A4A500EC6D15 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (28, 7, N'на вкус -щипка-две', CAST(0x0000A4BF00D69CFA AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (28, 10, N'на вкус', CAST(0x0000A4BF00DFC329 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (28, 13, N'1 щипка', CAST(0x0000A4C500D42F8B AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (28, 15, N'на око', CAST(0x0000A4C500D777C3 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (28, 16, N'1 щипка', CAST(0x0000A4C500EEB263 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (28, 18, N'1 щипка', CAST(0x0000A4C500F17CD5 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (28, 19, N' на око', CAST(0x0000A4C500F59091 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (28, 20, N'На вкус ( не много)', CAST(0x0000A4C500F7F809 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (28, 22, N'1 ч.л.', CAST(0x0000A4C50100246F AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (29, 4, N'1/3 ч.ч.', CAST(0x0000A4A500EF29E0 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (30, 2, N'4 с.л.', CAST(0x0000A4A500EDCE7E AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (32, 7, N'4 капки', CAST(0x0000A4BF00D6682D AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (33, 7, N'2 капки', CAST(0x0000A4BF00D6745B AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (34, 7, N'Две-три ледчета', CAST(0x0000A4BF00D6CD91 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (35, 7, N'100 мл', CAST(0x0000A4BF00D53716 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (36, 9, N'10 мл', CAST(0x0000A4BF00DCE0EC AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (37, 9, N'1 резенче', CAST(0x0000A4BF00DD1364 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (38, 11, N'150 мл', CAST(0x0000A4BF00E01BE9 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (39, 11, N'1 ч.л.', CAST(0x0000A4BF00E0E6E9 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (39, 21, N'1 пакетче', CAST(0x0000A4C500FA51DD AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (40, 12, N'80гр.', CAST(0x0000A4C500D27851 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (41, 15, N'40гр.', CAST(0x0000A4C500D66598 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (41, 16, N'1 с.л.', CAST(0x0000A4C500EEA5FB AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (41, 21, N'100 гр.', CAST(0x0000A4C500FA1D99 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (42, 15, N'2 филии (сух и бял за предпочитане)', CAST(0x0000A4C500F9A725 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (43, 19, N'по преценка', CAST(0x0000A4C500F56A3C AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (44, 20, N'1/2 кубче,прясна или 1 пакет суха', CAST(0x0000A4C500F77730 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (45, 21, N'10 гр.', CAST(0x0000A4C500FA8098 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (46, 22, N'1 пакет', CAST(0x0000A4C700F202F5 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (47, 22, N'1/2 ч.ч.', CAST(0x0000A4C500FF0E66 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (48, 22, N'300 гр.', CAST(0x0000A4C500FF11EA AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (49, 22, N'1/10 от тубичката,варира според предпочитанията', CAST(0x0000A4C500FF4B4A AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (50, 22, N'1 купичка (+/-)', CAST(0x0000A4C500FF5C97 AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (51, 22, N'100-200 гр.', CAST(0x0000A4C500FF6BAF AS DateTime))
INSERT [dbo].[Recipe_Ingredient] ([ingredient_id], [recipe_id], [ingredient_quantity], [modif_date]) VALUES (52, 22, N'1бр.', CAST(0x0000A4C700F25F2F AS DateTime))
/****** Object:  StoredProcedure [dbo].[RecipeRepresentation]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RecipeRepresentation]
@recipe_category int=null
AS
BEGIN
	SELECT recipe_name,recipe_image from Recipes where category_id=@recipe_category
	order by recipe_name
END
GO
/****** Object:  StoredProcedure [dbo].[recipe_steps_invocation]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE procedure [dbo].[recipe_steps_invocation]
@recipe_id int=null
AS
BEGIN
	SELECT s.step_number as 'Стъпка номер:', s.step_description as 'Какво да направите:' from Steps s inner join Recipes r on s.recipe_id=r.recipe_id where s.recipe_id = @recipe_id
	order by s.step_number
END
GO
/****** Object:  StoredProcedure [dbo].[recipe_ingredients_invocation]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE procedure [dbo].[recipe_ingredients_invocation]
@recipe_id int=null
AS
BEGIN
	SELECT i.ingredient_name as 'Съставки',r.ingredient_quantity as 'Количество' from Ingredients i inner join Recipe_Ingredient r on i.ingredient_id= r.ingredient_id where r.recipe_id = @recipe_id
	order by i.ingredient_name
END
GO
/****** Object:  StoredProcedure [dbo].[insert_favourites]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insert_favourites]
@recipe_id int=null,
@user_name nvarchar(50)=null
as 
begin 
	declare @msg nvarchar(60)
	begin try
		insert into Favourites(recipe_id,user_id)
		values (@recipe_id,(Select user_id from Users where user_name=@user_name))
	end try
	begin catch 
		set @msg='Добавянето на рецепта към любими не е възможно!'
		raiserror(@msg,16,1)
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[delete_steps]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[delete_steps]
@step_number int=null,
@recipe_id int = null
as 
begin 
	declare @mess nvarchar(50),
			@rows int
	select @rows = COUNT (*) from Steps
	where step_number=@step_number and recipe_id=@recipe_id
	if @rows=0
		Begin 
			Set @mess=N'Няма такава стъпка!'
			raiserror (@mess,16,1)
			return 
		end
	begin try 
		delete from Steps
		where step_number=@step_number and recipe_id=@recipe_id
	end try 
	begin catch 
		set @mess=N'Не може да се изтрие тази стъпка!'
		raiserror (@mess,16,1)
		return 
	end catch 
end
GO
/****** Object:  StoredProcedure [dbo].[insert_steps]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insert_steps]
@step_number int=null,
@recipe_id int=null,
@step_desc nvarchar(max)=null

as 
begin 
	declare @mess nvarchar(40)
	begin try 
		insert into Steps(step_number,recipe_id,step_description)
		values (@step_number,@recipe_id,@step_desc)
	end try
	begin catch 
		set @mess=N'Не е възможно да се осъществи запис!'
		Raiserror(@mess,16,1)
		return 
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[insert_review]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insert_review]
@recipe_id int=null,
@user_name nvarchar(50)=null,
@review_text nvarchar(max)

as 
begin 
	declare @msg nvarchar(60);
	declare @user_id int ;
	set @user_id= (Select user_id from Users where user_name=@user_name);
	declare @review_number int = (select MAX(review_number) from Reviews where user_id=@user_id and recipe_id= @recipe_id)+1
	
		insert into Reviews(recipe_id,user_id,review_text,review_number,dateandtime)
		values (@recipe_id,@user_id,@review_text,ISNULL(@review_number,1),GETDATE())

end
GO
/****** Object:  StoredProcedure [dbo].[delete_favourites]    Script Date: 10/07/2015 12:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[delete_favourites]
@recipe_id int=null
as 
begin 
	declare @msg nvarchar(60)
	begin try
		delete from Favourites where recipe_id=@recipe_id
	end try
	begin catch 
		set @msg='Премахването на рецепта от любими не е възможно!'
		raiserror(@msg,16,1)
	end catch
end
GO
/****** Object:  ForeignKey [recipe_category_FK]    Script Date: 10/07/2015 12:59:28 ******/
ALTER TABLE [dbo].[Recipes]  WITH CHECK ADD  CONSTRAINT [recipe_category_FK] FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([category_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Recipes] CHECK CONSTRAINT [recipe_category_FK]
GO
/****** Object:  ForeignKey [submitter_FK]    Script Date: 10/07/2015 12:59:28 ******/
ALTER TABLE [dbo].[Recipes]  WITH CHECK ADD  CONSTRAINT [submitter_FK] FOREIGN KEY([submitter])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Recipes] CHECK CONSTRAINT [submitter_FK]
GO
/****** Object:  ForeignKey [favourites_recipe_fk]    Script Date: 10/07/2015 12:59:28 ******/
ALTER TABLE [dbo].[Favourites]  WITH CHECK ADD  CONSTRAINT [favourites_recipe_fk] FOREIGN KEY([recipe_id])
REFERENCES [dbo].[Recipes] ([recipe_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Favourites] CHECK CONSTRAINT [favourites_recipe_fk]
GO
/****** Object:  ForeignKey [favourites_user_fk]    Script Date: 10/07/2015 12:59:28 ******/
ALTER TABLE [dbo].[Favourites]  WITH CHECK ADD  CONSTRAINT [favourites_user_fk] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Favourites] CHECK CONSTRAINT [favourites_user_fk]
GO
/****** Object:  ForeignKey [recipe_steps_fk]    Script Date: 10/07/2015 12:59:28 ******/
ALTER TABLE [dbo].[Steps]  WITH CHECK ADD  CONSTRAINT [recipe_steps_fk] FOREIGN KEY([recipe_id])
REFERENCES [dbo].[Recipes] ([recipe_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Steps] CHECK CONSTRAINT [recipe_steps_fk]
GO
/****** Object:  ForeignKey [Reviews_recipe_fk]    Script Date: 10/07/2015 12:59:28 ******/
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [Reviews_recipe_fk] FOREIGN KEY([recipe_id])
REFERENCES [dbo].[Recipes] ([recipe_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [Reviews_recipe_fk]
GO
/****** Object:  ForeignKey [Reviews_user_fk]    Script Date: 10/07/2015 12:59:28 ******/
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [Reviews_user_fk] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [Reviews_user_fk]
GO
/****** Object:  ForeignKey [ingredient_fk]    Script Date: 10/07/2015 12:59:28 ******/
ALTER TABLE [dbo].[Recipe_Ingredient]  WITH CHECK ADD  CONSTRAINT [ingredient_fk] FOREIGN KEY([ingredient_id])
REFERENCES [dbo].[Ingredients] ([ingredient_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Recipe_Ingredient] CHECK CONSTRAINT [ingredient_fk]
GO
/****** Object:  ForeignKey [recipe_ingredient_fk]    Script Date: 10/07/2015 12:59:28 ******/
ALTER TABLE [dbo].[Recipe_Ingredient]  WITH CHECK ADD  CONSTRAINT [recipe_ingredient_fk] FOREIGN KEY([recipe_id])
REFERENCES [dbo].[Recipes] ([recipe_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Recipe_Ingredient] CHECK CONSTRAINT [recipe_ingredient_fk]
GO
