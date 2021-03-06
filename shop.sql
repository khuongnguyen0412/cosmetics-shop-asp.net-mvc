USE [Shopping]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/3/2022 8:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 1/3/2022 8:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FromUserID] [int] NULL,
	[ToUserID] [int] NULL,
	[Content] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[Send] [bit] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 1/3/2022 8:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ProductName] [nvarchar](50) NULL,
	[ProductPrice] [int] NULL,
	[Quantity] [int] NULL,
	[OrderID] [int] NULL,
	[ProductImage] [nvarchar](500) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 1/3/2022 8:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[DateOrder] [datetime] NULL,
	[DateShip] [datetime] NULL,
	[IsPaid] [bit] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/3/2022 8:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Price] [int] NULL,
	[CreatedBy] [int] NULL,
	[ViewCount] [int] NULL,
	[Image1] [nvarchar](500) NULL,
	[Image2] [nvarchar](500) NULL,
	[Image3] [nvarchar](500) NULL,
	[Quantity] [int] NULL,
	[PurchasedCount] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[CategoryID] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 1/3/2022 8:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/3/2022 8:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Email] [nvarchar](50) NULL,
	[Captcha] [nvarchar](50) NULL,
	[IsConfirm] [bit] NULL,
	[Address] [nvarchar](500) NULL,
	[Phone] [nchar](12) NULL,
	[UserTypeID] [int] NULL,
	[Password] [nvarchar](50) NULL,
	[Avatar] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 1/3/2022 8:08:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (1, N'Son', 1)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (2, N'Phấn trang điểm', 1)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (3, N'Kẻ lông mày', 1)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (1002, N'ưer', 0)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (1003, N'ewrt', 0)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (41, 3, 2, N'alo', CAST(N'2021-12-31T19:29:14.657' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (42, 3, 2, N'123', CAST(N'2021-12-31T19:29:57.963' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (43, 2, 3, N'Chào bạn', CAST(N'2021-12-31T19:31:37.640' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (44, 2, 3, N'ok', CAST(N'2021-12-31T19:38:51.500' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (45, 2, 3, N'Xin chao!', CAST(N'2022-01-01T07:37:41.463' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (46, 2, 3, N'alo', CAST(N'2022-01-01T09:09:19.117' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (47, 3, 2, N'trewer', CAST(N'2022-01-02T16:02:28.240' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (48, 3, 2, N'alo', CAST(N'2022-01-02T16:02:38.917' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (55, 5, 2, N'chào', CAST(N'2022-01-02T19:20:31.630' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (56, 2, 5, N'CHào bạn', CAST(N'2022-01-02T19:20:49.020' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (57, 2, 5, N'alo', CAST(N'2022-01-02T19:21:34.747' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (58, 5, 2, N'1234 năm', CAST(N'2022-01-02T19:22:09.870' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Message] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (1, 1, N'Son Shu Uemura', 200000, 1, 1017, N'son.jpg')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (2, 2, N'Son Shu Uemura Rouge', 220000, 1, 1017, N'son-shu-uemura-rouge-unlimited-amplified-598-cam-dat-6050549b7f720-16032021134755.jpg')
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (1017, 5, N'Complete', CAST(N'2022-01-02T19:28:27.883' AS DateTime), CAST(N'2022-01-02T19:30:48.543' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID]) VALUES (1, N'Son Shu Uemura', 200000, 1, 0, N'son.jpg', N'son.jpg', N'son.jpg', 98, 2, N'None', 1, 1)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID]) VALUES (2, N'Son Shu Uemura Rouge', 220000, 1, 0, N'son-shu-uemura-rouge-unlimited-amplified-598-cam-dat-6050549b7f720-16032021134755.jpg', N'son-shu-uemura-rouge-unlimited-amplified-598-cam-dat-605056a03954c-16032021135632.jpg', N'son-shu-uemura-rouge-unlimited-amplified-598-cam-dat-605056a03ea17-16032021135632.jpg', 9, 1, N'Son Shu Uemura Rouge Unlimited Amplified OR598 lì mà không khô môi bắt kịp xu hướng của nhiều chị em phái đẹp hiện nay. Màu son cam đất siêu đẹp, thời thượng và sang trọng là gợi ý hoàn hảo cho các nàng.', 1, 1)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID]) VALUES (3, N'Phấn Thorakao', 350000, 1, 0, N'phan-trang-diem-thorakao-9g-nendep-xinh.jpg', NULL, NULL, 10, 0, N'Phấn trang điểm trắng da Thorakao Two Way Cake 9g được chiết xuất từ thiên nhiên giúp da trắng sáng ,thấm hút lượng dầu thừa trên bề mặt da , tạo lớp nền mỏng mịn ,giữ độ ẩm .', 1, 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Name], [Email], [Captcha], [IsConfirm], [Address], [Phone], [UserTypeID], [Password], [Avatar]) VALUES (1, N'Minh Thụy', N'minhthuy@gmail.com', N'123456', 1, N'CT', N'1234567890  ', 1, N'123456', N'pr.jpg')
INSERT [dbo].[Users] ([ID], [Name], [Email], [Captcha], [IsConfirm], [Address], [Phone], [UserTypeID], [Password], [Avatar]) VALUES (2, N'Nguyễn Minh Kha', N'khanguyen@gmail.com', N'123456', 1, N'CT', N'1234567890  ', 2, N'123456', N'pr.jpg')
INSERT [dbo].[Users] ([ID], [Name], [Email], [Captcha], [IsConfirm], [Address], [Phone], [UserTypeID], [Password], [Avatar]) VALUES (3, N'Lê Khải Phàm', N'khaipham@gmail.com', N'123456', 1, N'CT', N'1234567890  ', 3, N'123456', N'pr.jpg')
INSERT [dbo].[Users] ([ID], [Name], [Email], [Captcha], [IsConfirm], [Address], [Phone], [UserTypeID], [Password], [Avatar]) VALUES (5, N'khuong nguyen', N'lapankhuongnguyen@gmail.com', N'569589', 1, N'CT', N'0907892198  ', 3, N'123456', N'pr.jpg')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([ID], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[UserType] ([ID], [Name]) VALUES (2, N'CSKH')
INSERT [dbo].[UserType] ([ID], [Name]) VALUES (3, N'Client')
SET IDENTITY_INSERT [dbo].[UserType] OFF
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK__Message__FromUse__36B12243] FOREIGN KEY([FromUserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK__Message__FromUse__36B12243]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK__Message__ToUserI__37A5467C] FOREIGN KEY([ToUserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK__Message__ToUserI__37A5467C]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Order__25869641] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK__OrderDeta__Order__25869641]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Produ__24927208] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK__OrderDeta__Produ__24927208]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__Catego__239E4DCF] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__Catego__239E4DCF]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__Create__276EDEB3] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__Create__276EDEB3]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([ID])
GO
