USE [master]
GO
/****** Object:  Database [Blog]    Script Date: 31/03/2021 13:13:21 ******/
CREATE DATABASE [Blog]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Blog', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Blog.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Blog_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Blog_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Blog] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Blog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Blog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Blog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Blog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Blog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Blog] SET ARITHABORT OFF 
GO
ALTER DATABASE [Blog] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Blog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Blog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Blog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Blog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Blog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Blog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Blog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Blog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Blog] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Blog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Blog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Blog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Blog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Blog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Blog] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Blog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Blog] SET RECOVERY FULL 
GO
ALTER DATABASE [Blog] SET  MULTI_USER 
GO
ALTER DATABASE [Blog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Blog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Blog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Blog] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Blog] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Blog', N'ON'
GO
USE [Blog]
GO
/****** Object:  Table [dbo].[About]    Script Date: 31/03/2021 13:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[About](
	[detailDescrition] [varchar](max) NULL,
	[Signature] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 31/03/2021 13:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Blog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[icon] [varchar](max) NULL,
	[name] [varchar](max) NULL,
	[date] [date] NULL,
	[picture] [varchar](max) NULL,
	[detail] [varchar](max) NULL,
	[italic] [varchar](max) NULL,
	[bigPicture] [varchar](max) NULL,
	[view] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Month]    Script Date: 31/03/2021 13:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Month](
	[month] [int] NULL,
	[year] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Share]    Script Date: 31/03/2021 13:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Share](
	[icon] [nvarchar](50) NULL,
	[socialNetWork] [nvarchar](50) NULL,
	[URL] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[view]    Script Date: 31/03/2021 13:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[view](
	[viewed] [int] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[About] ([detailDescrition], [Signature]) VALUES (N'<p>    Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.<br>

                        Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', N'Vivianne Russell')
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([ID], [icon], [name], [date], [picture], [detail], [italic], [bigPicture], [view]) VALUES (1, N'pencil.png', N'Essential skills for a happy life!', CAST(N'2015-11-15' AS Date), N'happy.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.<br>
                                    At eam doctus oportere, eam feugait delectus ne. Quo cu vulputate persecuti. Eum ut natum possim comprehensam, habeo dicta scaevola eu nec. Ea adhuc reformidans eam. Pri dolore epicuri eu, ne cum tantas fierent instructior. Pro ridens intellegam ut, sea at graecis scriptorem eloquentiam.<br>
                                    Per an labitur lucilius ullamcorper, esse erat ponderum ad vim. Possim laoreet suscipit ex pri, vix numquam eruditi feugait in. Nec maluisset complectitur te, at sea decore semper. Falli numquam perpetua sea et, tibique repudiandae an pro. Ut his solum persius postulant. Soluta nemore debitis ne eos, cum an scripta pericula partiendo.', N'', N'', NULL)
INSERT [dbo].[Blog] ([ID], [icon], [name], [date], [picture], [detail], [italic], [bigPicture], [view]) VALUES (2, N'dot.png', N'You''ve gotta dance', CAST(N'2014-11-14' AS Date), N'', N'', N'<p>"“You''ve gotta dance like there''s nobody watching,<br>
                                        Love like you''ll never be hurt,<br>
                                        Sing like there''s nobody listening,<br>
                                        And live like it''s heaven on earth.” </p>
                                    <p>William W. Purkey</p>', N'', NULL)
INSERT [dbo].[Blog] ([ID], [icon], [name], [date], [picture], [detail], [italic], [bigPicture], [view]) VALUES (3, N'camera.png', N'Photo', CAST(N'2015-11-13' AS Date), N'', N'', N'', N'photo.jpg', NULL)
INSERT [dbo].[Blog] ([ID], [icon], [name], [date], [picture], [detail], [italic], [bigPicture], [view]) VALUES (4, N'dot.png', N'You''ve gotta dance', CAST(N'2015-10-16' AS Date), N'', N'', N'<p>"“You''ve gotta dance like there''s nobody watching,<br>
                                        Love like you''ll never be hurt,<br>
                                        Sing like there''s nobody listening,<br>
                                        And live like it''s heaven on earth.” </p>
                                    <p>William W. Purkey</p>', N'', NULL)
INSERT [dbo].[Blog] ([ID], [icon], [name], [date], [picture], [detail], [italic], [bigPicture], [view]) VALUES (5, N'pencil.png', N'Essential skills for a happy life!', CAST(N'2014-11-20' AS Date), N'happy.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.<br>', N'', N'photo.jpg', NULL)
INSERT [dbo].[Blog] ([ID], [icon], [name], [date], [picture], [detail], [italic], [bigPicture], [view]) VALUES (6, N'dot.jpg', N'You''ve gotta dance', CAST(N'2014-11-21' AS Date), NULL, NULL, N'<p>"“You''ve gotta dance like there''s nobody watching,<br>
                                        Love like you''ll never be hurt,<br>
                                        Sing like there''s nobody listening,<br>
                                        And live like it''s heaven on earth.” </p>
                                    <p>William W. Purkey</p>', NULL, NULL)
INSERT [dbo].[Blog] ([ID], [icon], [name], [date], [picture], [detail], [italic], [bigPicture], [view]) VALUES (7, N'camera.png', N'Photo', CAST(N'2014-09-11' AS Date), NULL, NULL, NULL, N'photo.jpg', NULL)
SET IDENTITY_INSERT [dbo].[Blog] OFF
INSERT [dbo].[Month] ([month], [year]) VALUES (11, 2015)
INSERT [dbo].[Month] ([month], [year]) VALUES (10, 2015)
INSERT [dbo].[Month] ([month], [year]) VALUES (11, 2014)
INSERT [dbo].[Month] ([month], [year]) VALUES (9, 2014)
INSERT [dbo].[Share] ([icon], [socialNetWork], [URL]) VALUES (N'fb.png', N'Facebook', N'https://www.facebook.com/')
INSERT [dbo].[Share] ([icon], [socialNetWork], [URL]) VALUES (N'tw.png', N'Twitter', N'https://twitter.com/')
INSERT [dbo].[Share] ([icon], [socialNetWork], [URL]) VALUES (N'gg.png', N'Google+', N'https://www.google.com.vn/')
INSERT [dbo].[view] ([viewed]) VALUES (75)
USE [master]
GO
ALTER DATABASE [Blog] SET  READ_WRITE 
GO
