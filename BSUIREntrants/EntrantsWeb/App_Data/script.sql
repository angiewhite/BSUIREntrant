USE [BSUIREntrants]
GO
/****** Object:  Table [dbo].[Entrants]    Script Date: 1/10/2018 11:09:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrants](
	[EntrantID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nchar](50) NOT NULL,
	[LastName] [nchar](50) NOT NULL,
	[FatherName] [nchar](50) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[GPA] [decimal](16, 2) NOT NULL,
	[Town] [nchar](30) NOT NULL,
	[Address] [nchar](100) NULL,
	[PhoneNumber] [nchar](13) NOT NULL,
	[School] [nchar](50) NULL,
	[Biography] [nchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[EntrantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 1/10/2018 11:09:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[FacultyId] [int] IDENTITY(1,1) NOT NULL,
	[FacultyName] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[FacultyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Localities]    Script Date: 1/10/2018 11:09:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localities](
	[LocalityId] [int] IDENTITY(1,1) NOT NULL,
	[LocalityName] [nvarchar](30) NOT NULL,
	[RegionId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LocalityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Regions]    Script Date: 1/10/2018 11:09:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[RegionId] [int] IDENTITY(1,1) NOT NULL,
	[RegionalCenter] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Schools]    Script Date: 1/10/2018 11:09:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schools](
	[SchoolId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolName] [nvarchar](50) NOT NULL,
	[LocalityId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SchoolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Specialties]    Script Date: 1/10/2018 11:09:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialties](
	[SpecialtyId] [int] IDENTITY(1,1) NOT NULL,
	[SpecialtyName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[FacultyId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SpecialtyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 1/10/2018 11:09:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[SubjectId] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [nvarchar](50) NOT NULL,
	[SpecialtyId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Entrants] ON 

INSERT [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (2, N'Ivan                                              ', N'Ivanov                                            ', N'Ivan                                              ', CAST(0x75250B00 AS Date), CAST(9.90 AS Decimal(16, 2)), N'Volozhyn                      ', N'Kenina, 1                                                                                           ', N'+375445262626', NULL, N'..                                                                                                                                                    ')
INSERT [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (3, N'Olya                                              ', N'Astafyeva                                         ', N'Igor                                              ', CAST(0x23250B00 AS Date), CAST(7.80 AS Decimal(16, 2)), N'Svetlogorsk                   ', N'Lenina,67                                                                                           ', N'+375444444444', N'School #22                                        ', NULL)
INSERT [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (6, N'Darya                                             ', N'Nikitina                                          ', N'Propkop                                           ', CAST(0x61250B00 AS Date), CAST(8.00 AS Decimal(16, 2)), N'Minsk                         ', N'Bobruiskaya, 5, apt. 3                                                                              ', N'+375331112321', N'Gymnasium # 41                                    ', N'What Where When player                                                                                                                                ')
INSERT [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (7, N'Vlad                                              ', N'Alekseev                                          ', N'Ivan                                              ', CAST(0x26240B00 AS Date), CAST(9.00 AS Decimal(16, 2)), N'Bobruisk                      ', N'Minskaya, 66                                                                                        ', N'+375294443434', N'School # 8                                        ', N'Olympiads in Math                                                                                                                                     ')
INSERT [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (11, N'Olya                                              ', N'Astafyeva                                         ', N'Igor                                              ', CAST(0x23250B00 AS Date), CAST(7.80 AS Decimal(16, 2)), N'Svetlogorsk                   ', N'Lenina,67                                                                                           ', N'+375444444444', N'School #22                                        ', NULL)
INSERT [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (12, N'Darya                                             ', N'Nikitina                                          ', N'Propkop                                           ', CAST(0x61250B00 AS Date), CAST(8.00 AS Decimal(16, 2)), N'Minsk                         ', N'Bobruiskaya, 5, apt. 3                                                                              ', N'+375331112321', N'Gymnasium # 41                                    ', N'What Where When player                                                                                                                                ')
INSERT [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (13, N'Vlad                                              ', N'Alekseev                                          ', N'Ivan                                              ', CAST(0x26240B00 AS Date), CAST(9.00 AS Decimal(16, 2)), N'Bobruisk                      ', N'Minskaya, 66                                                                                        ', N'+375294443434', N'School # 8                                        ', N'Olympiads in Math                                                                                                                                     ')
INSERT [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (14, N'Margo                                             ', N'Kirk                                              ', N'Leonid                                            ', CAST(0xD4230B00 AS Date), CAST(10.00 AS Decimal(16, 2)), N'Slutsk                        ', NULL, N'+375112524252', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Entrants] OFF
SET IDENTITY_INSERT [dbo].[Faculties] ON 

INSERT [dbo].[Faculties] ([FacultyId], [FacultyName], [Description]) VALUES (1, N'KSIS', N'Best faculty evaa')
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName], [Description]) VALUES (2, N'FRE', NULL)
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName], [Description]) VALUES (3, N'FITU', NULL)
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName], [Description]) VALUES (4, N'IEF', NULL)
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName], [Description]) VALUES (5, N'FIK', NULL)
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName], [Description]) VALUES (6, N'FKP', NULL)
INSERT [dbo].[Faculties] ([FacultyId], [FacultyName], [Description]) VALUES (7, N'MILITARY', NULL)
SET IDENTITY_INSERT [dbo].[Faculties] OFF
SET IDENTITY_INSERT [dbo].[Localities] ON 

INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (1, N'Bobruisk', 2)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (2, N'Soligorsk', 1)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (3, N'Minsk', 7)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (4, N'Zhlobin', 4)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (5, N'Gomel', 4)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (6, N'Mogilev', 2)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (7, N'Molodechno', 1)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (8, N'Nesvizn', 1)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (9, N'Kalinkovichi', 4)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (10, N'Grodno', 5)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (11, N'Vitebsk', 6)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (12, N'Lida', 5)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (13, N'Postavi', 6)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (14, N'Orsha', 6)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (15, N'Klimovichi', 2)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (16, N'Brest', 3)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (17, N'Kobrin', 3)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (18, N'Pinsk', 3)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (19, N'Baranovichi', 3)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (20, N'Ivacevichi', 3)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (21, N'Mir', 5)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (22, N'Voronovo', 5)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (23, N'Novogrudok', 5)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (24, N'Borisov', 1)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (25, N'Bihov', 2)
INSERT [dbo].[Localities] ([LocalityId], [LocalityName], [RegionId]) VALUES (26, N'Kirovsk', 2)
SET IDENTITY_INSERT [dbo].[Localities] OFF
SET IDENTITY_INSERT [dbo].[Regions] ON 

INSERT [dbo].[Regions] ([RegionId], [RegionalCenter]) VALUES (1, N'Minsk')
INSERT [dbo].[Regions] ([RegionId], [RegionalCenter]) VALUES (2, N'Mogilev')
INSERT [dbo].[Regions] ([RegionId], [RegionalCenter]) VALUES (3, N'Brest')
INSERT [dbo].[Regions] ([RegionId], [RegionalCenter]) VALUES (4, N'Gomel')
INSERT [dbo].[Regions] ([RegionId], [RegionalCenter]) VALUES (5, N'Grodno')
INSERT [dbo].[Regions] ([RegionId], [RegionalCenter]) VALUES (6, N'Vitebsk')
INSERT [dbo].[Regions] ([RegionId], [RegionalCenter]) VALUES (7, N'City Of Minsk')
SET IDENTITY_INSERT [dbo].[Regions] OFF
SET IDENTITY_INSERT [dbo].[Schools] ON 

INSERT [dbo].[Schools] ([SchoolId], [SchoolName], [LocalityId]) VALUES (1, N'Gymnasium #1', 1)
INSERT [dbo].[Schools] ([SchoolId], [SchoolName], [LocalityId]) VALUES (2, N'School #30', 1)
INSERT [dbo].[Schools] ([SchoolId], [SchoolName], [LocalityId]) VALUES (4, N'School #10', 20)
INSERT [dbo].[Schools] ([SchoolId], [SchoolName], [LocalityId]) VALUES (5, N'Jewish School', 18)
INSERT [dbo].[Schools] ([SchoolId], [SchoolName], [LocalityId]) VALUES (6, N'Lyceum BSU', 3)
INSERT [dbo].[Schools] ([SchoolId], [SchoolName], [LocalityId]) VALUES (7, N'Gymnasium #41', 3)
INSERT [dbo].[Schools] ([SchoolId], [SchoolName], [LocalityId]) VALUES (8, N'Gymnasium #2', 1)
INSERT [dbo].[Schools] ([SchoolId], [SchoolName], [LocalityId]) VALUES (9, N'Gymnasium #3', 1)
INSERT [dbo].[Schools] ([SchoolId], [SchoolName], [LocalityId]) VALUES (10, N'Lyceum BRU', 6)
INSERT [dbo].[Schools] ([SchoolId], [SchoolName], [LocalityId]) VALUES (11, N'Lyceum #3', 6)
SET IDENTITY_INSERT [dbo].[Schools] OFF
SET IDENTITY_INSERT [dbo].[Specialties] ON 

INSERT [dbo].[Specialties] ([SpecialtyId], [SpecialtyName], [Description], [FacultyId]) VALUES (1, N'Informatics and Programming Technologies', N'Best spacialty Evaaa', 1)
INSERT [dbo].[Specialties] ([SpecialtyId], [SpecialtyName], [Description], [FacultyId]) VALUES (2, N'POIT', N'', 1)
INSERT [dbo].[Specialties] ([SpecialtyId], [SpecialtyName], [Description], [FacultyId]) VALUES (3, N'VMSIS', NULL, 1)
INSERT [dbo].[Specialties] ([SpecialtyId], [SpecialtyName], [Description], [FacultyId]) VALUES (4, N'Business', NULL, 4)
INSERT [dbo].[Specialties] ([SpecialtyId], [SpecialtyName], [Description], [FacultyId]) VALUES (5, N'ASOI', NULL, 3)
INSERT [dbo].[Specialties] ([SpecialtyId], [SpecialtyName], [Description], [FacultyId]) VALUES (6, N'Game Design', NULL, 3)
INSERT [dbo].[Specialties] ([SpecialtyId], [SpecialtyName], [Description], [FacultyId]) VALUES (7, N'Artificial Intelligence', NULL, 3)
INSERT [dbo].[Specialties] ([SpecialtyId], [SpecialtyName], [Description], [FacultyId]) VALUES (8, N'Economics', NULL, 4)
INSERT [dbo].[Specialties] ([SpecialtyId], [SpecialtyName], [Description], [FacultyId]) VALUES (9, N'Atom', NULL, 2)
INSERT [dbo].[Specialties] ([SpecialtyId], [SpecialtyName], [Description], [FacultyId]) VALUES (10, N'Nanotechnologies', NULL, 2)
INSERT [dbo].[Specialties] ([SpecialtyId], [SpecialtyName], [Description], [FacultyId]) VALUES (11, N'Projecting', NULL, 6)
SET IDENTITY_INSERT [dbo].[Specialties] OFF
SET IDENTITY_INSERT [dbo].[Subjects] ON 

INSERT [dbo].[Subjects] ([SubjectId], [SubjectName], [SpecialtyId]) VALUES (1, N'Math', 1)
INSERT [dbo].[Subjects] ([SubjectId], [SubjectName], [SpecialtyId]) VALUES (2, N'Geometry', 1)
INSERT [dbo].[Subjects] ([SubjectId], [SubjectName], [SpecialtyId]) VALUES (3, N'Programming', 1)
INSERT [dbo].[Subjects] ([SubjectId], [SubjectName], [SpecialtyId]) VALUES (4, N'English', 4)
INSERT [dbo].[Subjects] ([SubjectId], [SubjectName], [SpecialtyId]) VALUES (5, N'TI', 2)
INSERT [dbo].[Subjects] ([SubjectId], [SubjectName], [SpecialtyId]) VALUES (6, N'Game Design', 6)
SET IDENTITY_INSERT [dbo].[Subjects] OFF
ALTER TABLE [dbo].[Localities]  WITH CHECK ADD FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([RegionId])
GO
ALTER TABLE [dbo].[Schools]  WITH CHECK ADD FOREIGN KEY([LocalityId])
REFERENCES [dbo].[Localities] ([LocalityId])
GO
ALTER TABLE [dbo].[Specialties]  WITH CHECK ADD FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculties] ([FacultyId])
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD FOREIGN KEY([SpecialtyId])
REFERENCES [dbo].[Specialties] ([SpecialtyId])
GO
