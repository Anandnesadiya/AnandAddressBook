USE [master]
GO
/****** Object:  Database [AnandAddressBookMulti]    Script Date: 25/03/2023 4:39:59 AM ******/
CREATE DATABASE [AnandAddressBookMulti]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AnandAddressBookMulti', FILENAME = N'F:\anandproject\AnandAddressBookMulti.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AnandAddressBookMulti_log', FILENAME = N'F:\anandproject\AnandAddressBookMulti_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AnandAddressBookMulti] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AnandAddressBookMulti].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AnandAddressBookMulti] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET ARITHABORT OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AnandAddressBookMulti] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AnandAddressBookMulti] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AnandAddressBookMulti] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AnandAddressBookMulti] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AnandAddressBookMulti] SET  MULTI_USER 
GO
ALTER DATABASE [AnandAddressBookMulti] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AnandAddressBookMulti] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AnandAddressBookMulti] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AnandAddressBookMulti] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AnandAddressBookMulti] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AnandAddressBookMulti] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AnandAddressBookMulti] SET QUERY_STORE = OFF
GO
USE [AnandAddressBookMulti]
GO
/****** Object:  Table [dbo].[CON_Contact]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CON_Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[ContactName] [nvarchar](100) NOT NULL,
	[CountryID] [int] NOT NULL,
	[StateID] [int] NOT NULL,
	[CityID] [int] NOT NULL,
	[ContectCategoryID] [int] NULL,
	[ContactNo] [nvarchar](50) NOT NULL,
	[WhatsappNo] [nvarchar](50) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Email] [varchar](200) NOT NULL,
	[Age] [int] NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[BloodGroup] [nvarchar](10) NOT NULL,
	[FaceBookID] [nvarchar](100) NOT NULL,
	[InstaID] [nvarchar](100) NOT NULL,
	[CreationTime] [datetime] NULL,
	[ModificationTime] [datetime] NULL,
	[PhotoPath] [nvarchar](500) NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Contect] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOC_City]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOC_City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](100) NOT NULL,
	[CityCode] [nvarchar](50) NULL,
	[StateID] [int] NOT NULL,
	[CreationTime] [datetime] NULL,
	[ModificationTime] [datetime] NULL,
	[CountryID] [int] NOT NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_LOC_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOC_Country]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOC_Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](100) NOT NULL,
	[CountryCode] [nvarchar](50) NOT NULL,
	[CreationTime] [datetime] NULL,
	[ModificationTime] [datetime] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_LOC_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOC_State]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOC_State](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](100) NOT NULL,
	[StateCode] [nvarchar](50) NOT NULL,
	[CountryID] [int] NOT NULL,
	[CreationTime] [datetime] NULL,
	[ModificationTime] [datetime] NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_LOC_State] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MST_ContactCategory]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MST_ContactCategory](
	[ContactCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[ContactCategoryName] [nvarchar](400) NOT NULL,
	[CreationTime] [datetime] NULL,
	[ModificationTime] [datetime] NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_ContactCategory] PRIMARY KEY CLUSTERED 
(
	[ContactCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Master]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Master](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPassword] [nvarchar](100) NOT NULL,
	[UserEmail] [nvarchar](300) NOT NULL,
	[CreationTime] [datetime] NULL,
	[ModificationTime] [datetime] NULL,
 CONSTRAINT [PK_User_Master] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CON_Contact] ON 

INSERT [dbo].[CON_Contact] ([ContactID], [ContactName], [CountryID], [StateID], [CityID], [ContectCategoryID], [ContactNo], [WhatsappNo], [BirthDate], [Email], [Age], [Address], [BloodGroup], [FaceBookID], [InstaID], [CreationTime], [ModificationTime], [PhotoPath], [UserID]) VALUES (1030, N'anand', 74, 82, 1039, 38, N'7069341591', N'7069341591', CAST(N'2023-03-19' AS Date), N'anandanesadiya12321@gmail.com', 21, N'morbi', N'O negative', N'not use', N'not use', CAST(N'2023-03-19T13:35:14.470' AS DateTime), CAST(N'2023-03-19T13:36:26.553' AS DateTime), N'~/upload/Screenshot (4).png', 1)
SET IDENTITY_INSERT [dbo].[CON_Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[LOC_City] ON 

INSERT [dbo].[LOC_City] ([CityID], [CityName], [CityCode], [StateID], [CreationTime], [ModificationTime], [CountryID], [UserID]) VALUES (1039, N'Morbi', N'363641', 82, CAST(N'2023-03-05T15:01:11.840' AS DateTime), CAST(N'2023-03-05T15:01:11.840' AS DateTime), 74, 1)
INSERT [dbo].[LOC_City] ([CityID], [CityName], [CityCode], [StateID], [CreationTime], [ModificationTime], [CountryID], [UserID]) VALUES (1040, N'Rajkot', N'454521', 82, CAST(N'2023-03-05T15:01:26.830' AS DateTime), CAST(N'2023-03-05T15:01:26.830' AS DateTime), 74, 1)
SET IDENTITY_INSERT [dbo].[LOC_City] OFF
GO
SET IDENTITY_INSERT [dbo].[LOC_Country] ON 

INSERT [dbo].[LOC_Country] ([CountryID], [CountryName], [CountryCode], [CreationTime], [ModificationTime], [UserID]) VALUES (74, N'India', N'91', CAST(N'2023-03-05T14:58:41.543' AS DateTime), CAST(N'2023-03-05T14:58:41.543' AS DateTime), 1)
INSERT [dbo].[LOC_Country] ([CountryID], [CountryName], [CountryCode], [CreationTime], [ModificationTime], [UserID]) VALUES (75, N'USA', N'1', CAST(N'2023-03-05T14:58:55.117' AS DateTime), CAST(N'2023-03-05T14:58:55.117' AS DateTime), 1)
INSERT [dbo].[LOC_Country] ([CountryID], [CountryName], [CountryCode], [CreationTime], [ModificationTime], [UserID]) VALUES (76, N'UK', N'44', CAST(N'2023-03-05T14:59:09.577' AS DateTime), CAST(N'2023-03-05T14:59:09.577' AS DateTime), 1)
INSERT [dbo].[LOC_Country] ([CountryID], [CountryName], [CountryCode], [CreationTime], [ModificationTime], [UserID]) VALUES (77, N'Mexico', N'52', CAST(N'2023-03-05T14:59:23.507' AS DateTime), CAST(N'2023-03-19T13:32:14.527' AS DateTime), 1)
INSERT [dbo].[LOC_Country] ([CountryID], [CountryName], [CountryCode], [CreationTime], [ModificationTime], [UserID]) VALUES (80, N'America', N'45', CAST(N'2023-03-21T09:53:32.350' AS DateTime), CAST(N'2023-03-21T09:53:32.350' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[LOC_Country] OFF
GO
SET IDENTITY_INSERT [dbo].[LOC_State] ON 

INSERT [dbo].[LOC_State] ([StateID], [StateName], [StateCode], [CountryID], [CreationTime], [ModificationTime], [UserID]) VALUES (82, N'Gujarat', N'1', 74, CAST(N'2023-03-05T14:59:47.480' AS DateTime), CAST(N'2023-03-06T08:41:29.520' AS DateTime), 1)
INSERT [dbo].[LOC_State] ([StateID], [StateName], [StateCode], [CountryID], [CreationTime], [ModificationTime], [UserID]) VALUES (83, N'Maharastra', N'2', 74, CAST(N'2023-03-05T15:00:04.307' AS DateTime), CAST(N'2023-03-05T15:00:04.307' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[LOC_State] OFF
GO
SET IDENTITY_INSERT [dbo].[MST_ContactCategory] ON 

INSERT [dbo].[MST_ContactCategory] ([ContactCategoryID], [ContactCategoryName], [CreationTime], [ModificationTime], [UserID]) VALUES (38, N'Family', CAST(N'2023-03-05T19:34:25.410' AS DateTime), CAST(N'2023-03-05T19:34:25.410' AS DateTime), 1)
INSERT [dbo].[MST_ContactCategory] ([ContactCategoryID], [ContactCategoryName], [CreationTime], [ModificationTime], [UserID]) VALUES (39, N'Friend', CAST(N'2023-03-05T19:34:32.783' AS DateTime), CAST(N'2023-03-05T19:34:32.783' AS DateTime), 1)
INSERT [dbo].[MST_ContactCategory] ([ContactCategoryID], [ContactCategoryName], [CreationTime], [ModificationTime], [UserID]) VALUES (40, N'Relatives', CAST(N'2023-03-05T19:34:41.440' AS DateTime), CAST(N'2023-03-05T19:34:41.440' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[MST_ContactCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[User_Master] ON 

INSERT [dbo].[User_Master] ([UserID], [UserName], [UserPassword], [UserEmail], [CreationTime], [ModificationTime]) VALUES (1, N'anand', N'anand', N'anand', CAST(N'2023-01-26T11:20:41.623' AS DateTime), CAST(N'2023-02-04T12:41:46.000' AS DateTime))
INSERT [dbo].[User_Master] ([UserID], [UserName], [UserPassword], [UserEmail], [CreationTime], [ModificationTime]) VALUES (2, N'anand1', N'anand1', N'anand1', CAST(N'2023-02-04T11:11:51.467' AS DateTime), CAST(N'2023-02-04T11:11:51.467' AS DateTime))
INSERT [dbo].[User_Master] ([UserID], [UserName], [UserPassword], [UserEmail], [CreationTime], [ModificationTime]) VALUES (3, N'anand2', N'anand2', N'anand2', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-02-05T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[User_Master] OFF
GO
ALTER TABLE [dbo].[CON_Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_ContactCategory] FOREIGN KEY([ContectCategoryID])
REFERENCES [dbo].[MST_ContactCategory] ([ContactCategoryID])
GO
ALTER TABLE [dbo].[CON_Contact] CHECK CONSTRAINT [FK_Contact_ContactCategory]
GO
ALTER TABLE [dbo].[CON_Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_LOC_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[LOC_Country] ([CountryID])
GO
ALTER TABLE [dbo].[CON_Contact] CHECK CONSTRAINT [FK_Contact_LOC_Country]
GO
ALTER TABLE [dbo].[CON_Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_LOC_State] FOREIGN KEY([StateID])
REFERENCES [dbo].[LOC_State] ([StateID])
GO
ALTER TABLE [dbo].[CON_Contact] CHECK CONSTRAINT [FK_Contact_LOC_State]
GO
ALTER TABLE [dbo].[CON_Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_User_Master] FOREIGN KEY([UserID])
REFERENCES [dbo].[User_Master] ([UserID])
GO
ALTER TABLE [dbo].[CON_Contact] CHECK CONSTRAINT [FK_Contact_User_Master]
GO
ALTER TABLE [dbo].[CON_Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contect_LOC_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[LOC_City] ([CityID])
GO
ALTER TABLE [dbo].[CON_Contact] CHECK CONSTRAINT [FK_Contect_LOC_City]
GO
ALTER TABLE [dbo].[LOC_City]  WITH CHECK ADD  CONSTRAINT [FK_LOC_City_LOC_State] FOREIGN KEY([StateID])
REFERENCES [dbo].[LOC_State] ([StateID])
GO
ALTER TABLE [dbo].[LOC_City] CHECK CONSTRAINT [FK_LOC_City_LOC_State]
GO
ALTER TABLE [dbo].[LOC_City]  WITH CHECK ADD  CONSTRAINT [FK_LOC_City_User_Master] FOREIGN KEY([UserID])
REFERENCES [dbo].[User_Master] ([UserID])
GO
ALTER TABLE [dbo].[LOC_City] CHECK CONSTRAINT [FK_LOC_City_User_Master]
GO
ALTER TABLE [dbo].[LOC_Country]  WITH CHECK ADD  CONSTRAINT [FK_LOC_Country_User_Master] FOREIGN KEY([UserID])
REFERENCES [dbo].[User_Master] ([UserID])
GO
ALTER TABLE [dbo].[LOC_Country] CHECK CONSTRAINT [FK_LOC_Country_User_Master]
GO
ALTER TABLE [dbo].[LOC_State]  WITH CHECK ADD  CONSTRAINT [FK_LOC_State_LOC_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[LOC_Country] ([CountryID])
GO
ALTER TABLE [dbo].[LOC_State] CHECK CONSTRAINT [FK_LOC_State_LOC_Country]
GO
ALTER TABLE [dbo].[LOC_State]  WITH CHECK ADD  CONSTRAINT [FK_LOC_State_User_Master] FOREIGN KEY([UserID])
REFERENCES [dbo].[User_Master] ([UserID])
GO
ALTER TABLE [dbo].[LOC_State] CHECK CONSTRAINT [FK_LOC_State_User_Master]
GO
ALTER TABLE [dbo].[MST_ContactCategory]  WITH CHECK ADD  CONSTRAINT [FK_ContactCategory_User_Master] FOREIGN KEY([UserID])
REFERENCES [dbo].[User_Master] ([UserID])
GO
ALTER TABLE [dbo].[MST_ContactCategory] CHECK CONSTRAINT [FK_ContactCategory_User_Master]
GO
/****** Object:  StoredProcedure [dbo].[PR_CON_Contact_DeleteByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PR_CON_Contact_DeleteByPK] 
	@ContactID  int,
	@UserID		int
AS
DELETE FROM [dbo].[CON_Contact]
WHERE 
	[dbo].[CON_Contact].[ContactID]=@ContactID
AND
	[dbo].[CON_Contact].[UserID]=@UserID

GO
/****** Object:  StoredProcedure [dbo].[PR_CON_Contact_Insert]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_CON_Contact_Insert] 
	@ContactName		nvarchar(100),
	@CountryID			int,
	@StateID			int,
	@CityID			    int,
	@ContactCategoryID  int,
	@ContactNo			bigint,
	@WhatsappNo			bigint,
	@BirthDate			date,
	@Email				nvarchar(100),
	@Age				int,
	@Address			nvarchar(500),
	@BloodGroup			nvarchar(10),
	@FaceBookID			nvarchar(100),
	@InstaID			nvarchar(100),
	@CreationTime		datetime,
	@ModificationTime   datetime,
	@PhotoPath			nvarchar(500),
	@UserID				int
AS
INSERT INTO [dbo].[CON_Contact]
(
	[dbo].[CON_Contact].[ContactName],
	[dbo].[CON_Contact].[CountryID],
	[dbo].[CON_Contact].[StateID],
	[dbo].[CON_Contact].[CityID],
	[dbo].[CON_Contact].[ContectCategoryID],
	[dbo].[CON_Contact].[ContactNo],
	[dbo].[CON_Contact].[WhatsappNo],
	[dbo].[CON_Contact].[BirthDate],
	[dbo].[CON_Contact].[Email],
	[dbo].[CON_Contact].[Age],
	[dbo].[CON_Contact].[Address],
	[dbo].[CON_Contact].[BloodGroup],
	[dbo].[CON_Contact].[FaceBookID],
	[dbo].[CON_Contact].[InstaID],
	[dbo].[CON_Contact].[CreationTime],
	[dbo].[CON_Contact].[ModificationTime],
	[dbo].[CON_Contact].[PhotoPath],
	[dbo].[CON_Contact].[UserID]
)
VALUES
(
	@ContactName,
	@CountryID,
	@StateID,
	@CityID,
	@ContactCategoryID,
	@ContactNo,
	@WhatsappNo,
	@BirthDate,
	@Email,
	@Age,
	@Address,
	@BloodGroup,
	@FaceBookID,
	@InstaID,
	ISNULL(@CreationTime,GETDATE()),
	ISNULL(@ModificationTime,GETDATE()),
	@PhotoPath,
	@UserID
)


GO
/****** Object:  StoredProcedure [dbo].[PR_CON_Contact_SelectAll]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[PR_CON_Contact_SelectAll]
	@UserID int
AS
SELECT 
	[dbo].[CON_Contact].[ContactID],
	[dbo].[CON_Contact].[ContactName],
	[dbo].[LOC_Country].[CountryName],
	[dbo].[Loc_State].[StateName],
	[dbo].[Loc_City].[CityName],
	[dbo].[MST_ContactCategory].[ContactCategoryName],
	[dbo].[CON_Contact].[ContactNo],
	[dbo].[CON_Contact].[WhatsappNo],
	[dbo].[CON_Contact].[BirthDate],
	[dbo].[CON_Contact].[Email],
	[dbo].[CON_Contact].[Age],
	[dbo].[CON_Contact].[Address],
	[dbo].[CON_Contact].[BloodGroup],
	[dbo].[CON_Contact].[FaceBookID],
	[dbo].[CON_Contact].[InstaID],
	[dbo].[CON_Contact].[CreationTime],
	[dbo].[CON_Contact].[ModificationTime],
	[dbo].[CON_Contact].[PhotoPath]
FROM
	[dbo].[CON_Contact]
	INNER JOIN 
	[dbo].[LOC_Country]
	ON [dbo].[CON_Contact].[CountryID]=[dbo].[LOC_Country].[CountryID]

	INNER JOIN 
	[dbo].[LOC_State]
	ON [dbo].[CON_Contact].[StateID]=[dbo].[LOC_State].[StateID]

	INNER JOIN 
	[dbo].[LOC_City]
	ON [dbo].[CON_Contact].[CityID]=[dbo].[LOC_City].[CityID]

	INNER JOIN 
	[dbo].[MST_ContactCategory]
	ON [dbo].[MST_ContactCategory].[ContactCategoryID]=[dbo].[CON_Contact].[ContectCategoryID]

	WHERE
	[dbo].[CON_Contact].[UserID]=@UserID

	ORDER BY [dbo].[LOC_Country].[CountryName],
			 [dbo].[LOC_State].[StateName],
			 [dbo].[LOC_City].[CityName],
			 [dbo].[CON_Contact].[ContactName]

GO
/****** Object:  StoredProcedure [dbo].[PR_CON_Contact_SelectByCountryStateCityContactName]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PR_CON_Contact_SelectByCountryStateCityContactName]  
	@CountryID		int,
	@StateID		int,
	@CityID			int,
	@ContactName	nvarchar(100),
	@UserID			int
AS
SELECT 
	[dbo].[CON_Contact].[ContactID],
	[dbo].[CON_Contact].[ContactName],
	[dbo].[LOC_Country].[CountryName],
	[dbo].[Loc_State].[StateName],
	[dbo].[Loc_City].[CityName],
	[dbo].[MST_ContactCategory].[ContactCategoryName],
	[dbo].[CON_Contact].[ContactNo],
	[dbo].[CON_Contact].[WhatsappNo],
	[dbo].[CON_Contact].[BirthDate],
	[dbo].[CON_Contact].[Email],
	[dbo].[CON_Contact].[Age],
	[dbo].[CON_Contact].[Address],
	[dbo].[CON_Contact].[BloodGroup],
	[dbo].[CON_Contact].[FaceBookID],
	[dbo].[CON_Contact].[InstaID],
	[dbo].[CON_Contact].[CreationTime],
	[dbo].[CON_Contact].[ModificationTime],
	[dbo].[CON_Contact].[PhotoPath]
FROM
	[dbo].[CON_Contact]
	INNER JOIN 
	[dbo].[LOC_Country]
	ON [dbo].[CON_Contact].[CountryID]=[dbo].[LOC_Country].[CountryID]

	INNER JOIN 
	[dbo].[LOC_State]
	ON [dbo].[CON_Contact].[StateID]=[dbo].[LOC_State].[StateID]

	INNER JOIN 
	[dbo].[LOC_City]
	ON [dbo].[CON_Contact].[CityID]=[dbo].[LOC_City].[CityID]

	INNER JOIN 
	[dbo].[MST_ContactCategory]
	ON [dbo].[MST_ContactCategory].[ContactCategoryID]=[dbo].[CON_Contact].[ContectCategoryID]

WHERE
	(@CountryID IS NULL OR  [dbo].[CON_Contact].[CountryID]=@CountryID)
	AND
	(@StateID IS NULL OR  [dbo].[CON_Contact].[StateID]=@StateID)
	AND
	(@CityID IS NULL OR [dbo].[CON_Contact].[CityID]=@CityID)
	AND
	(@ContactName IS NULL OR [dbo].[CON_Contact].[ContactName] LIKE '%'+@ContactName+'%')
	AND
	[dbo].[CON_Contact].[UserID]=@UserID

	ORDER BY [dbo].[LOC_Country].[CountryName],
			 [dbo].[LOC_State].[StateName],
			 [dbo].[LOC_City].[CityName],
			 [dbo].[CON_Contact].[ContactName]



GO
/****** Object:  StoredProcedure [dbo].[PR_CON_Contact_SelectByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[PR_CON_Contact_SelectByPK] 
	@ContactID	  int,
	@UserID		  int
AS
SELECT 
	[dbo].[CON_Contact].[ContactID],
	[dbo].[CON_Contact].[ContactName],
	[dbo].[CON_Contact].[CountryID],
	[dbo].[CON_Contact].[StateID],
	[dbo].[CON_Contact].[CityID],
	[dbo].[CON_Contact].[ContectCategoryID],
	[dbo].[CON_Contact].[ContactNo],
	[dbo].[CON_Contact].[WhatsappNo],
	[dbo].[CON_Contact].[BirthDate],
	[dbo].[CON_Contact].[Email],
	[dbo].[CON_Contact].[Age],
	[dbo].[CON_Contact].[Address],
	[dbo].[CON_Contact].[BloodGroup],
	[dbo].[CON_Contact].[FaceBookID],
	[dbo].[CON_Contact].[InstaID],
	[dbo].[CON_Contact].[PhotoPath]
FROM
	[dbo].[CON_Contact]
WHERE  [dbo].[CON_Contact].[ContactID]=@ContactID
	   AND
	   [dbo].[CON_Contact].[UserID]=@UserID

ORDER BY [dbo].[CON_Contact].[ContactName]


GO
/****** Object:  StoredProcedure [dbo].[PR_CON_Contact_SelectCount]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[PR_CON_Contact_SelectCount]
	@UserID int
AS
select 
	count([dbo].[CON_Contact].[ContactID]) as 'contact'
FROM
	[dbo].[CON_Contact]
WHERE	
	[dbo].[CON_Contact].[UserID]=@UserID


GO
/****** Object:  StoredProcedure [dbo].[PR_CON_Contact_UpdateByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_CON_Contact_UpdateByPK]
	@ContactID		    int,
	@ContactName		nvarchar(100),
	@CountryID			int,
	@StateID			int,
	@CityID			    int,
	@ContactCategoryID  int,
	@ContactNo			nvarchar(50),
	@WhatsappNo			nvarchar(50),
	@BirthDate			date,
	@Email				nvarchar(100),
	@Age				int,
	@Address			nvarchar(500),
	@BloodGroup			nvarchar(10),
	@FaceBookID			nvarchar(100),
	@InstaID			nvarchar(100),
	@ModificationTime   datetime,
	@PhotoPath			nvarchar(500),
	@UserID				int
AS
UPDATE [dbo].[CON_Contact]
SET
	[dbo].[CON_Contact].[ContactName]=@ContactName,
	[dbo].[CON_Contact].[CountryID]=@CountryID,
	[dbo].[CON_Contact].[StateID]=@StateID,
	[dbo].[CON_Contact].[CityID]=@CityID,
	[dbo].[CON_Contact].[ContectCategoryID]=@ContactCategoryID,
	[dbo].[CON_Contact].[ContactNo]=@ContactNo,
	[dbo].[CON_Contact].[WhatsappNo]=@WhatsappNo,
	[dbo].[CON_Contact].[BirthDate]=@BirthDate,
	[dbo].[CON_Contact].[Email]=@Email,
	[dbo].[CON_Contact].[Age]=@Age,
	[dbo].[CON_Contact].[Address]=@Address,
	[dbo].[CON_Contact].[BloodGroup]=@BloodGroup,
	[dbo].[CON_Contact].[FaceBookID]=@FaceBookID,
	[dbo].[CON_Contact].[InstaID]=@InstaID,
	[dbo].[CON_Contact].[ModificationTime]=ISNULL(@ModificationTime,GETDATE()),
	[dbo].[CON_Contact].[PhotoPath]=@PhotoPath
WHERE 
	[dbo].[CON_Contact].[ContactID]=@ContactID
	AND	
	[dbo].[CON_Contact].[UserID]=UserID


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_City_DeleteByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_City_DeleteByPK]
	@CityID as int,
	@UserID      int
AS
DELETE FROM [dbo].[LOC_City]
WHERE
	[dbo].[LOC_City].[CityID]=@CityID
	AND
	[dbo].[LOC_City].[UserID]=@UserID


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_City_Insert]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_City_Insert]
	@StateID			int,
	@CityName			nvarchar(100),
	@CityCode			nvarchar(50),
	@CountryID		    int,
	@CreationTime	    datetime,
	@ModificationTime   datetime,
	@UserID				int
AS
INSERT INTO 
[dbo].[LOC_City]
(
	[dbo].[LOC_City].[CityName],
	[dbo].[LOC_City].[CityCode],
	[dbo].[LOC_City].[StateID],
	[dbo].[LOC_City].[CountryID],
	[dbo].[LOC_City].[CreationTime],
	[dbo].[LOC_City].[ModificationTime],
	[dbo].[LOC_City].[UserID]
)
VALUES
(
	@CityName,
	@CityCode,
	@StateID,
	@CountryID,
	ISNULL(@CreationTime,GETDATE()),
	ISNULL(@ModificationTime,GETDATE()),
	@UserID
)


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_City_SelectAll]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_City_SelectAll]
	@UserID int
AS
SELECT 
	[dbo].[LOC_City].[CityID],
	[dbo].[LOC_Country].[CountryName],
	[dbo].[LOC_State].[StateName],
	[dbo].[LOC_City].[CityName],
	[dbo].[LOC_City].[CityCode],
	[dbo].[LOC_City].[CreationTime],
	[dbo].[LOC_City].[ModificationTime],
	[dbo].[LOC_City].[UserID]
FROM [dbo].[LOC_City] 
INNER JOIN 
[dbo].[LOC_State]
ON [dbo].[LOC_State].[StateID]=[dbo].[LOC_City].[StateID]
INNER JOIN
[dbo].[LOC_Country]
ON [dbo].[LOC_City].[CountryID]=[dbo].[LOC_Country].[CountryID]
WHERE
	[dbo].[LOC_City].[UserID]=@UserID
ORDER BY [dbo].[LOC_Country].[CountryName],
		 [dbo].[LOC_State].[StateName],
		 [dbo].[LOC_City].[CityName]


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_City_SelectByCountryStateCityName]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_City_SelectByCountryStateCityName] 
	@CountryID		int,
	@StateID		int,
	@CityName		nvarchar(100),
	@CityCode		nvarchar(50),
	@UserID			int
AS
SELECT 
	[dbo].[LOC_City].[CityID],
	[dbo].[LOC_Country].[CountryName],
	[dbo].[LOC_State].[StateName],
	[dbo].[LOC_City].[CityName],
	[dbo].[LOC_City].[CityCode],
	[dbo].[LOC_City].[CreationTime],
	[dbo].[LOC_City].[ModificationTime]
FROM [dbo].[LOC_City] 
INNER JOIN 
[dbo].[LOC_State]
ON [dbo].[LOC_State].[StateID]=[dbo].[LOC_City].[StateID]
INNER JOIN
[dbo].[LOC_Country]
ON [dbo].[LOC_City].[CountryID]=[dbo].[LOC_Country].[CountryID]

WHERE
	(@CountryID IS NULL OR [dbo].[LOC_City].[CountryID]=@CountryID)
	AND
	(@StateID IS NULL OR [dbo].[LOC_City].[StateID]=@StateID)
	AND
	(@CityName IS NULL OR [dbo].[LOC_City].[CityName] LIKE '%'+@CityName+'%')
	AND
	(@CityCode IS NULL OR [dbo].[LOC_City].[CityCode] LIKE '%'+@CityCode+'%')
	AND
	[dbo].[LOC_City].[UserID]=@UserID
ORDER BY [dbo].[LOC_Country].[CountryName],
		 [dbo].[LOC_State].[StateName],
		 [dbo].[LOC_City].[CityName]


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_City_SelectByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_City_SelectByPK] 
	@CityId as int,
	@UserID	   int
AS
SELECT 
	[dbo].[LOC_City].[CityID],
	[dbo].[LOC_City].[StateID],
	[dbo].[LOC_City].[CountryID],
	[dbo].[LOC_City].[CityName],
	[dbo].[LOC_City].[CityCode],
	[dbo].[LOC_City].[CreationTime],
	[dbo].[LOC_City].[ModificationTime]
FROM [dbo].[LOC_City] 
WHERE
	[dbo].[LOC_City].[CityID]=@CityID
	AND
	[dbo].[LOC_City].[UserID]=@UserID


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_City_SelectCount]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[PR_LOC_City_SelectCount]
	@UserID int
AS
select 
	count([dbo].[LOC_City].[CityID]) as 'cities'
FROM
	[dbo].[LOC_City]
WHERE
	[dbo].[LOC_City].[UserID]=@UserID


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_City_SelectForDropDownList]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_City_SelectForDropDownList]
	@UserID	int
AS
SELECT 
	[dbo].[LOC_City].[CityID],
	[dbo].[LOC_City].[CityName]
FROM [dbo].[LOC_City]
WHERE
	[dbo].[LOC_City].[UserID]=@UserID
ORDER BY [dbo].[LOC_City].[CityName]


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_City_UpdateByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_City_UpdateByPK] 
	@CityID				int,
	@StateID			int,
	@CityName			nvarchar(100),
	@CityCode			nvarchar(50),
	@CountryID			int,
	@ModificationTime   datetime,
	@UserID				int
AS
UPDATE [dbo].[LOC_City]
SET
	[dbo].[LOC_City].[CityName]=@CityName,
	[dbo].[LOC_City].[CityCode]=@CityCode,
	[dbo].[LOC_City].[StateID]=@StateID,
	[dbo].[LOC_City].[CountryID]=@CountryID,
	[dbo].[LOC_City].[ModificationTime]=ISNULL(@ModificationTime,GETDATE())
WHERE
	[dbo].[LOC_City].[CityID]=@CityID
	AND
	[dbo].[LOC_City].[UserID]=@UserID



GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_Country_DeleteByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_Country_DeleteByPK]
	@CountryID as int,
	@UserID		  int
AS
DELETE 
FROM [dbo].[LOC_Country]
WHERE 
	[dbo].[LOC_Country].[CountryID]=@CountryID
	AND
	[dbo].[LOC_Country].[UserID]=@UserID


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_Country_Insert]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_Country_Insert] 
	@CountryName		nvarchar(100),
	@CountryCode		nvarchar(50),
	@CreationTime		datetime,
	@ModificationTime	datetime,
	@UserId				int
AS
INSERT INTO 
[dbo].[LOC_Country]
(
	[dbo].[LOC_Country].[CountryName],
	[dbo].[LOC_Country].[CountryCode],
	[dbo].[LOC_Country].[CreationTime],
	[dbo].[LOC_Country].[ModificationTime],
	[dbo].[LOC_Country].[UserID]
)
VALUES
(
	@CountryName,
	@CountryCode,
	ISNULL(@CreationTime,GETDATE()),
	ISNULL(@ModificationTime,GETDATE()),
	@UserId
)


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_Country_SelectAll]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_Country_SelectAll]
	@UserID int 
AS
SELECT 
	[dbo].[LOC_Country].[CountryID],
	[dbo].[LOC_Country].[CountryName],
	[dbo].[LOC_Country].[CountryCode],
	[dbo].[LOC_Country].[CreationTime],
	[dbo].[LOC_Country].[ModificationTime],
	[dbo].[LOC_Country].[UserID]
FROM [dbo].[LOC_Country]
WHERE	
	[dbo].[LOC_Country].[UserID]=@UserID
ORDER BY [dbo].[LOC_Country].[CountryName],
		 [dbo].[LOC_Country].[CountryCode]


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_Country_SelectByCountryNameCountryCode]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_Country_SelectByCountryNameCountryCode] 
	@CountryName	nvarchar(100),
	@CountryCode	nvarchar(50),
	@UserID			int
AS
SELECT 
	[dbo].[LOC_Country].[CountryID],
	[dbo].[LOC_Country].[CountryName],
	[dbo].[LOC_Country].[CountryCode],
	[dbo].[LOC_Country].[CreationTime],
	[dbo].[LOC_Country].[ModificationTime]
FROM 
	[dbo].[LOC_Country]
WHERE
	(@CountryName IS NULL OR [dbo].[LOC_Country].[CountryName] LIKE '%'+@CountryName+'%')
	AND
	(@CountryCode IS NULL OR [dbo].[LOC_Country].[CountryCode] LIKE '%'+@CountryCode+'%')
	AND
	[dbo].[LOC_Country].[UserID]=@UserID
	
ORDER BY [dbo].[LOC_Country].[CountryName],
		 [dbo].[LOC_Country].[CountryCode]


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_Country_SelectByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_Country_SelectByPK]
	@CountryID as int,
	@UserID	   as int
AS
SELECT 
	 [dbo].[LOC_Country].[CountryID],
	 [dbo].[LOC_Country].[CountryName],
	 [dbo].[LOC_Country].[CountryCode],
	 [dbo].[LOC_Country].[CreationTime],
	 [dbo].[LOC_Country].[ModificationTime]
FROM [dbo].[LOC_Country]
WHERE 
	[dbo].[LOC_Country].[CountryID]=@CountryID
	AND
	[dbo].[LOC_Country].[UserID]=@UserID


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_Country_SelectCount]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[PR_LOC_Country_SelectCount]
	@UserID int
AS
select 
	count([dbo].[LOC_Country].[CountryID]) as 'country'
FROM
	[dbo].[LOC_Country]
WHERE
	[dbo].[LOC_Country].[UserID]=@UserID


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_Country_SelectForDropDownList]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_Country_SelectForDropDownList] 
	@UserID int
AS
SELECT 
	 [dbo].[LOC_Country].[CountryID],
	 [dbo].[LOC_Country].[CountryName]
FROM [dbo].[LOC_Country]
WHERE
	 [dbo].[LOC_Country].[UserID]=@UserID	
ORDER BY [dbo].[LOC_Country].[CountryName]


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_Country_UpdateByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PR_LOC_Country_UpdateByPK] 
	@CountryID			int,
	@CountryName		nvarchar(100),
	@CountryCode		nvarchar(50),
	@ModificationTime   datetime,
	@UserID				int
AS
UPDATE [dbo].[LOC_Country]
SET
	[dbo].[LOC_Country].[CountryName]=@CountryName,
	[dbo].[LOC_Country].[CountryCode]=@CountryCode,
	[dbo].[LOC_Country].[ModificationTime]=ISNULL(@ModificationTime,GETDATE())
WHERE
	[dbo].[LOC_Country].[CountryID]=@CountryID
	AND
	[dbo].[LOC_Country].[UserID]=@UserID



GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_DeleteByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_State_DeleteByPK]
	@StateID as int,
	@UserID	 as int
AS
DELETE FROM [dbo].[LOC_State] 
WHERE
	[dbo].[LOC_State].[StateID]=@StateID
	AND
	[dbo].[LOC_State].[UserID]=@UserID


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_Insert]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_State_Insert]
	@CountryID			int,
	@StateName			nvarchar(100),
	@StateCode			nvarchar(50),
	@CreationTime		datetime,
	@modificationTime   datetime,
	@UserID				int
AS
INSERT INTO 
[dbo].[LOC_State]
(
	[dbo].[LOC_State].[StateName],
	[dbo].[LOC_State].[StateCode],
	[dbo].[LOC_State].[CountryID],
	[dbo].[LOC_State].[CreationTime],
	[dbo].[LOC_State].[ModificationTime],
	[dbo].[LOC_State].[UserID]
)
VALUES
(
	@StateName,
	@StateCode,
	@CountryID,
	ISNULL(@CreationTime,GETDATE()),
	ISNULL(@ModificationTime,GETDATE()),
	@USerID
)


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_SelectAll]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_State_SelectAll] 
	@UserID int
AS
SELECT 
	 [dbo].[LOC_State].[StateID],
	 [dbo].[LOC_country].[CountryName],
	 [dbo].[LOC_State].[StateName],
	 [dbo].[LOC_State].[StateCode],
	 [dbo].[LOC_State].[CreationTime],
	 [dbo].[LOC_State].[ModificationTime],
	 [dbo].[LOC_State].[UserID]
FROM [dbo].[LOC_State] 
INNER JOIN
[dbo].[LOC_Country]
ON
[dbo].[LOC_Country].[CountryID]=[dbo].[LOC_State].[CountryID]
WHERE
	 [dbo].[LOC_State].[UserID]=@UserID
ORDER BY  [dbo].[LOC_country].[CountryName],
		  [dbo].[LOC_State].[StateName],
		  [dbo].[LOC_State].[StateCode]



GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_SelectByCountryStateNameStateCode]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_State_SelectByCountryStateNameStateCode] 
	@CountryID		int,
	@StateName		nvarchar(100),
	@StateCode		nvarchar(50),
	@UserID			int
AS
SELECT 
	 [dbo].[LOC_State].[StateID],
	 [dbo].[LOC_country].[CountryName],
	 [dbo].[LOC_State].[StateName],
	 [dbo].[LOC_State].[StateCode],
	 [dbo].[LOC_State].[CreationTime],
	 [dbo].[LOC_State].[ModificationTime]
FROM [dbo].[LOC_State] 
INNER JOIN
[dbo].[LOC_Country]
ON
[dbo].[LOC_Country].[CountryID]=[dbo].[LOC_State].[CountryID]

WHERE
	(@CountryID IS NULL OR [dbo].[LOC_State].[CountryID]=@CountryID)
	AND
	(@StateName IS NULL OR [dbo].[LOC_State].[StateName] LIKE '%'+@StateName+'%')
	AND
	(@StateCode IS NULL OR [dbo].[LOC_State].[StateCode] LIKE '%'+@StateCode+'%')
	AND
	[dbo].[LOC_State].[UserID]=@UserID
ORDER BY  [dbo].[LOC_country].[CountryName],
		  [dbo].[LOC_State].[StateName],
		  [dbo].[LOC_State].[StateCode]


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_SelectByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_State_SelectByPK] 
	@StateId as int,
	@UserID	 as int
AS
SELECT 
	 [dbo].[LOC_State].[StateID],
	 [dbo].[LOC_State].[CountryID],
	 [dbo].[LOC_State].[StateName],
	 [dbo].[LOC_State].[StateCode],
	 [dbo].[LOC_State].[CreationTime],
	 [dbo].[LOC_State].[ModificationTime],
	 [dbo].[LOC_State].[UserID]
FROM [dbo].[LOC_State]
WHERE 
	 [dbo].[LOC_State].[StateID]=@StateID
	 AND
	 [dbo].[LOC_State].[UserID]=@UserID
ORDER BY 
	 [dbo].[LOC_State].[StateName]


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_SelectCityDropDownByStateID]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PR_LOC_State_SelectCityDropDownByStateID] 
	@StateID as int,
	@UserID	 as int
AS
SELECT 
	 [dbo].[LOC_City].[CityID],
	 [dbo].[LOC_City].[CityName]
FROM [dbo].[LOC_City]
WHERE 
	 [dbo].[LOC_City].[StateID]=@StateID
	 AND
	 [dbo].[LOC_City].[UserID]=@UserID
ORDER BY [dbo].[LOC_City].[CityName]


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_SelectCount]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[PR_LOC_State_SelectCount]
	@UserID int
AS
select 
	count([dbo].[LOC_State].[StateID]) as 'state'
FROM
	[dbo].[LOC_State]
WHERE
	[dbo].[LOC_State].[UserID]=@UserID


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_SelectForDropDownList]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_State_SelectForDropDownList] 
	@UserID int
AS
SELECT 
	 [dbo].[LOC_State].[StateID],
	 [dbo].[LOC_State].[StateName]
FROM [dbo].[LOC_State]
WHERE
	 [dbo].[LOC_State].[UserID]=@UserID
ORDER BY [dbo].[LOC_State].[StateName]


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_SelectStateDropDownByCountryID]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PR_LOC_State_SelectStateDropDownByCountryID] 
	@CountryID as int,
	@UserID	   as int
AS
SELECT 
	 [dbo].[LOC_State].[StateID],
	 [dbo].[LOC_State].[StateName]
FROM [dbo].[LOC_State]
WHERE 
	 [dbo].[LOC_State].[CountryID]=@CountryID
	 AND
	 [dbo].[LOC_State].[UserID]=@UserID
ORDER BY [dbo].[LOC_State].[StateName]


GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_UpdateByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_LOC_State_UpdateByPK] 
	@CountryID			int,
	@StateID			int,
	@StateName			nvarchar(100),
	@StateCode		    nvarchar(50),
	@ModificationTime   datetime,
	@UserID				int
AS
UPDATE [dbo].[LOC_State]
SET
	[dbo].[LOC_State].[StateName]=@StateName,
	[dbo].[LOC_State].[StateCode]=@StateCode,
	[dbo].[LOC_State].[CountryID]=@CountryID,
	[dbo].[LOC_State].[ModificationTime]=ISNULL(@ModificationTime,GETDATE())
WHERE
	[dbo].[LOC_State].[StateID]=@StateID
	AND
	[dbo].[LOC_State].[UserID]=@UserID


GO
/****** Object:  StoredProcedure [dbo].[PR_MST_ContactCategory_DeleteByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_MST_ContactCategory_DeleteByPK]
	@ContactCategoryID int,
	@UserID            int
AS
Delete
From [dbo].[MST_ContactCategory]
WHERE
	[dbo].[MST_ContactCategory].[ContactCategoryID] = @ContactCategoryID
	AND
	[dbo].[MST_ContactCategory].[UserID]=@UserID

GO
/****** Object:  StoredProcedure [dbo].[PR_MST_ContactCategory_Insert]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_MST_ContactCategory_Insert]
	@ContactCategoryName  nvarchar(100),
	@CreationTime		  datetime,
	@ModificationTime	  datetime,
	@UserID				  int
AS
Insert into
[dbo].[MST_ContactCategory]
(
	[dbo].[MST_ContactCategory].[ContactCategoryName],
	[dbo].[MST_ContactCategory].[CreationTime],
	[dbo].[MST_ContactCategory].[ModificationTime],
	[dbo].[MST_ContactCategory].[UserID]
)
Values
(
	@ContactCategoryName,
	ISNULL(@CreationTime,GETDATE()),
	ISNULL(@ModificationTime,GETDATE()),
	@UserID
)


GO
/****** Object:  StoredProcedure [dbo].[PR_MST_ContactCategory_SelectAll]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[PR_MST_ContactCategory_SelectAll] 
	@UserID int
AS
Select
	[dbo].[MST_ContactCategory].[ContactCategoryID],
	[dbo].[MST_ContactCategory].[ContactCategoryName],
	[dbo].[MST_ContactCategory].[CreationTime],
	[dbo].[MST_ContactCategory].[ModificationTime],
	[dbo].[MST_ContactCategory].[UserID]
FROM [dbo].[MST_ContactCategory]
WHERE
	[dbo].[MST_ContactCategory].[UserID]=@UserID
Order By [dbo].[MST_ContactCategory].[ContactCategoryName]


GO
/****** Object:  StoredProcedure [dbo].[PR_MST_ContactCategory_SelectByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_MST_ContactCategory_SelectByPK]
	@ContactCategoryID int,
	@UserId			   int
AS
Select
	[dbo].[MST_ContactCategory].[ContactCategoryID],
	[dbo].[MST_ContactCategory].[ContactCategoryName]
From [dbo].[MST_ContactCategory]
WHERE 
	[dbo].[MST_ContactCategory].[ContactCategoryID] = @ContactCategoryID
	AND
	[dbo].[MST_ContactCategory].[UserID]=@UserId


GO
/****** Object:  StoredProcedure [dbo].[PR_MST_ContactCategory_SelectCount]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[PR_MST_ContactCategory_SelectCount]
	@UserID int
AS
select 
	count([dbo].[MST_ContactCategory].[ContactCategoryID]) as 'contactcategory'
FROM
	[dbo].[MST_ContactCategory]
WHERE
	[dbo].[MST_ContactCategory].[UserID]=@UserID


GO
/****** Object:  StoredProcedure [dbo].[PR_MST_ContactCategory_SelectForDropDownList]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_MST_ContactCategory_SelectForDropDownList]
	@UserID int
AS
SELECT
	[dbo].[MST_ContactCategory].[ContactCategoryID],
	[dbo].[MST_ContactCategory].[ContactCategoryName]
FROM [dbo].[MST_ContactCategory]
WHERE
	[dbo].[MST_ContactCategory].[UserID]=@UserID
ORDER BY [dbo].[MST_ContactCategory].[ContactCategoryName]


GO
/****** Object:  StoredProcedure [dbo].[PR_MST_ContactCategory_UpdateByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_MST_ContactCategory_UpdateByPK]
	@ContactCategoryID    int,
	@ContactCategoryName  varchar(100),
	@ModificationTime	  datetime,
	--@CreationDate datetime
	@UserID				  int
AS
Update [dbo].[MST_ContactCategory]
SET
	[dbo].[MST_ContactCategory].[ContactCategoryName] = @ContactCategoryName,
	[dbo].[MST_ContactCategory].[ModificationTime]=ISNULL(@ModificationTime,GETDATE())
Where
	[dbo].[MST_ContactCategory].[ContactCategoryID] = @ContactCategoryID
	AND
	[dbo].[MST_ContactCategory].[UserID]=@UserID



GO
/****** Object:  StoredProcedure [dbo].[PR_User_Master_DeleteByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PR_User_Master_DeleteByPK]
	@UserID as int
AS
DELETE FROM [dbo].[User_Master] 
WHERE
	[dbo].[User_Master].[UserID]=@UserID


GO
/****** Object:  StoredProcedure [dbo].[PR_User_Master_Insert]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PR_User_Master_Insert]
	@UserName			nvarchar(100),
	@UserPassword		nvarchar(50),
	@UserEmail			nvarchar(50),
	@CreationTime		datetime,
	@modificationTime   datetime
AS
INSERT INTO 
[dbo].[User_Master]
(
	[dbo].[LOC_State].[UserName],
	[dbo].[LOC_State].[UserPassword],
	[dbo].[LOC_State].[UserEmail],
	[dbo].[LOC_State].[CreationTime],
	[dbo].[LOC_State].[ModificationTime]
)
VALUES
(
	@UserName,
	@UserPassword,
	@UserEmail,
	ISNULL(@CreationTime,GETDATE()),
	ISNULL(@ModificationTime,GETDATE())
)


GO
/****** Object:  StoredProcedure [dbo].[PR_User_Master_SelectAll]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_User_Master_SelectAll]
AS
SELECT 
	 [dbo].[User_Master].[UserID],
	 [dbo].[User_Master].[UserName],
	 [dbo].[User_Master].[UserPassword],
	 [dbo].[User_Master].[UserEmail],
	 [dbo].[User_Master].[CreationTime],
	 [dbo].[User_Master].[ModificationTime]
FROM [dbo].[User_Master] 
ORDER BY
	 [dbo].[User_Master].[UserName]

GO
/****** Object:  StoredProcedure [dbo].[PR_User_Master_SelectByNamePassword]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[PR_User_Master_SelectByNamePassword]
	@UserName	  nvarchar(100),
	@UserPassword nvarchar(100)
AS
SELECT 
	 [dbo].[User_Master].[UserID],	
	 [dbo].[User_Master].[UserName],
	 [dbo].[User_Master].[UserPassword]
FROM [dbo].[User_Master] 
WHERE
	[dbo].[User_Master].[UserName]=@UserName
	AND
	[dbo].[User_Master].[UserPassword]=@UserPassword

GO
/****** Object:  StoredProcedure [dbo].[PR_User_Master_SelectByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_User_Master_SelectByPK]
	@UserID as int
AS
SELECT 
	 [dbo].[User_Master].[UserID],
	 [dbo].[User_Master].[UserName],
	 [dbo].[User_Master].[UserPassword],
	 [dbo].[User_Master].[UserEmail],
	 [dbo].[User_Master].[CreationTime],
	 [dbo].[User_Master].[ModificationTime]
FROM [dbo].[User_Master] 
WHERE
	[dbo].[User_Master].[UserID]=@UserID
ORDER BY
	 [dbo].[User_Master].[UserName]

GO
/****** Object:  StoredProcedure [dbo].[PR_User_Master_UpdateByPK]    Script Date: 25/03/2023 4:39:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[PR_User_Master_UpdateByPK]
	@UserID				int,
	@UserName			nvarchar(100),
	@UserPassword		nvarchar(100),
	@UserEmail			nvarchar(100),
	@ModificationTime   datetime
AS
UPDATE [dbo].[User_Master]
SET
	[dbo].[User_Master].[UserName]=@UserName,
	[dbo].[User_Master].[UserEmail]=@UserEmail,
	[dbo].[User_Master].[UserPassword]=@UserPassword,
	[dbo].[User_Master].[ModificationTime]=ISNULL(@ModificationTime,GETDATE())
WHERE
	[dbo].[User_Master].[UserID]=@UserID


GO
USE [master]
GO
ALTER DATABASE [AnandAddressBookMulti] SET  READ_WRITE 
GO
