USE [BSUIREntrants]
GO
/****** Object:  Table [dbo].[Entrants]    Script Date: 12/29/2017 7:27:45 PM ******/
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
SET IDENTITY_INSERT [dbo].[Entrants] ON 

GO
INSERT [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (2, N'Ivan                                              ', N'Ivanov                                            ', N'Ivan                                              ', CAST(0x75250B00 AS Date), CAST(9.90 AS Decimal(16, 2)), N'Volozhyn                      ', N'Kenina, 1                                                                                           ', N'+375445262626', NULL, N'..                                                                                                                                                    ')
GO
INSERT [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (3, N'Olya                                              ', N'Astafyeva                                         ', N'Igor                                              ', CAST(0x23250B00 AS Date), CAST(7.80 AS Decimal(16, 2)), N'Svetlogorsk                   ', N'Lenina,67                                                                                           ', N'+375444444444', N'School #22                                        ', NULL)
GO
INSERT [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (6, N'Darya                                             ', N'Nikitina                                          ', N'Propkop                                           ', CAST(0x61250B00 AS Date), CAST(8.00 AS Decimal(16, 2)), N'Minsk                         ', N'Bobruiskaya, 5, apt. 3                                                                              ', N'+375331112321', N'Gymnasium # 41                                    ', N'What Where When player                                                                                                                                ')
GO
INSERT [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (7, N'Vlad                                              ', N'Alekseev                                          ', N'Ivan                                              ', CAST(0x26240B00 AS Date), CAST(9.00 AS Decimal(16, 2)), N'Bobruisk                      ', N'Minskaya, 66                                                                                        ', N'+375294443434', N'School # 8                                        ', N'Olympiads in Math                                                                                                                                     ')
GO
INSERT [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (8, N'Margo                                             ', N'Kirk                                              ', N'Leonid                                            ', CAST(0xD4230B00 AS Date), CAST(10.00 AS Decimal(16, 2)), N'Slutsk                        ', NULL, N'+375112524252', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Entrants] OFF
GO
