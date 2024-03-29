USE [Burger]
GO
/****** Object:  Table [dbo].[temp_deals]    Script Date: 02/09/2015 09:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_deals](
	[user_id] [nvarchar](max) NULL,
	[deal_id] [nvarchar](max) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordered_deals]    Script Date: 02/09/2015 09:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordered_deals](
	[user_id] [nvarchar](max) NULL,
	[deal_id] [nvarchar](max) NULL,
	[delivery_status] [int] NULL,
	[Date] [date] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[ordered_deals] ([user_id], [deal_id], [delivery_status], [Date]) VALUES (N'13', N'1', 0, CAST(0x78390B00 AS Date))
INSERT [dbo].[ordered_deals] ([user_id], [deal_id], [delivery_status], [Date]) VALUES (N'13', N'9', 1, CAST(0x79390B00 AS Date))
INSERT [dbo].[ordered_deals] ([user_id], [deal_id], [delivery_status], [Date]) VALUES (N'13', N'10', 1, CAST(0x79390B00 AS Date))
INSERT [dbo].[ordered_deals] ([user_id], [deal_id], [delivery_status], [Date]) VALUES (N'13', N'11', 1, CAST(0x79390B00 AS Date))
INSERT [dbo].[ordered_deals] ([user_id], [deal_id], [delivery_status], [Date]) VALUES (N'13', N'12', 1, CAST(0x79390B00 AS Date))
INSERT [dbo].[ordered_deals] ([user_id], [deal_id], [delivery_status], [Date]) VALUES (N'13', N'16', 0, CAST(0x79390B00 AS Date))
INSERT [dbo].[ordered_deals] ([user_id], [deal_id], [delivery_status], [Date]) VALUES (N'16', N'15', 1, CAST(0x79390B00 AS Date))
INSERT [dbo].[ordered_deals] ([user_id], [deal_id], [delivery_status], [Date]) VALUES (N'16', N'13', 1, CAST(0x79390B00 AS Date))
INSERT [dbo].[ordered_deals] ([user_id], [deal_id], [delivery_status], [Date]) VALUES (N'16', N'18', 1, CAST(0x79390B00 AS Date))
INSERT [dbo].[ordered_deals] ([user_id], [deal_id], [delivery_status], [Date]) VALUES (N'13', N'1', 1, CAST(0x78390B00 AS Date))
INSERT [dbo].[ordered_deals] ([user_id], [deal_id], [delivery_status], [Date]) VALUES (N'13', N'2', 0, CAST(0x78390B00 AS Date))
INSERT [dbo].[ordered_deals] ([user_id], [deal_id], [delivery_status], [Date]) VALUES (N'13', N'9', 0, CAST(0x95390B00 AS Date))
INSERT [dbo].[ordered_deals] ([user_id], [deal_id], [delivery_status], [Date]) VALUES (N'13', N'10', 0, CAST(0x95390B00 AS Date))
INSERT [dbo].[ordered_deals] ([user_id], [deal_id], [delivery_status], [Date]) VALUES (N'13', N'13', 0, CAST(0x95390B00 AS Date))
INSERT [dbo].[ordered_deals] ([user_id], [deal_id], [delivery_status], [Date]) VALUES (N'13', N'18', 0, CAST(0x95390B00 AS Date))
INSERT [dbo].[ordered_deals] ([user_id], [deal_id], [delivery_status], [Date]) VALUES (N'13', N'11', 0, CAST(0x95390B00 AS Date))
/****** Object:  Table [dbo].[users]    Script Date: 02/09/2015 09:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone no] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[admin] [int] NULL,
	[date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[users] ON
INSERT [dbo].[users] ([Name], [Email], [Phone no], [Country], [City], [Address], [Password], [user_id], [admin], [date]) VALUES (N'saqib abbas', N'saqib.ubit@gmail.com', N'0347-2557616', N'pakistan', N'karachi', N'A-44 block-8', N'123', 13, 0, CAST(0x78390B00 AS Date))
INSERT [dbo].[users] ([Name], [Email], [Phone no], [Country], [City], [Address], [Password], [user_id], [admin], [date]) VALUES (NULL, N'admin@burger.com', NULL, NULL, NULL, NULL, N'123', 15, 1, CAST(0x78390B00 AS Date))
INSERT [dbo].[users] ([Name], [Email], [Phone no], [Country], [City], [Address], [Password], [user_id], [admin], [date]) VALUES (N'Muhammad Arsalan Shaikh', N'muhammadarsalan26@gmail.com', N'033312364889`', N'Pakistan', N'Karachi', N'G 304, Saima Classic', N'123', 16, 0, CAST(0x79390B00 AS Date))
SET IDENTITY_INSERT [dbo].[users] OFF
/****** Object:  Table [dbo].[Deals_des]    Script Date: 02/09/2015 09:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deals_des](
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [int] NULL,
	[Image url] [nvarchar](max) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Deals_des] ON
INSERT [dbo].[Deals_des] ([Title], [Description], [Price], [Image url], [Id]) VALUES (N'Zinger Burger', N'Burger+Fries+Cola', 399, N'images/Burger.jpg', 9)
INSERT [dbo].[Deals_des] ([Title], [Description], [Price], [Image url], [Id]) VALUES (N'Chicken Tikka', N'Delicious Chicken Tikka with extra hot masala', 499, N'images/Chicken Ticka.jpeg', 10)
INSERT [dbo].[Deals_des] ([Title], [Description], [Price], [Image url], [Id]) VALUES (N'Hot Pizza', N'Pizza with extra cheese topping', 999, N'images/Pizza.jpg', 11)
INSERT [dbo].[Deals_des] ([Title], [Description], [Price], [Image url], [Id]) VALUES (N'Seekh kabab', N'Full plate with mint sauce', 399, N'images/Kabab.jpg', 12)
INSERT [dbo].[Deals_des] ([Title], [Description], [Price], [Image url], [Id]) VALUES (N'Chicken Roll', N'Roll + Cola', 199, N'images/rolls.jpg', 13)
INSERT [dbo].[Deals_des] ([Title], [Description], [Price], [Image url], [Id]) VALUES (N'Chinese Shashlik', N'chinese rice with shashlik', 399, N'images/Chiness.jpg', 14)
INSERT [dbo].[Deals_des] ([Title], [Description], [Price], [Image url], [Id]) VALUES (N'Chicken Tandori', N'Chicken Tandori + Salad', 499, N'images/Chicken Tandori.jpg', 15)
INSERT [dbo].[Deals_des] ([Title], [Description], [Price], [Image url], [Id]) VALUES (N'Badam Kulfi ', N'Kulfa flavour', 199, N'images/Kulfi.jpg', 16)
INSERT [dbo].[Deals_des] ([Title], [Description], [Price], [Image url], [Id]) VALUES (N'Cheery Drink', N'Cheery Drink with extra Cream', 199, N'images/page3-img2.jpg', 17)
INSERT [dbo].[Deals_des] ([Title], [Description], [Price], [Image url], [Id]) VALUES (N'Fries', N'Fries with chicken flavour', 99, N'images/page2-img1.jpg', 18)
SET IDENTITY_INSERT [dbo].[Deals_des] OFF
/****** Object:  StoredProcedure [dbo].[all_approved_deals]    Script Date: 02/09/2015 09:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[all_approved_deals]
as begin
SELECT     dbo.ordered_deals.user_id,dbo.ordered_deals.Date, dbo.Deals_des.Id, dbo.Deals_des.Title, dbo.Deals_des.Description, dbo.Deals_des.Price, dbo.ordered_deals.deal_id, dbo.users.Name, 
                      dbo.users.[Phone no], dbo.users.Address
FROM         dbo.users INNER JOIN
                      dbo.ordered_deals ON dbo.users.user_id = dbo.ordered_deals.user_id  INNER JOIN
                      dbo.Deals_des ON dbo.ordered_deals.deal_id = dbo.Deals_des.Id where ordered_deals.delivery_status=1
end
GO
/****** Object:  StoredProcedure [dbo].[user_update]    Script Date: 02/09/2015 09:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[user_update]
  
  @Name nvarchar(max),
  @Email nvarchar(max),
  @Phone  nvarchar(max),
  @Country nvarchar(max),
  @city nvarchar(max),
  @Address nvarchar(max),
  @Password nvarchar(max),
  @user int
  as begin
  update users set Name=@Name,Email=@Email,[Phone no]=@Phone,Country=@Country,Address=@Address,[Password]=@Password where [user_id]=@user
  
  end
GO
/****** Object:  StoredProcedure [dbo].[ordered_approve]    Script Date: 02/09/2015 09:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ordered_approve]
as begin
SELECT     dbo.ordered_deals.user_id,ordered_deals.[Date], dbo.Deals_des.Id, dbo.Deals_des.Title, dbo.Deals_des.Description, dbo.Deals_des.Price, dbo.ordered_deals.deal_id, dbo.users.Name, 
                      dbo.users.[Phone no], dbo.users.Address
FROM         dbo.users INNER JOIN
                      dbo.ordered_deals ON dbo.users.user_id = dbo.ordered_deals.user_id  INNER JOIN
                      dbo.Deals_des ON dbo.ordered_deals.deal_id = dbo.Deals_des.Id where ordered_deals.delivery_status=0
end
GO
/****** Object:  View [dbo].[order_approval]    Script Date: 02/09/2015 09:53:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[order_approval]
AS
SELECT     dbo.ordered_deals.user_id, dbo.Deals_des.Id, dbo.Deals_des.Title, dbo.Deals_des.Description, dbo.Deals_des.Price, dbo.ordered_deals.deal_id, dbo.users.Name, 
                      dbo.users.[Phone no], dbo.users.Address
FROM         dbo.users INNER JOIN
                      dbo.ordered_deals ON dbo.users.user_id = dbo.ordered_deals.user_id INNER JOIN
                      dbo.Deals_des ON dbo.ordered_deals.deal_id = dbo.Deals_des.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Deals_des"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ordered_deals"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 110
               Right = 399
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "users"
            Begin Extent = 
               Top = 6
               Left = 437
               Bottom = 125
               Right = 597
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'order_approval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'order_approval'
GO
/****** Object:  StoredProcedure [dbo].[order]    Script Date: 02/09/2015 09:53:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[order]
@user int
as begin
INSERT INTO ordered_deals ([user_id],deal_id) SELECT [user_id],deal_id 
FROM  temp_deals where [user_id]=@user
delete from temp_deals where [user_id]=@user
end
GO
/****** Object:  StoredProcedure [dbo].[log_search]    Script Date: 02/09/2015 09:53:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[log_search]
@email nvarchar(max),
@password nvarchar(max)
as begin
select [user_id],[admin] from users where Email=@email and [Password]=@password
end
GO
/****** Object:  StoredProcedure [dbo].[insertion]    Script Date: 02/09/2015 09:53:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertion]
  
  @Name nvarchar(max),
  @Email nvarchar(max),
  @Phone  nvarchar(max),
  @Country nvarchar(max),
  @city nvarchar(max),
  @Address nvarchar(max),
  @Password nvarchar(max)
  as begin
  insert into users (Name,Email,[Phone no],Country,City ,Address,[Password]) values (@Name,@Email,@Phone ,@Country,@CIty,@Address,@Password)
  end
GO
/****** Object:  Default [DF__ordered_d__deliv__0DAF0CB0]    Script Date: 02/09/2015 09:53:00 ******/
ALTER TABLE [dbo].[ordered_deals] ADD  DEFAULT ((0)) FOR [delivery_status]
GO
/****** Object:  Default [DF_ordered_deals_Date]    Script Date: 02/09/2015 09:53:00 ******/
ALTER TABLE [dbo].[ordered_deals] ADD  CONSTRAINT [DF_ordered_deals_Date]  DEFAULT (getdate()) FOR [Date]
GO
/****** Object:  Default [DF__users__admin__0F975522]    Script Date: 02/09/2015 09:53:00 ******/
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [admin]
GO
/****** Object:  Default [DF_users_date]    Script Date: 02/09/2015 09:53:00 ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_date]  DEFAULT (getdate()) FOR [date]
GO
