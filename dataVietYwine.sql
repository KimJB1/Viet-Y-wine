USE [VietYWine]
GO
/****** Object:  Table [dbo].[About]    Script Date: 04/28/2020 11:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NULL,
	[description] [ntext] NULL,
	[createBy] [nvarchar](100) NULL,
	[createDate] [datetime] NULL,
	[updateBy] [nvarchar](100) NULL,
	[updateDate] [datetime] NULL,
	[status] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 04/28/2020 11:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[MetaTitle] [nvarchar](60) NULL,
	[MetaKeyWord] [nvarchar](255) NULL,
	[MetaDescription] [nvarchar](160) NULL,
	[slug] [varchar](200) NULL,
	[createBy] [nvarchar](100) NULL,
	[createDate] [datetime] NULL,
	[updateBy] [nvarchar](100) NULL,
	[updateDate] [datetime] NULL,
	[status] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 04/28/2020 11:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[lastName] [nvarchar](70) NULL,
	[firstName] [nvarchar](30) NULL,
	[avatar] [nvarchar](max) NULL,
	[gender] [tinyint] NULL,
	[birthday] [date] NULL,
	[address] [nvarchar](200) NULL,
	[email] [varchar](200) NULL,
	[phone] [varchar](11) NULL,
	[hobbies] [nvarchar](2000) NULL,
	[description] [ntext] NULL,
	[passWord] [varchar](200) NULL,
	[isAdministrator] [tinyint] NULL,
	[createBy] [nvarchar](100) NULL,
	[createDate] [datetime] NULL,
	[updateBy] [nvarchar](100) NULL,
	[updateDate] [datetime] NULL,
	[status] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 04/28/2020 11:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NULL,
	[avatar] [nvarchar](max) NULL,
	[category] [tinyint] NULL,
	[summaryContent] [nvarchar](2000) NULL,
	[mainContent] [ntext] NULL,
	[MetaTitle] [nvarchar](60) NULL,
	[MetaKeyWord] [nvarchar](255) NULL,
	[MetaDescription] [nvarchar](160) NULL,
	[slug] [varchar](600) NULL,
	[createBy] [nvarchar](100) NULL,
	[createDate] [datetime] NULL,
	[updateBy] [nvarchar](100) NULL,
	[updateDate] [datetime] NULL,
	[status] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 04/28/2020 11:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](300) NULL,
	[address] [nvarchar](200) NULL,
	[phone] [varchar](11) NULL,
	[email] [varchar](200) NULL,
	[website] [varchar](1000) NULL,
	[avatar] [nvarchar](max) NULL,
	[createBy] [nvarchar](100) NULL,
	[createDate] [datetime] NULL,
	[updateBy] [nvarchar](100) NULL,
	[updateDate] [datetime] NULL,
	[status] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 04/28/2020 11:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[categoryID] [int] NULL,
	[producerID] [int] NULL,
	[name] [nvarchar](200) NULL,
	[avatar] [nvarchar](max) NULL,
	[price] [decimal](18, 0) NULL,
	[MetaTitle] [nvarchar](60) NULL,
	[MetaKeyWord] [nvarchar](255) NULL,
	[MetaDescription] [nvarchar](160) NULL,
	[slug] [varchar](300) NULL,
	[createBy] [nvarchar](100) NULL,
	[createDate] [datetime] NULL,
	[updateBy] [nvarchar](100) NULL,
	[updateDate] [datetime] NULL,
	[status] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 04/28/2020 11:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[productID] [int] NULL,
	[name] [nvarchar](150) NULL,
	[description] [ntext] NULL,
	[createBy] [nvarchar](100) NULL,
	[createDate] [datetime] NULL,
	[updateBy] [nvarchar](100) NULL,
	[updateDate] [datetime] NULL,
	[status] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurant]    Script Date: 04/28/2020 11:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurant](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[email] [varchar](200) NULL,
	[phone] [varchar](11) NULL,
	[map] [ntext] NULL,
	[createBy] [nvarchar](100) NULL,
	[createDate] [datetime] NULL,
	[updateBy] [nvarchar](100) NULL,
	[updateDate] [datetime] NULL,
	[status] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 04/28/2020 11:06:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NULL,
	[video] [ntext] NULL,
	[createBy] [nvarchar](100) NULL,
	[createDate] [datetime] NULL,
	[updateBy] [nvarchar](100) NULL,
	[updateDate] [datetime] NULL,
	[status] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[About] ON 

INSERT [dbo].[About] ([ID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (1, N'Viet Y wine', N'<p style="text-align:justify">Việt &Yacute; Wine l&agrave; thương hiệu rượu vang thuộc c&ocirc;ng ty Việt &Yacute; th&agrave;nh lập v&agrave;o năm 1998. Ch&uacute;ng t&ocirc;i l&agrave; nh&agrave; ph&acirc;n phối độc quyền thương hiệu rượu vang Monteverdi, Bertani, Mitologia đến từ Italia. Mỗi năm ch&uacute;ng t&ocirc;i cung cấp gần 300.000 chai rượu vang đến tay người ti&ecirc;u d&ugrave;ng to&agrave;n quốc tại Việt Nam.</p>

<p style="text-align:justify">C&aacute;c sản phẩm rượu vang &Yacute; của Việt &Yacute; c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất v&agrave; lu&ocirc;n l&agrave; sự lựa chọn h&agrave;ng đầu trong những b&agrave;n tiệc sang trọng.</p>

<p style="text-align:justify">Trải qua 20 năm ph&aacute;t triển, ch&uacute;ng t&ocirc;i v&ocirc; c&ugrave;ng tự h&agrave;o l&agrave; một trong những nh&agrave; nhập khẩu rượu vang uy t&iacute;n v&agrave; chất lượng tại Việt Nam.</p>
', N'Mai  Đức Việt', CAST(N'2020-04-19T19:55:56.293' AS DateTime), N'Kim JB', CAST(N'2020-04-19T20:40:39.507' AS DateTime), 2, 0)
INSERT [dbo].[About] ([ID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (2, N'Giới thiệu rượu vang Ý', N'<p><span style="font-family:Tahoma,Geneva,sans-serif">Nhiều người &Yacute; uống rượu vang trong suốt bữa ăn, v&agrave; đưa ra mời kh&aacute;ch ngay khi kh&aacute;ch đến chơi nh&agrave;. Nho được trồng ở hầu hết c&aacute;c v&ugrave;ng tr&ecirc;n đất &Yacute;, với hơn 1 triệu vườn nho đang được canh t&aacute;c. Mỗi v&ugrave;ng đất ở đ&acirc;y đều rất tự h&agrave;o với những c&acirc;y nho được chăm s&oacute;c cẩn thận v&agrave; những loại rượu vang họ sản xuất ra.</span></p>

<blockquote>
<p><span style="font-family:Tahoma,Geneva,sans-serif"><em>Phần lớn việc sản xuất&nbsp;<strong>rượu vang &yacute;</strong>&nbsp;được tiến h&agrave;nh trong những nh&agrave; m&aacute;y sản xuất rượu vang nghệ thuật hiện đại, tuy nhi&ecirc;n cũng c&oacute; những người l&agrave;ng tiến h&agrave;nh sản xuất loại rượu vang cho ri&ecirc;ng họ uống, d&ugrave;ng ch&acirc;n đất dậm mạnh v&agrave;o nho. Họ tin rằng phương ph&aacute;p cổ xưa n&agrave;y vẫn tạo ra những loại rượu vang ngon.</em></span></p>
</blockquote>
', N'Kim JB', CAST(N'2020-04-19T20:10:53.307' AS DateTime), N'Kim JB', CAST(N'2020-04-26T23:29:04.437' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[About] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [name], [MetaTitle], [MetaKeyWord], [MetaDescription], [slug], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (1, N'MONTEVERDI', N'Monteverdi', N'rượu vang ngon, monteverdi', N'Hãng rượu vang chuẩn', N'monteverdi', N'Kim JB', CAST(N'2020-04-20T22:29:12.237' AS DateTime), N'Kim JB', CAST(N'2020-04-20T22:29:12.237' AS DateTime), 1, 0)
INSERT [dbo].[Category] ([ID], [name], [MetaTitle], [MetaKeyWord], [MetaDescription], [slug], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (2, N'MITOLOGIA', N'Mitologia', N'rượu vang ngon, mitologia', N'rượu vang mitologia', N'mitologia', N'Kim JB', CAST(N'2020-04-20T22:29:23.310' AS DateTime), N'Kim JB', CAST(N'2020-04-21T09:33:00.440' AS DateTime), 1, 0)
INSERT [dbo].[Category] ([ID], [name], [MetaTitle], [MetaKeyWord], [MetaDescription], [slug], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (3, N'MONTEVERDIe', N'Monteverdi', N'rượu vang ngon, monteverdi', N'ádadasd', N'monteverdie', N'Kim JB', CAST(N'2020-04-20T22:30:11.327' AS DateTime), N'Kim JB', CAST(N'2020-04-20T22:30:11.327' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [lastName], [firstName], [avatar], [gender], [birthday], [address], [email], [phone], [hobbies], [description], [passWord], [isAdministrator], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (1, N'Kim', N'JB', N'/Content/AdminContent/Upload/noPhotoAvailable.jpg', 1, CAST(N'1998-09-25' AS Date), N'Hà Nội', N'maiviet8748.vn@gmail.com', N'0966848748', N'Nghe nhạc, đi dạo', N'Chăm chỉ, tính tự giác cao, ham học hỏi. Đã hoàn thành được nhiều dự án với asp.net mvc 5', N'MjUwOTE5OTg=', 1, N'Admin', CAST(N'2020-04-19T16:20:00.000' AS DateTime), N'Admin', CAST(N'2020-04-19T16:20:00.000' AS DateTime), 1, 0)
INSERT [dbo].[Employee] ([ID], [lastName], [firstName], [avatar], [gender], [birthday], [address], [email], [phone], [hobbies], [description], [passWord], [isAdministrator], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (2, N'Mai ', N'Đức Việt', N'/Content/AdminContent/Upload1/78491119_991285284538344_7030941852454879232_o.jpg', 1, CAST(N'1998-09-25' AS Date), N'Số 25, Vũ Ngọc Phan, Láng Hạ, Đống Đa (Viện Công Nghệ)', N'kimjb98.dev@gmail.com', N'0358860123', N'', N'', N'MjUwOTE5OTg=', 1, N'Kim JB', CAST(N'2020-04-19T17:03:45.737' AS DateTime), N'Kim JB', CAST(N'2020-04-19T17:03:45.737' AS DateTime), 1, 0)
INSERT [dbo].[Employee] ([ID], [lastName], [firstName], [avatar], [gender], [birthday], [address], [email], [phone], [hobbies], [description], [passWord], [isAdministrator], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (3, N'Hoàng Thị', N'Chinh', N'/Content/AdminContent/Upload1/90517441_2864661090269722_4508339733666988032_n.jpg', 2, CAST(N'1998-08-20' AS Date), N'Chương Mỹ - Hà Nội', N'hoangchinh@gmail.com', N'0123456789', N'', N'', N'MjUwOTE5OTg=', 2, N'Kim JB', CAST(N'2020-04-19T17:49:24.137' AS DateTime), N'Kim JB', CAST(N'2020-04-19T17:49:24.137' AS DateTime), 1, 0)
INSERT [dbo].[Employee] ([ID], [lastName], [firstName], [avatar], [gender], [birthday], [address], [email], [phone], [hobbies], [description], [passWord], [isAdministrator], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (4, N'Mai', N'Triệu Vy', N'/Content/AdminContent/Upload1/566232.jpg', 2, CAST(N'2015-02-10' AS Date), N'Hà Nội', N'trieuvy@gmail.com', N'0332456789', N'', N'', N'MjUwOTE5OTg=', 2, N'Kim JB', CAST(N'2020-04-23T20:57:46.283' AS DateTime), N'Kim JB', CAST(N'2020-04-23T20:57:46.283' AS DateTime), 1, 0)
INSERT [dbo].[Employee] ([ID], [lastName], [firstName], [avatar], [gender], [birthday], [address], [email], [phone], [hobbies], [description], [passWord], [isAdministrator], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (5, N'Academy', N'Devmaster', N'/Content/AdminContent/Upload1/logo-devmaster.png', 1, CAST(N'2020-04-15' AS Date), N'Số 25, Vũ Ngọc Phan, Láng Hạ, Đống Đa (Viện Công Nghệ)', N'devmaster.vn@gmail.com', N'0123654789', N'', N'', N'MTIzMTIzMTIzNCQ=', 1, N'Kim JB', CAST(N'2020-04-28T11:03:15.667' AS DateTime), N'Devmaster Academy', CAST(N'2020-04-28T11:04:21.470' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([ID], [name], [avatar], [category], [summaryContent], [mainContent], [MetaTitle], [MetaKeyWord], [MetaDescription], [slug], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (1, N'Review rượu vang ý Primitivo Puglia Monteverdi', N'/Content/AdminContent/UploadAlbum/Tin%20t%E1%BB%A9c/review-ruou-vang-y-primitivo-puglia-monteverdi-2-1.jpg', 2, N'<p>Rượu vang l&agrave; một trong những loại thức uống c&oacute; cồn được ưa chuộng nhất tr&ecirc;n to&agrave;n thế giới bởi những c&ocirc;ng dụng m&agrave; loại rượu n&agrave;y mang lại. Hiện nay, tr&ecirc;n thị trường chai rượu vang Primitivo Puglia đang được t&iacute;n đồ y&ecirc;u rượu vang &Yacute; r&aacute;o riết săn l&ugrave;ng. Vậy rượu vang Primitivo Puglia l&agrave; chai rượu như thế n&agrave;o, liệu c&oacute; xứng tầm với gi&aacute; phải bỏ,...H&atilde;y để Việt &Yacute; Wine review rượu vang &yacute; Primitivo Puglia Monteverdi c&ugrave;ng bạn nh&eacute;. Rượu vang &Yacute; Monteverdi Primitivo Puglia Để review rượu vang &yacute; Primitivo Puglia Monteverdi bạn nhất ...</p>
', N'<p>Rượu vang l&agrave; một trong những loại thức uống c&oacute; cồn được ưa chuộng nhất tr&ecirc;n to&agrave;n thế giới bởi những c&ocirc;ng dụng m&agrave; loại rượu n&agrave;y mang lại. Hiện nay, tr&ecirc;n thị trường chai rượu vang Primitivo Puglia đang được t&iacute;n đồ y&ecirc;u rượu vang &Yacute; r&aacute;o riết săn l&ugrave;ng. Vậy rượu vang Primitivo Puglia l&agrave; chai rượu như thế n&agrave;o, liệu c&oacute; xứng tầm với gi&aacute; phải bỏ,&hellip;H&atilde;y để Việt &Yacute; Wine review rượu vang &yacute; Primitivo Puglia Monteverdi c&ugrave;ng bạn nh&eacute;.</p>

<p><img alt="review-ruou-vang-y-primitivo-puglia-monteverdi" src="https://vietywine.com/wp-content/uploads/2020/04/review-ruou-vang-y-primitivo-puglia-monteverdi-5.jpg" style="height:480px; width:600px" /></p>

<p>Rượu vang đỏ Primitivo Puglia nh&agrave; Monteverdi</p>

<h3>Rượu vang &Yacute; Monteverdi Primitivo Puglia</h3>

<p>Để&nbsp;<a href="https://vietywine.com/review-ruou-vang-y-primitivo-puglia-monteverdi/"><em><strong>review rượu vang &yacute; Primitivo Puglia Monteverdi</strong></em></a>&nbsp;bạn nhất định kh&ocirc;ng thể bỏ qua c&aacute;c th&ocirc;ng tin về chai rượu n&agrave;y. V&agrave; sau đ&acirc;y Việt &Yacute; Wine sẽ đưa ra cho bạn những th&ocirc;ng tin m&agrave; bạn nhất định phải biết về chai vang n&agrave;y.</p>

<h4>Đặc điểm của rượu vang &Yacute; Primitivo Puglia Monteverdi</h4>

<p>Rượu vang &Yacute; Primitivo Puglia Monteverdi được sản xuất từ giống nho Primitivo ở v&ugrave;ng Puglia, v&ugrave;ng d&agrave;i v&agrave; hẹp nằm ở ph&iacute;a Đ&ocirc;ng Nam nước &Yacute;. Primitivo Puglia l&agrave; sản phẩm của nh&agrave; Monteverdi, h&atilde;ng sản xuất rượu vang nổi tiếng tại &Yacute;.</p>

<p>Rượu vang Primitivo Puglia được sản xuất v&agrave; xử l&yacute; qua một qu&aacute; tr&igrave;nh kh&eacute;p k&iacute;n, qu&aacute; tr&igrave;nh ng&acirc;m ủ v&agrave; đ&oacute;ng chai v&ocirc; c&ugrave;ng kỳ c&ocirc;ng v&agrave; t&aacute;ch biệt ho&agrave;n to&agrave;n với m&ocirc;i trường b&ecirc;n ngo&agrave;i. Qua c&aacute;c c&ocirc;ng đoạn v&agrave; quy tr&igrave;nh kh&eacute;p k&iacute;n nghi&ecirc;m ngặt về chất lượng gi&uacute;p Primitivo c&oacute; ti&ecirc;u chuẩn IGT về chất lượng.</p>

<p>Rượu c&oacute; m&agrave;u đỏ đậm h&ograve;a c&ugrave;ng một ch&uacute;t sắc t&iacute;m, khi mở lắp chai bạn sẽ cảm nhận r&otilde; được hương thơm của c&aacute;c loại hoa quả đen như mơ sấy, d&acirc;u đen, cam thảo,&hellip;Khi thưởng thức rượu vang Primitivo Puglia gi&uacute;p k&iacute;ch th&iacute;ch mọi gi&aacute;c quan đem đến sự dễ chịu.</p>

<p><img alt="review-ruou-vang-y-primitivo-puglia-monteverdi" src="https://vietywine.com/wp-content/uploads/2020/04/review-ruou-vang-y-primitivo-puglia-monteverdi-3-1.jpg" style="height:480px; width:600px" /></p>

<p>Tổng hợp th&ocirc;ng tin về rượu vang Primitivo Puglia Monteverdi</p>

<h3>C&aacute;ch thưởng thức rượu vang &Yacute; Primitivo Puglia Monteverdi chuẩn nhất</h3>

<p>Để c&oacute; thể uống rượu vang Primitivo Puglia một c&aacute;ch tr&ograve;n vị nhất ch&uacute;ng ta n&ecirc;n mở nắp rượu vang, ướp lạnh vang khoảng 15-30 ph&uacute;t trước khi uống để rượu vang thở v&agrave; đạt được nhiều độ ph&ugrave; hợp nhất khi thưởng thức. Chọn ly ph&ugrave; hợp với rượu vang đỏ Primitivo Puglia cũng gi&uacute;p cho việc thưởng thức rượu vang được ho&agrave;n hảo hơn.</p>

<p>Rượu Primitivo Puglia th&iacute;ch hợp sử dụng với mọi trường hợp từ bữa ăn của gia đ&igrave;nh hay một bữa tiệc sang trọng. Khi kết hợp với c&aacute;c m&oacute;n ăn chế biến từ thịt đỏ v&agrave; c&aacute;c loại pho-mat trưởng th&agrave;nh hương vị của rượu Primitivo Puglia sẽ k&iacute;ch th&iacute;ch c&aacute;c gi&aacute;c quan của bạn đem đến sự tuyệt hảo nhất.</p>

<p>Rượu vang Primitivo Puglia Monteverdi rất ph&ugrave; hợp với những người y&ecirc;u th&iacute;ch vang ch&aacute;t của &Yacute;. Với nồng độ 14.5%, một nồng độ rượu đủ đ&ocirc; với những chai vang ch&aacute;t nhưng vẫn đem lại cho người thưởng thức với cảm gi&aacute;c an to&agrave;n nhất.</p>

<p><img alt="review-ruou-vang-y-primitivo-puglia-monteverdi" src="https://vietywine.com/wp-content/uploads/2020/04/review-ruou-vang-y-primitivo-puglia-monteverdi-1.jpg" style="height:480px; width:600px" /></p>

<p>Bật m&iacute; c&aacute;ch uống rượu vang Primitivo Puglia chuẩn</p>

<h3>Review rượu vang &Yacute; Primitivo Puglia Monteverdi từ người d&ugrave;ng tr&ecirc;n Facebook</h3>

<p>Tr&ecirc;n hội rượu vang của Facebook đ&atilde; c&oacute; rất nhiều người sử dụng v&agrave;<em><strong>&nbsp;review rượu vang &Yacute; Primitivo Puglia Monteverdi</strong></em>. Sau đ&acirc;y l&agrave; những review nhận được nhiều tương t&aacute;c v&agrave; phản hồi nhất đ&atilde; được Việt &Yacute; Wine tổng hợp v&agrave; chọn lọc được.</p>

<p><img alt="" src="https://vietywine.com/wp-content/uploads/2020/04/Review-r%C6%B0%E1%BB%A3u-vang-%C3%BD-Primitivo-Puglia-Monteverdi-1.png" style="height:379px; width:800px" /></p>

<p><strong>Review từ nickname L&acirc;m Xu&acirc;n Nguyễn:</strong><em>&nbsp;&ldquo;Nghỉ dịch em với mấy anh em trong nh&agrave; b&agrave;y ra bữa tiệc nhỏ. Uống c&ugrave;ng với rượu vang Primitivo Puglia Monteverdi của &Yacute; nh&eacute;. Mời cả nh&agrave; thưởng thức. Rượu tưởng uống sẽ n&oacute;ng m&agrave; kh&ocirc;ng đ&acirc;u nh&eacute; hợp gu cực kỳ lu&ocirc;n chai n&agrave;y ch&aacute;t, chua nhẹ cực dễ kết hợp.&rdquo;</em></p>

<p><img alt="" src="https://vietywine.com/wp-content/uploads/2020/04/Review-r%C6%B0%E1%BB%A3u-vang-%C3%BD-Primitivo-Puglia-Monteverdi-3.png" style="height:402px; width:800px" /><strong>Review từ nickname Như Ti&ecirc;n:</strong><em>&nbsp;&ldquo;Rượu ngon lại c&oacute; bạn hiền, rượu ngon nh&agrave; em đ&acirc;y ạ. Chai Primitivo Puglia Monteverdi n&agrave;y nh&agrave; em uống mỗi khi off team lu&ocirc;n, quen th&agrave;nh th&acirc;n lu&ocirc;n, n&acirc;ng cao tinh thần l&agrave;m việc. Chai rượu ch&aacute;t m&agrave; mọi người đều c&oacute; thể uống dễ uống cực kỳ lu&ocirc;n. &Agrave; nhưng mọi người nhớ mở lắp rượu rồi ng&acirc;m nước đ&aacute; hoặc để tủ m&aacute;t rồi hằng uống nh&eacute;.&rdquo;</em></p>

<p><img alt="" src="https://vietywine.com/wp-content/uploads/2020/04/Review-r%C6%B0%E1%BB%A3u-vang-%C3%BD-Primitivo-Puglia-Monteverdi-4.png" style="height:354px; width:800px" /></p>

<p><strong>Review từ nickname</strong>&nbsp;<strong>Nguyễn Phương Ly:&nbsp;</strong><em>&ldquo;Em cứ nghĩ em kh&ocirc;ng bao giờ uống được vang ch&aacute;t mọi người ạ. Cơ m&agrave; từ khi được cho thử chai Primitivo Puglia của &Yacute; l&agrave; em thay đổi lu&ocirc;n. Dễ uống m&agrave; v&agrave;o cực nh&eacute;, hơi ch&aacute;t với chua một ch&uacute;t ăn với thịt b&ograve; l&agrave; tuyệt lu&ocirc;n.&rdquo;</em></p>

<p><img alt="" src="https://vietywine.com/wp-content/uploads/2020/04/Review-r%C6%B0%E1%BB%A3u-vang-%C3%BD-Primitivo-Puglia-Monteverdi-2-1.png" style="height:358px; width:800px" /></p>

<p><strong>Review từ nickname Đinh Phương Dung:</strong><em>&nbsp;&ldquo;</em><em>Ai th&iacute;ch uống chai rượu Primitivo Puglia của nh&agrave; Monteverdi n&agrave;y như em kh&ocirc;ng. M&ugrave;i hương nhẹ nh&agrave;ng, em hay cảm nhận được hương cam thảo với d&acirc;u đen mọi người c&oacute; cảm nhận giống em kh&ocirc;ng. Chưa ai thử nhớ thử đi nh&eacute;, chai vang ch&aacute;t chất lượng.&rdquo;</em></p>

<h3>Rượu vang Primitivo Puglia Monteverdi gi&aacute; bao nhi&ecirc;u? Địa chỉ mua rượu vang Primitivo uy t&iacute;n?</h3>

<p>Rượu vang Primitivo Puglia Monteverdi được rất nhiều người lựa chọn sử dụng bởi chất lượng cũng như những c&ocirc;ng dụng đặc biệt m&agrave; chai rượu n&agrave;y đem lại. Nhưng mua rượu vang Primitivo Puglia uy t&iacute;n ở đ&acirc;u? V&agrave; chai rượu vang n&agrave;y c&oacute; gi&aacute; bao nhi&ecirc;u? H&atilde;y c&ugrave;ng t&igrave;m hiểu ngay nh&eacute;.</p>

<p>Rượu vang Primitivo Puglia Monteverdi c&oacute; mặt ở khắp c&aacute;c kệ h&agrave;ng ở c&aacute;c si&ecirc;u thị, c&aacute;c cửa h&agrave;ng rượu vang tr&ecirc;n cả nước. Nhưng kh&ocirc;ng phải đơn vị n&agrave;o cũng đảm bảo được nguồn gốc xuất xứ của chai rượu vang n&agrave;y. Việt &Yacute; Wine l&agrave; đơn vị được nhập khẩu v&agrave; ph&acirc;n phối độc quyền rượu vang nh&agrave; Montevedi tr&ecirc;n thị trường Việt Nam. Chỉ với 610.000 ngh&igrave;n đồng bạn đ&atilde; c&oacute; thể sở hữu cho m&igrave;nh chai rượu vang ch&aacute;t tuyệt hảo n&agrave;y.</p>

<p><img alt="review-ruou-vang-y-primitivo-puglia-monteverdi" src="https://vietywine.com/wp-content/uploads/2020/04/review-ruou-vang-y-primitivo-puglia-monteverdi-4.jpg" style="height:480px; width:600px" /></p>

<p>Rượu vang &Yacute; Primitivo Puglia Monteverdi c&oacute; gia ni&ecirc;m yết 610.000 ngh&igrave;n đồng</p>

<p>Tr&ecirc;n đ&acirc;y l&agrave;&nbsp;<em><strong>review rượu vang &yacute; Primitivo Puglia Monteverdi&nbsp;</strong></em>m&agrave; Việt &Yacute; Wine tổng hợp v&agrave; chia sẻ tới bạn đọc. Nhằm gi&uacute;p cho bạn đọc c&oacute; được c&aacute;i nh&igrave;n tổng qu&aacute;t nhất về chai rượu đang được săn đ&oacute;n n&agrave;y. Cần được tư vấn về c&aacute;c d&ograve;ng vang &Yacute; v&agrave; giải đ&aacute;p về những thắc mắc, h&atilde;y li&ecirc;n hệ&nbsp;<a href="https://vietywine.com/" rel="noopener noreferrer" target="_blank">Việt &Yacute; Wine</a>&nbsp;qua&nbsp;<strong><em><a href="tel:024.2269.6999" rel="nofollow">024.2269.6999.</a></em></strong></p>
', N'Review rượu vang ý Primitivo Puglia Monteverdi', N'rượu vang ý', N'Rượu vang là một trong những loại thức uống có cồn được ưa chuộng nhất trên toàn thế giới bởi những công dụng mà loại rượu này mang lại. ', N'review-ruou-vang-y-primitivo-puglia-monteverdi', N'Kim JB', CAST(N'2020-04-25T18:13:52.703' AS DateTime), N'Kim JB', CAST(N'2020-04-25T19:08:47.367' AS DateTime), 1, 0)
INSERT [dbo].[Post] ([ID], [name], [avatar], [category], [summaryContent], [mainContent], [MetaTitle], [MetaKeyWord], [MetaDescription], [slug], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (2, N'Bạn đã biết cách uống rượu vang chuẩn nhất hay chưa?', N'/Content/AdminContent/UploadAlbum/Ki%E1%BA%BFn%20th%E1%BB%A9c/cach-uong-ruou-vang-chuan-1-300x169.jpg', 1, N'<p>Rượu vang l&agrave; thức uống hảo hạng được rất nhiều người ưa chuộng. C&aacute;ch thưởng thức rượu vang l&agrave; cả ...</p>
', N'<p>Rượu vang l&agrave; thức uống hảo hạng được rất nhiều người ưa chuộng. C&aacute;ch thưởng thức rượu vang l&agrave; cả một nghệ thuật v&agrave; người thưởng thức n&oacute; cũng giống như một nghệ sĩ. Uống vang phải l&agrave;m sao to&aacute;t l&ecirc;n kh&iacute; chất, sự thanh tao v&agrave; s&agrave;nh điệu. C&ugrave;ng Việt &Yacute; Wine t&igrave;m hiểu c&aacute;ch uống rượu vang chuẩn nhất qua b&agrave;i viết dưới đ&acirc;y nh&eacute;.</p>

<p><img alt="Cách uống rượu vang chuẩn nhất" src="https://vietywine.com/wp-content/uploads/2020/04/cach-uong-ruou-vang-chuan-2.jpg" style="height:400px; width:600px" /></p>

<p>L&agrave;m thế n&agrave;o để uống rượu vang chuẩn?</p>

<h3>Khi uống rượu vang cần chuẩn bị những g&igrave;?</h3>

<p>Thưởng vang kh&ocirc;ng chỉ l&agrave; nhấm ngụm rượu m&agrave; n&oacute; l&agrave; cả một sự chuẩn bị.&nbsp;<a href="https://vietywine.com/ban-da-biet-cach-uong-ruou-vang-chuan-nhat-hay-chua/"><em><strong>C&aacute;ch uống rượu vang chuẩn</strong></em></a>&nbsp;kh&ocirc;ng chỉ thể hiện qua c&aacute;ch uống c&ograve;n thể hiện cả khi chuẩn bị thưởng thức.</p>

<p>+ Chờ vang thở: Ch&uacute;ng ta n&ecirc;n mở nắp rượu vang khoảng 15-30 ph&uacute;t trước khi uống để rượu vang thở. Kh&iacute; oxy sẽ t&aacute;c động trực tiếp l&ecirc;n bề mặt rượu vang lan tỏa hương thơm, bớt cay v&agrave; m&ugrave;i vị đằm thắm hơn. T&ugrave;y v&agrave;o d&ograve;ng vang m&agrave; bạn sở hữu th&igrave; số thời gian thở của vang sau khi mở l&agrave; kh&aacute;c nhau.</p>

<p>+ Ướp lạnh vang: Mỗi một chai vang sẽ c&oacute; nhiệt độ sử dụng kh&aacute;c nhau. Với c&aacute;c chai vang đỏ chỉ cần ng&acirc;m trong &iacute;t đ&aacute; v&igrave; loại n&agrave;y được uống ở nhiệt độ ph&ograve;ng. C&ograve;n đối với vang trắng v&agrave; vang hồng n&ecirc;n để v&agrave;o trong x&ocirc; đ&aacute; hoặc tủ m&aacute;t từ 15-30 ph&uacute;t trước khi uống.</p>

<p>+ Chọn ly: T&ugrave;y v&agrave;o mỗi loại rượu vang v&agrave; mục đ&iacute;ch sử dụng sẽ cần loại ly uống ph&ugrave; hợp để vừa l&agrave;m nổi bật l&ecirc;n m&agrave;u sắc, hương vị của rượu vang v&agrave; nhu cầu của người d&ugrave;ng.</p>

<p>+&nbsp; Đồ ăn c&ugrave;ng: C&aacute;ch chọn đồ ăn c&ugrave;ng với rượu vang l&agrave; một c&aacute;ch uống rượu vang thưởng thức tinh tế. Mỗi loại vang lại c&oacute; c&aacute;ch kết hợp ri&ecirc;ng cần phải c&acirc;n nhắc, nghi&ecirc;n cứu kỹ c&agrave;ng để c&oacute; được hương vị đạt chuẩn v&agrave; tạo cảm gi&aacute;c ngon miệng nhất. Với m&oacute;n c&aacute; hơi tanh, thịt mềm, n&ecirc;n chọn vang trắng c&oacute; vị chua nhẹ. C&ograve;n những m&oacute;n ăn được chế biến từ thịt m&agrave;u đỏ, nhất l&agrave; những m&oacute;n quay, nướng th&igrave; vị nồng ch&aacute;t của vang đỏ lại rất ph&ugrave; hợp.</p>

<p style="margin-left:40px"><img alt="Cách uống rượu vang chuẩn nhất" src="https://vietywine.com/wp-content/uploads/2020/04/cach-uong-ruou-vang-chuan-3.jpg" style="height:400px; width:600px" /></p>

<p>Uống rượu vang chuẩn nhất như thế n&agrave;o?</p>

<h3>C&aacute;ch uống rượu vang chuẩn nhất</h3>

<p>Sau khi bạn lựa chọn được một chai vang tuyệt hảo đ&uacute;ng chuẩn th&igrave; l&agrave;m thể n&agrave;o để thưởng thức trọn vị rượu vang l&agrave; cả một qu&aacute; tr&igrave;nh m&agrave; kh&ocirc;ng phải ai cũng biết. Nay Việt &Yacute; Wine m&aacute;ch bạn những&nbsp;<em><strong>c&aacute;ch uống rượu vang chuẩn</strong></em>, chuẩn s&agrave;nh dưới đ&acirc;y.</p>

<p>+ Nh&igrave;n ngắm ly rượu: Bước đầu ti&ecirc;n của qu&aacute; tr&igrave;nh thưởng thức rượu vang ch&iacute;nh l&agrave; nh&igrave;n ngắm rượu vang. Rượu n&ecirc;n được r&oacute;t ra tối đa kh&ocirc;ng qu&aacute; 1/2 ly thủy tinh mỏng trong veo để c&oacute; thể quan s&aacute;t m&agrave;u sắc, độ s&aacute;nh cũng như độ kết d&iacute;nh của rượu.</p>

<p>+ Lắc nhẹ ly rượu: Khi đ&atilde; cầm ly rượu tr&ecirc;n tay, h&atilde;y lắc nhẹ cho rượu s&oacute;ng s&aacute;nh để quan s&aacute;t d&ograve;ng chảy của rượu gi&uacute;p ta cảm nhận đủ nhất c&aacute;c bước tiếp theo.</p>

<p>+ Cảm nhận hương thơm: Sau khi rượu được lắc nhẹ s&aacute;nh l&ecirc;n th&agrave;nh ly v&agrave; từ từ tr&ocirc;i xuống, bạn h&atilde;y gh&eacute; mũi v&agrave;o miệng ly để ngửi v&agrave; cảm nhận hết hương vị đặc trưng v&agrave; ho&agrave;n to&agrave;n thi&ecirc;n nhi&ecirc;n chỉ c&oacute; ở rượu vang. C&oacute; thể bạn sẽ ngửi thấy m&ugrave;i của gỗ sồi, m&ugrave;i hoa quả đỏ như d&acirc;u d&acirc;y, cherry&hellip; hay m&ugrave;i của hoa quả đen như mận, việt quất&hellip; t&ugrave;y theo chai vang m&agrave; bạn sở hữu.</p>

<p>+ Nếm v&agrave; thưởng thức ly rượu: Đ&acirc;y l&agrave; c&ocirc;ng đoạn ch&iacute;nh để cảm nhận ch&iacute;nh x&aacute;c hương vị của rượu vang. Sau khi nhận biết hương vị, bạn bắt đầu cảm nhận rượu vang bằng vị gi&aacute;c. H&atilde;y để một ch&uacute;t kh&ocirc;ng kh&iacute; tr&agrave;n v&agrave;o miệng c&ugrave;ng với &iacute;t một rượu vang, bởi như thế vị rượu sẽ đậm đ&agrave; hơn rất nhiều. Nhớ l&agrave; trong bước n&agrave;y bạn chỉ ngậm một ch&uacute;t rượu vang trong v&ograve;m miệng th&ocirc;i nh&eacute;.</p>

<p>+ Nhấm nh&aacute;p dư vị rượu vang: đ&aacute;nh gi&aacute; hương vị của rượu vang c&ograve;n đọng lại sau khi uống. C&oacute; thể l&agrave; vị ch&aacute;t nhẹ, ch&aacute;t nồng hơn hay cũng c&oacute; thể l&agrave; vị ngọt tho&aacute;ng nhẹ&hellip;. V&agrave; cũng chỉ trong bước n&agrave;y, bạn mới thấy hương vị của c&aacute;c loại quả, c&aacute;c loại hương liệu được h&ograve;a quyền h&agrave;i h&ograve;a tuyệt vời đến thế.</p>

<p style="margin-left:40px"><img alt="Các bước uống rượu vang chuẩn" src="https://vietywine.com/wp-content/uploads/2020/04/cach-uong-ruou-vang-chuan-4.jpg" style="height:400px; width:600px" /></p>

<p>C&aacute;c bước uống rượu vang chuẩn</p>

<p>Tr&ecirc;n đ&acirc;y l&agrave; những mẹo gi&uacute;p bạn c&oacute; c&aacute;ch uống rượu vang chuẩn nhất. Cần được tư vấn về c&aacute;c d&ograve;ng vang v&agrave; giải đ&aacute;p về những thắc mắc, h&atilde;y li&ecirc;n hệ&nbsp;<a href="https://vietywine.com/">Việt &Yacute; Wine</a>. Vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i&nbsp;<strong><em><a href="tel:024.2269.6999" rel="nofollow">024.2269.6999</a></em></strong>.</p>
', N'Bạn đã biết cách uống rượu vang chuẩn nhất hay chưa?', N'Bạn đã biết cách uống rượu vang chuẩn nhất hay chưa?', N'Rượu vang là thức uống hảo hạng được rất nhiều người ưa chuộng. Cách thưởng thức rượu vang là cả ...', N'ban-da-biet-cach-uong-ruou-vang-chuan-nhat-hay-chua-', N'Kim JB', CAST(N'2020-04-27T18:14:19.553' AS DateTime), N'Kim JB', CAST(N'2020-04-27T18:14:19.553' AS DateTime), 1, 0)
INSERT [dbo].[Post] ([ID], [name], [avatar], [category], [summaryContent], [mainContent], [MetaTitle], [MetaKeyWord], [MetaDescription], [slug], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (3, N'Bạn đã biết cách chọn ly uống rượu vang đỏ chuẩn nhất hay chưa?', N'/Content/AdminContent/UploadAlbum/Ki%E1%BA%BFn%20th%E1%BB%A9c/C%C3%A1ch-ch%E1%BB%8Dn-ly-u%E1%BB%91ng-r%C6%B0%E1%BB%A3u-vang-%C4%91%E1%BB%8F-1-300x169.jpg', 1, N'<p>C&oacute; nhiều người nghĩ rằng, c&oacute; thể sử dụng bất cứ loại ly n&agrave;o để uống rượu vang đỏ. Nhưng ...</p>
', N'<p>C&oacute; nhiều người nghĩ rằng, c&oacute; thể sử dụng bất cứ loại ly n&agrave;o để uống rượu vang đỏ. Nhưng kh&ocirc;ng hề biết rằng mỗi loại rượu vang đỏ kh&aacute;c nhau sẽ c&oacute; c&aacute;ch chọn ly uống rượu vang kh&aacute;c nhau. Để c&aacute;c bạn kh&ocirc;ng phải chờ l&acirc;u, b&agrave;i viết c&aacute;ch chọn ly uống rượu vang đỏ sau đ&acirc;y sẽ gi&uacute;p bạn giải đ&aacute;p những thắc mắc tr&ecirc;n.</p>

<p><img alt="Cách chọn ly uống rượu vang đỏ (2)" src="https://vietywine.com/wp-content/uploads/2020/04/C%C3%A1ch-ch%E1%BB%8Dn-ly-u%E1%BB%91ng-r%C6%B0%E1%BB%A3u-vang-%C4%91%E1%BB%8F-2.jpg" style="height:480px; width:600px" /></p>

<p>C&aacute;ch chọn ly uống rượu vang đỏ ph&ugrave; hợp</p>

<h3>V&igrave; sao n&ecirc;n chọn ly uống rượu vang đỏ?</h3>

<p>Trước khi t&igrave;m ra&nbsp;<a href="https://vietywine.com/cach-chon-ly-uong-ruou-vang-do/"><em><strong>c&aacute;ch chọn ly uống rượu vang đỏ</strong></em></a>, liệu bạn đ&atilde; bao giờ tự hỏi v&igrave; sao n&ecirc;n chọn ly uống rượu vang đỏ hay chưa? V&agrave; sau đ&acirc;y l&agrave; những l&yacute; do nhất định bạn phải biết.</p>

<p>+ Giống nho: Mỗi loại rượu vang thường được tạo n&ecirc;n từ những giống nho kh&aacute;c nhau. Mỗi giống nho sẽ c&oacute; những đặc trưng tạo n&ecirc;n những chai rượu vang với hương vị đặc biệt. V&igrave; vậy với những ly rượu vang cao hay thấp, to hay nhỏ sẽ quyết định đến việc c&oacute; giữ được trọn vẹn hương vị nho hay kh&ocirc;ng.</p>

<p><img alt="Cách chọn ly uống rượu vang đỏ" src="https://vietywine.com/wp-content/uploads/2020/04/C%C3%A1ch-ch%E1%BB%8Dn-ly-u%E1%BB%91ng-r%C6%B0%E1%BB%A3u-vang-%C4%91%E1%BB%8F-4.jpg" style="height:480px; width:600px" /></p>

<p>C&aacute;c giống nho ti&ecirc;u biểu sản xuất rượu vang</p>

<p>+ V&ugrave;ng nho: L&yacute; do đầu ti&ecirc;n khiến bạn n&ecirc;n t&igrave;m c&aacute;ch chọn ly để thưởng thức rượu vang đỏ ch&iacute;nh l&agrave; yếu tố v&ugrave;ng miền. Mỗi v&ugrave;ng nho kh&aacute;c nhau sẽ c&oacute; những đặc trưng ri&ecirc;ng biệt như con người, kh&iacute; hậu. V&iacute; dụ như v&ugrave;ng nho Lampuganis nổi tiếng nhất của &Yacute; với loại rượu Dolce Novella trứ danh, người d&acirc;n nơi đ&acirc;y thường mời kh&aacute;ch thưởng thức một ly rượu vang đỏ đựng trong một chiếc ly lớn để b&agrave;y tỏ sự hiếu kh&aacute;ch đồng thời thể hiện sự cởi mở v&agrave; th&acirc;n thiện của những người n&ocirc;ng d&acirc;n trồng nho nơi đ&acirc;y.</p>

<p><img alt="Cách chọn ly uống rượu vang đỏ" src="https://vietywine.com/wp-content/uploads/2020/04/C%C3%A1ch-ch%E1%BB%8Dn-ly-u%E1%BB%91ng-r%C6%B0%E1%BB%A3u-vang-%C4%91%E1%BB%8F-3.jpg" style="height:480px; width:600px" /></p>

<p>Yếu tố v&ugrave;ng miền trong sản xuất rượu vang</p>

<p>+ Phương thức sản xuất: C&oacute; nhiều phương thức để tạo ra những chai vang với hương vị kh&aacute;c nhau. V&agrave; mỗi phương thức sản xuất đều muốn đưa đến cho người d&ugrave;ng những trải nghiệm ho&agrave;n hảo nhất. Để tạo ra những chai rượu vang ngon l&agrave; cả một qu&aacute; tr&igrave;nh của những người sản xuất. Mỗi chai rượu được tạo ra đều ứng với mỗi loại ly ph&ugrave; hợp nhất, đưa đến những cảm nhận tuyệt hảo nhất.</p>

<p><img alt="Phương thức sản xuất rượu vang" src="https://vietywine.com/wp-content/uploads/2020/04/C%C3%A1ch-ch%E1%BB%8Dn-ly-u%E1%BB%91ng-r%C6%B0%E1%BB%A3u-vang-%C4%91%E1%BB%8F-5.jpg" style="height:480px; width:600px" /></p>

<p>Yếu tố phương thức sản xuất trong rượu vang</p>

<h3>C&aacute;ch chọn ly rượu vang đỏ chuẩn nhất</h3>

<p>Nếu bạn đ&atilde; biết được l&yacute; do tại sao n&ecirc;n chọn ly uống rượu vang đỏ, sau đ&acirc;y sẽ l&agrave; c&aacute;ch gi&uacute;p bạn chọn được ly rượu vang đỏ hợp với chai rượu của bạn.</p>

<h4>Ly rượu vang Burgundy</h4>

<p><em><strong>C&aacute;ch chọn ly uống rượu vang đỏ</strong></em>&nbsp;ph&ugrave; hợp sẽ l&agrave;m nổi bật m&agrave;u sắc tinh tế m&agrave; mượt m&agrave; của rượu vang. Ly rượu vang Burgundy l&agrave; sự lựa chọn tốt nhất mỗi khi thưởng thức loại rượu vang đỏ c&oacute; m&ugrave;i tinh tế, nhẹ nh&agrave;ng như Primitivo Puglia, Sangliovese Puglia. Với bầu rượu lớn, diện t&iacute;ch tiếp x&uacute;c giữa vang v&agrave; kh&ocirc;ng kh&iacute; được ho&agrave;n hảo nhất tạo n&ecirc;n hương vị trọn vẹn nhất khi bạn thưởng thức.</p>

<p><img alt="Cách chọn ly rượu vang đỏ" src="https://vietywine.com/wp-content/uploads/2020/04/C%C3%A1ch-ch%E1%BB%8Dn-ly-u%E1%BB%91ng-r%C6%B0%E1%BB%A3u-vang-%C4%91%E1%BB%8F-6.jpg" style="height:480px; width:600px" /></p>

<p>Ly rượu vang Burgundy</p>

<h4>Ly rượu vang Large Bordeaux</h4>

<p>Với những loại vang đỏ đậm như Montepulciano D&rsquo;Abruzzo, Negroamaro Puglia c&aacute;ch để chọn ly thưởng thức rượu vang đỏ sẽ kh&aacute;c với những chai rượu được l&agrave;m từ giống nho kh&aacute;c. Ly rượu vang Large Bordeaux l&agrave;m nổi bật sắc đỏ tuyệt đẹp, diện t&iacute;ch bề mặt lớn gi&uacute;p dễ d&agrave;ng khuếch t&aacute;n hương thơm. Ly rượu ph&aacute;t t&aacute;n m&ugrave;i hương nhiều hơn gi&uacute;p người d&ugrave;ng c&oacute; thể thưởng thức trọn vẹn hương vị đậm đ&agrave; của rượu.</p>

<p><img alt="Ly rượu vang Large Bordeaux" src="https://vietywine.com/wp-content/uploads/2020/04/C%C3%A1ch-ch%E1%BB%8Dn-ly-u%E1%BB%91ng-r%C6%B0%E1%BB%A3u-vang-%C4%91%E1%BB%8F-7.jpg" style="height:480px; width:600px" /></p>

<p>Ly rượu vang Large Bordeaux</p>

<h4>Ly rượu vang Standard Red</h4>

<p>C&aacute;ch để chọn được ly thưởng thức rượu vang đỏ với loại rượu vang từ vừa đến mạnh như Dolce Novella Exclusive, Hera, Amarone Della Valpolicella sẽ y&ecirc;u cầu một loại ly ph&ugrave; hợp. Ly rượu vang Standard Red l&agrave; ly rượu vang&nbsp; đỏ &ldquo;ti&ecirc;u chuẩn&rdquo;, đ&acirc;y l&agrave; chiếc ly c&oacute; phần ch&acirc;n ly cao, m&igrave;nh ly tr&ograve;n hẹp dần về ph&iacute;a miệng ly. Việc thưởng thức rượu vang được&nbsp; trọn vị nhất cả về sắc, hương v&agrave; vị.</p>

<p><img alt="Cách chọn ly rượu vang đỏ" src="https://vietywine.com/wp-content/uploads/2020/04/C%C3%A1ch-ch%E1%BB%8Dn-ly-u%E1%BB%91ng-r%C6%B0%E1%BB%A3u-vang-%C4%91%E1%BB%8F-8.jpg" style="height:480px; width:600px" /></p>

<p>Ly rượu vang Standard Red</p>

<p>C&oacute; rất nhiều loại ly được thiết kế kh&aacute;c nhau nhưng một điều đ&oacute; l&agrave; tất cả c&aacute;c ly tốt nhất đều c&oacute; điểm chung l&agrave; đ&aacute;y ly hẹp ở ph&iacute;a trong. Điều n&agrave;y cho ph&eacute;p hương thơm của rượu được tập trung b&ecirc;n trong ly v&agrave; trở n&ecirc;n tốt hơn. Với những sự kh&aacute;c nhau của từng loại ly,&nbsp;<a href="https://vietywine.com/" rel="noopener noreferrer" target="_blank">Việt &Yacute; Wine</a>&nbsp;hy vọng bạn đ&atilde; t&igrave;m được&nbsp;<em><strong>c&aacute;ch chọn ly uống rượu vang đỏ</strong></em>&nbsp;ph&ugrave; hợp với từng loại rượu để qu&aacute; tr&igrave;nh thưởng vang trở n&ecirc;n tuyệt hảo!</p>
', N'Bạn đã biết cách chọn ly uống rượu vang đỏ chuẩn nhất hay ch', N'Bạn đã biết cách chọn ly uống rượu vang đỏ chuẩn nhất hay chưa?', N'Có nhiều người nghĩ rằng, có thể sử dụng bất cứ loại ly nào để uống rượu vang đỏ. Nhưng ...', N'ban-da-biet-cach-chon-ly-uong-ruou-vang-do-chuan-nhat-hay-chua-', N'Kim JB', CAST(N'2020-04-27T18:16:28.130' AS DateTime), N'Kim JB', CAST(N'2020-04-27T18:16:28.130' AS DateTime), 1, 0)
INSERT [dbo].[Post] ([ID], [name], [avatar], [category], [summaryContent], [mainContent], [MetaTitle], [MetaKeyWord], [MetaDescription], [slug], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (4, N'Những điều cơ bản về rượu vang', N'/Content/AdminContent/UploadAlbum/Ki%E1%BA%BFn%20th%E1%BB%A9c/IMG_0931-2-1-300x169.jpg', 1, N'<p>Người ta n&oacute;i rằng rượu vang vừa đơn giản lại vừa phức tạp. Đơn giản ở chỗ, n&oacute; được bắt ...</p>
', N'<p>Người ta n&oacute;i rằng rượu vang vừa đơn giản lại vừa phức tạp. Đơn giản ở chỗ, n&oacute; được bắt nguồn từ những thứ v&ocirc; c&ugrave;ng tự nhi&ecirc;n. Chẳng cần nhiều đến sự can thiệp nhiều từ con người, ta vẫn c&oacute; những chai rượu v&ocirc; c&ugrave;ng thơm ngon. Thế nhưng để tạo ra được rượu thơm ngon tuyệt hảo l&agrave; cả một sự phức tạp v&ocirc; c&ugrave;ng. Thế n&ecirc;n mới n&oacute;i rượu vang đơn giản nhưng để l&agrave;m ra được th&igrave; kh&ocirc;ng hề đơn giản. Vậy rượu vang l&agrave; g&igrave;?</p>

<h4>Rượu vang l&agrave; g&igrave;?</h4>

<p><strong>Rượu vang</strong>&nbsp;l&agrave; một loại thức uống c&oacute; cồn được l&ecirc;n men từ nước nho. Sự c&acirc;n bằng h&oacute;a học tự nhi&ecirc;n cho ph&eacute;p nho l&ecirc;n men kh&ocirc;ng cần th&ecirc;m c&aacute;c loại đường, axit, enzym, nước hoặc chất dinh dưỡng kh&aacute;c. Men chuy&ecirc;̉n hóa đường trong nho v&agrave; chuyển đổi ch&uacute;ng th&agrave;nh rượu v&agrave; carbon dioxit. Giống nho kh&aacute;c nhau v&agrave; chủng nấm men kh&aacute;c nhau tạo th&agrave;nh c&aacute;c loại vang khác nhau.</p>

<p>Nho l&agrave; yếu tố quan trọng nhất để l&agrave;m ra rượu vang, chất lượng của nho quyết định 95% đến chất lượng rượu.&nbsp;C&oacute; 2 giống nho ch&iacute;nh: nho trắng v&agrave; nho đen. B&ecirc;n trong của 2 giống nho rất giống nhau. Điều kh&aacute;c biệt duy nhất ch&iacute;nh l&agrave; nho đen c&oacute; lớp vỏ ngo&agrave;i đậm hơn, nơi chứa tannins( chất tạo vị ch&aacute;t).</p>

<h4>Ph&acirc;n biệt rượu vang qua m&agrave;u sắc của rượu</h4>

<p>Một trong những c&aacute;ch ph&acirc;n biệt vang đơn giản nhất ch&iacute;nh l&agrave; nh&igrave;n v&agrave;o m&agrave;u sắc của những chai vang. C&oacute; thể kể đến như:</p>

<p>Trắng (White wine): Vang trắng thường sẽ được l&agrave;m từ nho trắng. Vang trắng thường c&oacute; m&agrave;u xanh nhạt hoặc v&agrave;ng xanh nhẹ, rất thu h&uacute;t v&agrave; bắt mắt ngay từ c&aacute;i nh&igrave;n đầu ti&ecirc;n.</p>

<p>Đỏ (Red wine): L&agrave; loại vang được ưa chuộng nhất hiện nay. C&aacute;c chai vang đỏ được l&agrave;m từ c&aacute;c giống nho đen chuy&ecirc;n dụng. Vang đỏ được biết đến l&agrave; một trong những loại rượu vang b&aacute;n chạy nhất, được ưa chuộng nhất hiện nay.</p>

<p><img alt="phân biệt rượu vang thông qua màu sắc của rượu vang" src="https://www.quatetvanphong.com/upload/userfiles/images/phan-biet-ruou-vang-qua-mau-sac.jpg" style="height:525px; width:700px" /></p>

<p>Hồng (Rose wine):&nbsp; l&agrave;m từ nho đen, nước nho sẽ rời khỏi vỏ nho trong một giai đoạn ngắn trước khi nước được h&uacute;t sạch. Ch&iacute;nh v&igrave; vậy, vang hồng c&oacute; m&agrave;u sắc nhẹ hơn vang đỏ, với sắc hồng nhạt đẹp mắt v&agrave; quyến rũ.</p>

<h4>Ph&acirc;n biệt theo hương vị</h4>

<p>Một loại rượu vang kh&aacute;c nhau sẽ c&oacute; một độ ngọt &ndash; ch&aacute;t kh&aacute;c nhau v&agrave; c&oacute; những đặc trưng ri&ecirc;ng biệt, t&ugrave;y c&aacute;ch chế biến của c&aacute;c loại vang th&igrave; hương vị của n&oacute; cũng được thể hiện r&otilde; n&eacute;t.</p>

<p>Dry &ndash; Vị ch&aacute;t</p>

<p>Vị ch&aacute;t ch&iacute;nh l&agrave; đặc trưng của vang ch&aacute;t n&oacute; được l&agrave;m n&ecirc;n chủ yếu từ nho để ủ th&agrave;nh rượu, ch&iacute;nh v&igrave; vậy bạn sẽ kh&ocirc;ng cảm nhận được vị ngọt của đường. Đối với một số loại vang ch&aacute;t, c&aacute;c nh&agrave; sản xuất c&oacute; thể th&ecirc;m v&agrave;o rượu một số loại phụ gia nhưng vẫn giữ được hương vị đặc trưng l&agrave; kh&ocirc;ng để rượu ngọt.</p>

<p>Semi &ndash; Sweet</p>

<p>&nbsp;</p>

<p>Đ&acirc;y l&agrave; loại rượu khi uống v&agrave;o bạn sẽ cảm nhận được một phần ngọt, hương vị tr&aacute;i c&acirc;y hoặc axit thường được c&aacute;c nh&agrave; sản xuất th&ecirc;m v&agrave;o rượu.</p>

<p>Sweet &ndash; Ngọt</p>

<p>Loại vang n&agrave;y được trộn c&ugrave;ng với nho trước khi ủ. Ch&iacute;nh v&igrave; vậy m&agrave; nồng độ cồn của vang sẽ thấp hơn so với c&aacute;c loại vang kh&aacute;c. Vang n&agrave;y khi uống sẽ c&oacute; vị ngọt nhẹ.</p>

<h4>C&aacute;c nước sản xuất rượu vang nổi tiếng nhất</h4>

<p>Với lịch sử sản xuất rượu vang l&acirc;u đời c&ugrave;ng nhiều nh&atilde;n h&agrave;ng nổi tiếng tr&ecirc;n thế giới. C&aacute;c nước sản xuất vang nổi tiếng nhất thế giới bao gồm: rượu vang Ph&aacute;p, &Yacute;,&hellip;</p>

<h4>Rượu vang Ph&aacute;p</h4>

<p>Nhắc đến rượu vang, c&oacute; lẽ&nbsp; vang Ph&aacute;p l&agrave; c&aacute;i t&ecirc;n được xướng danh nhiều nhất. Bởi lẽ,vang Ph&aacute;p c&oacute; lịch sử ph&aacute;t triển l&acirc;u đời. Cho tới nay vang Ph&aacute;p đ&atilde; t&igrave;m được chỗ đứng vững&nbsp; tr&atilde;i tr&ecirc;n thị trường quốc tế, trở th&agrave;nh thương hiệu y&ecirc;u th&iacute;ch của h&agrave;ng triệu người tr&ecirc;n thế giới.</p>

<p>Những giống nho chủ đạo được d&ugrave;ng l&agrave;m vang Ph&aacute;p l&agrave; nho đỏ Cabernet Sauvignon, nho Cabernet Franc,nho Merlot, nho trắng gồm c&oacute; Chardonnay, Sauvignon Blanc,&hellip; Tất cả đều được trồng ở c&aacute;c v&ugrave;ng nho l&acirc;u năm như v&ugrave;ng Bordeaux, v&ugrave;ng Burgundy hay Champagne lừng danh.</p>

<h4>Rượu vang &Yacute;</h4>

<p>L&agrave; một trong số c&aacute;c thương hiệu nổi tiếng nhất, &nbsp;<strong><a href="https://vietywine.com/">rượu vang &Yacute;</a></strong>&nbsp;mang hương thơm m&atilde;nh liệt v&agrave; b&ugrave;ng nổ của tr&aacute;i c&acirc;y ch&iacute;n như mận, d&acirc;u t&acirc;y, mứt tr&aacute;i c&acirc;y, xen lẫn vani v&agrave; cam thảo. Khi thưởng thức, ta sẽ thấy hương vị&nbsp; săn chắc, h&agrave;i h&ograve;a c&ugrave;ng dư vị s&acirc;u lắng.</p>

<p>Những v&ugrave;ng vang &Yacute; nổi tiếng nhất gồm c&oacute;&nbsp;<strong><a href="https://vietywine.com/">v&ugrave;ng Puglia</a></strong>, v&ugrave;ng Tuscany, v&ugrave;ng Veneto hay Piedmont. Với c&aacute;c thương hiệu c&oacute; thể kể đến như:&nbsp;<strong><a href="https://vietywine.com/hang-monteverdi/">Monteverdi</a></strong>,&nbsp;<strong><a href="https://vietywine.com/hang-mitologia/">Mitologia</a></strong>, Eventus Primitivo, Dolce Vita&hellip;</p>

<p><img alt="" src="https://vietywine.com/wp-content/uploads/2019/11/71082521_2492423224365511_2097478941500506112_o.jpg" style="height:613px; width:613px" /></p>

<p>Rượu vang ch&iacute;nh l&agrave; một m&oacute;n qu&agrave; qu&yacute; gi&aacute; m&agrave; thi&ecirc;n nhi&ecirc;n ban tặng cho cuộc sống lo&agrave;i người. Để thưởng thức được hết hương vị thơm ngon, đặc biệt của n&oacute;, ta cần phải huy động tất cả gi&aacute;c quan của m&igrave;nh. Hương vị phản &aacute;nh nhiều kh&iacute;a cạnh kh&aacute;c nhau như kh&iacute; hậu, đất đai, giống nho, c&aacute;ch trồng, t&aacute;c động của con người hay kĩ thuật l&agrave;m nho. Đ&acirc;y cũng ch&iacute;nh l&agrave; l&iacute; do tại sao ở những đất nước kh&aacute;c nhau, những v&ugrave;ng trồng nho kh&aacute;c nhau, giống nho kh&aacute;c nhau&hellip; rượu vang lại mang nhiều hương vị kh&aacute;c nhau đến thế.</p>
', N'Những điều cơ bản về rượu vang', N'Những điều cơ bản về rượu vang', N'Người ta nói rằng rượu vang vừa đơn giản lại vừa phức tạp. Đơn giản ở chỗ, nó được bắt ...', N'nhung-dieu-co-ban-ve-ruou-vang', N'Kim JB', CAST(N'2020-04-27T18:17:54.467' AS DateTime), N'Kim JB', CAST(N'2020-04-27T18:17:54.467' AS DateTime), 1, 0)
INSERT [dbo].[Post] ([ID], [name], [avatar], [category], [summaryContent], [mainContent], [MetaTitle], [MetaKeyWord], [MetaDescription], [slug], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (5, N'Giá rượu vang Ý Primitivo Puglia Monteverdi mới nhất 2020', N'/Content/AdminContent/UploadAlbum/Tin%20t%E1%BB%A9c/75282381_102391067902655_9009317377992556544_n.jpg', 2, N'<p>Primitivo Puglia l&agrave; một t&aacute;c phẩm nghệ thuật đến từ h&atilde;ng rượu Monteverdi. Đ&acirc;y l&agrave; một trong những h&atilde;ng rượu vang được đ&aacute;nh gi&aacute; cao về chất lượng rượu tại &Yacute;. Vậy gi&aacute; rượu vang &Yacute; Primitivo Puglia l&agrave; bao nhi&ecirc;u? Mua rượu vang &Yacute; Primitivo Puglia uy t&iacute;n tại đ&acirc;u? Kh&ocirc;ng để c&aacute;c bạn phải chờ l&acirc;u, b&agrave;i viết gi&aacute; rượu vang &Yacute; Primitivo Puglia Monteverdi sẽ gi&uacute;p bạn giải đ&aacute;p những thắc mắc tr&ecirc;n. Rượu vang &Yacute; Primitivo Puglia Trước khi t&igrave;m hiểu gi&aacute; rượu vang &Yacute; Primitivo Puglia Monteverdi, liệu bạn c&oacute; biết rượu vang Primitivo Puglia ...</p>
', N'<p>Primitivo Puglia l&agrave; một t&aacute;c phẩm nghệ thuật đến từ h&atilde;ng rượu Monteverdi. Đ&acirc;y l&agrave; một trong những h&atilde;ng rượu vang được đ&aacute;nh gi&aacute; cao về chất lượng rượu tại &Yacute;. Vậy gi&aacute; rượu vang &Yacute; Primitivo Puglia l&agrave; bao nhi&ecirc;u? Mua rượu vang &Yacute; Primitivo Puglia uy t&iacute;n tại đ&acirc;u? Kh&ocirc;ng để c&aacute;c bạn phải chờ l&acirc;u, b&agrave;i viết gi&aacute; rượu vang &Yacute; Primitivo Puglia Monteverdi sẽ gi&uacute;p bạn giải đ&aacute;p những thắc mắc tr&ecirc;n.</p>

<p><img alt="Rượu vang Ý Primitivo Puglia" src="https://vietywine.com/wp-content/uploads/2020/04/gia-ruou-vang-y-primitivo-puglia-monteverdi-2.jpg" style="height:480px; width:600px" /></p>

<p>Rượu vang &Yacute; Primitivo Puglia Monteverdi gi&aacute; bao nhi&ecirc;u?</p>

<h3>Rượu vang &Yacute; Primitivo Puglia</h3>

<p>Trước khi t&igrave;m hiểu<a href="https://vietywine.com/gia-ruou-vang-y-primitivo-puglia-monteverdi/">&nbsp;<em><strong>gi&aacute; rượu vang &Yacute; Primitivo Puglia Monteverdi</strong></em></a>, liệu bạn c&oacute; biết rượu vang Primitivo Puglia l&agrave; loại rượu như thế n&agrave;o v&agrave; được định gi&aacute; ra sao chưa? V&agrave; sau đ&acirc;y l&agrave; những điều m&agrave; nhất định phải biết về chai rượu n&agrave;y.</p>

<p>+ H&atilde;ng Monteverdi g&oacute;p phần l&agrave;m t&ecirc;n tuổi rượu vang &Yacute; tiến xa hơn với những d&ograve;ng vang độc đ&aacute;o m&agrave; vẫn mang đậm n&eacute;t truyền thống của m&igrave;nh. Rượu vang Primitivo Puglia được l&agrave;m từ Primitivo, giống nho đặc trưng của v&ugrave;ng Puglia, ph&iacute;a Đ&ocirc;ng Nam nước &Yacute;, nơi đ&acirc;y được biết đến với những chai vang đỏ c&oacute; chất lượng xuất sắc.</p>

<p>+ Rượu vang Primitivo Puglia được xử l&yacute; qua một qu&aacute; tr&igrave;nh kh&eacute;p k&iacute;n, ng&acirc;m ủ v&agrave; đ&oacute;ng chai v&ocirc; c&ugrave;ng kỳ c&ocirc;ng v&agrave; t&aacute;ch biệt với m&ocirc;i trường b&ecirc;n ngo&agrave;i. C&aacute;c hoạt động kiểm so&aacute;t ph&acirc;n t&iacute;ch được tiến h&agrave;nh đều đặn nhằm đảm bảo chất lượng rượu vang được to&agrave;n vẹn.</p>

<p>+ Rượu vang Primitivo Puglia c&oacute; m&agrave;u đỏ đậm h&ograve;a c&ugrave;ng một ch&uacute;t sắc t&iacute;m c&ugrave;ng với độ c&acirc;n bằng trong hương vị của rượu. Rượu sở hữu&nbsp; hương vị của c&aacute;c loại hoa quả đen như mơ sấy, d&acirc;u đen, cam thảo&hellip;</p>

<p>+ Rượu vang &yacute; Primitivo Puglia mang nhiều tầng hương vị với độ ch&aacute;t cao, chua vừa, c&acirc;n bằng rất dễ thưởng thức. Kết th&uacute;c l&agrave; dư vị lắng đọng k&eacute;o d&agrave;i lưu luyến trong khoang miệng. Với nồng độ 14,5% chai rượu rất th&iacute;ch hợp sử dụng trong c&aacute;c bữa tiệc, c&aacute;c dịp lễ đặc biệt, kết hợp với c&aacute;c m&oacute;n ăn chế biến từ thịt đỏ v&agrave; c&aacute;c loại pho-m&aacute;t trưởng th&agrave;nh.</p>

<p><img alt="rượu vang Ý primitivo puglia" src="https://vietywine.com/wp-content/uploads/2020/04/gia-ruou-vang-y-primitivo-puglia-monteverdi-4.jpg" style="height:480px; width:600px" /></p>

<p>Rượu vang &Yacute; Primitivo Puglia Monteverdi l&agrave; vang ch&aacute;t hảo hạng</p>

<h3>Gi&aacute; rượu vang &Yacute; Primitivo Puglia Monteverdi l&agrave; bao nhi&ecirc;u?</h3>

<p>C&oacute; lẽ sau khi biết th&ocirc;ng tin về chai rượu tuyệt hảo n&agrave;y, bạn đang n&oacute;ng l&ograve;ng muốn biết&nbsp;<strong><em>gi&aacute; rượu vang Primitivo Puglia Monteverdi</em></strong>&nbsp;mới nhất năm 2020 l&agrave; bao nhi&ecirc;u, h&atilde;y c&ugrave;ng t&igrave;m hiểu nh&eacute;.</p>

<p>Rượu vang &Yacute; Primitivo Puglia l&agrave; loại rượu vang c&acirc;n bằng rất dễ thưởng thức. L&agrave; một loại rượu vang ch&aacute;t của &Yacute; n&ecirc;n Primitivo dễ uống v&agrave; hương vị của Primitivo sẽ cuốn h&uacute;t bạn ngay lần thử đầu ti&ecirc;n. Gi&aacute; rượu vang &Yacute; Primitivo Puglia Monteverdi chỉ từ 600.000 &ndash; 620.000 ngh&igrave;n đồng bạn đ&atilde; c&oacute; thể thưởng thức một chai rượu vang ch&aacute;t của &Yacute; tuyệt hảo.</p>

<p>Để đ&aacute;p ứng nhu cầu sử dụng của kh&aacute;ch h&agrave;ng, thương hiệu Monteverdi đ&atilde; đặc biệt sản xuất bản Primitivo Puglia lớn d&agrave;nh ri&ecirc;ng cho thị trường Việt Nam. Với hương vị nguy&ecirc;n bản kh&ocirc;ng hề thay đổi Primitivo Puglia với thể t&iacute;ch lớn hơn ph&ugrave; hợp cho những dịp lễ đặc biệt như ng&agrave;y tết hay những bữa tiệc sang trọng. Với mức gi&aacute; trung b&igrave;nh khoảng 1.270.000 ngh&igrave;n đồng bạn đ&atilde; c&oacute; thể sở hữu ngay cho m&igrave;nh một chai Primitivo Puglia bản đặc biệt n&agrave;y.</p>

<p><a href="https://vietywine.com/"><img alt="Rượu vang Primitivo Puglia" src="https://vietywine.com/wp-content/uploads/2020/04/gia-ruou-vang-y-primitivo-puglia-monteverdi-3.jpg" style="height:480px; width:600px" /></a></p>

<p>Rượu vang Primitivo Puglia dao động từ 600.000 &ndash; 620.000 VNĐ/ 1 chai</p>

<p><a href="https://vietywine.com/">Việt &Yacute; Wine</a>&nbsp;l&agrave; nh&agrave; nhập khẩu v&agrave; ph&acirc;n phối độc quyền của thương hiệu Monteverdi tại Việt Nam. C&aacute;c bạn muốn t&igrave;m hiểu th&ecirc;m th&ocirc;ng tin về&nbsp;<em><strong>gi&aacute; rượu vang &Yacute; Primitivo Puglia Monteverdi</strong></em>&nbsp;v&agrave; th&ocirc;ng tin của rượu vang nh&agrave; Monteverdi, vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua&nbsp;<strong><em><a href="tel:024.2269.6999" rel="nofollow">024.2269.6999</a></em></strong>&nbsp;để c&aacute;c chuy&ecirc;n vi&ecirc;n tư vấn tận t&igrave;nh nhất.</p>
', N'Giá rượu vang Ý Primitivo Puglia Monteverdi mới nhất 2020', N'Giá rượu vang Ý Primitivo Puglia Monteverdi mới nhất 2020', N'Primitivo Puglia là một tác phẩm nghệ thuật đến từ hãng rượu Monteverdi. Đây là một trong những hãng rượu vang được đánh giá cao về chất lượng rượu tại Ý.', N'gia-ruou-vang-y-primitivo-puglia-monteverdi-moi-nhat-2020', N'Kim JB', CAST(N'2020-04-27T18:19:36.097' AS DateTime), N'Kim JB', CAST(N'2020-04-27T18:19:36.097' AS DateTime), 1, 0)
INSERT [dbo].[Post] ([ID], [name], [avatar], [category], [summaryContent], [mainContent], [MetaTitle], [MetaKeyWord], [MetaDescription], [slug], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (6, N'Review rượu vang Ý Monteverdi Dolce Novella mới nhất 2020', N'/Content/AdminContent/UploadAlbum/Tin%20t%E1%BB%A9c/Review-r%C6%B0%E1%BB%A3u-vang-%C3%9D-Monteverdi-Dolce-Novella-5.jpg', 2, N'<p>C&oacute; một chai rượu đang l&agrave;m mưa l&agrave;m gi&oacute; tr&ecirc;n c&aacute;c diễn đ&agrave;n y&ecirc;u th&iacute;ch rượu vang, được gọi l&agrave; &quot;nữ ho&agrave;ng&quot; của c&aacute;c d&ograve;ng vang ngọt. Nếu l&agrave; một người quan t&acirc;m, t&igrave;m hiểu về rượu vang th&igrave; &iacute;t nhiều bạn đ&atilde; nghe t&ecirc;n về chai rượu vang Monteverdi Dolce Novella &quot;thần th&aacute;nh&quot; n&agrave;y. Vậy chai rượu Dolce Novella đươc review như thế n&agrave;o, liệu c&oacute; xứng với tầm gi&aacute; đ&oacute; phải bỏ ra kh&ocirc;ng...H&atilde;y c&ugrave;ng Việt &Yacute; Wine n&acirc;ng ly v&agrave; review chi tiết chai rượu vang &yacute; Monteverdi Dolce Novella nh&eacute;. Rượu vang &Yacute; Monteverdi Dolce Novella ...</p>
', N'<p>C&oacute; một chai rượu đang l&agrave;m mưa l&agrave;m gi&oacute; tr&ecirc;n c&aacute;c diễn đ&agrave;n y&ecirc;u th&iacute;ch rượu vang, được gọi l&agrave; &ldquo;nữ ho&agrave;ng&rdquo; của c&aacute;c d&ograve;ng vang ngọt. Nếu l&agrave; một người quan t&acirc;m, t&igrave;m hiểu về rượu vang th&igrave; &iacute;t nhiều bạn đ&atilde; nghe t&ecirc;n về chai rượu vang Monteverdi Dolce Novella &ldquo;thần th&aacute;nh&rdquo; n&agrave;y. Vậy chai rượu Dolce Novella đươc review như thế n&agrave;o, liệu c&oacute; xứng với tầm gi&aacute; đ&oacute; phải bỏ ra kh&ocirc;ng&hellip;H&atilde;y c&ugrave;ng Việt &Yacute; Wine n&acirc;ng ly v&agrave; review chi tiết chai rượu vang &yacute; Monteverdi Dolce Novella nh&eacute;.</p>

<p><img alt="rượu vang Ý Monteverdi Dolce Novella" src="https://vietywine.com/wp-content/uploads/2020/04/Review-r%C6%B0%E1%BB%A3u-vang-%C3%9D-Monteverdi-Dolce-Novella-4.jpg" style="height:337px; width:600px" /></p>

<p>Rượu vang &Yacute; Monteverdi Dolce Novella</p>

<h3>Rượu vang &Yacute; Monteverdi Dolce Novella</h3>

<p>Để c&oacute; thể<a href="https://vietywine.com/?p=16337&amp;preview=true"><em><strong>&nbsp;review rượu vang &Yacute; Monteverdi Dolce Novella</strong></em></a>&nbsp;kh&ocirc;ng thể bỏ qua c&aacute;c th&ocirc;ng tin xoay quanh chai rượu n&agrave;y. V&agrave; sau đ&acirc;y Việt &Yacute; Wine sẽ đưa ra cho bạn những th&ocirc;ng tin ch&iacute;nh x&aacute;c nhất về chai rượu vang n&agrave;y.</p>

<h4>Đặc điểm của rượu vang Dolce Novella &ndash; Vang Ho&agrave;ng Đế</h4>

<p>Monteverdi l&agrave; một gia tộc của nước &Yacute; c&oacute; bề d&agrave;y lịch sử về nghề trồng nho v&agrave; sản xuất rượu vang. Vang Dolce Novella được chế biến từ loại nho v&ugrave;ng Lampuganis ph&iacute;a Bắc Italia, được trồng tr&ecirc;n những khu vực c&oacute; điều kiện canh t&aacute;c thuận lợi nhất Italia. Vang Ho&agrave;ng Đế được xử l&yacute; qua một qu&aacute; tr&igrave;nh kh&eacute;p k&iacute;n ng&acirc;m ủ, đ&oacute;ng chai v&ocirc; c&ugrave;ng kỳ c&ocirc;ng v&agrave; t&aacute;ch biệt với m&ocirc;i trường b&ecirc;n ngo&agrave;i. Rượu vang ngọt Dolce Novella được l&atilde;o h&oacute;a trong th&ugrave;ng th&eacute;p kh&ocirc;ng rỉ.</p>

<p><img alt="Review rượu vang Ý Dolce Novella (3)" src="https://vietywine.com/wp-content/uploads/2020/04/Review-r%C6%B0%E1%BB%A3u-vang-%C3%9D-Monteverdi-Dolce-Novella-3.jpg" style="height:337px; width:600px" /></p>

<p>Rượu vang &Yacute; Dolce Novella được sản xuất từ h&atilde;ng rượu &Yacute; nổi tiếng Monteverdi</p>

<p>Rượu Vang Ho&agrave;ng Đế Monteverdi &ldquo;Hương Vị T&igrave;nh Y&ecirc;u&rdquo; c&oacute; m&agrave;u đỏ Ruby thẫm, vị mềm mỏng, ngọt ng&agrave;o, tươi m&aacute;t v&agrave; rất dễ uống. Vang c&oacute; m&ugrave;i vị của tr&aacute;i c&acirc;y đỏ như d&acirc;u t&acirc;y, cherry đỏ, m&acirc;m x&ocirc;i đỏ. Khi thưởng thức rượu vang Dolce Novella gi&uacute;p k&iacute;ch th&iacute;ch mọi gi&aacute;c quan đem đến sự dễ chịu. Vang Ho&agrave;ng Đế rất ph&ugrave; hợp với những người y&ecirc;u th&iacute;ch vị ngọt, nồng độ rượu 10% ở mức vừa phải mang đến cho người thưởng thức cảm gi&aacute;c an to&agrave;n nhất.</p>

<p>Rượu vang Dolce Novella hợp với đồ tr&aacute;ng miệng như b&aacute;nh ngọt, kẹo ngọt hoặc hoa quả tươi. D&ugrave;ng l&agrave;m đồ tr&aacute;ng miệng trong c&aacute;c bữa tiệc, trong c&aacute;c bữa ăn h&agrave;ng ng&agrave;y tại mỗi gia đ&igrave;nh.</p>

<p><img alt="Review rượu vang Ý Monteverdi Dolce Novella (2)" src="https://vietywine.com/wp-content/uploads/2020/04/Review-r%C6%B0%E1%BB%A3u-vang-%C3%9D-Monteverdi-Dolce-Novella-2.jpg" style="height:337px; width:600px" /></p>

<p>Dolce Novella c&oacute; c&oacute; m&agrave;u đỏ Ruby thẫm, vị mềm mỏng, ngọt ng&agrave;o, tươi m&aacute;t v&agrave; rất dễ uống</p>

<h4>C&ocirc;ng dụng của rượu vang Dolce Novella</h4>

<p>Để&nbsp;<em><strong>review rượu vang &Yacute; Monteverdi Dolce Novella</strong></em>&nbsp;bạn kh&ocirc;ng thể bỏ qua c&ocirc;ng dụng của loại rượu vang n&agrave;y. Cũng giống như nhiều loại rượu vang đỏ kh&aacute;c, Dolce Novella cũng c&oacute; rất nhiều c&ocirc;ng dụng đ&aacute;ng ch&uacute; &yacute; như:</p>

<p>+ Rượu vang Dolce Novella c&oacute; t&aacute;c dụng ngăn ngừa ung thư, ngăn chặn c&aacute;c chất c&oacute; hại đi v&agrave;o cơ thể.</p>

<p>+ Rượu vang Dolce Novella cải thiện giấc ngủ, giảm căng thẳng v&agrave; lo lắng.</p>

<p>+ Rượu vang Dolce Novella gi&uacute;p qu&aacute; tr&igrave;nh tăng sinh Collagen diễn ra nhanh hơn, đổng thời t&aacute;i tạo lại những li&ecirc;n kết bị đứt g&atilde;y dưới lớp biểu b&igrave; gi&uacute;p l&agrave;n da mịn m&agrave;ng săn chắc bất chấp tuổi t&aacute;c.</p>

<p>+ Rượu vang Dolce Novella l&agrave; thức uống khai vị tuyệt vời, hỗ trợ ti&ecirc;u h&oacute;a thức ăn, gi&uacute;p tinh thần thoải m&aacute;i, hưng phấn hơn.</p>

<p><img alt="Review rượu vang Ý Monteverdi Dolce Novella" src="https://vietywine.com/wp-content/uploads/2020/04/Review-r%C6%B0%E1%BB%A3u-vang-%C3%9D-Monteverdi-Dolce-Novella-1.jpg" style="height:337px; width:600px" /></p>

<p>Uống rượu Dolce Novella rất tốt cho sức khỏe</p>

<h3>Review rượu vang &Yacute; Monteverdi Dolce Novella từ người d&ugrave;ng tr&ecirc;n Facebook</h3>

<p>Tr&ecirc;n c&aacute;c diễn đ&agrave;n rượu vang tr&ecirc;n Facebook chai rượu vang Dolce Novella đang trở&nbsp; th&agrave;nh t&acirc;m điểm thu h&uacute;t được rất nhiều sự qua t&acirc;m ch&uacute; &yacute; từ mọi người. Sau đ&acirc;y l&agrave; những phản hồi nhận được nhiều tương t&aacute;c v&agrave; phản hồi nhất đ&atilde; được Việt &Yacute; Wine tổng hợp v&agrave; chọn lọc dưới đ&acirc;y.<img alt="" src="https://vietywine.com/wp-content/uploads/2020/04/Review-r%C6%B0%E1%BB%A3u-vang-%C3%9D-Monteverdi-Dolce-Novella-2.png" style="height:393px; width:800px" /></p>

<p><strong>Review từ nickname&nbsp; Việt Dũng:</strong>&nbsp;<em>&ldquo;Cả nh&agrave; ai biết cảm gi&aacute;c n&agrave;y kh&ocirc;ng? Em đi si&ecirc;u thị thấy em PG tư vấn chai rượu Dolce Novella l&agrave; uống ngon lắm, em đ&aacute;nh liều mua một chai về thẩm thử m&agrave; d&iacute;nh tới giờ lu&ocirc;n. Nh&agrave; em uống ai cũng khen ngon, em uống ở tất cả c&aacute;c dịp trong năm lu&ocirc;n ấy. Uống m&agrave; kh&ocirc;ng sợ bị vợ mắng, con c&aacute;i xa l&aacute;nh.&rdquo;</em></p>

<p><img alt="Review rượu vang Ý Monteverdi Dolce Novella" src="https://vietywine.com/wp-content/uploads/2020/04/Review-r%C6%B0%E1%BB%A3u-vang-%C3%9D-Monteverdi-Dolce-Novella-3.png" style="height:432px; width:800px" /></p>

<p><strong>Review từ nickname Nguyễn Thị H&agrave; V&acirc;n:</strong><em>&nbsp;&ldquo;V&agrave;o nh&oacute;m thấy nhiều anh chị em cao thủ qu&aacute; n&ecirc;n em chỉ định nằm v&ugrave;ng học m&oacute;t th&ocirc;i. Nhưng th&ocirc;i nghĩ zui l&agrave; ch&iacute;nh n&ecirc;n e cũng mạn ph&eacute;p chia sẻ với chị em chai rượu m&agrave; gia đ&igrave;nh em nhất định phải uống mỗi ng&agrave;y. Uống rượu vang &Yacute; Dolce Novella được chồng y&ecirc;u con mến ạ. Chai rượu ngọt n&agrave;y uống th&iacute;ch lắm &yacute;, thơm thơm ngọt ngọt m&ugrave;i d&acirc;u t&acirc;y. M&agrave; c&aacute;c chị em nhớ uống &iacute;t th&ocirc;i nh&eacute; kh&ocirc;ng cũng ph&ecirc; pha ra tr&ograve; đấy ạ&rdquo;</em></p>

<p><img alt="" src="https://vietywine.com/wp-content/uploads/2020/04/Review-r%C6%B0%E1%BB%A3u-vang-%C3%9D-Monteverdi-Dolce-Novella-4.png" style="height:399px; width:800px" /></p>

<p><strong>Review từ nickname Ly Ly:</strong><em>&nbsp;&ldquo;Vang &Yacute; Dolve Novella l&agrave; chai vang ngọt m&agrave; em th&iacute;ch nhất từ trước tới giờ. Uống thơm m&ugrave;i d&acirc;u, ngọt ngọt như tr&aacute;i c&acirc;y l&ecirc;n men. Uống c&ugrave;ng với hoa quả v&agrave; b&aacute;nh ngọt l&agrave; perfecr lu&ocirc;n ấy. Anh chị em ai chưa thử chai rượu n&agrave;y th&igrave; mau thử đi nha. Ai thử chai rượu n&agrave;y th&igrave; cho em biết cảm nhận với nhau.&rdquo;</em></p>

<h3><img alt="" src="https://vietywine.com/wp-content/uploads/2020/04/Review-r%C6%B0%E1%BB%A3u-vang-%C3%9D-Monteverdi-Dolce-Novella-1.png" style="height:410px; width:800px" /></h3>

<p><strong>Review từ nickname Từ Lễ Huy:</strong><em>&nbsp;&ldquo;M&igrave;nh mới được tặng một chai vang &Yacute; Dolce Novella uống &ecirc;m lắm mọi người ạ. Cả m&igrave;nh v&agrave; gia đ&igrave;nh ai cũng nghiện d&ograve;ng rượu vang n&agrave;y rồi. Anh chị em nhớ mở rượu 30p ướp đ&aacute; lạnh rồi uống nh&eacute;. Ai uống chai rượu n&agrave;y rồi cũng n&ecirc;u cảm nhận cho m&igrave;nh biết nha. C&ograve;n ai chưa uống th&igrave; mau thử đi n&agrave;o.&rdquo;</em></p>

<h3>Rượu vang &Yacute; Dolce Novella gi&aacute; bao nhi&ecirc;u? Mua ở đ&acirc;u?</h3>

<p>Rượu vang Dolce Novella gi&aacute; bao nhi&ecirc;u? Được v&iacute; l&agrave; &ldquo;nữ ho&agrave;ng&rdquo; của c&aacute;c d&ograve;ng vang ngọt tại thị trường Việt Nam th&igrave; gi&aacute; của vang Dolce Novella l&agrave; bao nhi&ecirc;u? Địa chỉ mua rượu vang Dolce Novella uy t&iacute;n ở đ&acirc;u? H&atilde;y c&ugrave;ng giải đ&aacute;p những c&acirc;u hỏi tr&ecirc;n nh&eacute;.</p>

<p>Hiện nay Dolce Novella được b&aacute;n tr&ecirc;n rộng khắp thị trường tại Việt Nam. Nhưng kh&ocirc;ng phải đơn vị n&agrave;o cũng đảm bảo được nguồn gốc xuất xứ của chai rượu vang n&agrave;y. Việt &Yacute; Wine l&agrave; một trong những đơn vị được nhập khẩu v&agrave; ph&acirc;n phối độc quyền rượu vang nh&agrave; Montevedi tr&ecirc;n thị trường Việt Nam. Chỉ từ 360.000 ngh&igrave;n đồng bạn đ&atilde; c&oacute; thể sở hữu cho m&igrave;nh chai rượu được mệnh danh l&agrave; &ldquo;nữ ho&agrave;ng&rdquo; của c&aacute;c d&ograve;ng vang ngọt n&agrave;y.</p>

<p><img alt="Rượu Dolce Novella" src="https://vietywine.com/wp-content/uploads/2020/04/Review-r%C6%B0%E1%BB%A3u-vang-%C3%9D-Monteverdi-Dolce-Novella-.jpg" style="height:337px; width:600px" /></p>

<p>Gi&aacute; b&aacute;n rượu vang Dolce Novella tại nh&agrave; ph&acirc;n phối độc quyền Việt &Yacute; Wine</p>

<p>Tr&ecirc;n đ&acirc;y l&agrave;&nbsp;<em><strong>review rượu vang &Yacute; Monteverdi Dolce Novella</strong>&nbsp;</em>m&agrave; Việt &Yacute; Wine tổng hợp v&agrave; chia sẻ tới bạn đọc. Nhằm gi&uacute;p cho bạn đọc c&oacute; được c&aacute;i nh&igrave;n tổng qu&aacute;t nhất về chai rượu Dolce Novella đang được săn đ&oacute;n n&agrave;y. Cần được tư vấn về c&aacute;c d&ograve;ng vang &Yacute; v&agrave; giải đ&aacute;p về những thắc mắc, h&atilde;y li&ecirc;n hệ&nbsp;<a href="https://vietywine.com/">Việt &Yacute; Wine</a>&nbsp;qua&nbsp;<strong><em><a href="tel:024.2269.6999" rel="nofollow">024.2269.6999.</a></em></strong></p>
', N'Review rượu vang Ý Monteverdi Dolce Novella mới nhất 2020', N'Review rượu vang Ý Monteverdi Dolce Novella mới nhất 2020', N'Có một chai rượu đang làm mưa làm gió trên các diễn đàn yêu thích rượu vang, được gọi là "nữ hoàng" của các dòng vang ngọt. Nếu là một người quan tâm, tìm hiểu ', N'review-ruou-vang-y-monteverdi-dolce-novella-moi-nhat-2020', N'Kim JB', CAST(N'2020-04-27T18:20:46.990' AS DateTime), N'Kim JB', CAST(N'2020-04-27T18:20:46.990' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Post] OFF
SET IDENTITY_INSERT [dbo].[Producer] ON 

INSERT [dbo].[Producer] ([ID], [name], [address], [phone], [email], [website], [avatar], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (1, N'Nhà hàng maison', N'Số 2A Nguyễn Thị Thập - Cầu Giấy - Hà Nội', N'0899349797', N'nhahangmaison@gmail.com', N'https://nhahangmaison.vn/', N'/Content/AdminContent/UploadAlbum/Nh%C3%A0%20s%E1%BA%A3n%20xu%E1%BA%A5t/nha-hang-maison-logo.png', N'Kim JB', CAST(N'2020-04-20T12:13:37.237' AS DateTime), N'Kim JB', CAST(N'2020-04-26T23:28:35.937' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Producer] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [categoryID], [producerID], [name], [avatar], [price], [MetaTitle], [MetaKeyWord], [MetaDescription], [slug], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (2, 2, 1, N'MONTEVER', N'/Content/AdminContent/UploadAlbum/R%C6%B0%E1%BB%A3u/AMARONE-400x400.png', CAST(12000 AS Decimal(18, 0)), N'Monteverdi', N'rượu vang ngon, monteverdi', N'dâdadad', N'montever', N'Kim JB', CAST(N'2020-04-23T11:03:36.743' AS DateTime), N'Kim JB', CAST(N'2020-04-27T19:40:30.440' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([ID], [categoryID], [producerID], [name], [avatar], [price], [MetaTitle], [MetaKeyWord], [MetaDescription], [slug], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (4, 2, 1, N'DOLCE NOVELLA', N'/Content/AdminContent/UploadAlbum/R%C6%B0%E1%BB%A3u/HOANG-DE-CU-250x250.png', CAST(360000 AS Decimal(18, 0)), N'DOLCE NOVELLA', N'DOLCE NOVELLA', N'DOLCE NOVELLA', N'dolce-novella', N'Kim JB', CAST(N'2020-04-27T21:27:08.667' AS DateTime), N'Kim JB', CAST(N'2020-04-27T21:27:08.667' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([ID], [categoryID], [producerID], [name], [avatar], [price], [MetaTitle], [MetaKeyWord], [MetaDescription], [slug], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (5, 2, 1, N'DOLCE NOVELLA EXCLUSIVE', N'/Content/AdminContent/UploadAlbum/R%C6%B0%E1%BB%A3u/EXCLUSIVE-2-min-250x250.png', CAST(495000 AS Decimal(18, 0)), N'DOLCE NOVELLA EXCLUSIVE', N'DOLCE NOVELLA EXCLUSIVE', N'DOLCE NOVELLA EXCLUSIVE', N'dolce-novella-exclusive', N'Kim JB', CAST(N'2020-04-27T21:31:01.223' AS DateTime), N'Kim JB', CAST(N'2020-04-27T21:31:01.223' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([ID], [categoryID], [producerID], [name], [avatar], [price], [MetaTitle], [MetaKeyWord], [MetaDescription], [slug], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (6, 1, 1, N'ATHENA', N'/Content/AdminContent/UploadAlbum/R%C6%B0%E1%BB%A3u/MITOLOGIA-D-AVOLA-250x250.png', CAST(500000 AS Decimal(18, 0)), N'ATHENA', N'ATHENA', N'ATHENA', N'athena', N'Kim JB', CAST(N'2020-04-27T22:00:26.863' AS DateTime), N'Kim JB', CAST(N'2020-04-27T22:00:26.863' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([ID], [categoryID], [producerID], [name], [avatar], [price], [MetaTitle], [MetaKeyWord], [MetaDescription], [slug], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (7, 1, 1, N'HERA', N'/Content/AdminContent/UploadAlbum/R%C6%B0%E1%BB%A3u/HERA1-250x250.png', CAST(1500000 AS Decimal(18, 0)), N'HERA', N'HERA', N'HERA', N'hera', N'Kim JB', CAST(N'2020-04-27T22:01:45.197' AS DateTime), N'Kim JB', CAST(N'2020-04-27T22:01:45.197' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductDetail] ON 

INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (1, 2, N'Giống nho và vườn nho', N'<p>Hai giống nho cao cấp được d&ugrave;ng để l&agrave;m n&ecirc;n chai vang Amarone Della Valpolicella n&agrave;y l&agrave; 80% nho Corvina Veronese v&agrave; 20% nho Rondinela</p>
', N'Kim JB', CAST(N'2020-04-25T11:05:06.390' AS DateTime), N'Kim JB', CAST(N'2020-04-25T11:05:06.390' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (2, 2, N'Khu vực sản xuất', N'<p>Cả 2 loại nho đều được trồng từ vườn nho Tenuta Novare ở Arbizzano di Negrar. Trung t&acirc;m khu vực Valpolicella Classica. Nho được thu hoạch v&agrave;o tuần thứ 2 của th&aacute;ng 9, sau đ&oacute; được sấy kh&ocirc; v&agrave; để trong v&ograve;ng 120 ng&agrave;y.</p>
', N'Kim JB', CAST(N'2020-04-25T11:07:14.187' AS DateTime), N'Kim JB', CAST(N'2020-04-25T11:07:14.187' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (3, 2, N'Sản xuất', N'<p>Nho được thu hoạch v&agrave;o tuần thứ 2 của th&aacute;ng 9, sau đ&oacute; được sấy kh&ocirc; v&agrave; để trong v&ograve;ng 120 ng&agrave;y. Tiếp đến, những tr&aacute;i nho sẽ được nghiền n&aacute;t v&agrave; l&ecirc;n men chậm trong v&ograve;ng 30 ng&agrave;y ở nhiệt độ tối đa 18 độ.</p>
', N'Kim JB', CAST(N'2020-04-25T11:08:02.263' AS DateTime), N'Kim JB', CAST(N'2020-04-25T11:08:02.263' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (4, 2, N'Lão hóa', N'<p>Rượu vang Amarone l&ecirc;n men trong th&ugrave;ng gỗ sồi 12 th&aacute;ng.</p>
', N'Kim JB', CAST(N'2020-04-25T11:08:34.323' AS DateTime), N'Kim JB', CAST(N'2020-04-25T11:08:34.323' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (5, 2, N'Hương vị', N'<p>Vị hoa quả đen c&ugrave;ng với gỗ sồi&nbsp; h&ograve;a quyện tạo ra sự c&acirc;n bằng ho&agrave;n hảo đặc trưng cho Amarone Della Valpollicella.</p>
', N'Kim JB', CAST(N'2020-04-25T11:08:50.550' AS DateTime), N'Kim JB', CAST(N'2020-04-25T12:05:45.770' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (6, 2, N'Kết hợp với đồ ăn', N'<p>Amarone c&oacute; m&agrave;u đỏ đậm, với hương vị đặc trưng của tr&aacute;i c&acirc;y sấy kh&ocirc; v&agrave; rất th&iacute;ch hợp khi kết hợp với c&aacute;c m&oacute;n ăn thịt nướng, thịt om v&agrave; pho-mat l&acirc;u năm.</p>
', N'Kim JB', CAST(N'2020-04-25T11:09:13.550' AS DateTime), N'Kim JB', CAST(N'2020-04-25T11:09:13.550' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (7, 2, N'Thông tin sản phẩm', N'<ul>
	<li>Nhiệt độ sử dụng th&iacute;ch hợp: 18 độ</li>
	<li>Hương vị: Ch&aacute;t</li>
	<li>Nồng độ: 15%</li>
	<li>M&agrave;u sắc: Đỏ đậm</li>
	<li>Thể t&iacute;ch: 750ml</li>
</ul>
', N'Kim JB', CAST(N'2020-04-25T11:09:29.453' AS DateTime), N'Kim JB', CAST(N'2020-04-25T11:09:29.453' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (8, 4, N'Giống nho và vườn nho', N'<p>Merlot</p>
', N'Kim JB', CAST(N'2020-04-27T21:28:04.803' AS DateTime), N'Kim JB', CAST(N'2020-04-27T21:28:04.803' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (9, 4, N'Khu vực sản xuất', N'<p>Vang Ho&agrave;ng Đế &ndash; Dolce Novella được chế biến từ loại nho v&ugrave;ng LAMPUGANIS Bắc italia, được trồng tr&ecirc;n những khu vực c&oacute; điều kiện canh t&aacute;c thuận lợi nhất ở Italia.</p>
', N'Kim JB', CAST(N'2020-04-27T21:28:29.373' AS DateTime), N'Kim JB', CAST(N'2020-04-27T21:28:29.373' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (10, 4, N'Sản xuất', N'<p>Rượu vang Dolce Novella của nh&agrave; Monteverdi được xử l&yacute; qua một qu&aacute; tr&igrave;nh kh&eacute;p k&iacute;n ng&acirc;m ủ v&agrave; đ&oacute;ng chai v&ocirc; c&ugrave;ng kỳ c&ocirc;ng v&agrave; t&aacute;ch biệt với m&ocirc;i trường b&ecirc;n ngo&agrave;i. L&agrave; một loại rượu vang ngọt của &Yacute; n&ecirc;n vang ho&agrave;ng đế dễ uống v&agrave; thực sự hấp dẫn bởi hương vị cũng như hương thơm m&agrave; n&oacute; đem lại khi thưởng thức.</p>
', N'Kim JB', CAST(N'2020-04-27T21:28:49.717' AS DateTime), N'Kim JB', CAST(N'2020-04-27T21:28:49.717' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (11, 4, N'Lão hóa', N'<p>Rượu vang Dolce Novella được ủ trong th&ugrave;ng th&eacute;p kh&ocirc;ng rỉ.</p>
', N'Kim JB', CAST(N'2020-04-27T21:29:07.760' AS DateTime), N'Kim JB', CAST(N'2020-04-27T21:29:07.760' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (12, 4, N'Hương vị', N'<p>Rượu Vang Dolce Novella &ldquo;<a href="https://vietywine.com/dolce-novella-exclusive/"><em><strong>Hương Vị T&igrave;nh Y&ecirc;u</strong></em></a>&rdquo; c&oacute; mầu đỏ Rubi thẫm , vị mềm mỏng , ngọt , tươi m&aacute;t v&agrave; rất dễ uống . Dolce Novella rất ph&ugrave; hợp với những người y&ecirc;u th&iacute;ch vị ngọt , nồng độ rượu ở mức vừa phải đủ l&agrave;m say đắm v&agrave; chinh phục ph&aacute;i nữ . Rượu Vang Ho&agrave;ng Đế c&oacute; nhiều t&aacute;c dụng cho sức khỏe v&agrave; tim mạch đ&atilde; v&agrave; đang phổ biến trong những bữa ăn h&agrave;ng ng&agrave;y của c&aacute;c gia đ&igrave;nh.</p>
', N'Kim JB', CAST(N'2020-04-27T21:29:21.727' AS DateTime), N'Kim JB', CAST(N'2020-04-27T21:29:21.727' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (13, 4, N'Kết hợp với đồ ăn', N'<p>Hợp với đồ tr&aacute;ng miệng như b&aacute;nh ngọt, kẹo ngọt hoặc hoa quả tươi.D&ugrave;ng l&agrave;m đồ tr&aacute;ng miệng trong c&aacute;c bữa tiệc.</p>
', N'Kim JB', CAST(N'2020-04-27T21:29:36.580' AS DateTime), N'Kim JB', CAST(N'2020-04-27T21:29:36.580' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (14, 4, N'Thông tin sản phẩm', N'<ul>
	<li>Hương Vị: Ngọt ng&agrave;o</li>
	<li>Nồng độ: 10%</li>
	<li>M&agrave;u sắc: Đỏ Ruby</li>
	<li>Thể t&iacute;ch: 750 ml</li>
</ul>
', N'Kim JB', CAST(N'2020-04-27T21:29:53.093' AS DateTime), N'Kim JB', CAST(N'2020-04-27T21:29:53.093' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (15, 5, N'Giống nho và vườn nho', N'<p>Merlot</p>
', N'Kim JB', CAST(N'2020-04-27T21:31:26.783' AS DateTime), N'Kim JB', CAST(N'2020-04-27T21:31:26.783' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (16, 5, N'Khu vực sản xuất', N'<p>L&agrave; một trong những loại Vang qu&yacute; được sản xuất bằng phương ph&aacute;p truyền thống với hương vị ngọt ng&agrave;o, đậm đ&agrave; đến từ việc lựa chọn nguy&ecirc;n liệu từ loại nho&nbsp; đặc biệt.</p>
', N'Kim JB', CAST(N'2020-04-27T21:31:48.860' AS DateTime), N'Kim JB', CAST(N'2020-04-27T21:31:48.860' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (17, 5, N'Sản xuất', N'<p>Rượu vang ngọt Monteverdi được xử l&yacute; qua một qu&aacute; tr&igrave;nh kh&eacute;p k&iacute;n ng&acirc;m ủ v&agrave; đ&oacute;ng chai v&ocirc; c&ugrave;ng kỳ c&ocirc;ng v&agrave; t&aacute;ch biệt với m&ocirc;i trường b&ecirc;n ngo&agrave;i. L&agrave; một loại rượu vang ngọt của &Yacute; n&ecirc;n vang ho&agrave;ng đế dễ uống v&agrave; thực sự hấp dẫn bởi hương vị cũng như hương thơm m&agrave; n&oacute; đem lại khi thưởng thức.</p>
', N'Kim JB', CAST(N'2020-04-27T21:32:05.413' AS DateTime), N'Kim JB', CAST(N'2020-04-27T21:32:05.413' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (18, 5, N'Lão hóa', N'<p>Rượu vang được ủ trong th&ugrave;ng th&eacute;p kh&ocirc;ng rỉ.</p>
', N'Kim JB', CAST(N'2020-04-27T21:32:17.733' AS DateTime), N'Kim JB', CAST(N'2020-04-27T21:32:17.733' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (19, 5, N'Hương vị', N'<p>Hương vị của Vang Ho&agrave;ng Đế Đặc Biệt đ&atilde; được n&acirc;ng cấp v&agrave; với&nbsp; phương ph&aacute;p trưng cất hiện đại hơn so với phi&ecirc;n bản Vang Ho&agrave;ng Đế truyền thống đ&atilde; lưu giữ được những tinh hoa bậc nhất của tr&aacute;i nho để l&agrave;m ra những chai rượu Vang Ho&agrave;ng Đế Đặc Biệt n&agrave;y.</p>
', N'Kim JB', CAST(N'2020-04-27T21:32:29.313' AS DateTime), N'Kim JB', CAST(N'2020-04-27T21:32:29.313' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (20, 5, N'Kết hợp với đồ ăn', N'<p>Hợp với đồ tr&aacute;ng miệng như b&aacute;nh ngọt, kẹo ngọt hoặc hoa quả tươi.D&ugrave;ng l&agrave;m đồ tr&aacute;ng miệng trong c&aacute;c bữa tiệc.</p>
', N'Kim JB', CAST(N'2020-04-27T21:32:43.140' AS DateTime), N'Kim JB', CAST(N'2020-04-27T21:32:43.140' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (21, 5, N'Thông tin sản phẩm', N'<ul>
	<li>Hương Vị: Ngọt ng&agrave;o</li>
	<li>Nồng độ: 10%</li>
	<li>M&agrave;u sắc: Đỏ Ruby</li>
	<li>Thể t&iacute;ch: 750ml v&agrave;1500 ml</li>
</ul>
', N'Kim JB', CAST(N'2020-04-27T21:33:00.483' AS DateTime), N'Kim JB', CAST(N'2020-04-27T21:33:00.483' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (22, 6, N'Giống nho và vườn nho', N'<p>Nero Di Troia</p>
', N'Kim JB', CAST(N'2020-04-27T22:02:31.253' AS DateTime), N'Kim JB', CAST(N'2020-04-27T22:02:31.253' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (23, 6, N'Khu vực sản xuất', N'<p>Nero Di Troia l&agrave; một d&ograve;ng vang l&agrave;m từ giống nho tại v&ugrave;ng Apulia của Italy. Đặc&nbsp;biệt l&agrave; c&aacute;c khu vực xung quanh Andria v&agrave; Barletta, v&agrave; ở tỉnh Bari.</p>
', N'Kim JB', CAST(N'2020-04-27T22:02:56.827' AS DateTime), N'Kim JB', CAST(N'2020-04-27T22:02:56.827' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (24, 6, N'Sản xuất', N'<p>Rượu vang Hera được xử l&yacute; qua một qu&aacute; tr&igrave;nh kh&eacute;p k&iacute;n ng&acirc;m ủ v&agrave; đ&oacute;ng chai v&ocirc; c&ugrave;ng kỳ c&ocirc;ng v&agrave; t&aacute;ch biệt với m&ocirc;i trường b&ecirc;n ngo&agrave;i.</p>
', N'Kim JB', CAST(N'2020-04-27T22:03:07.603' AS DateTime), N'Kim JB', CAST(N'2020-04-27T22:03:07.603' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (25, 6, N'Lão hóa', N'<p>L&atilde;o h&oacute;a trong th&ugrave;ng gỗ sồi.</p>
', N'Kim JB', CAST(N'2020-04-27T22:03:23.213' AS DateTime), N'Kim JB', CAST(N'2020-04-27T22:03:23.213' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (26, 6, N'Hương vị', N'<p>Rượu vang Mitologia Athena c&oacute; độ c&acirc;n bằng mức độ medium, độ chua vừa, uống đậm.</p>
', N'Kim JB', CAST(N'2020-04-27T22:03:35.387' AS DateTime), N'Kim JB', CAST(N'2020-04-27T22:03:35.387' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (27, 6, N'Kết hợp với đồ ăn', N'<p>Rượu vang Mitologia Athena ph&ugrave; hợp với ẩm thực &Yacute;. L&agrave; một sản phẩm của &Yacute;, hầu như tất cả risotto v&agrave; pasta đều c&oacute; thể d&ugrave;ng k&egrave;m với d&ograve;ng vang n&agrave;y.</p>
', N'Kim JB', CAST(N'2020-04-27T22:03:46.900' AS DateTime), N'Kim JB', CAST(N'2020-04-27T22:03:46.900' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (28, 6, N'Thông tin sản phẩm', N'<ul>
	<li>Hương Vị: Ch&aacute;t</li>
	<li>Nồng độ: 13%</li>
	<li>M&agrave;u sắc: Đỏ Ruby</li>
	<li>Thể t&iacute;ch: 750 ml</li>
</ul>
', N'Kim JB', CAST(N'2020-04-27T22:04:12.043' AS DateTime), N'Kim JB', CAST(N'2020-04-27T22:04:12.043' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (29, 7, N'Giống nho và vườn nho', N'<p>Nero d&rsquo;Avola</p>
', N'Kim JB', CAST(N'2020-04-27T22:04:41.387' AS DateTime), N'Kim JB', CAST(N'2020-04-27T22:04:41.387' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (30, 7, N'Khu vực sản xuất', N'<p>Sản xuất tại v&ugrave;ng Sicily.</p>
', N'Kim JB', CAST(N'2020-04-27T22:04:52.970' AS DateTime), N'Kim JB', CAST(N'2020-04-27T22:04:52.970' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (31, 7, N'Sản xuất', N'<p>Rượu vang Hera được xử l&yacute; qua một qu&aacute; tr&igrave;nh kh&eacute;p k&iacute;n ng&acirc;m ủ v&agrave; đ&oacute;ng chai v&ocirc; c&ugrave;ng kỳ c&ocirc;ng v&agrave; t&aacute;ch biệt với m&ocirc;i trường b&ecirc;n ngo&agrave;i.</p>
', N'Kim JB', CAST(N'2020-04-27T22:05:03.650' AS DateTime), N'Kim JB', CAST(N'2020-04-27T22:05:03.650' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (32, 7, N'Lão hóa', N'<p>Rượu vang Mitologia Hera được l&atilde;o h&oacute;a trong th&ugrave;ng gỗ sồi.</p>
', N'Kim JB', CAST(N'2020-04-27T22:05:13.933' AS DateTime), N'Kim JB', CAST(N'2020-04-27T22:05:13.933' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (33, 7, N'Hương vị', N'<p>ch&aacute;t, chua nhẹ, tr&ograve;n vị, ấm v&agrave; độ đậm cao.</p>
', N'Kim JB', CAST(N'2020-04-27T22:05:23.753' AS DateTime), N'Kim JB', CAST(N'2020-04-27T22:05:23.753' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (34, 7, N'Kết hợp với đồ ăn', N'<p>Mitologia Hera ph&ugrave; hợp d&ugrave;ng với c&aacute;c loại thịt đậm. Một v&agrave;i c&aacute;ch kết hợp đồ ăn l&agrave; s&uacute;p đu&ocirc;i b&ograve; v&agrave; thịt b&ograve; hầm, C&agrave;ng nhiều thịt c&agrave;ng ngon, v&igrave; n&oacute; sẽ khiến l&agrave;m nổi bật hương vị tr&aacute;i c&acirc;y v&agrave; khiến ly rượu c&oacute; vị giống như kẹo vậy.</p>
', N'Kim JB', CAST(N'2020-04-27T22:05:44.890' AS DateTime), N'Kim JB', CAST(N'2020-04-27T22:05:44.890' AS DateTime), 1, 0)
INSERT [dbo].[ProductDetail] ([ID], [productID], [name], [description], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (35, 7, N'Thông tin sản phẩm', N'<ul>
	<li>Hương Vị: Ch&aacute;t</li>
	<li>Nồng độ: 13,5%</li>
	<li>M&agrave;u sắc: Đỏ Ruby</li>
	<li>Thể t&iacute;ch: 750 ml</li>
</ul>
', N'Kim JB', CAST(N'2020-04-27T22:06:00.740' AS DateTime), N'Kim JB', CAST(N'2020-04-27T22:06:00.740' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[ProductDetail] OFF
SET IDENTITY_INSERT [dbo].[Restaurant] ON 

INSERT [dbo].[Restaurant] ([ID], [name], [address], [email], [phone], [map], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (1, N'Trụ sở chính', N'167 Đường Xuân Thủy, P. Dịch Vọng hậu', N'vietywinecs1@gmail.com', N'0123456789', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4035.2107058578536!2d105.78542270456909!3d21.036167250237245!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab4a06cf4663%3A0xf55e8703a822a583!2zVHLDoCBT4buvYSBTYXkgVGVh!5e1!3m2!1svi!2sla!4v1587874715509!5m2!1svi!2sla" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>', N'Kim JB', CAST(N'2020-04-26T11:18:45.457' AS DateTime), N'Kim JB', CAST(N'2020-04-26T11:38:40.357' AS DateTime), 1, 0)
INSERT [dbo].[Restaurant] ([ID], [name], [address], [email], [phone], [map], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (2, N'Shop rượu Hoàng Gia', N'97A Nguyễn Chí Thanh Đống Đa - Hà Nội Hà Nội', N'shopruouhoanggia@gmail.com', N'0313464687', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3205.4573750276854!2d105.80581081442625!3d21.018920293491167!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab67191dfc1d%3A0xc56d30aecbd4f0ec!2zOTdhIE5ndXnhu4VuIENow60gVGhhbmgsIEzDoW5nIEjhuqEsIMSQ4buRbmcgxJBhLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e1!3m2!1svi!2sla!4v1588043862274!5m2!1svi!2sla" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>', N'Kim JB', CAST(N'2020-04-28T10:17:50.240' AS DateTime), N'Kim JB', CAST(N'2020-04-28T10:17:50.240' AS DateTime), 1, 0)
INSERT [dbo].[Restaurant] ([ID], [name], [address], [email], [phone], [map], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (3, N'Shop rượu Thắng Thủy', N'59 Hai Bà Trưng Quận Hoàn Kiếm', N'shopruouthangthuy@gmail.com', N'0213464687', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3205.2884941996367!2d105.84190231442636!3d21.026774993223075!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab96ddd9bcbf%3A0x1791212b6a99308d!2zNTkgSGFpIELDoCBUcsawbmcsIFRy4bqnbiBIxrBuZyDEkOG6oW8sIEhvw6BuIEtp4bq_bSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e1!3m2!1svi!2sla!4v1588045104945!5m2!1svi!2sla" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>', N'Kim JB', CAST(N'2020-04-28T10:38:52.593' AS DateTime), N'Kim JB', CAST(N'2020-04-28T10:38:52.593' AS DateTime), 1, 0)
INSERT [dbo].[Restaurant] ([ID], [name], [address], [email], [phone], [map], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (4, N'Shop Rượu Kaoson', N'48 Thợ Nhuộm - Trần Hưng Đạo Hoàn Kiếm - Hà Nội', N'shopruoukaosom@gmail.com', N'0412356789', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3205.307882668044!2d105.84324531449072!3d21.02586899325387!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab96b6e1dfd1%3A0x40aed04165bbde0d!2zNDggVGjhu6MgTmh14buZbSwgVHLhuqduIEjGsG5nIMSQ4bqhbywgSG_DoG4gS2nhur9tLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e1!3m2!1svi!2sla!4v1588045197957!5m2!1svi!2sla" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>', N'Kim JB', CAST(N'2020-04-28T10:40:13.453' AS DateTime), N'Kim JB', CAST(N'2020-04-28T10:40:13.453' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Restaurant] OFF
SET IDENTITY_INSERT [dbo].[Video] ON 

INSERT [dbo].[Video] ([ID], [name], [video], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (1, N'Kể chuyện rượu vang', N'<iframe width="1349" height="492" src="https://www.youtube.com/embed/Cmte33Frf4c" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', N'Kim JB', CAST(N'2020-04-26T23:16:45.060' AS DateTime), N'Kim JB', CAST(N'2020-04-27T19:07:40.973' AS DateTime), 2, 0)
INSERT [dbo].[Video] ([ID], [name], [video], [createBy], [createDate], [updateBy], [updateDate], [status], [ISDELETE]) VALUES (2, N'Rượu vang Monteverdi - Rượu vang Hàng Đầu Italia', N'<iframe width="1349" height="492" src="https://www.youtube.com/embed/GnVIBlJGb5M" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', N'Kim JB', CAST(N'2020-04-26T23:27:11.187' AS DateTime), N'Kim JB', CAST(N'2020-04-27T19:27:16.187' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Video] OFF
