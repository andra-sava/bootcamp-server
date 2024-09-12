USE [conferenceDb]
GO
/****** Object:  Table [dbo].[Conference]    Script Date: 9/11/2024 9:40:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conference](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConferenceTypeId] [int] NOT NULL,
	[LocationId] [int] NOT NULL,
	[OrganizerEmail] [nvarchar](50) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Conference] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConferenceXAttendee]    Script Date: 9/11/2024 9:40:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConferenceXAttendee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AttendeeEmail] [nvarchar](50) NOT NULL,
	[ConferenceId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_ConferenceXAttendee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConferenceXSpeaker]    Script Date: 9/11/2024 9:40:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConferenceXSpeaker](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConferenceId] [int] NOT NULL,
	[SpeakerId] [int] NOT NULL,
	[IsMainSpeaker] [bit] NULL,
 CONSTRAINT [PK_ConferenceXSpeaker] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DictionaryCategory]    Script Date: 9/11/2024 9:40:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DictionaryCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DictionaryCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DictionaryCity]    Script Date: 9/11/2024 9:40:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DictionaryCity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DictionaryCity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DictionaryConferenceType]    Script Date: 9/11/2024 9:40:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DictionaryConferenceType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DictionaryConferenceType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DictionaryCountry]    Script Date: 9/11/2024 9:40:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DictionaryCountry](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DictionaryCountry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DictionaryCounty]    Script Date: 9/11/2024 9:40:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DictionaryCounty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DictionaryCounty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DictionaryStatus]    Script Date: 9/11/2024 9:40:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DictionaryStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DictionaryStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailNotification]    Script Date: 9/11/2024 9:40:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailNotification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[To] [nvarchar](150) NOT NULL,
	[Cc] [nvarchar](150) NULL,
	[Subject] [nvarchar](200) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[SentDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 9/11/2024 9:40:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AttendeeEmail] [nvarchar](100) NULL,
	[ConferenceId] [int] NOT NULL,
	[SpeakerId] [int] NOT NULL,
	[Rating] [decimal](5, 2) NULL,
	[Message] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 9/11/2024 9:40:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Code] [nvarchar](50) NULL,
	[CountryId] [int] NOT NULL,
	[Address] [nvarchar](255) NULL,
	[CountyId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[Latitude] [decimal](12, 9) NULL,
	[Longitude] [decimal](12, 9) NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSNotification]    Script Date: 9/11/2024 9:40:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSNotification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PhoneNumber] [nvarchar](20) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[SentDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Speaker]    Script Date: 9/11/2024 9:40:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speaker](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Nationality] [nvarchar](50) NULL,
	[Rating] [decimal](5, 2) NULL,
	[Image] [image] NULL,
	[Email] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_Speaker] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Conference] ON 
GO
INSERT [dbo].[Conference] ([Id], [ConferenceTypeId], [LocationId], [OrganizerEmail], [CategoryId], [StartDate], [EndDate], [Name]) VALUES (1, 2, 35, N'admin@totalsoft.ro', 1, CAST(N'2024-10-21' AS Date), CAST(N'2025-10-23' AS Date), N'Introduction to GraphQL')
GO
INSERT [dbo].[Conference] ([Id], [ConferenceTypeId], [LocationId], [OrganizerEmail], [CategoryId], [StartDate], [EndDate], [Name]) VALUES (2, 1, 1, N'admin@totalsoft.ro', 1, CAST(N'2022-10-21' AS Date), CAST(N'2022-10-23' AS Date), N'Introduction to GraphQL')
GO
INSERT [dbo].[Conference] ([Id], [ConferenceTypeId], [LocationId], [OrganizerEmail], [CategoryId], [StartDate], [EndDate], [Name]) VALUES (3, 1, 1, N'admin@totalsoft.ro', 1, CAST(N'2022-09-09' AS Date), CAST(N'2022-09-11' AS Date), N'Introduction to GraphQL')
GO
INSERT [dbo].[Conference] ([Id], [ConferenceTypeId], [LocationId], [OrganizerEmail], [CategoryId], [StartDate], [EndDate], [Name]) VALUES (23, 2, 25, N'admin@totalsoft.ro', 1, CAST(N'2024-08-01' AS Date), CAST(N'2024-08-16' AS Date), N'C1')
GO
INSERT [dbo].[Conference] ([Id], [ConferenceTypeId], [LocationId], [OrganizerEmail], [CategoryId], [StartDate], [EndDate], [Name]) VALUES (24, 2, 26, N'admin@totalsoft.ro', 1, CAST(N'2024-08-03' AS Date), CAST(N'2024-08-16' AS Date), N'C2')
GO
INSERT [dbo].[Conference] ([Id], [ConferenceTypeId], [LocationId], [OrganizerEmail], [CategoryId], [StartDate], [EndDate], [Name]) VALUES (25, 2, 36, N'admin@totalsoft.ro', 1, CAST(N'2024-08-01' AS Date), CAST(N'2024-08-09' AS Date), N'testphone number')
GO
INSERT [dbo].[Conference] ([Id], [ConferenceTypeId], [LocationId], [OrganizerEmail], [CategoryId], [StartDate], [EndDate], [Name]) VALUES (26, 1, 38, N'admin@totalsoft.ro', 1, CAST(N'2024-08-08' AS Date), CAST(N'2024-08-15' AS Date), N'T1')
GO
INSERT [dbo].[Conference] ([Id], [ConferenceTypeId], [LocationId], [OrganizerEmail], [CategoryId], [StartDate], [EndDate], [Name]) VALUES (30, 2, 41, N'admin@totalsoft.ro', 1, CAST(N'2024-09-12' AS Date), CAST(N'2024-09-12' AS Date), N'test save')
GO
SET IDENTITY_INSERT [dbo].[Conference] OFF
GO
SET IDENTITY_INSERT [dbo].[ConferenceXAttendee] ON 
GO
INSERT [dbo].[ConferenceXAttendee] ([Id], [AttendeeEmail], [ConferenceId], [StatusId], [Name], [PhoneNumber]) VALUES (1, N'admin@totalsoft.ro', 1, 2, NULL, NULL)
GO
INSERT [dbo].[ConferenceXAttendee] ([Id], [AttendeeEmail], [ConferenceId], [StatusId], [Name], [PhoneNumber]) VALUES (2, N'admin@totalsoft.ro', 2, 3, NULL, NULL)
GO
INSERT [dbo].[ConferenceXAttendee] ([Id], [AttendeeEmail], [ConferenceId], [StatusId], [Name], [PhoneNumber]) VALUES (3, N'admin@totalsoft.ro', 3, 3, NULL, NULL)
GO
INSERT [dbo].[ConferenceXAttendee] ([Id], [AttendeeEmail], [ConferenceId], [StatusId], [Name], [PhoneNumber]) VALUES (6, N'admin@totalsoft.ro', 26, 3, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ConferenceXAttendee] OFF
GO
SET IDENTITY_INSERT [dbo].[ConferenceXSpeaker] ON 
GO
INSERT [dbo].[ConferenceXSpeaker] ([Id], [ConferenceId], [SpeakerId], [IsMainSpeaker]) VALUES (1, 1, 1, 0)
GO
INSERT [dbo].[ConferenceXSpeaker] ([Id], [ConferenceId], [SpeakerId], [IsMainSpeaker]) VALUES (11, 1, 12, 1)
GO
INSERT [dbo].[ConferenceXSpeaker] ([Id], [ConferenceId], [SpeakerId], [IsMainSpeaker]) VALUES (14, 3, 15, 1)
GO
INSERT [dbo].[ConferenceXSpeaker] ([Id], [ConferenceId], [SpeakerId], [IsMainSpeaker]) VALUES (26, 23, 27, 0)
GO
INSERT [dbo].[ConferenceXSpeaker] ([Id], [ConferenceId], [SpeakerId], [IsMainSpeaker]) VALUES (27, 24, 28, 0)
GO
INSERT [dbo].[ConferenceXSpeaker] ([Id], [ConferenceId], [SpeakerId], [IsMainSpeaker]) VALUES (28, 25, 29, 0)
GO
INSERT [dbo].[ConferenceXSpeaker] ([Id], [ConferenceId], [SpeakerId], [IsMainSpeaker]) VALUES (30, 1, 4, 1)
GO
INSERT [dbo].[ConferenceXSpeaker] ([Id], [ConferenceId], [SpeakerId], [IsMainSpeaker]) VALUES (31, 26, 32, 0)
GO
INSERT [dbo].[ConferenceXSpeaker] ([Id], [ConferenceId], [SpeakerId], [IsMainSpeaker]) VALUES (32, 30, 35, 0)
GO
SET IDENTITY_INSERT [dbo].[ConferenceXSpeaker] OFF
GO
SET IDENTITY_INSERT [dbo].[DictionaryCategory] ON 
GO
INSERT [dbo].[DictionaryCategory] ([Id], [Name], [Code]) VALUES (1, N'IT Software', N'it')
GO
SET IDENTITY_INSERT [dbo].[DictionaryCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[DictionaryCity] ON 
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (1, N'Razboieni', N'Razboieni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (2, N'Alexandru I. Cuza', N'Alexandru I. Cuza')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (3, N'Kogalniceni', N'Kogalniceni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (4, N'Scheia', N'Scheia')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (5, N'Volintire?ti', N'Volintire?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (6, N'Andrie?eni', N'Andrie?eni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (7, N'Buhaeni', N'Buhaeni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (8, N'Dragane?ti', N'Dragane?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (9, N'Fântânele', N'Fântânele')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (10, N'Glavane?ti', N'Glavane?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (11, N'Iepureni', N'Iepureni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (12, N'Spineni', N'Spineni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (13, N'Aroneanu', N'Aroneanu')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (14, N'Doroban?', N'Doroban?')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (15, N'Rediu Aldei', N'Rediu Aldei')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (16, N'?orogani', N'?orogani')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (17, N'Bal?a?i', N'Bal?a?i')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (18, N'Cotârgaci', N'Cotârgaci')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (19, N'Filia?i', N'Filia?i')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (20, N'Madârje?ti', N'Madârje?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (21, N'Podi?u', N'Podi?u')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (22, N'Sârca', N'Sârca')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (23, N'Valea Oilor', N'Valea Oilor')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (24, N'Belce?ti', N'Belce?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (25, N'Liteni', N'Liteni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (26, N'Munteni', N'Munteni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (27, N'Satu Nou', N'Satu Nou')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (28, N'Tansa', N'Tansa')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (29, N'Ulmi', N'Ulmi')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (30, N'Bivolari', N'Bivolari')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (31, N'Buruiene?ti', N'Buruiene?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (32, N'Solone?', N'Solone?')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (33, N'Tabara', N'Tabara')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (34, N'Traian', N'Traian')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (35, N'Bosia', N'Bosia')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (36, N'Coada Stâncii', N'Coada Stâncii')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (37, N'Mânzate?ti', N'Mânzate?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (38, N'Ungheni', N'Ungheni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (39, N'Brae?ti', N'Brae?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (40, N'Albe?ti', N'Albe?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (41, N'Buda', N'Buda')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (42, N'Criste?ti', N'Criste?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (43, N'Rediu', N'Rediu')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (44, N'Butea', N'Butea')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (45, N'Miclau?eni', N'Miclau?eni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (46, N'Cepleni?a', N'Cepleni?a')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (47, N'Buhalni?a', N'Buhalni?a')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (48, N'Poiana Marului', N'Poiana Marului')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (49, N'Zlodica', N'Zlodica')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (50, N'Ciorte?ti', N'Ciorte?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (51, N'Coropceni', N'Coropceni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (52, N'Deleni', N'Deleni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (53, N'Rotaria', N'Rotaria')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (54, N'?erbe?ti', N'?erbe?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (55, N'Ciurea', N'Ciurea')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (56, N'Curaturi', N'Curaturi')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (57, N'Dumbrava', N'Dumbrava')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (58, N'Hlincea', N'Hlincea')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (59, N'Lunca Ceta?uii', N'Lunca Ceta?uii')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (60, N'Picioru Lupului', N'Picioru Lupului')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (61, N'Slobozia', N'Slobozia')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (62, N'Coarnele Caprei', N'Coarnele Caprei')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (63, N'Arama', N'Arama')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (64, N'Petro?ica', N'Petro?ica')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (65, N'Osoi', N'Osoi')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (66, N'Comarna', N'Comarna')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (67, N'Curagau', N'Curagau')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (68, N'Stânca', N'Stânca')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (69, N'Costuleni', N'Costuleni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (70, N'Covasna', N'Covasna')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (71, N'Cozia', N'Cozia')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (72, N'Hili?a', N'Hili?a')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (73, N'Cotnari', N'Cotnari')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (74, N'Bahluiu', N'Bahluiu')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (75, N'Cire?eni', N'Cire?eni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (76, N'Cârjoaia', N'Cârjoaia')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (77, N'Fagat', N'Fagat')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (78, N'Hodora', N'Hodora')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (79, N'Horodi?tea', N'Horodi?tea')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (80, N'Iosupeni', N'Iosupeni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (81, N'Luparia', N'Luparia')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (82, N'Valea Racului', N'Valea Racului')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (83, N'Zbereni', N'Zbereni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (84, N'Cozme?ti', N'Cozme?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (85, N'Podolenii de Jos', N'Podolenii de Jos')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (86, N'Podolenii de Sus', N'Podolenii de Sus')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (87, N'Criste?ti', N'Criste?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (88, N'Homi?a', N'Homi?a')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (89, N'Cucuteni', N'Cucuteni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (90, N'Baiceni', N'Baiceni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (91, N'Barbate?ti', N'Barbate?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (92, N'Sacare?ti', N'Sacare?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (93, N'Dagâ?a', N'Dagâ?a')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (94, N'Balu?e?ti', N'Balu?e?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (95, N'Boatca', N'Boatca')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (96, N'Buzdug', N'Buzdug')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (97, N'Manastirea', N'Manastirea')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (98, N'Piscu Rusului', N'Piscu Rusului')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (99, N'Poienile', N'Poienile')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (100, N'Tarni?a', N'Tarni?a')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (101, N'Zece Prajini', N'Zece Prajini')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (102, N'Deleni', N'Deleni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (103, N'Feredeni', N'Feredeni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (104, N'Leahu-Nacu', N'Leahu-Nacu')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (105, N'Maxut', N'Maxut')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (106, N'Poiana', N'Poiana')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (107, N'Slobozia', N'Slobozia')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (108, N'Dobrova?', N'Dobrova?')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (109, N'Dolhe?ti', N'Dolhe?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (110, N'Bradice?ti', N'Bradice?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (111, N'Pietri?', N'Pietri?')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (112, N'Dume?ti', N'Dume?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (113, N'Banu', N'Banu')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (114, N'Chili?oaia', N'Chili?oaia')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (115, N'Hoise?ti', N'Hoise?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (116, N'Pau?e?ti', N'Pau?e?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (117, N'Erbiceni', N'Erbiceni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (118, N'Bârle?ti', N'Bârle?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (119, N'Spinoasa', N'Spinoasa')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (120, N'Sprânceana', N'Sprânceana')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (121, N'Totoe?ti', N'Totoe?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (122, N'Focuri', N'Focuri')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (123, N'Fântânele', N'Fântânele')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (124, N'Golaie?ti', N'Golaie?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (125, N'Bran', N'Bran')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (126, N'Cilibiu', N'Cilibiu')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (127, N'Cotu lui Ivan', N'Cotu lui Ivan')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (128, N'Gradinari', N'Gradinari')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (129, N'Medeleni', N'Medeleni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (130, N'Petre?ti', N'Petre?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (131, N'Podu Jijiei', N'Podu Jijiei')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (132, N'Gorban', N'Gorban')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (133, N'Gura Bohotin', N'Gura Bohotin')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (134, N'Podu Hagiului', N'Podu Hagiului')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (135, N'Scoposeni', N'Scoposeni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (136, N'Zberoaia', N'Zberoaia')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (137, N'Grajduri', N'Grajduri')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (138, N'Carbunari', N'Carbunari')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (139, N'Corcodel', N'Corcodel')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (140, N'Lunca', N'Lunca')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (141, N'Padureni', N'Padureni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (142, N'Poiana cu Cetate', N'Poiana cu Cetate')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (143, N'Valea Satului', N'Valea Satului')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (144, N'Gropni?a', N'Gropni?a')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (145, N'Bulbucani', N'Bulbucani')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (146, N'Fora?ti', N'Fora?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (147, N'Malae?ti', N'Malae?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (148, N'Saveni', N'Saveni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (149, N'Sângeri', N'Sângeri')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (150, N'Groze?ti', N'Groze?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (151, N'Col?u Cornii', N'Col?u Cornii')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (152, N'Salageni', N'Salageni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (153, N'Halauce?ti', N'Halauce?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (154, N'Lunca?i', N'Lunca?i')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (155, N'Hele?teni', N'Hele?teni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (156, N'Harmaneasa', N'Harmaneasa')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (157, N'Movileni', N'Movileni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (158, N'Oboroceni', N'Oboroceni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (159, N'Horle?ti', N'Horle?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (160, N'Bogdane?ti', N'Bogdane?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (161, N'Scoposeni', N'Scoposeni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (162, N'Ipatele', N'Ipatele')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (163, N'Alexe?ti', N'Alexe?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (164, N'Bâcu', N'Bâcu')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (165, N'Cuza Voda', N'Cuza Voda')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (166, N'Lespezi', N'Lespezi')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (167, N'Buda', N'Buda')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (168, N'Bursuc-Deal', N'Bursuc-Deal')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (169, N'Bursuc-Vale', N'Bursuc-Vale')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (170, N'Dumbrava', N'Dumbrava')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (171, N'Heci', N'Heci')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (172, N'Le?cani', N'Le?cani')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (173, N'Bogonos', N'Bogonos')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (174, N'Cogeasca', N'Cogeasca')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (175, N'Cucuteni', N'Cucuteni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (176, N'Lungani', N'Lungani')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (177, N'Crucea', N'Crucea')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (178, N'Goe?ti', N'Goe?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (179, N'Zmeu', N'Zmeu')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (180, N'Madârjac', N'Madârjac')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (181, N'Bojila', N'Bojila')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (182, N'Frumu?ica', N'Frumu?ica')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (183, N'Mirce?ti', N'Mirce?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (184, N'Iugani', N'Iugani')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (185, N'Izvoarele', N'Izvoarele')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (186, N'Rachiteni', N'Rachiteni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (187, N'Ursare?ti', N'Ursare?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (188, N'Mironeasa', N'Mironeasa')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (189, N'Schitu Hadâmbului', N'Schitu Hadâmbului')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (190, N'Ur?i?a', N'Ur?i?a')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (191, N'Miroslava', N'Miroslava')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (192, N'Balciu', N'Balciu')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (193, N'Bratuleni', N'Bratuleni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (194, N'Ciurbe?ti', N'Ciurbe?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (195, N'Corne?ti', N'Corne?ti')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (196, N'Danca?', N'Danca?')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (197, N'Gaureni', N'Gaureni')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (198, N'Horpaz', N'Horpaz')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (199, N'Proselnici', N'Proselnici')
GO
INSERT [dbo].[DictionaryCity] ([Id], [Name], [Code]) VALUES (200, N'Uricani', N'Uricani')
GO
SET IDENTITY_INSERT [dbo].[DictionaryCity] OFF
GO
SET IDENTITY_INSERT [dbo].[DictionaryConferenceType] ON 
GO
INSERT [dbo].[DictionaryConferenceType] ([Id], [Name], [Code]) VALUES (1, N'Remote', N'rm')
GO
INSERT [dbo].[DictionaryConferenceType] ([Id], [Name], [Code]) VALUES (2, N'OnSite', N'os')
GO
SET IDENTITY_INSERT [dbo].[DictionaryConferenceType] OFF
GO
SET IDENTITY_INSERT [dbo].[DictionaryCountry] ON 
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (1, N'AFGHANISTAN', N'AF')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (2, N'ALBANIA', N'AL')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (3, N'ALGERIA', N'DZ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (4, N'AMERICAN SAMOA', N'AS')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (5, N'ANDORRA', N'AD')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (6, N'ANGOLA', N'AO')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (7, N'ANGUILLA', N'AI')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (8, N'ANTARCTICA', N'AQ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (9, N'ANTIGUA AND BARBUDA', N'AG')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (10, N'ARGENTINA', N'AR')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (11, N'ARMENIA', N'AM')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (12, N'ARUBA', N'AW')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (13, N'AUSTRALIA', N'AU')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (14, N'AUSTRIA', N'AT')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (15, N'AZERBAIJAN', N'AZ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (16, N'BAHAMAS', N'BS')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (17, N'BAHRAIN', N'BH')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (18, N'BANGLADESH', N'BD')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (19, N'BARBADOS', N'BB')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (20, N'BELARUS', N'BY')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (21, N'BELGIUM', N'BE')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (22, N'BELIZE', N'BZ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (23, N'BENIN', N'BJ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (24, N'BERMUDA', N'BM')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (25, N'BHUTAN', N'BT')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (26, N'BOLIVIA', N'BO')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (27, N'BOSNIA AND HERZEGOVINA', N'BA')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (28, N'BOTSWANA', N'BW')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (29, N'BOUVET ISLAND', N'BV')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (30, N'BRAZIL', N'BR')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (31, N'BRITISH INDIAN OCEAN TERRITORY', N'IO')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (32, N'BRUNEI DARUSSALAM', N'BN')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (33, N'BULGARIA', N'BG')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (34, N'BURKINA FASO', N'BF')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (35, N'BURUNDI', N'BI')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (36, N'CAMBODIA', N'KH')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (37, N'CAMEROON', N'CM')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (38, N'CANADA', N'CA')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (39, N'CAPE VERDE', N'CV')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (40, N'CAYMAN ISLANDS', N'KY')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (41, N'CENTRAL AFRICAN REPUBLIC', N'CF')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (42, N'CHAD', N'TD')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (43, N'CHILE', N'CL')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (44, N'CHINA', N'CN')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (45, N'CHRISTMAS ISLAND', N'CX')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (46, N'COCOS (KEELING) ISLANDS', N'CC')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (47, N'COLOMBIA', N'CO')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (48, N'COMOROS', N'KM')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (49, N'CONGO', N'CG')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (50, N'CONGO, THE DEMOCRATIC REPUBLIC OF THE', N'CD')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (51, N'COOK ISLANDS', N'CK')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (52, N'COSTA RICA', N'CR')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (53, N'COTE D''IVOIRE', N'CI')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (54, N'CROATIA', N'HR')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (55, N'CUBA', N'CU')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (56, N'CYPRUS', N'CY')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (57, N'CZECH REPUBLIC', N'CZ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (58, N'DENMARK', N'DK')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (59, N'DJIBOUTI', N'DJ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (60, N'DOMINICA', N'DM')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (61, N'DOMINICAN REPUBLIC', N'DO')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (62, N'ECUADOR', N'EC')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (63, N'EGYPT', N'EG')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (64, N'EL SALVADOR', N'SV')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (65, N'EQUATORIAL GUINEA', N'GQ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (66, N'ERITREA', N'ER')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (67, N'ESTONIA', N'EE')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (68, N'ETHIOPIA', N'ET')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (69, N'FALKLAND ISLANDS (MALVINAS)', N'FK')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (70, N'FAROE ISLANDS', N'FO')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (71, N'FIJI', N'FJ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (72, N'FINLAND', N'FI')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (73, N'FRANCE', N'FR')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (74, N'FRENCH GUIANA', N'GF')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (75, N'FRENCH POLYNESIA', N'PF')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (76, N'FRENCH SOUTHERN TERRITORIES', N'TF')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (77, N'GABON', N'GA')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (78, N'GAMBIA', N'GM')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (79, N'GEORGIA', N'GE')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (80, N'GERMANY', N'DE')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (81, N'GHANA', N'GH')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (82, N'GIBRALTAR', N'GI')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (83, N'GREECE', N'GR')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (84, N'GREENLAND', N'GL')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (85, N'GRENADA', N'GD')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (86, N'GUADELOUPE', N'GP')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (87, N'GUAM', N'GU')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (88, N'GUATEMALA', N'GT')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (89, N'GUINEA', N'GN')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (90, N'GUINEA-BISSAU', N'GW')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (91, N'GUYANA', N'GY')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (92, N'HAITI', N'HT')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (93, N'HEARD ISLAND AND MCDONALD ISLANDS', N'HM')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (94, N'HOLY SEE (VATICAN CITY STATE)', N'VA')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (95, N'HONDURAS', N'HN')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (96, N'HONG KONG', N'HK')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (97, N'HUNGARY', N'HU')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (98, N'ICELAND', N'IS')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (99, N'INDIA', N'IN')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (100, N'INDONESIA', N'ID')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (101, N'IRAN, ISLAMIC REPUBLIC OF', N'IR')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (102, N'IRAQ', N'IQ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (103, N'IRELAND', N'IE')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (104, N'ISRAEL', N'IL')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (105, N'ITALY', N'IT')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (106, N'JAMAICA', N'JM')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (107, N'JAPAN', N'JP')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (108, N'JORDAN', N'JO')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (109, N'KAZAKHSTAN', N'KZ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (110, N'KENYA', N'KE')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (111, N'KIRIBATI', N'KI')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (112, N'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', N'KP')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (113, N'KOREA, REPUBLIC OF', N'KR')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (114, N'KUWAIT', N'KW')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (115, N'KYRGYZSTAN', N'KG')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (116, N'LAO PEOPLE''S DEMOCRATIC REPUBLIC', N'LA')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (117, N'LATVIA', N'LV')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (118, N'LEBANON', N'LB')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (119, N'LESOTHO', N'LS')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (120, N'LIBERIA', N'LR')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (121, N'LIBYAN ARAB JAMAHIRIYA', N'LY')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (122, N'LIECHTENSTEIN', N'LI')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (123, N'LITHUANIA', N'LT')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (124, N'LUXEMBOURG', N'LU')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (125, N'MACAO', N'MO')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (126, N'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', N'MK')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (127, N'MADAGASCAR', N'MG')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (128, N'MALAWI', N'MW')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (129, N'MALAYSIA', N'MY')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (130, N'MALDIVES', N'MV')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (131, N'MALI', N'ML')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (132, N'MALTA', N'MT')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (133, N'MARSHALL ISLANDS', N'MH')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (134, N'MARTINIQUE', N'MQ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (135, N'MAURITANIA', N'MR')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (136, N'MAURITIUS', N'MU')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (137, N'MAYOTTE', N'YT')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (138, N'MEXICO', N'MX')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (139, N'MICRONESIA, FEDERATED STATES OF', N'FM')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (140, N'MOLDOVA, REPUBLIC OF', N'MD')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (141, N'MONACO', N'MC')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (142, N'MONGOLIA', N'MN')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (143, N'MONTSERRAT', N'MS')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (144, N'MOROCCO', N'MA')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (145, N'MOZAMBIQUE', N'MZ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (146, N'MYANMAR', N'MM')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (147, N'NAMIBIA', N'NA')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (148, N'NAURU', N'NR')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (149, N'NEPAL', N'NP')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (150, N'NETHERLANDS', N'NL')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (151, N'NETHERLANDS ANTILLES', N'AN')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (152, N'NEW CALEDONIA', N'NC')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (153, N'NEW ZEALAND', N'NZ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (154, N'NICARAGUA', N'NI')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (155, N'NIGER', N'NE')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (156, N'NIGERIA', N'NG')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (157, N'NIUE', N'NU')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (158, N'NORFOLK ISLAND', N'NF')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (159, N'NORTHERN MARIANA ISLANDS', N'MP')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (160, N'NORWAY', N'NO')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (161, N'OMAN', N'OM')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (162, N'PAKISTAN', N'PK')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (163, N'PALAU', N'PW')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (164, N'PALESTINIAN TERRITORY, OCCUPIED', N'PS')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (165, N'PANAMA', N'PA')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (166, N'PAPUA NEW GUINEA', N'PG')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (167, N'PARAGUAY', N'PY')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (168, N'PERU', N'PE')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (169, N'PHILIPPINES', N'PH')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (170, N'PITCAIRN', N'PN')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (171, N'POLAND', N'PL')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (172, N'PORTUGAL', N'PT')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (173, N'PUERTO RICO', N'PR')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (174, N'QATAR', N'QA')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (175, N'REUNION', N'RE')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (176, N'ROMANIA', N'RO')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (177, N'RUSSIAN FEDERATION', N'RU')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (178, N'RWANDA', N'RW')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (179, N'SAINT HELENA', N'SH')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (180, N'SAINT KITTS AND NEVIS', N'KN')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (181, N'SAINT LUCIA', N'LC')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (182, N'SAINT PIERRE AND MIQUELON', N'PM')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (183, N'SAINT VINCENT AND THE GRENADINES', N'VC')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (184, N'SAMOA', N'WS')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (185, N'SAN MARINO', N'SM')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (186, N'SAO TOME AND PRINCIPE', N'ST')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (187, N'SAUDI ARABIA', N'SA')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (188, N'SENEGAL', N'SN')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (189, N'SERBIA AND MONTENEGRO', N'CS')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (190, N'SEYCHELLES', N'SC')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (191, N'SIERRA LEONE', N'SL')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (192, N'SINGAPORE', N'SG')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (193, N'SLOVAKIA', N'SK')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (194, N'SLOVENIA', N'SI')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (195, N'SOLOMON ISLANDS', N'SB')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (196, N'SOMALIA', N'SO')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (197, N'SOUTH AFRICA', N'ZA')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (198, N'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', N'GS')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (199, N'SPAIN', N'ES')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (200, N'SRI LANKA', N'LK')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (201, N'SUDAN', N'SD')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (202, N'SURINAME', N'SR')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (203, N'SVALBARD AND JAN MAYEN', N'SJ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (204, N'SWAZILAND', N'SZ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (205, N'SWEDEN', N'SE')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (206, N'SWITZERLAND', N'CH')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (207, N'SYRIAN ARAB REPUBLIC', N'SY')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (208, N'TAIWAN, PROVINCE OF CHINA', N'TW')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (209, N'TAJIKISTAN', N'TJ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (210, N'TANZANIA, UNITED REPUBLIC OF', N'TZ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (211, N'THAILAND', N'TH')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (212, N'TIMOR-LESTE', N'TL')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (213, N'TOGO', N'TG')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (214, N'TOKELAU', N'TK')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (215, N'TONGA', N'TO')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (216, N'TRINIDAD AND TOBAGO', N'TT')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (217, N'TUNISIA', N'TN')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (218, N'TURKEY', N'TR')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (219, N'TURKMENISTAN', N'TM')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (220, N'TURKS AND CAICOS ISLANDS', N'TC')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (221, N'TUVALU', N'TV')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (222, N'UGANDA', N'UG')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (223, N'UKRAINE', N'UA')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (224, N'UNITED ARAB EMIRATES', N'AE')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (225, N'UNITED KINGDOM', N'GB')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (226, N'UNITED STATES', N'US')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (227, N'UNITED STATES MINOR OUTLYING ISLANDS', N'UM')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (228, N'URUGUAY', N'UY')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (229, N'UZBEKISTAN', N'UZ')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (230, N'VANUATU', N'VU')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (231, N'VENEZUELA', N'VE')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (232, N'VIET NAM', N'VN')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (233, N'VIRGIN ISLANDS, BRITISH', N'VG')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (234, N'VIRGIN ISLANDS, U.S.', N'VI')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (235, N'WALLIS AND FUTUNA', N'WF')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (236, N'WESTERN SAHARA', N'EH')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (237, N'YEMEN', N'YE')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (238, N'ZAMBIA', N'ZM')
GO
INSERT [dbo].[DictionaryCountry] ([Id], [Name], [Code]) VALUES (239, N'ZIMBABWE', N'ZW')
GO
SET IDENTITY_INSERT [dbo].[DictionaryCountry] OFF
GO
SET IDENTITY_INSERT [dbo].[DictionaryCounty] ON 
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (1, N'Dolj', N'DJ')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (2, N'Bacau', N'BC')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (3, N'Harghita', N'HR')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (4, N'Bistri?a-Nasaud', N'BN')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (5, N'Dâmbovi?a', N'DB')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (6, N'Suceava', N'SV')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (7, N'Boto?ani', N'BT')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (8, N'Bra?ov', N'BV')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (9, N'Bucure?ti', N'B')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (10, N'Braila', N'BR')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (11, N'Hunedoara', N'HD')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (12, N'Teleorman', N'TR')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (13, N'Covasna', N'CV')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (14, N'Tulcea', N'TL')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (15, N'Timi?', N'TM')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (16, N'Buzau', N'BZ')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (17, N'Prahova', N'PH')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (18, N'Ilfov', N'IF')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (19, N'Neam?', N'NT')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (20, N'Cluj', N'CJ')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (21, N'Alba', N'AB')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (22, N'Giurgiu', N'GR')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (23, N'Arge?', N'AG')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (24, N'Calara?i', N'CL')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (25, N'Bihor', N'BH')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (26, N'Ia?i', N'IS')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (27, N'Vâlcea', N'VL')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (28, N'Vrancea', N'VN')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (29, N'Arad', N'AR')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (30, N'Ialomi?a', N'IL')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (31, N'Cara?-Severin', N'CS')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (32, N'Gala?i', N'GL')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (33, N'Gorj', N'GJ')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (34, N'Constan?a', N'CT')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (35, N'Satu Mare', N'SM')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (36, N'Maramure?', N'MM')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (37, N'Mehedin?i', N'MH')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (38, N'Salaj', N'SJ')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (39, N'Vaslui', N'VS')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (40, N'Mure?', N'MS')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (41, N'Sibiu', N'SB')
GO
INSERT [dbo].[DictionaryCounty] ([Id], [Name], [Code]) VALUES (42, N'Olt', N'OT')
GO
SET IDENTITY_INSERT [dbo].[DictionaryCounty] OFF
GO
SET IDENTITY_INSERT [dbo].[DictionaryStatus] ON 
GO
INSERT [dbo].[DictionaryStatus] ([Id], [Name], [Code]) VALUES (1, N'Joined', N'JOD')
GO
INSERT [dbo].[DictionaryStatus] ([Id], [Name], [Code]) VALUES (2, N'Withdrawn', N'WDN')
GO
INSERT [dbo].[DictionaryStatus] ([Id], [Name], [Code]) VALUES (3, N'Attended', N'ATD')
GO
SET IDENTITY_INSERT [dbo].[DictionaryStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[EmailNotification] ON 
GO
INSERT [dbo].[EmailNotification] ([Id], [To], [Cc], [Subject], [Message], [SentDate]) VALUES (1, N'madalina', NULL, N'Participare conferinta Introduction to GraphQL', N'Buna Madalina, 
    Te-ai inscris la conferinta Introduction to GraphQL, sustinuta de Capatina Alexandra.
    Te asteptam pe data 21/10/2022, la ora 12:00 AM, la locatia TotalSoft, sos. Bucuresti Nord nr. 10. 

    Zi frumoasa!', CAST(N'2024-08-08T16:27:44.247' AS DateTime))
GO
INSERT [dbo].[EmailNotification] ([Id], [To], [Cc], [Subject], [Message], [SentDate]) VALUES (2, N'string', NULL, N'Participare conferinta Introduction to React', N'Buna string, 
    Te-ai inscris la conferinta Introduction to React, sustinuta de Dragos Rosca.
    Te asteptam pe data 07/09/2022, la ora 12:00 AM, la locatia Remote, . 

    Zi frumoasa!', CAST(N'2024-08-08T16:31:52.380' AS DateTime))
GO
INSERT [dbo].[EmailNotification] ([Id], [To], [Cc], [Subject], [Message], [SentDate]) VALUES (3, N'madalina.mladin@totalsoft.ro', NULL, N'Participare conferinta Introduction to GraphQL', N'Buna Buna, 
    Te-ai inscris la conferinta Introduction to GraphQL, sustinuta de Capatina Alexandra.
    Te asteptam pe data 21/10/2022, la ora 12:00 AM, la locatia TotalSoft, sos. Bucuresti Nord nr. 10. 

    Zi frumoasa!', CAST(N'2024-08-12T13:29:39.047' AS DateTime))
GO
INSERT [dbo].[EmailNotification] ([Id], [To], [Cc], [Subject], [Message], [SentDate]) VALUES (4, N'patricia.vasilicenco@totalsoft.ro', NULL, N'Participare conferinta Introduction to GraphQL', N'Buna Paty, 
    Te-ai inscris la conferinta Introduction to GraphQL, sustinuta de Capatina Alexandra.
    Te asteptam pe data 21/10/2022, la ora 12:00 AM, la locatia TotalSoft, sos. Bucuresti Nord nr. 10. 

    Zi frumoasa!', CAST(N'2024-08-12T13:30:14.570' AS DateTime))
GO
INSERT [dbo].[EmailNotification] ([Id], [To], [Cc], [Subject], [Message], [SentDate]) VALUES (5, N'madalina.mirza96@gmail.com', NULL, N'Participare conferinta Introduction to GraphQL', N'Buna Georgiana, 
    Te-ai inscris la conferinta Introduction to GraphQL, sustinuta de Capatina Alexandra.
    Te asteptam pe data 21/10/2022, la ora 12:00 AM, la locatia TotalSoft, sos. Bucuresti Nord nr. 10. 

    Zi frumoasa!', CAST(N'2024-08-12T13:30:47.337' AS DateTime))
GO
INSERT [dbo].[EmailNotification] ([Id], [To], [Cc], [Subject], [Message], [SentDate]) VALUES (6, N'madalina.mirza96@gmail.com', NULL, N'Participare conferinta Introduction to GraphQL', N'Buna Georgiana, 
    Te-ai inscris la conferinta Introduction to GraphQL, sustinuta de Capatina Alexandra.
    Te asteptam pe data 21/10/2022, la ora 12:00 AM, la locatia TotalSoft, sos. Bucuresti Nord nr. 10. 

    Zi frumoasa!', CAST(N'2024-08-12T13:33:54.610' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[EmailNotification] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 
GO
INSERT [dbo].[Feedback] ([Id], [AttendeeEmail], [ConferenceId], [SpeakerId], [Rating], [Message]) VALUES (6, N'madalina@totalsoft.ro', 1, 1, CAST(1.00 AS Decimal(5, 2)), N'1')
GO
INSERT [dbo].[Feedback] ([Id], [AttendeeEmail], [ConferenceId], [SpeakerId], [Rating], [Message]) VALUES (7, N'admin@totalsoft.ro', 1, 1, CAST(1.00 AS Decimal(5, 2)), N'123')
GO
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON 
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (1, N'TotalSoft', NULL, 6, N'sos. Bucuresti Nord nr. 10', 6, 1, NULL, NULL)
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (2, N'Remote', NULL, 9, NULL, 9, 2, NULL, NULL)
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (4, N'Sala Palatului 45', NULL, 6, N'str. Mihai Eminescu nr. 6', 6, 1, NULL, NULL)
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (14, N'Casa de cultura', NULL, 3, N'sss', 5, 5, CAST(3.000000000 AS Decimal(12, 9)), CAST(4.000000000 AS Decimal(12, 9)))
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (15, N'Casa de cultura', NULL, 3, N'sss', 5, 5, CAST(3.000000000 AS Decimal(12, 9)), CAST(4.000000000 AS Decimal(12, 9)))
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (16, N'Casa de cultura', NULL, 3, N'sss', 5, 5, CAST(3.000000000 AS Decimal(12, 9)), CAST(4.000000000 AS Decimal(12, 9)))
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (17, N'Casa de cultura', NULL, 3, N'sss', 5, 5, CAST(3.000000000 AS Decimal(12, 9)), CAST(4.000000000 AS Decimal(12, 9)))
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (18, N'Casa de cultura', NULL, 3, N'sss', 5, 5, CAST(3.000000000 AS Decimal(12, 9)), CAST(4.000000000 AS Decimal(12, 9)))
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (19, N'Casa de cultura', NULL, 3, N'sss', 5, 5, CAST(3.000000000 AS Decimal(12, 9)), CAST(4.000000000 AS Decimal(12, 9)))
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (20, N'Casa de cultura', NULL, 3, N'sss', 5, 5, CAST(3.000000000 AS Decimal(12, 9)), CAST(4.000000000 AS Decimal(12, 9)))
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (21, N'Casa de cultura', NULL, 3, N'sss', 5, 5, CAST(3.000000000 AS Decimal(12, 9)), CAST(4.000000000 AS Decimal(12, 9)))
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (22, N'L11', NULL, 2, N'a1', 2, 3, CAST(1.000000000 AS Decimal(12, 9)), CAST(2.000000000 AS Decimal(12, 9)))
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (23, N'a1', NULL, 9, N'a1', 9, 8, CAST(1.000000000 AS Decimal(12, 9)), CAST(1.000000000 AS Decimal(12, 9)))
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (25, N'C1', NULL, 5, N'c1', 6, 6, CAST(1.000000000 AS Decimal(12, 9)), CAST(1.000000000 AS Decimal(12, 9)))
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (26, N'C2', NULL, 6, N'c2', 5, 5, CAST(1.000000000 AS Decimal(12, 9)), CAST(1.000000000 AS Decimal(12, 9)))
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (27, N'p1', NULL, 5, N'Bucuresti, sos M Bravu', 5, 5, CAST(4.000000000 AS Decimal(12, 9)), CAST(5.000000000 AS Decimal(12, 9)))
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (28, N'r1', NULL, 5, N'r1', 7, 7, CAST(1.000000000 AS Decimal(12, 9)), CAST(1.000000000 AS Decimal(12, 9)))
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (31, N'Sala Palatului 45', NULL, 6, N'str. Mihai Eminescu nr. 6', 6, 1, NULL, NULL)
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (32, N'Sala Palatului 45', NULL, 6, N'str. Mihai Eminescu nr. 6', 6, 1, NULL, NULL)
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (33, NULL, NULL, 6, NULL, 6, 1, NULL, NULL)
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (34, NULL, NULL, 6, NULL, 6, 1, NULL, NULL)
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (35, N'Sala Palatului', NULL, 2, N'Victoriei 5', 6, 1, CAST(0.000000000 AS Decimal(12, 9)), CAST(6.000000000 AS Decimal(12, 9)))
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (36, NULL, NULL, 5, NULL, 5, 5, NULL, NULL)
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (37, NULL, NULL, 5, NULL, 7, 7, NULL, NULL)
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (38, NULL, NULL, 5, NULL, 7, 7, NULL, NULL)
GO
INSERT [dbo].[Location] ([Id], [Name], [Code], [CountryId], [Address], [CountyId], [CityId], [Latitude], [Longitude]) VALUES (41, N'casa presei', NULL, 6, N'sos1', 7, 6, CAST(1.000000000 AS Decimal(12, 9)), CAST(2.000000000 AS Decimal(12, 9)))
GO
SET IDENTITY_INSERT [dbo].[Location] OFF
GO
SET IDENTITY_INSERT [dbo].[SMSNotification] ON 
GO
INSERT [dbo].[SMSNotification] ([Id], [PhoneNumber], [Message], [SentDate]) VALUES (1, N'+40731455779', N'Buna Ioana, 
    Te-ai inscris la conferinta Introduction to React, sustinuta de Dragos Rosca.
    Te asteptam pe data 07/09/2022, la ora 12:00 AM, la locatia Remote, . 

    Zi frumoasa!', CAST(N'2024-08-08T17:01:21.707' AS DateTime))
GO
INSERT [dbo].[SMSNotification] ([Id], [PhoneNumber], [Message], [SentDate]) VALUES (2, N'+40720933557', N'Buna Patricia, 
    Te-ai inscris la conferinta C# API, sustinuta de Capatina Alexandra.
    Te asteptam pe data 08/08/2024, la ora 12:00 AM, la locatia 1, 1. 

    Zi frumoasa!', CAST(N'2024-08-08T17:04:14.627' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[SMSNotification] OFF
GO
SET IDENTITY_INSERT [dbo].[Speaker] ON 
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (1, N'Capatina Alexandra', N'romania', CAST(5.00 AS Decimal(5, 2)), NULL, NULL, N'0725224996')
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (2, N'Dragos Rosca', N'ro', CAST(3.05 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (3, N'Diaconita Costi', N'ro', CAST(5.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (4, N'Mihai Sava', N'romania', CAST(5.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (5, N'Madalina Mladin', N'ro', CAST(4.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (6, N'Patricia Vasilicenco', N'ro', CAST(4.50 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (11, N'Andra1234', N'ro', CAST(5.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (12, N'Andra Sava', N'romana', CAST(4.00 AS Decimal(5, 2)), NULL, NULL, N'0784662331')
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (13, N'Alina Marcu', N'ro', CAST(6.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (14, N'Maria Ionescu', N'en', CAST(4.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (15, N'Elena Dumitrescu', N'ro', CAST(4.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (16, N'Andreea Munteanu', N'en', CAST(2.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (17, N'Andreea Munteanu', N'en', CAST(2.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (18, N'Andreea Munteanu', N'en', CAST(2.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (19, N'Andreea Munteanu', N'en', CAST(2.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (20, N'Andreea Munteanu', N'en', CAST(2.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (21, N'Andreea Munteanu', N'en', CAST(2.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (22, N'Andreea Munteanu', N'en', CAST(2.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (23, N'Andreea Munteanu', N'en', CAST(2.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (24, N'Maria Dobrescu', N'ro', CAST(5.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (25, N'De Sters1 ', N'ro', CAST(3.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (26, N'De Sters2', N'ro', CAST(4.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (27, N'Andra Sava', N'ttr', CAST(5.00 AS Decimal(5, 2)), NULL, NULL, N'0725277997')
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (28, N'Andra Sava', N'ryt', CAST(6.00 AS Decimal(5, 2)), NULL, NULL, N'0725277997')
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (29, N'DeSters4', N'tr', CAST(5.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (30, N'DeSters5', N'tr', CAST(5.00 AS Decimal(5, 2)), NULL, NULL, N'123456')
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (31, N'ee', N'ee', CAST(3.00 AS Decimal(5, 2)), NULL, NULL, N'4')
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (32, N'Speaker2', N'romm', CAST(9.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Speaker] ([Id], [Name], [Nationality], [Rating], [Image], [Email], [PhoneNumber]) VALUES (35, N'Maria ', N'ro', CAST(8.00 AS Decimal(5, 2)), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Speaker] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ConferenceXAttendee]    Script Date: 9/11/2024 9:40:38 AM ******/
ALTER TABLE [dbo].[ConferenceXAttendee] ADD  CONSTRAINT [IX_ConferenceXAttendee] UNIQUE NONCLUSTERED 
(
	[AttendeeEmail] ASC,
	[ConferenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ConferenceXSpeaker]    Script Date: 9/11/2024 9:40:38 AM ******/
ALTER TABLE [dbo].[ConferenceXSpeaker] ADD  CONSTRAINT [IX_ConferenceXSpeaker] UNIQUE NONCLUSTERED 
(
	[ConferenceId] ASC,
	[SpeakerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Conference]  WITH CHECK ADD  CONSTRAINT [FK_Conference_DictionaryCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[DictionaryCategory] ([Id])
GO
ALTER TABLE [dbo].[Conference] CHECK CONSTRAINT [FK_Conference_DictionaryCategory]
GO
ALTER TABLE [dbo].[Conference]  WITH CHECK ADD  CONSTRAINT [FK_Conference_DictionaryConferenceType] FOREIGN KEY([ConferenceTypeId])
REFERENCES [dbo].[DictionaryConferenceType] ([Id])
GO
ALTER TABLE [dbo].[Conference] CHECK CONSTRAINT [FK_Conference_DictionaryConferenceType]
GO
ALTER TABLE [dbo].[Conference]  WITH CHECK ADD  CONSTRAINT [FK_Conference_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([Id])
GO
ALTER TABLE [dbo].[Conference] CHECK CONSTRAINT [FK_Conference_Location]
GO
ALTER TABLE [dbo].[ConferenceXAttendee]  WITH CHECK ADD  CONSTRAINT [FK_ConferenceXAttendee_Conference] FOREIGN KEY([ConferenceId])
REFERENCES [dbo].[Conference] ([Id])
GO
ALTER TABLE [dbo].[ConferenceXAttendee] CHECK CONSTRAINT [FK_ConferenceXAttendee_Conference]
GO
ALTER TABLE [dbo].[ConferenceXAttendee]  WITH CHECK ADD  CONSTRAINT [FK_ConferenceXAttendee_DictionaryStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[DictionaryStatus] ([Id])
GO
ALTER TABLE [dbo].[ConferenceXAttendee] CHECK CONSTRAINT [FK_ConferenceXAttendee_DictionaryStatus]
GO
ALTER TABLE [dbo].[ConferenceXSpeaker]  WITH CHECK ADD  CONSTRAINT [FK_ConferenceXSpeaker_Conference] FOREIGN KEY([ConferenceId])
REFERENCES [dbo].[Conference] ([Id])
GO
ALTER TABLE [dbo].[ConferenceXSpeaker] CHECK CONSTRAINT [FK_ConferenceXSpeaker_Conference]
GO
ALTER TABLE [dbo].[ConferenceXSpeaker]  WITH CHECK ADD  CONSTRAINT [FK_ConferenceXSpeaker_Speaker] FOREIGN KEY([SpeakerId])
REFERENCES [dbo].[Speaker] ([Id])
GO
ALTER TABLE [dbo].[ConferenceXSpeaker] CHECK CONSTRAINT [FK_ConferenceXSpeaker_Speaker]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_ConferenceId] FOREIGN KEY([ConferenceId])
REFERENCES [dbo].[Conference] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_ConferenceId]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_SpeakerId] FOREIGN KEY([SpeakerId])
REFERENCES [dbo].[Speaker] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_SpeakerId]
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_DictionaryCity] FOREIGN KEY([CityId])
REFERENCES [dbo].[DictionaryCity] ([Id])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_DictionaryCity]
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_DictionaryCountry] FOREIGN KEY([CountryId])
REFERENCES [dbo].[DictionaryCountry] ([Id])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_DictionaryCountry]
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_DictionaryCounty] FOREIGN KEY([CountyId])
REFERENCES [dbo].[DictionaryCounty] ([Id])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_DictionaryCounty]
GO
