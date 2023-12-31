USE [QuanLiBanSach]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 8/28/2021 22:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaSach] [int] NOT NULL,
	[MaDonHang] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 8/28/2021 22:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[MaChuDe] [int] NOT NULL,
	[TenChuDe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaChuDe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 8/28/2021 22:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] NOT NULL,
	[DaThanhToan] [nvarchar](50) NULL,
	[TinhTrangGiaoHang] [nvarchar](50) NULL,
	[NgayDat] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 8/28/2021 22:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[DienThoai] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 8/28/2021 22:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[MaNXB] [int] NOT NULL,
	[TenNXB] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 8/28/2021 22:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [int] NOT NULL,
	[TenSach] [nvarchar](50) NOT NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](50) NOT NULL,
	[AnhBia] [nvarchar](50) NULL,
	[NgayCapNhat] [datetime] NULL,
	[SoLuongTon] [int] NULL,
	[MaNXB] [int] NULL,
	[MaChuDe] [int] NULL,
	[Moi] [int] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 8/28/2021 22:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTacGia] [int] NOT NULL,
	[TenTacGia] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TieuSu] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Login]    Script Date: 8/28/2021 22:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Login] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThamGia]    Script Date: 8/28/2021 22:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThamGia](
	[MaTacGia] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[VaiTro] [nvarchar](50) NOT NULL,
	[ViTri] [nvarchar](50) NOT NULL,
 CONSTRAINT [ChiTietDonHang_pk] PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDonHang] ([MaSach], [MaDonHang], [SoLuong], [DonGia]) VALUES (100, 1, 1, CAST(120000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaSach], [MaDonHang], [SoLuong], [DonGia]) VALUES (100, 4, 1, CAST(120000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaSach], [MaDonHang], [SoLuong], [DonGia]) VALUES (101, 915712716, 2, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaSach], [MaDonHang], [SoLuong], [DonGia]) VALUES (102, 2, 3, CAST(110000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([MaSach], [MaDonHang], [SoLuong], [DonGia]) VALUES (102, 3, 1, CAST(110000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (11110, N'Tri thức')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (11111, N'Tuổi trẻ')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (11112, N'Thể Thao')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (1, NULL, NULL, CAST(N'2021-08-03T21:49:54.550' AS DateTime), NULL, NULL)
INSERT [dbo].[DonHang] ([MaDonHang], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (2, NULL, NULL, CAST(N'2021-08-24T17:45:24.443' AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDonHang], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (3, NULL, NULL, CAST(N'2021-08-24T21:09:43.767' AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDonHang], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (4, NULL, NULL, CAST(N'2021-08-24T21:12:47.633' AS DateTime), NULL, 1)
INSERT [dbo].[DonHang] ([MaDonHang], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKH]) VALUES (915712716, NULL, NULL, CAST(N'2021-08-28T09:34:30.593' AS DateTime), NULL, 0)
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [GioiTinh], [NgaySinh]) VALUES (0, N'Duong', N'DuongNguyen', N'duong12345', N'duongnm110198@gmail.com', N'Cô Lơ Nhuê', N'123456789', N'Female', CAST(N'1998-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [GioiTinh], [NgaySinh]) VALUES (1, N'Trang', N'TrangTrang', N'trang12345', N'trangnt@gmail.com', N'Hà Nội', N'0123456789', N'Nữ', CAST(N'2021-03-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (1110, N'NXB Thái Hà', N'Cầu diễn - Hà Nội', N'111222333')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (1111, N'NXB Minh Dương', N'Cổ nhuế - Hà nội', N'0358845050')
GO
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [Moi]) VALUES (100, N'Giáo trình CSS4', CAST(120000 AS Decimal(18, 0)), N'<p>Cuộc sống giản dị biết bao</p>', N'cs4.jpg', CAST(N'2000-11-01T00:00:00.000' AS DateTime), 5, 1110, 11110, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [Moi]) VALUES (101, N'Giáo trình Javascript', CAST(100000 AS Decimal(18, 0)), N'C&aacute;nh đồng tuổi trẻ', N'javascript.png', CAST(N'2000-11-01T00:00:00.000' AS DateTime), 10, 1111, 11111, 2)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [Moi]) VALUES (102, N'Giáo trình Marketing', CAST(110000 AS Decimal(18, 0)), N'<p>Cuộc sống gian nan đi t&igrave;m tượng Phật</p>', N'marketing.jpg', CAST(N'2000-11-01T00:00:00.000' AS DateTime), 15, 1111, 11111, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [Moi]) VALUES (103, N'Giáo trình Php', CAST(110000 AS Decimal(18, 0)), N'<p>Cuộc sống gian nan đi t&igrave;m tượng Phật</p>', N'php.png', CAST(N'2000-11-01T00:00:00.000' AS DateTime), 20, 1111, 11111, 2)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [Moi]) VALUES (104, N'Giáo trình SQL', CAST(110000 AS Decimal(18, 0)), N'Cuộc sống gian nan đi tìm tượng Phật', N'sql.jpg', CAST(N'2000-11-01T00:00:00.000' AS DateTime), 25, 1111, 11111, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [Moi]) VALUES (105, N'Sách Viết Sân Trường', CAST(110000 AS Decimal(18, 0)), N'Cuộc sống gian nan đi tìm tượng Phật 2', N'vietsantruong.jpg', CAST(N'2000-11-01T00:00:00.000' AS DateTime), 25, 1111, 11111, 1)
GO
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (11, N'Hồ Ngọc Hà', N'Hà Nội', N'Ca sĩ', N'122333')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (12, N'Lê Nguyên', N'Nam Định', N'Thư sĩ', N'1223334')
GO
INSERT [dbo].[ThamGia] ([MaTacGia], [MaSach], [VaiTro], [ViTri]) VALUES (11, 100, N'Biên Kịch', N'Tác giả')
INSERT [dbo].[ThamGia] ([MaTacGia], [MaSach], [VaiTro], [ViTri]) VALUES (12, 101, N'Soạn Thảo', N'Kịch bản')
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_Sach]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_ChuDe] FOREIGN KEY([MaChuDe])
REFERENCES [dbo].[ChuDe] ([MaChuDe])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_ChuDe]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXuatBan] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NhaXuatBan] ([MaNXB])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaXuatBan]
GO
ALTER TABLE [dbo].[ThamGia]  WITH CHECK ADD  CONSTRAINT [FK_ThamGia_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ThamGia] CHECK CONSTRAINT [FK_ThamGia_Sach]
GO
ALTER TABLE [dbo].[ThamGia]  WITH CHECK ADD  CONSTRAINT [FK_ThamGia_TacGia] FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[TacGia] ([MaTacGia])
GO
ALTER TABLE [dbo].[ThamGia] CHECK CONSTRAINT [FK_ThamGia_TacGia]
GO
