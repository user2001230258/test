USE [master]
GO
/****** Object:  Database [TourDuLich_N2_CNW_09DHTH]    Script Date: 11/18/2020 10:07:50 AM ******/
CREATE DATABASE [TourDuLich_N2_CNW_09DHTH]
 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TourDuLich_N2_CNW_09DHTH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET ARITHABORT OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET RECOVERY FULL 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET  MULTI_USER 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TourDuLich_N2_CNW_09DHTH', N'ON'
GO
USE [TourDuLich_N2_CNW_09DHTH]
GO
/****** Object:  Table [dbo].[ChiTietDatHang]    Script Date: 11/18/2020 10:07:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDatHang](
	[MaDH] [int] NOT NULL,
	[MaTour] [int] NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_ChiTietDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietTour]    Script Date: 11/18/2020 10:07:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietTour](
	[MaDV] [int] NOT NULL,
	[MaTour] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietTour] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC,
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Danhmuc]    Script Date: 11/18/2020 10:07:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danhmuc](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](100) NULL,
 CONSTRAINT [PK_Danhmuc] PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DatHang]    Script Date: 11/18/2020 10:07:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayDat] [date] NULL,
	[TinhTrang] [int] NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_DatHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 11/18/2020 10:07:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDD] [int] NOT NULL,
	[TenDichVu] [nvarchar](max) NULL,
 CONSTRAINT [PK_DiaDanh] PRIMARY KEY CLUSTERED 
(
	[MaDD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/18/2020 10:07:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[SoDT] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tour]    Script Date: 11/18/2020 10:07:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tour](
	[MaTour] [int] IDENTITY(1,1) NOT NULL,
	[TenTour] [nvarchar](max) NULL,
	[NgayDi] [datetime] NULL,
	[GiaVe] [int] NULL,
	[NoiKhoiHanh] [nvarchar](max) NULL,
	[ChuongTrinhTour] [nvarchar](max) NULL,
	[NoiThamQuan] [varchar](max) NULL,
	[MaDM] [int] NULL,
	[hinh] [nvarchar](50) NULL,
	[dsHinh] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (1, 1)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (1, 5)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (1, 8)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (1, 9)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (2, 1)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (2, 4)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (2, 5)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (2, 8)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (3, 2)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (3, 6)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (3, 8)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (4, 3)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (4, 6)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (4, 7)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (4, 8)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (5, 3)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (5, 6)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (5, 8)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (6, 2)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (6, 6)
INSERT [dbo].[ChiTietTour] ([MaDV], [MaTour]) VALUES (7, 2)
SET IDENTITY_INSERT [dbo].[Danhmuc] ON 

INSERT [dbo].[Danhmuc] ([MaDM], [TenDM]) VALUES (1, N'Tour miền Tây')
INSERT [dbo].[Danhmuc] ([MaDM], [TenDM]) VALUES (2, N'Tour miền Bắc')
INSERT [dbo].[Danhmuc] ([MaDM], [TenDM]) VALUES (3, N'Tour miền Trung')
INSERT [dbo].[Danhmuc] ([MaDM], [TenDM]) VALUES (4, N'Tour miền Nam')
SET IDENTITY_INSERT [dbo].[Danhmuc] OFF
INSERT [dbo].[DichVu] ([MaDD], [TenDichVu]) VALUES (1, N'Bảo hiểm')
INSERT [dbo].[DichVu] ([MaDD], [TenDichVu]) VALUES (2, N'Bữa ăn theo chương trình')
INSERT [dbo].[DichVu] ([MaDD], [TenDichVu]) VALUES (3, N'Hướng dẫn viên')
INSERT [dbo].[DichVu] ([MaDD], [TenDichVu]) VALUES (4, N'Vé tham quan')
INSERT [dbo].[DichVu] ([MaDD], [TenDichVu]) VALUES (5, N'Vận chuyển')
INSERT [dbo].[DichVu] ([MaDD], [TenDichVu]) VALUES (6, N'Xe di chuyển')
INSERT [dbo].[DichVu] ([MaDD], [TenDichVu]) VALUES (7, N'Vé máy bay')
INSERT [dbo].[DichVu] ([MaDD], [TenDichVu]) VALUES (8, N'Vé tàu')
INSERT [dbo].[DichVu] ([MaDD], [TenDichVu]) VALUES (9, N'Tiền phòng khách sạn')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SoDT], [MatKhau]) VALUES (1, N'An', N'0909123123', N'123')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SoDT], [MatKhau]) VALUES (2, N'Vân', N'0909789789', N'123')
SET IDENTITY_INSERT [dbo].[Tour] ON 

INSERT [dbo].[Tour] ([MaTour], [TenTour], [NgayDi], [GiaVe], [NoiKhoiHanh], [ChuongTrinhTour], [NoiThamQuan], [MaDM], [hinh], [dsHinh]) VALUES (1, N'Miền Tây - Châu Đốc - Rừng Tràm Trà Sư - Hà Tiên - Cần Thơ ', CAST(0x0000AC7800000000 AS DateTime), 3290000, N'Hồ Chí Minh', N'Quý khách tập trung tại Vietravel (190 Pasteur, Phường 6, Quận 3, Tp.HCM), khởi hành đi Châu Đốc. Dừng tại Long Định (Tiền Giang) tìm hiểu nghề trồng cacao, dùng thử socola tại xưởng Ông già Socola. Đoàn tiếp tục Vượt cầu Cầu Mỹ Thuận - Cây cầu treo đầu tiên tại Việt Nam, niềm tự hào của người dân đồng bằng sông Cửu Long.', N'Hàng tràm xanh r?p t?i R?ng Tràm Trà Su. Mi?t vu?n c?n Son. Ch? n?i Cái Rang', 1, N'h1.jpg', N'h1.jpg, h1_2.jpg, h1_3.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [NgayDi], [GiaVe], [NoiKhoiHanh], [ChuongTrinhTour], [NoiThamQuan], [MaDM], [hinh], [dsHinh]) VALUES (2, N'Miền Tây - Mỹ Tho - Bến Tre - Cần Thơ (Khách sạn 4 sao)', CAST(0x0000AC7A00000000 AS DateTime), 1590000, N'Hồ Chí Minh', N'Nhắc đến miền Tây, hẳn bất kỳ ai cũng có thể liên tưởng đến một vùng sông ngòi kênh rạch chằng chịt, dập dềnh xuồng ghe chợ nổi hay tận hưởng cảm giác yên bình, thoải mái khi rảo bước trên những cánh đồng xanh mươn mướt', N'B?n Ninh Ki?u. Ch? n?i Cái Rang', 1, N'h2.jpg', N'h2.jpg, h2_2.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [NgayDi], [GiaVe], [NoiKhoiHanh], [ChuongTrinhTour], [NoiThamQuan], [MaDM], [hinh], [dsHinh]) VALUES (3, N'Miền Tây - Tiền Giang - Cần Thơ - Sóc Trăng - Bạc Liêu - Cà mau - Đất Mũi', CAST(0x0000AC7D00000000 AS DateTime), 3690000, N'Hồ Chí Minh', N'Những nẻo đường phù sa tuy thân quen nhưng cũng nhiều mới lạ bởi hành trình sẽ đưa du khách thưởng lãm tinh hoa âm nhạc dân tộc thông qua các tiết mục biểu diễn Nghệ thuật Đờn ca tài tử đã được UNESCO công nhận là di sản văn hóa phi vật thể.', N'B?n Ninh Ki?u. Ch? n?i Cái Rang, Ð?t mui Cà mau', 1, N'h3.jpg', N'h3.jpg, h3_2.jpg, h3_3.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [NgayDi], [GiaVe], [NoiKhoiHanh], [ChuongTrinhTour], [NoiThamQuan], [MaDM], [hinh], [dsHinh]) VALUES (4, N'Tour Sài Gòn - Mỹ Tho - Bến Tre - Cần Thơ 2N1Đ', CAST(0x0000AC7A00000000 AS DateTime), 1450000, N'Hồ Chí Minh', N'Nếu bạn đang có 2 ngày trống lịch vào dịp cuối tuần, hoặc đơn giản là muốn đi chơi cùng gia đình, bạn bè… Một gợi ý lý tưởng cho bạn chính là trải nghiệm tour Sài Gòn - Mỹ Tho - Bến Tre - Cần Thơ 2N1Đ. Với tour này, bạn sẽ được ghé thăm những điểm đến nổi bật của miền Tây, về với miệt vườn cây trái, tận hưởng bầu không khí yên bình của miền sông nước.', N'Ði thuy?n ng?m c?nh t? C?n Long - Lân - Quy - Ph?ng. Ghé tham: R?ch Tân Th?c - tham gia lò k?o d?a, lò bánh tráng d?c s?n B?n Tre. Ghé tham c?n Th?i Son: Tham quan vu?n trái cây, nghe d?n ca tài t? Nam B?. Chèo xu?ng len l?i trong nh?n con r?ch nh? c?a mi?n Tây. Ghé tham C?n Tho: di d?o b?n Ninh Ki?u, c?u C?n Tho. Tham quan ch? n?i Cái Rang ', 4, N'h4.jpg', N'h4.jpg, h4_2.jpg, h4_3.jg, h4_4.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [NgayDi], [GiaVe], [NoiKhoiHanh], [ChuongTrinhTour], [NoiThamQuan], [MaDM], [hinh], [dsHinh]) VALUES (5, N'Tour du lịch Hòn Sơn 2 ngày 2 đêm', CAST(0x0000AC7800000000 AS DateTime), 1980000, N'TP. Hồ Chí Minh', N'Hòn Sơn là một hòn đảo nhỏ nhưng có sức hút không hề nhỏ: thiên nhiên hoang sơ, những bãi tắm tuyệt đẹp, nước biển trong vắt... Hòn Sơn có vẻ đẹp tuyệt vời giao thoa của rừng núi và biển cả.', N'L?n ng?m san hô. Mi?u Nam h?i Ð?i Tu?ng Quân. T?m bi?n Bãi Bang. Tham quan mua s?m t?i ch? d?o Hòn Son', 4, N'h5.jpg', N'h5.jpg, h5_2.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [NgayDi], [GiaVe], [NoiKhoiHanh], [ChuongTrinhTour], [NoiThamQuan], [MaDM], [hinh], [dsHinh]) VALUES (6, N'Tour du lịch Huế - Động Phong Nha 1 ngày', CAST(0x0000AC7800000000 AS DateTime), 600000, N'Huế', N' Điểm nổi bật 
Ẩn mình trong núi đá vôi được che chở bởi những cánh rừng nhiệt đới, Phong Nha giờ đây đã trở nên nổi tiếng bởi sự hào phóng của tạo hoá đã ban tặng cho vùng đất này. Tại đây, có một hệ thống hang động thật lộng lẫy với con sông ngầm được xác định là dài nhất thế giới. Hãy đến để chiêm ngưỡng hang động thạch nhũ Phong Nha - vẻ đẹp được kiến tạo bởi thiên nhiên qua hàng ngàn năm lịch sử. ', N'C?a hang Bi Kí. Ð?ng TIên Cô. Ð?ng Cung Ðinh', 3, N'h6.jpg', N'h6.jpg, h6_2.jpg, h6_3.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [NgayDi], [GiaVe], [NoiKhoiHanh], [ChuongTrinhTour], [NoiThamQuan], [MaDM], [hinh], [dsHinh]) VALUES (7, N'Tour miền Bắc: Hà Nội - Ninh Bình - Hạ Long - chùa Hương', CAST(0x0000AC7800000000 AS DateTime), 5800000, N'Đà Nẵng', N'Nếu ai đã từng đi đây đó ra nước ngoài thật nhiều, hẳn sẽ biết rằng chính tại đất nước Việt Nam ta vẫn có vô vàn cảnh sắc tuyệt đẹp do thiên nhiên hào phóng ban tặng. Từ Nam ra Bắc, từ đồng bằng đến miền núi, từ miền biển đến cao nguyên, đâu đâu trên dải đất hình chữ S cũng xuất hiện những danh lam thắng cảnh tuyệt vời với đa dạng kiểu địa hình, khí hậu kì lạ. ', N'Bánh c?m Hàn Than. Kem Trang Ti?n', 2, N'h7.jpg', N'h7.jpg, h7_2.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [NgayDi], [GiaVe], [NoiKhoiHanh], [ChuongTrinhTour], [NoiThamQuan], [MaDM], [hinh], [dsHinh]) VALUES (8, N'Miền Tây: Cần Thơ - Sóc Trăng - Cà Mau', CAST(0x0000AC8600000000 AS DateTime), 5498000, N'Hải Phòng', N'Nhà Công Tử Bạc Liêu: Công tử ăn chơi nổi tiếng nhất Sài Gòn và Lục Tỉnh Nam Kỳ 
- Ghé Bạc Liêu để tìm hiểu về nghệ thuật đờn ca tài tử và cây đàn kìm độc đáo

.', N'Bè cá 7 Bon. Nhà công t? B?c Liêu. Ð?t mui Cà mau', 1, N'h8.jpg', N'h8.jpg, h8_2.jpg')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [NgayDi], [GiaVe], [NoiKhoiHanh], [ChuongTrinhTour], [NoiThamQuan], [MaDM], [hinh], [dsHinh]) VALUES (9, N'Miền Tây: Bến Tre - Trà Vinh', CAST(0x0000AC8100000000 AS DateTime), 1890000, N'Hồ Chí Minh', N'
Bên dòng sông Cổ Chiên, một miền quê yên ả hiện ra với con đường rợp bóng dừa thẳng tắp. Đặt chân đến Cồn Chim du khách sẽ bất ngờ trước những cảnh quan đậm chất miền quê với những món ăn dân dã như Gỏi Hương Thủy Liễu, Tôm Cồn Chim hay tham gia các hoạt động dân gian thú vị như trải nghiệm xay bột bằng cối đá, làm bánh lá dừa, lá mít…', N'Lò k?o d?a, C?n Chim', 1, N'h9.jpg', N'h9.jpg')
SET IDENTITY_INSERT [dbo].[Tour] OFF
ALTER TABLE [dbo].[ChiTietDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDatHang_DatHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DatHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietDatHang] CHECK CONSTRAINT [FK_ChiTietDatHang_DatHang]
GO
ALTER TABLE [dbo].[ChiTietDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDatHang_Tour] FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[ChiTietDatHang] CHECK CONSTRAINT [FK_ChiTietDatHang_Tour]
GO
ALTER TABLE [dbo].[ChiTietTour]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTour_DiaDanh] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DichVu] ([MaDD])
GO
ALTER TABLE [dbo].[ChiTietTour] CHECK CONSTRAINT [FK_ChiTietTour_DiaDanh]
GO
ALTER TABLE [dbo].[ChiTietTour]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTour_Tour] FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[ChiTietTour] CHECK CONSTRAINT [FK_ChiTietTour_Tour]
GO
ALTER TABLE [dbo].[DatHang]  WITH CHECK ADD  CONSTRAINT [FK_DatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DatHang] CHECK CONSTRAINT [FK_DatHang_KhachHang]
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_Danhmuc] FOREIGN KEY([MaDM])
REFERENCES [dbo].[Danhmuc] ([MaDM])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK_Tour_Danhmuc]
GO
USE [master]
GO
ALTER DATABASE [TourDuLich_N2_CNW_09DHTH] SET  READ_WRITE 
GO