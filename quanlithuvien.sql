USE [PRO1041_DuAn1]
GO
/****** Object:  Table [dbo].[CTPhieuMuon]    Script Date: 25/07/2023 5:05:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuMuon](
	[MaPhieuMuon] [nvarchar](50) NOT NULL,
	[MaSach] [nvarchar](50) NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GhiChu] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 25/07/2023 5:05:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[MaDG] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
	[CCCD] [nvarchar](50) NOT NULL,
	[SoLanMuon] [int] NOT NULL,
	[SoLanTraMuon] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 25/07/2023 5:05:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[ChucVu] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuMuon]    Script Date: 25/07/2023 5:05:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuon](
	[MaPhieuMuon] [nvarchar](50) NOT NULL,
	[MaSach] [nvarchar](50) NOT NULL,
	[TenSach] [nvarchar](50) NOT NULL,
	[MaDG] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[NgayMuon] [nvarchar](50) NOT NULL,
	[NgayTra] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 25/07/2023 5:05:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [nvarchar](50) NOT NULL,
	[TenSach] [nvarchar](50) NOT NULL,
	[TacGia] [nvarchar](50) NOT NULL,
	[SoLuong] [nvarchar](50) NOT NULL,
	[GiaTien] [int] NOT NULL,
	[SLChuaThue] [int] NOT NULL,
	[Anh] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sachdemo]    Script Date: 25/07/2023 5:05:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sachdemo](
	[MaSach] [nvarchar](50) NOT NULL,
	[TacGia] [nvarchar](50) NOT NULL,
	[SoLuong] [nvarchar](50) NOT NULL,
	[GiaTien] [int] NOT NULL,
	[SLChuaThue] [int] NOT NULL,
	[Anh] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CTPhieuMuon] ([MaPhieuMuon], [MaSach], [TrangThai], [SoLuong], [GhiChu]) VALUES (N'PM001', N'QS001', N'Chưa Trả', 2, N'H?n Tr? Ngày 2022-11-15')
INSERT [dbo].[CTPhieuMuon] ([MaPhieuMuon], [MaSach], [TrangThai], [SoLuong], [GhiChu]) VALUES (N'PM002', N'QS003', N'Chưa Trả', 1, N'H?n Tr? Ngày 2022-11-20')
INSERT [dbo].[CTPhieuMuon] ([MaPhieuMuon], [MaSach], [TrangThai], [SoLuong], [GhiChu]) VALUES (N'PM003', N'QS007', N'Đã Trả ', 1, N'Ðã Tr? vào Ngày 2022-11-14')
INSERT [dbo].[CTPhieuMuon] ([MaPhieuMuon], [MaSach], [TrangThai], [SoLuong], [GhiChu]) VALUES (N'PM004', N'QS005', N'Chưa Trả', 1, N'H?n Tr? Ngày 2022-11-18')
INSERT [dbo].[CTPhieuMuon] ([MaPhieuMuon], [MaSach], [TrangThai], [SoLuong], [GhiChu]) VALUES (N'PM005', N'QS005', N'Đã Trả', 1, N'đã trả')
INSERT [dbo].[DocGia] ([MaDG], [HoTen], [GioiTinh], [SDT], [CCCD], [SoLanMuon], [SoLanTraMuon]) VALUES (N'DG01', N'Nguyễn Đức Tài', 1, N'0973625397', N'396665145', 12, 0)
INSERT [dbo].[DocGia] ([MaDG], [HoTen], [GioiTinh], [SDT], [CCCD], [SoLanMuon], [SoLanTraMuon]) VALUES (N'DG02', N'Mai Anh Vũ', 1, N'0954387345', N'119003669', 21, 3)
INSERT [dbo].[DocGia] ([MaDG], [HoTen], [GioiTinh], [SDT], [CCCD], [SoLanMuon], [SoLanTraMuon]) VALUES (N'DG03', N'Nguyễn Thị Lan', 0, N'0987364298', N'947516411', 8, 0)
INSERT [dbo].[DocGia] ([MaDG], [HoTen], [GioiTinh], [SDT], [CCCD], [SoLanMuon], [SoLanTraMuon]) VALUES (N'DG04', N'Nguyễn Thị Thúy', 0, N'08435742653', N'106895916', 4, 0)
INSERT [dbo].[DocGia] ([MaDG], [HoTen], [GioiTinh], [SDT], [CCCD], [SoLanMuon], [SoLanTraMuon]) VALUES (N'DG05', N'Trần Văn Cường', 1, N'0924532646', N'288772148', 10, 2)
INSERT [dbo].[DocGia] ([MaDG], [HoTen], [GioiTinh], [SDT], [CCCD], [SoLanMuon], [SoLanTraMuon]) VALUES (N'DG06', N'Nguyễn Ngọc Diệu', 0, N'0923642853', N'101010977', 7, 0)
INSERT [dbo].[DocGia] ([MaDG], [HoTen], [GioiTinh], [SDT], [CCCD], [SoLanMuon], [SoLanTraMuon]) VALUES (N'DG07', N'Hoàng Xuân Đức', 1, N'09346538653', N'456897985', 16, 0)
INSERT [dbo].[DocGia] ([MaDG], [HoTen], [GioiTinh], [SDT], [CCCD], [SoLanMuon], [SoLanTraMuon]) VALUES (N'DG08', N'Nguyễn Thị Lệ', 0, N'0923653954', N'542990020', 18, 1)
INSERT [dbo].[DocGia] ([MaDG], [HoTen], [GioiTinh], [SDT], [CCCD], [SoLanMuon], [SoLanTraMuon]) VALUES (N'DG09', N'Lữ Quang Hiếu', 1, N'0912653863', N'353858911', 15, 0)
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [TenNV], [ChucVu]) VALUES (N'NV01', N'123456', N'NGÔ SƠN TRƯỜNG', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [TenNV], [ChucVu]) VALUES (N'NV02', N'123456', N'ĐẶNG VĂN CƯỜNG', 0)
INSERT [dbo].[NhanVien] ([MaNV], [MatKhau], [TenNV], [ChucVu]) VALUES (N'NV03', N'123456', N'NGUYỄN VĂN LUẬN', 0)
INSERT [dbo].[PhieuMuon] ([MaPhieuMuon], [MaSach], [TenSach], [MaDG], [MaNV], [NgayMuon], [NgayTra]) VALUES (N'PM001', N'QS001', N'Đắc Nhân Tâm', N'DG01', N'NV01', N'2022-11-08', N'2022-11-15')
INSERT [dbo].[PhieuMuon] ([MaPhieuMuon], [MaSach], [TenSach], [MaDG], [MaNV], [NgayMuon], [NgayTra]) VALUES (N'PM002', N'QS003', N'Cách nghĩ để thành công', N'DG05', N'NV03', N'2022-11-10', N'2022-11-20')
INSERT [dbo].[PhieuMuon] ([MaPhieuMuon], [MaSach], [TenSach], [MaDG], [MaNV], [NgayMuon], [NgayTra]) VALUES (N'PM003', N'QS007', N'Tiểu thuyết Bố Già', N'DG03', N'NV02', N'2022-11-10', N'2022-11-15')
INSERT [dbo].[PhieuMuon] ([MaPhieuMuon], [MaSach], [TenSach], [MaDG], [MaNV], [NgayMuon], [NgayTra]) VALUES (N'PM004', N'QS005', N'Quẳng gánh lo đi và vui sống', N'DG07', N'NV01', N'2022-11-12', N'2022-11-18')
INSERT [dbo].[PhieuMuon] ([MaPhieuMuon], [MaSach], [TenSach], [MaDG], [MaNV], [NgayMuon], [NgayTra]) VALUES (N'PM005', N'QS005', N'Quẳng gánh lo đi và vui sống', N'DG07', N'NV01', N'15-05-0018', N'14-05-0024')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS001', N'Đắc Nhân Tâm', N'Dale Carnegie', N'100', 350000, 50, N'')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS002', N'Nhà Giả Kim', N'Paulo Coelho', N'100', 300000, 78, N'')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS003', N'Cách nghĩ để thành công', N'Napoleon Hill', N'100', 350000, 50, N'')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS004', N'Hạt giống tâm hồn', N'Nhi?u tác gi?', N'100', 350000, 50, N'')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS005', N'Quẳng gánh lo đi và vui sống', N'Dale Carnegie', N'100', 350000, 50, N'')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS006', N'Đọc Vị Bất Kỳ Ai ', N'David J.Lieberman', N'100', 350000, 50, N'')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS007', N'Tiểu thuyết Bố Già', N'Mario Puzo', N'100', 350000, 50, N'')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS008', N'Cuộc sống không giới hạn', N'Nick Vujicic', N'100', 350000, 50, N'')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS009', N'Đời Thay Đổi Khi Chúng Ta Thay Đổi', N'Andrew Matthews', N'100', 350000, 50, N'')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS010', N'Người giàu có nhất thành Babylon', N'George Samuel Clason', N'100', 350000, 50, N'')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS011', N'7 Thói Quen Để Thành Đạt', N'Stephen R. Covey', N'100', 350000, 50, N'')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS012', N'Hành trình về phương Đông', N'Baird T. Spalding', N'100', 350000, 50, N'')
INSERT [dbo].[Sachdemo] ([MaSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS001', N'Dale Carnegie', N'100', 350000, 50, N'')
INSERT [dbo].[Sachdemo] ([MaSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS002', N'Paulo Coelho', N'100', 300000, 78, N'')
INSERT [dbo].[Sachdemo] ([MaSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS003', N'Napoleon Hill', N'100', 350000, 50, N'')
INSERT [dbo].[Sachdemo] ([MaSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS004', N'Nhi?u tác gi?', N'100', 350000, 50, N'')
INSERT [dbo].[Sachdemo] ([MaSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS005', N'Dale Carnegie', N'100', 350000, 50, N'')
INSERT [dbo].[Sachdemo] ([MaSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS006', N'David J.Lieberman', N'100', 350000, 50, N'')
INSERT [dbo].[Sachdemo] ([MaSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS007', N'Mario Puzo', N'100', 350000, 50, N'')
INSERT [dbo].[Sachdemo] ([MaSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS008', N'Nick Vujicic', N'100', 350000, 50, N'')
INSERT [dbo].[Sachdemo] ([MaSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS009', N'Andrew Matthews', N'100', 350000, 50, N'')
INSERT [dbo].[Sachdemo] ([MaSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS010', N'George Samuel Clason', N'100', 350000, 50, N'')
INSERT [dbo].[Sachdemo] ([MaSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS011', N'Stephen R. Covey', N'100', 350000, 50, N'')
INSERT [dbo].[Sachdemo] ([MaSach], [TacGia], [SoLuong], [GiaTien], [SLChuaThue], [Anh]) VALUES (N'QS012', N'Baird T. Spalding', N'100', 350000, 50, N'')
/****** Object:  StoredProcedure [dbo].[sp_DoanhThu]    Script Date: 25/07/2023 5:05:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		CREATE PROC [dbo].[sp_DoanhThu](@month INT)
		AS BEGIN
		SELECT	
			s.MaSach,
			TenSach,
			SUM(GiaTien) DoanhThu,
			MIN(GiaTien) ThapNhat,
			MAX(GiaTien) CaoNhat,
			AVG(GiaTien) TrungBinh
		FROM Sachdemo s
			JOIN PhieuMuon pm ON pm.MaSach=s.MaSach
		WHERE Day(pm.NgayMuon) = @month
		GROUP BY TenSach,s.MaSach
		END

GO
/****** Object:  StoredProcedure [dbo].[sp_TopMuon]    Script Date: 25/07/2023 5:05:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		CREATE PROC [dbo].[sp_TopMuon]
		AS BEGIN
		SELECT top 10
			MaDG,HoTen,SoLanMuon,SoLanTraMuon
		FROM DocGia
		order by
		SoLanMuon desc;
		END

GO
/****** Object:  StoredProcedure [dbo].[sp_TopSach]    Script Date: 25/07/2023 5:05:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		CREATE PROC [dbo].[sp_TopSach]
		AS BEGIN
		SELECT top 20
			MaSach,
			TenSach,
			TacGia,
			SoLuong - SLChuaThue as 'Da Thue'
		FROM Sach
		order by
		SoLuong - SLChuaThue desc;
		END

GO
