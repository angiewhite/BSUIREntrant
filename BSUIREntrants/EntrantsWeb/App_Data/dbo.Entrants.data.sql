SET IDENTITY_INSERT [dbo].[Entrants] ON
INSERT INTO [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (1, N'Stas                                              ', N'Belyasov                                          ', N'Vyachaslav                                        ', N'2001-08-20', CAST(10.00 AS Decimal(16, 2)), N'Bobruisk                      ', NULL, N'+375296679254', N'Gymnasium #1                                      ', N'Olympiads in physics, mathematics                                                                                                                     ')
INSERT INTO [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (2, N'Ivan                                              ', N'Ivanov                                            ', N'Ivan                                              ', N'2001-01-01', CAST(9.90 AS Decimal(16, 2)), N'Volozhyn                      ', N'Kenina, 1                                                                                           ', N'+375445262626', NULL, N'..                                                                                                                                                    ')
INSERT INTO [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (3, N'Olya                                              ', N'Astafyeva                                         ', N'Igor                                              ', N'2000-10-11', CAST(7.80 AS Decimal(16, 2)), N'Svetlogorsk                   ', N'Lenina,67                                                                                           ', N'+375444444444', N'School #22                                        ', NULL)
INSERT INTO [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (4, N'Alexandra                                         ', N'Ermolik                                           ', N'Igor                                              ', N'1999-12-31', CAST(10.00 AS Decimal(16, 2)), N'Bobruisk                      ', N'Ulyanovski, 22                                                                                      ', N'+375293051470', N'Gymnasium #1                                      ', N'Social arts                                                                                                                                           ')
INSERT INTO [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (6, N'Darya                                             ', N'Nikitina                                          ', N'Propkop                                           ', N'2000-12-12', CAST(8.00 AS Decimal(16, 2)), N'Minsk                         ', N'Bobruiskaya, 5, apt. 3                                                                              ', N'+375331112321', N'Gymnasium # 41                                    ', N'What Where When player                                                                                                                                ')
INSERT INTO [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (7, N'Vlad                                              ', N'Alekseev                                          ', N'Ivan                                              ', N'2000-02-01', CAST(9.00 AS Decimal(16, 2)), N'Bobruisk                      ', N'Minskaya, 66                                                                                        ', N'+375294443434', N'School # 8                                        ', N'Olympiads in Math                                                                                                                                     ')
INSERT INTO [dbo].[Entrants] ([EntrantID], [FirstName], [LastName], [FatherName], [BirthDate], [GPA], [Town], [Address], [PhoneNumber], [School], [Biography]) VALUES (8, N'Margo                                             ', N'Kirk                                              ', N'Leonid                                            ', N'1999-11-11', CAST(10.00 AS Decimal(16, 2)), N'Slutsk                        ', NULL, N'+375112524252', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Entrants] OFF
