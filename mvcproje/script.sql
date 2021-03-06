USE [DbOtel]
GO
/****** Object:  Table [dbo].[Hakkimda]    Script Date: 3.09.2021 14:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hakkimda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Hakkimda1] [nvarchar](1000) NULL,
	[Hakkimda2] [nvarchar](1000) NULL,
	[Hakkimda3] [nvarchar](1000) NULL,
	[Hakkimda4] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Hakkimda] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iletisim]    Script Date: 3.09.2021 14:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iletisim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Aciklama] [nvarchar](1000) NULL,
	[Koordinat] [nvarchar](1000) NULL,
	[Telefon] [nvarchar](1000) NULL,
	[Mail] [nvarchar](1000) NULL,
	[Adres] [nvarchar](1000) NULL,
 CONSTRAINT [PK_iletisim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mesajlar]    Script Date: 3.09.2021 14:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mesajlar](
	[MesajID] [int] IDENTITY(1,1) NOT NULL,
	[Gonderen] [nvarchar](1000) NULL,
	[Mail] [nvarchar](1000) NULL,
	[Konu] [nvarchar](1000) NULL,
	[Mesaj] [nvarchar](1000) NULL,
 CONSTRAINT [PK_mesajlar] PRIMARY KEY CLUSTERED 
(
	[MesajID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblRez]    Script Date: 3.09.2021 14:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblRez](
	[RezID] [int] IDENTITY(1,1) NOT NULL,
	[Misafi] [int] NULL,
	[Giris] [smalldatetime] NULL,
	[Cikis] [smalldatetime] NULL,
	[Kisi] [nvarchar](2) NULL,
	[Oda] [nvarchar](2) NULL,
	[RezAd] [nvarchar](50) NULL,
	[Telefon] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblRez] PRIMARY KEY CLUSTERED 
(
	[RezID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YeniKayit]    Script Date: 3.09.2021 14:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeniKayit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](1000) NULL,
	[Mail] [nvarchar](1000) NULL,
	[Telefon] [nvarchar](1000) NULL,
	[Sifre] [nvarchar](1000) NULL,
 CONSTRAINT [PK_YeniKayit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Hakkimda] ON 

INSERT [dbo].[Hakkimda] ([ID], [Hakkimda1], [Hakkimda2], [Hakkimda3], [Hakkimda4]) VALUES (1, N'Otel ve turizm sektöründe 22.yılımızda sizlere hizmet vermenin mutluluğunu yaşıyoruz', N' Otelcilik bizim için sadece iş değil misafirlerin mutluluğudur. Muğla, Balıkesir, Antalda ve Trabzon olmak üzere 4 farklı şehirde sizlere hizmet vermekteyiz.', N'Hemen rezervasyonunuzu yapıp ', N'İster eğlenmek ister dinlenmek için sizleri otelimize bekliyoruz.Haziran ayı %20 indirimle kaçırmayın')
SET IDENTITY_INSERT [dbo].[Hakkimda] OFF
GO
SET IDENTITY_INSERT [dbo].[iletisim] ON 

INSERT [dbo].[iletisim] ([ID], [Aciklama], [Koordinat], [Telefon], [Mail], [Adres]) VALUES (1, N'acikalam', N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3002.5548455135395!2d28.723531415419703!3d41.18787557928305!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14caab52baa624f7%3A0xc2b67d852ea9d5a!2sBili%C5%9Fim%20Akademisi!5e0!3m2!1str!2str!4v1630069399225!5m2!1str!2str', N'tel', N'mail', N'adrres')
SET IDENTITY_INSERT [dbo].[iletisim] OFF
GO
SET IDENTITY_INSERT [dbo].[mesajlar] ON 

INSERT [dbo].[mesajlar] ([MesajID], [Gonderen], [Mail], [Konu], [Mesaj]) VALUES (1, N'yusf', N'asdfasd@sdg.com', N'xdgsdfgdfg', N'dsfgdfsgdfg')
SET IDENTITY_INSERT [dbo].[mesajlar] OFF
GO
SET IDENTITY_INSERT [dbo].[TblRez] ON 

INSERT [dbo].[TblRez] ([RezID], [Misafi], [Giris], [Cikis], [Kisi], [Oda], [RezAd], [Telefon]) VALUES (1, 1, CAST(N'2021-05-12T00:00:00' AS SmallDateTime), CAST(N'2021-05-13T00:00:00' AS SmallDateTime), N'2', N'3', N'keke', N'5555')
INSERT [dbo].[TblRez] ([RezID], [Misafi], [Giris], [Cikis], [Kisi], [Oda], [RezAd], [Telefon]) VALUES (2, 2, CAST(N'2021-05-18T00:00:00' AS SmallDateTime), CAST(N'2021-05-13T00:00:00' AS SmallDateTime), N'5', N'6', N'keeek', N'455465')
INSERT [dbo].[TblRez] ([RezID], [Misafi], [Giris], [Cikis], [Kisi], [Oda], [RezAd], [Telefon]) VALUES (10, 4, CAST(N'2021-09-03T00:00:00' AS SmallDateTime), CAST(N'2021-09-11T00:00:00' AS SmallDateTime), N'3', NULL, N'kadir avşar', N'666555655')
INSERT [dbo].[TblRez] ([RezID], [Misafi], [Giris], [Cikis], [Kisi], [Oda], [RezAd], [Telefon]) VALUES (11, 5, CAST(N'2021-09-19T00:00:00' AS SmallDateTime), CAST(N'2021-09-16T00:00:00' AS SmallDateTime), N'1', NULL, N'emre', N'5558963')
INSERT [dbo].[TblRez] ([RezID], [Misafi], [Giris], [Cikis], [Kisi], [Oda], [RezAd], [Telefon]) VALUES (12, 5, CAST(N'2021-09-18T00:00:00' AS SmallDateTime), CAST(N'2021-09-18T00:00:00' AS SmallDateTime), N'1', NULL, N'emre', N'25656')
INSERT [dbo].[TblRez] ([RezID], [Misafi], [Giris], [Cikis], [Kisi], [Oda], [RezAd], [Telefon]) VALUES (13, 7, CAST(N'2021-09-04T00:00:00' AS SmallDateTime), CAST(N'2021-09-03T00:00:00' AS SmallDateTime), N'13', NULL, N'yağmur', N'666555655')
INSERT [dbo].[TblRez] ([RezID], [Misafi], [Giris], [Cikis], [Kisi], [Oda], [RezAd], [Telefon]) VALUES (14, 1, CAST(N'2021-09-09T00:00:00' AS SmallDateTime), CAST(N'2021-09-03T00:00:00' AS SmallDateTime), N'5', NULL, N'kadir avşar', N'666555655')
SET IDENTITY_INSERT [dbo].[TblRez] OFF
GO
SET IDENTITY_INSERT [dbo].[YeniKayit] ON 

INSERT [dbo].[YeniKayit] ([ID], [AdSoyad], [Mail], [Telefon], [Sifre]) VALUES (1, N'Kadir avşar', N'kadir@gmail.com', N'666555655', N'3')
INSERT [dbo].[YeniKayit] ([ID], [AdSoyad], [Mail], [Telefon], [Sifre]) VALUES (2, N'nesrin ', N'nes@gmail.com', N'5555555', N'1')
INSERT [dbo].[YeniKayit] ([ID], [AdSoyad], [Mail], [Telefon], [Sifre]) VALUES (3, N'kadirov', N'kadirov@gmail.com', N'05536 6698 9966', N'1')
INSERT [dbo].[YeniKayit] ([ID], [AdSoyad], [Mail], [Telefon], [Sifre]) VALUES (4, N'yusuf', N'yss@asda.com', N'1234567890', N'1')
INSERT [dbo].[YeniKayit] ([ID], [AdSoyad], [Mail], [Telefon], [Sifre]) VALUES (5, N'emre can', N'emre@gmail.com', N'555699856', N'1')
INSERT [dbo].[YeniKayit] ([ID], [AdSoyad], [Mail], [Telefon], [Sifre]) VALUES (6, N'kerem deniz', N'deniz@gmail.com', N'555669785', N'1')
INSERT [dbo].[YeniKayit] ([ID], [AdSoyad], [Mail], [Telefon], [Sifre]) VALUES (7, N'yagmur batan', N'yagmur@gmail.com', N'55666', N'2')
INSERT [dbo].[YeniKayit] ([ID], [AdSoyad], [Mail], [Telefon], [Sifre]) VALUES (8, N'Kadir avşar', N'kadir@gmail.com', N'4456456', N'1')
SET IDENTITY_INSERT [dbo].[YeniKayit] OFF
GO
