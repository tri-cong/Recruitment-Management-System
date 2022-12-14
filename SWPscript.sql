USE [master]
GO
/****** Object:  Database [QuanLyTuyenDung]    Script Date: 8/3/2022 4:10:50 PM ******/
CREATE DATABASE [QuanLyTuyenDung]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyTuyenDung', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyTuyenDung.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyTuyenDung_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyTuyenDung_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyTuyenDung] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyTuyenDung].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyTuyenDung] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyTuyenDung] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyTuyenDung] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyTuyenDung] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyTuyenDung] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyTuyenDung] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyTuyenDung] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyTuyenDung] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyTuyenDung] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyTuyenDung] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyTuyenDung] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyTuyenDung] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyTuyenDung] SET QUERY_STORE = OFF
GO
USE [QuanLyTuyenDung]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 8/3/2022 4:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[idAdmin] [int] IDENTITY(1,1) NOT NULL,
	[nameAdmin] [nvarchar](50) NULL,
	[userId] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[status] [bit] NULL,
	[email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[applicant]    Script Date: 8/3/2022 4:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[applicant](
	[idApplicant] [int] IDENTITY(1,1) NOT NULL,
	[nameApplicant] [nvarchar](50) NULL,
	[gender] [nvarchar](50) NULL,
	[maritalStatus] [nvarchar](50) NULL,
	[dob] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[cmnd] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[introduceMyseft] [nvarchar](2000) NULL,
	[education] [nvarchar](50) NULL,
	[university] [nvarchar](50) NULL,
	[major] [nvarchar](50) NULL,
	[nameJob] [nvarchar](50) NULL,
	[img] [nvarchar](50) NULL,
 CONSTRAINT [PK__applican__F7B4D725CE21EA4F] PRIMARY KEY CLUSTERED 
(
	[idApplicant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[applicationstatus]    Script Date: 8/3/2022 4:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[applicationstatus](
	[idAppstatus] [int] IDENTITY(1,1) NOT NULL,
	[desciption] [nvarchar](1000) NULL,
	[status] [bit] NULL,
	[Aps_idApplicant] [int] NULL,
	[Aps_idAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idAppstatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[interview]    Script Date: 8/3/2022 4:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[interview](
	[idApplicant] [int] IDENTITY(1,1) NOT NULL,
	[nameApplicant] [nvarchar](50) NULL,
	[gender] [nvarchar](50) NULL,
	[maritalStatus] [nvarchar](50) NULL,
	[dob] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[cmnd] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[introduceMyseft] [nvarchar](2000) NULL,
	[education] [nvarchar](50) NULL,
	[university] [nvarchar](50) NULL,
	[major] [nvarchar](50) NULL,
	[nameJob] [nvarchar](50) NULL,
	[img] [nvarchar](50) NULL,
	[interviewDate] [nvarchar](50) NULL,
	[interviewTime] [nvarchar](50) NULL,
	[interviewer] [nvarchar](50) NULL,
	[CV] [nvarchar](50) NULL,
	[statuss] [nvarchar](60) NULL,
 CONSTRAINT [PK__intervie__F7B4D7252DF78CE2] PRIMARY KEY CLUSTERED 
(
	[idApplicant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job]    Script Date: 8/3/2022 4:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job](
	[idJob] [int] NOT NULL,
	[nameJob] [nvarchar](50) NULL,
	[jobDesciption] [nvarchar](1000) NULL,
	[jobRequest] [nvarchar](1000) NULL,
	[rights] [nvarchar](1000) NULL,
	[workplace] [nvarchar](1000) NULL,
	[degree] [nvarchar](1000) NULL,
	[experience] [nvarchar](1000) NULL,
	[applieddate] [nvarchar](1000) NULL,
	[quantity] [int] NULL,
	[cateID] [int] NULL,
 CONSTRAINT [PK__job__3EE9C73F5111A4D5] PRIMARY KEY CLUSTERED 
(
	[idJob] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobcategory]    Script Date: 8/3/2022 4:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobcategory](
	[idJobcate] [int] IDENTITY(1,1) NOT NULL,
	[nameJobcate] [nvarchar](50) NULL,
	[status] [bit] NULL,
	[idKhoi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idJobcate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tientrinh]    Script Date: 8/3/2022 4:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tientrinh](
	[nameTT] [nvarchar](50) NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_tientrinh] PRIMARY KEY CLUSTERED 
(
	[nameTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([idAdmin], [nameAdmin], [userId], [password], [status], [email]) VALUES (1, N'admin', N'admin', N'01', 1, N'cadpcompany.niti@gmail.com')
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
SET IDENTITY_INSERT [dbo].[applicant] ON 

INSERT [dbo].[applicant] ([idApplicant], [nameApplicant], [gender], [maritalStatus], [dob], [address], [cmnd], [email], [phone], [introduceMyseft], [education], [university], [major], [nameJob], [img]) VALUES (1075, N'Quốc Anh', N'Nam', N'Độc thân', N'2001-12-01', N'TPHCM', N'0123456789', N'quocanh@email.com', N'0909123456', N'tôi tên là Quốc Anh', N'Đại học', N'FPT', N'Kỹ Thuật Phần Mềm', N'Công tác viên Giao Hàng Điện Máy CDAP', N'CV1.png')
INSERT [dbo].[applicant] ([idApplicant], [nameApplicant], [gender], [maritalStatus], [dob], [address], [cmnd], [email], [phone], [introduceMyseft], [education], [university], [major], [nameJob], [img]) VALUES (1076, N'Trí Công', N'Nam', N'Độc thân', N'2001-11-01', N'TPHCM', N'0123789456', N'tricong@gmail.com', N'09081111111', N'tôi tên là Trí Công', N'Đại học', N'FPT', N'IT', N'Nhân viên Graphic Designer', N'CV2.png')
INSERT [dbo].[applicant] ([idApplicant], [nameApplicant], [gender], [maritalStatus], [dob], [address], [cmnd], [email], [phone], [introduceMyseft], [education], [university], [major], [nameJob], [img]) VALUES (1079, N'Nguyễn Duy', N'Nam', N'Độc thân', N'2001-11-01', N'Số 27, Đường 20, Phường Long Thạnh Mĩ, Q9, TPHCM', N'090908080707', N'imtricong@gmail.com', N'0909123456', N'Tôi hy vọng có thể được làm công việc này', N'Đại học', N'FPT', N'Kỹ Thuật Phần Mềm', N'Product Manager website Thế Giới Di Động CDAP', N'CV3.png')
INSERT [dbo].[applicant] ([idApplicant], [nameApplicant], [gender], [maritalStatus], [dob], [address], [cmnd], [email], [phone], [introduceMyseft], [education], [university], [major], [nameJob], [img]) VALUES (1080, N' ', NULL, NULL, N'2022-08-04', N' ', N' ', N' ', N' ', N' ', NULL, N' ', N' ', N'Nhân viên Sơ chế đóng gói Bách Hóa CDAP', N'')
SET IDENTITY_INSERT [dbo].[applicant] OFF
GO
SET IDENTITY_INSERT [dbo].[interview] ON 

INSERT [dbo].[interview] ([idApplicant], [nameApplicant], [gender], [maritalStatus], [dob], [address], [cmnd], [email], [phone], [introduceMyseft], [education], [university], [major], [nameJob], [img], [interviewDate], [interviewTime], [interviewer], [CV], [statuss]) VALUES (25, N'Quốc Anh', NULL, NULL, NULL, N'TPHCM', NULL, N'quocanh@email.com', N'0909123456', NULL, NULL, NULL, NULL, N'Công tác viên Giao Hàng Điện Máy CDAP', NULL, N'2022-10-11', N'10:40', N'Nguyễn Quang Minh', NULL, N'Đã phỏng vấn')
INSERT [dbo].[interview] ([idApplicant], [nameApplicant], [gender], [maritalStatus], [dob], [address], [cmnd], [email], [phone], [introduceMyseft], [education], [university], [major], [nameJob], [img], [interviewDate], [interviewTime], [interviewer], [CV], [statuss]) VALUES (26, N'Trí Công', NULL, NULL, NULL, N'TPHCM', NULL, N'tricong@gmail.com', N'09081111111', NULL, NULL, NULL, NULL, N'Nhân viên Graphic Designer', NULL, N'2022-10-13', N'12:30', N'Nguyễn Quang Minh', NULL, N'Chưa diễn ra')
INSERT [dbo].[interview] ([idApplicant], [nameApplicant], [gender], [maritalStatus], [dob], [address], [cmnd], [email], [phone], [introduceMyseft], [education], [university], [major], [nameJob], [img], [interviewDate], [interviewTime], [interviewer], [CV], [statuss]) VALUES (28, N'Nguyễn Duy', NULL, NULL, NULL, N'Số 27, Đường 20, Phường Long Thạnh Mĩ, Q9, TPHCM', NULL, N'imtricong@gmail.com', N'0909123456', NULL, NULL, NULL, NULL, N'Product Manager website Thế Giới Di Động CDAP', NULL, N'2022-11-11', N'03:29', N'Vũ Duy Khương', NULL, N'Chưa diễn ra')
INSERT [dbo].[interview] ([idApplicant], [nameApplicant], [gender], [maritalStatus], [dob], [address], [cmnd], [email], [phone], [introduceMyseft], [education], [university], [major], [nameJob], [img], [interviewDate], [interviewTime], [interviewer], [CV], [statuss]) VALUES (29, N' ', NULL, NULL, N'2022-08-04', N' ', N' ', N' ', N' ', N' ', NULL, N' ', N' ', N'Nhân viên Sơ chế đóng gói Bách Hóa CDAP', N'', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[interview] OFF
GO
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (1, N'Nhân viên Thu Ngân Bách Hóa CDAP', N'- Tư vấn hỗ trợ Khách Hàng đến siêu thị.<br>- Thanh Toán tiền cho Khách Hàng.<br>- Trưng bày, sắp xếp hàng hóa đảm bảo quầy kệ gọn gàng, sạch sẽ.<br>- Thu hộ trả góp và bán thẻ cào, tiền điện/nước/ internet.<br>- Kết ca cất tiền, khóa và niêm phong két sắt, giao lại chìa khóa lại cho Quản lý.<br>- Kiểm quỹ cuối ngày khớp với tiền thu của Khách hàng.<br>- Tổng hợp các bill cà thẻ, hóa đơn liên quan gửi về kế toán.<br>- Vệ sinh siêu thị (Lau dọn sàn, kính, quầy kệ).<br>- Là người nhân viên đa nhiệm, linh hoạt bạn có thể làm thêm các vị trí công việc khác như Kho / Fresh, hoặc các công việc theo sự phân công quản lý.', N'- Nam/ Nữ từ 18- 40 tuổi<br>- Thân thiện, nhiệt tình, muốn gắn bó lâu dài<br>- Có sức khỏe tốt, tháo vát, có trách nhiệm<br>- Có điện thoại smartphone để làm việc, chủ động phương tiện di chuyển (xe máy)<br>-  Sẵn sàng làm đa nhiệm: Kho- bán hàng- thu ngân - sơ chế thịt, cá<br>- Làm ca xoay 8 tiếng:<br>+ Ca Sáng: 5h30 - 14h30<br>+ Ca Chiều: 14h30 - 22g00<br>+ Ca Đêm: 22g00 - 5h30 <br>- Thời gian xoay ca theo ngày nên thuận tiện cho việc nghỉ ngơi giữa các ngày', N'- Thu nhập trung bình từ 7-10 triệu trở lên, tăng lên theo hiệu quả làm việc và giờ công làm việc<br>- Thưởng trong tháng và thưởng cuối năm hấp dẫn ( Thưởng tết tương đương 3 tháng thu nhập, số liệu 3 năm gần nhất)<br>- Có cơ hội thăng tiến lên Quản lý rõ ràng- làm chủ siêu thị<br>- Công việc bố trí làm việc thuận tiện gần nhà<br>- Có sự hướng dẫn, đào tạo phát triển kỹ năng/ chuyên môn liên tục<br>- Ký Hợp đồng lao động, công việc chính thức Lâu dài - Ổn định<br>- Môi trường làm việc thân thiện, hỗ trợ đồng đội<br>- Phúc lợi đầy đủ : Tham gia BHYT, BHXH, Đi du lịch Teambuilding, 12 ngày phép/ năm,...', N'Hồ Chí Minh', N'Đại Học', N'Từ 1 năm trở lên', N'10/09/2023', 15, 7)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (2, N'Công tác viên siêu thị Bách Hóa CDAP', N'- Công việc có thời gian linh hoạt có thể phù hợp với các bạn Sinh Viên.
<br>- Trưng bày hàng hóa, chăm sóc/ sơ chế thịt cá, rau củ.
<br>- Châm hàng, đóng vĩ sản phẩm.
<br>- Sắp xếp, vệ sinh gọn gàng khu vực buôn bán, kho, sàn.
<br>- Phục vụ khách hàng bên trong, bên ngoài siêu thị
<br>- Công việc khác theo sự sắp xếp của QL
<br>Thời gian làm việc:
<br>+ Ca 1: 6h00 - 14h
<br>+ Ca 2: 14h - 21h30
<br>+ Hoặc ca gãy, linh hoạt sắp xếp của siêu thị
<br>*** Trung bình: 1 tuần làm 5 ca, 1 ca khoảng 6-8 tiếng
<br>Lương theo giờ: Vùng 1: 36.000; Vùng 2: 34.000; Vùng 3,4: 32.000', N'Hồ sơ cần chuẩn bị:
<br>+ Hình chụp CMND/CCCD
<br>+ Số tài khoản ATM 1 trong các ngân hàng Vietin Bank, MB Bank, Standard Chartered Bank', N'- Việc làm thời vụ - thu nhập tức thì, làm bao nhiêu hưởng bấy nhiêu
<br>- Yêu cầu rất đơn giản chỉ cần có sức khoẻ tốt, lanh lẹ
<br>- Tạo cơ hội lên nhân viên chính thức nếu đáp ứng tốt công việc', N'TP.HCM,...', N'Không yêu cầu', N'Không yêu cầu', N'02/07/2023', 34, 1)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (3, N'Nhân viên Kho Bán Hàng Bách Hóa CDAP', N'- Tư vấn hỗ trợ Khách hàng đến siêu thị Bách Hóa Xanh để mua sắm, trải nghiệm
<br>- Trưng bày, sắp xếp hàng hóa đảm bảo quầy kệ gọn gàng, sạch sẽ.
<br>- Kiểm kê hàng hóa siêu thị.
<br>- Nhập hàng từ nhà cung cấp hoặc kho tổng (Cân, Nhập, Kiểm đếm)
<br>- Vệ sinh siêu thị (Lau dọn sàn, kính, quầy kệ)
<br>- Bưng bê/sắp xếp hàng, quản lý kho hàng gọn gàng.
<br>- Là người nhân viên đa nhiệm, linh hoạt bạn có thể làm thêm các vị trí công việc khác như Thu Ngân / Fresh, hoặc các công việc theo sự phân công quản lý.', N'- Nam/ Nữ từ 18- 40 tuổi
<br>- Thân thiện, nhiệt tình, muốn gắn bó lâu dài
<br>- Có sức khỏe tốt, tháo vát, có trách nhiệm
<br>- Có điện thoại smartphone để làm việc, chủ động phương tiện di chuyển (xe máy)
<br>- Sẵn sàng làm đa nhiệm: Kho- bán hàng- thu ngân - sơ chế thịt, cá
<br>- Làm ca xoay 8 tiếng:
<br>+ Ca Sáng: 5h30 - 14h30
<br>+ Ca Chiều: 14h30 - 22g00
<br>+ Ca Đêm: 22g00 - 5h30 
<br>- Thời gian xoay ca theo ngày nên thuận tiện cho việc nghỉ ngơi giữa các ngày', N'- Thu nhập trung bình từ 7-10 triệu trở lên, tăng lên theo hiệu quả làm việc và giờ công làm việc
<br>- Thưởng trong tháng và thưởng cuối năm hấp dẫn ( Thưởng tết tương đương 3 tháng thu nhập, số liệu 3 năm gần nhất)
<br>- Có cơ hội thăng tiến lên Quản lý rõ ràng- làm chủ siêu thị
<br>- Công việc bố trí làm việc thuận tiện gần nhà
<br>- Có sự hướng dẫn, đào tạo phát triển kỹ năng/ chuyên môn liên tục
<br>- Ký Hợp đồng lao động, công việc chính thức Lâu dài - Ổn định
<br>- Môi trường làm việc thân thiện, hỗ trợ đồng đội
<br>- Phúc lợi đầy đủ : Tham gia BHYT, BHXH, Đi du lịch Teambuilding, 12 ngày phép/ năm, nghỉ thai sản, ốm đau...', N'TP.HCM,...', N'Không yêu cầu', N'Không cần kinh nghiệm', N'05/07/2023', 25, 1)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (4, N'Nhân viên siêu thị Điện Máy CDAP', N'- Làm việc tại các siêu thị Điện Máy Xanh Supermini (cửa hàng có sắp xếp tinh gọn về vận hành với diện tích chỉ tầm 1/2 Điện Máy Xanh nhỏ).
<br>- Bạn sẽ trở thành nhân viên đa nhiệm, đa năng (gia tăng năng suất, một nhân viên làm tất cả các việc, sử dụng tối đa tác nghiệp qua smartphone). Cụ thể:
<br>+ Tư vấn bán hàng, hỗ trợ và hướng dẫn Khách Hàng đến tham quan và mua sắm
<br>+ Quản lý, sắp xếp, trưng bày hàng hóa tại siêu thị 
<br>+ Hỗ trợ cài đặt phần mềm, hình ảnh, nhạc cho sản phẩm
<br>+ Thu tiền hàng hóa, thu hộ tiền điện, nước, internet, làm sim, trực tiếp dán và trang trí sản phẩm cho khách hàng
<br>+ Giao hàng tại nhà cho Khách (không lắp đặt)
<br>- Ca làm việc chủ yếu: Ca Xoay (08:00-15:00 và 15:00-22:00)', N'- Bạn tốt nghiệp THPT trở lên và có ngoại hình khá. Ưu tiên NAM
<br>- Tuổi từ 18 - 27 tuổi.
<br>- Bạn là người vui vẻ, thân thiện, cởi mở với mọi người, giao tiếp tự tin.
<br>- Có niềm đam mê, có kiến thức công nghệ và mong muốn được chia sẻ kiến thức cho khách hàng.
<br>- Bạn là người cẩn thận, tỉ mỉ, trung thực.
<br>- Bạn mong muốn gắn bó lâu dài với công ty và khát khao phát triển. ', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh
<br>- Cơ hội thăng tiến, phát triển bản thân
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần
<br>- Thưởng cuối năm hấp dẫn, lên đến 3 tháng - số liệu 2018,2019', N'TP.HCM,...', N'THPT', N'Không cần kinh nghiệm', N'01/06/2023', 23, 1)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (5, N'Nhân viên Thu Ngân Điện Máy CDAP', N'- Tư vấn hỗ trợ Khách Hàng đến siêu thị.
<br>- Thanh Toán tiền cho Khách Hàng
<br>- Trưng bày, sắp xếp hàng hóa đảm bảo quầy kệ gọn gàng, sạch sẽ.
<br>- Thu hộ trả góp và bán thẻ cào, tiền điện/nước/ internet.
<br>- Kết ca cất tiền, khóa và niêm phong két sắt, giao lại chìa khóa lại cho Quản lý.
<br>- Kiểm quỹ cuối ngày khớp với tiền thu của Khách hàng.
<br>- Tổng hợp các bill cà thẻ, hóa đơn liên quan gửi về kế toán.
<br>- Vệ sinh siêu thị (Lau dọn sàn, kính, quầy kệ).
<br>- Là người nhân viên đa nhiệm, linh hoạt bạn có thể làm thêm các vị trí công việc khác như Kho / Fresh, hoặc các công việc theo sự phân công quản lý.', N'- Nam/ Nữ từ 18- 40 tuổi
<br>- Thân thiện, nhiệt tình, muốn gắn bó lâu dài
<br>- Có sức khỏe tốt, tháo vát, có trách nhiệm
<br>- Có điện thoại smartphone để làm việc, chủ động phương tiện di chuyển (xe máy)
<br>-  Sẵn sàng làm đa nhiệm: Kho- bán hàng- thu ngân - sơ chế thịt, cá
<br>- Làm ca xoay 8 tiếng:
<br>+ Ca Sáng: 5h30 - 14h30
<br>+ Ca Chiều: 14h30 - 22g00
<br>+ Ca Đêm: 22g00 - 5h30 
<br>- Thời gian xoay ca theo ngày nên thuận tiện cho việc nghỉ ngơi giữa các ngày', N'- Thu nhập trung bình từ 7-10 triệu trở lên, tăng lên theo hiệu quả làm việc và giờ công làm việc
<br>- Thưởng trong tháng và thưởng cuối năm hấp dẫn ( Thưởng tết tương đương 3 tháng thu nhập, số liệu 3 năm gần nhất)
<br>- Có cơ hội thăng tiến lên Quản lý rõ ràng- làm chủ siêu thị
<br>- Công việc bố trí làm việc thuận tiện gần nhà
<br>- Có sự hướng dẫn, đào tạo phát triển kỹ năng/ chuyên môn liên tục
<br>- Ký Hợp đồng lao động, công việc chính thức Lâu dài - Ổn định
<br>- Môi trường làm việc thân thiện, hỗ trợ đồng đội
<br>- Phúc lợi đầy đủ : Tham gia BHYT, BHXH, Đi du lịch Teambuilding, 12 ngày phép/ năm,...', N'TP.HCM,...', N'Không yêu cầu', N'Không cần kinh nghiệm', N'11/07/2023', 15, 1)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (6, N'Công tác viên Giao Hàng Bách Hóa CDAP', N'Công việc của bạn sẽ linh hoạt giữa việc Tư vấn bán hàng cho KH và Giao nhận lắp đặt sản phẩm cho KH khi cần, cụ thể:
<br>- Tư vấn các sản phẩm điện tử điện lạnh gia dụng
<br>- Mang sản phẩm đến tận nhà cho Khách Hàng, hỗ trợ thông tin, hướng dẫn cách sử dụng sản phẩm.
<br>- Hỗ trợ khách hàng thủ tục thanh toán và thu tiền hàng hoá.
<br>- Tư vấn linh kiện phục vụ việc lắp đặt các thiết bị Điện Tử, Điện Lạnh cho Khách Hàng.
<br>- Lắp đặt, bảo trì các thiết bị Điện Tử, Điện Lạnh theo yêu cầu Khách Hàng.
<br>- Được đào tạo chuyên môn trước khi làm việc.', N'- Nam, tuổi từ 20 đến 30, sức khỏe tốt.
<br>- Có xe máy, có Smartphone
<br>- Nếu bạn chưa có kinh nghiệm, chỉ cần bạn yêu thích công việc này công ty sẽ đào tạo cho bạn 
<br>- Có tính kỷ luật, trách nhiệm và nghiêm túc trong công việc ', N'- Môi trường làm việc thân thiện chuyên nghiệp
<br>- Được hướng dẫn đào tạo từ Công ty và Quản lý trực tiếp
<br>- Cơ hội học hỏi, tiếp xúc với quy trình làm việc chuyên nghiệp
<br>- Cơ hội lên nhân viên chính thức', N'TP.HCM,...', N'Không yêu cầu', N'Không cần kinh nghiệm', N'21/07/2023', 52, 2)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (7, N'Công tác viên Giao Hàng Điện Máy CDAP', N'Công việc của bạn sẽ linh hoạt giữa việc Tư vấn bán hàng cho KH và Giao nhận lắp đặt sản phẩm cho KH khi cần, cụ thể:
<br>- Tư vấn các sản phẩm điện tử điện lạnh gia dụng
<br>- Mang sản phẩm đến tận nhà cho Khách Hàng, hỗ trợ thông tin, hướng dẫn cách sử dụng sản phẩm.
<br>- Hỗ trợ khách hàng thủ tục thanh toán và thu tiền hàng hoá.
<br>- Tư vấn linh kiện phục vụ việc lắp đặt các thiết bị Điện Tử, Điện Lạnh cho Khách Hàng.
<br>- Lắp đặt, bảo trì các thiết bị Điện Tử, Điện Lạnh theo yêu cầu Khách Hàng.
<br>- Được đào tạo chuyên môn trước khi làm việc.', N'- Nam, tuổi từ 20 đến 30, sức khỏe tốt.
<br>- Có xe máy, có Smartphone
<br>- Nếu bạn chưa có kinh nghiệm, chỉ cần bạn yêu thích công việc này công ty sẽ đào tạo cho bạn 
<br>- Có tính kỷ luật, trách nhiệm và nghiêm túc trong công việc ', N'- Môi trường làm việc thân thiện chuyên nghiệp
<br>- Được hướng dẫn đào tạo từ Công ty và Quản lý trực tiếp
<br>- Cơ hội học hỏi, tiếp xúc với quy trình làm việc chuyên nghiệp
<br>- Cơ hội lên nhân viên chính thức', N'TP.HCM,...', N'Không yêu cầu', N'Không cần kinh nghiệm', N'15/07/2023', 43, 2)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (8, N'Nhân viên Giao Nhận Kho Trung Tâm Bách Hóa CDAP', N'- Nhận thông tin điều xe giao hàng từ Nhân viên điều phối kho khi có yêu cầu giao hàng; kiểm tra ký nhận về (số lượng hàng, tình trạng hàng….), nhận bàn giao Hóa đơn chứng từ trước khi xe rời khỏi kho. 
<br>- Chịu trách nhiệm bảo quản hàng hóa trong suốt quá trình vận chuyển từ kho --> siêu thị và ngược lại
<br>- Giao hàng cùng những hóa đơn liên quan. Bàn giao lại toàn bộ những chứng từ liên quan.
<br>- Bốc/dỡ hàng hoá lên và xuống xe.
<br>- Lái xe chuyển hàng từ Kho trung tâm đi các tuyến siêu thị', N'- NAM tuổi 18 trở lên đến 40 tuổi.
<br>- Có bằng lái B2 ( bắt buộc)
<br>- Có sức khỏe tốt, cẩn thận, siêng năng, thân nhân rõ ràng
<br>- Vui vẻ, hòa nhã, trung thực, nhiệt tình trong công việc.
<br>- Có khả năng làm việc dưới áp lực cao và hoàn thành công việc đúng tiến độ.
<br>- Thời gian làm việc : Nhân viên Giao nhận (tài xế/lơ xe tải): 2 ca xoay 8 tiếng linh hoạt
<br>Ca 1: 7h00 - 16h00
<br>Ca 2: 18h00 - 03h00', N'- Là thành viên của tập đoàn Thế Giới Di Động với môi trường làm việc chuyên nghiệp hàng đầu VN.
<br>- Có đầy đủ HĐLĐ, các chế độ Bảo hiểm y tế, Bảo hiểm xã hội, Bảo hiểm thất nghiệp,..
<br>- Chính sách mua hàng ưu đãi chỉ dành cho nhân viên 
<br>- Môi trường làm việc hỗ trợ đồng đội, quy trình chuyên nghiệp', N'TP.HCM,...', N'Không yêu cầu', N'Không cần kinh nghiệm', N'01/07/2023', 12, 2)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (9, N'Nhân viên Giao Nhận Kho Trung Tâm Điện Máy CDAP', N'- Nhận thông tin điều xe giao hàng từ Nhân viên điều phối kho khi có yêu cầu giao hàng; kiểm tra ký nhận về (số lượng hàng, tình trạng hàng….), nhận bàn giao Hóa đơn chứng từ trước khi xe rời khỏi kho. 
<br>- Chịu trách nhiệm bảo quản hàng hóa trong suốt quá trình vận chuyển từ kho --> siêu thị và ngược lại
<br>- Giao hàng cùng những hóa đơn liên quan. Bàn giao lại toàn bộ những chứng từ liên quan.
<br>- Bốc/dỡ hàng hoá lên và xuống xe.
<br>- Lái xe chuyển hàng từ Kho trung tâm đi các tuyến siêu thị', N'- NAM tuổi 18 trở lên đến 40 tuổi.
<br>- Có bằng lái B2 ( bắt buộc)
<br>- Có sức khỏe tốt, cẩn thận, siêng năng, thân nhân rõ ràng
<br>- Vui vẻ, hòa nhã, trung thực, nhiệt tình trong công việc.
<br>- Có khả năng làm việc dưới áp lực cao và hoàn thành công việc đúng tiến độ.
<br>- Thời gian làm việc : Nhân viên Giao nhận (tài xế/lơ xe tải): 2 ca xoay 8 tiếng linh hoạt
<br>Ca 1: 7h00 - 16h00
<br>Ca 2: 18h00 - 03h00', N'- Là thành viên của tập đoàn Thế Giới Di Động với môi trường làm việc chuyên nghiệp hàng đầu VN.
<br>- Có đầy đủ HĐLĐ, các chế độ Bảo hiểm y tế, Bảo hiểm xã hội, Bảo hiểm thất nghiệp,..
<br>- Chính sách mua hàng ưu đãi chỉ dành cho nhân viên 
<br>- Môi trường làm việc hỗ trợ đồng đội, quy trình chuyên nghiệp', N'TP.HCM,...', N'Không yêu cầu', N'Không cần kinh nghiệm', N'01/07/2023', 42, 2)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (10, N'Tài Xế Giao Hàng - Lắp đặt Điện Máy', N'- Nhận thông tin điều xe giao hàng từ Nhân viên điều phối kho khi có yêu cầu giao hàng; kiểm tra ký nhận về (số lượng hàng, tình trạng hàng….), nhận bàn giao Hóa đơn chứng từ trước khi xe rời khỏi kho.
<br>- Giao hàng cùng những hóa đơn liên quan cho khách hàng, Thu tiền mặt, ký nhận với khách hàng khi việc giao hàng hoàn tất, bàn giao lại toàn bộ những chứng từ liên quan, tiền mặt thu của khách hàng cho nhân viên điều phối. ', N'- Nam, tuổi từ 22 trở lên, sức khỏe tốt
<br>- Có bằng lái xe dấu B2 trở lên
<br>- Ưu tiên ứng viên có kinh nghiệm làm tài xế giao hàng.', N'- Là thành viên của tập đoàn Thế Giới Di Động với môi trường làm việc chuyên nghiệp hàng đầu VN.
<br>- Có đầy đủ HĐLĐ, các chế độ Bảo hiểm y tế, Bảo hiểm xã hội, Bảo hiểm thất nghiệp,
<br>- Chính sách mua hàng giảm giá chỉ dành cho nhân viên
<br>- Teambuilding, du lịch nghỉ mát hàng năm, nghỉ phép năm', N'TP.HCM,...', N'Không yêu cầu', N'Không cần kinh nghiệm', N'01/07/2023', 52, 2)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (11, N'Nhân viên Kho Trung Tâm Bách Hóa CDAP', N'- Là nhân viên Kho tổng/ kho trung tâm của chuỗi siêu thị Bách Hóa Xanh, các mặt hàng về rau củ quả, hàng khô, hàng tiêu dùng...
<br>- Làm việc trong kho hàng tổng với công việc chính là quản lý hàng hóa, sắp xếp, vận chuyển, xuất nhập kho
<br>- Kiểm tra hàng hóa nhập kho theo đúng qui trình qui định.
<br>- Kiểm tra Hàng hóa vào kho phải được dán tem, dán nhãn phụ, còn tem niêm phong . . . đầy đủ và mới 100%.
<br>- Trong quá trình kiểm tra hàng hoá phát hiện sự cố phải thông báo ngay cho quản lý trực tiếp.
<br>- Hằng ngày soạn hàng, đóng gói hàng hóa xuất chuyển đi hệ thống đầy đủ và chính xác.
<br>- Hàng hóa phải được đóng thùng carton, niêm phong, dán địa chỉ nơi đến cẩn thận và đảm bảo trong quá trình vận chuyển.
<br>- Kiểm tra, sắp xếp hàng hóa trong kho ngăn nắp, gọn gàng.', N'- Sức khỏe tốt.
<br>- Có tinh thần tập thể, trách nhiệm chung trong công việc.
<br>- Tuân thủ nội qui, qui định, giá trị cốt lõi công ty.
<br>- Nhân viên và Giao nhận Kho Trung tâm: Ca xoay 8 tiếng linh hoạt
<br>Ca 1: 7h00 - 16h00
<br>Ca 2: 13h00 - 22h00
<br>Ca 3: 22h00 - 07h00', N'- Là thành viên của tập đoàn Thế Giới Di Động với môi trường làm việc chuyên nghiệp hàng đầu VN.
<br>- Có đầy đủ HĐLĐ, các chế độ Bảo hiểm y tế, Bảo hiểm xã hội, Bảo hiểm thất nghiệp,
<br>- Chính sách mua hàng giảm giá chỉ dành cho nhân viên
<br>- Teambuilding, du lịch nghỉ mát hàng năm, nghỉ phép năm ', N'TP.HCM,...', N'Không yêu cầu', N'Không cần kinh nghiệm', N'01/07/2023', 62, 3)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (12, N'Nhân viên Kho Trung Tâm Điện Máy CDAP', N'- Là nhân viên Kho tổng/ kho trung tâm của chuỗi siêu thị Điện Máy Xanh, các mặt hàng về rau củ quả, hàng khô, hàng tiêu dùng...
<br>- Làm việc trong kho hàng tổng với công việc chính là quản lý hàng hóa, sắp xếp, vận chuyển, xuất nhập kho
<br>- Kiểm tra hàng hóa nhập kho theo đúng qui trình qui định.
<br>- Kiểm tra Hàng hóa vào kho phải được dán tem, dán nhãn phụ, còn tem niêm phong . . . đầy đủ và mới 100%.
<br>- Trong quá trình kiểm tra hàng hoá phát hiện sự cố phải thông báo ngay cho quản lý trực tiếp.
<br>- Hằng ngày soạn hàng, đóng gói hàng hóa xuất chuyển đi hệ thống đầy đủ và chính xác.
<br>- Hàng hóa phải được đóng thùng carton, niêm phong, dán địa chỉ nơi đến cẩn thận và đảm bảo trong quá trình vận chuyển.
<br>- Kiểm tra, sắp xếp hàng hóa trong kho ngăn nắp, gọn gàng.', N'- Sức khỏe tốt.
<br>- Có tinh thần tập thể, trách nhiệm chung trong công việc.
<br>- Tuân thủ nội qui, qui định, giá trị cốt lõi công ty.
<br>- Nhân viên và Giao nhận Kho Trung tâm: Ca xoay 8 tiếng linh hoạt
<br>Ca 1: 7h00 - 16h00
<br>Ca 2: 13h00 - 22h00
<br>Ca 3: 22h00 - 07h00', N'- Là thành viên của tập đoàn Thế Giới Di Động với môi trường làm việc chuyên nghiệp hàng đầu VN.
<br>- Có đầy đủ HĐLĐ, các chế độ Bảo hiểm y tế, Bảo hiểm xã hội, Bảo hiểm thất nghiệp,
<br>- Chính sách mua hàng giảm giá chỉ dành cho nhân viên
<br>- Teambuilding, du lịch nghỉ mát hàng năm, nghỉ phép năm ', N'TP.HCM,...', N'Không yêu cầu', N'Không cần kinh nghiệm', N'01/07/2023', 27, 3)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (13, N'Nhân viên Kho Trung Tâm Bách Hóa CDAP - online', N'- Là nhân viên trong Kho tổng của Bách Hóa Xanh online
<br>- Có trách nhiệm kiểm tra hàng hoá nhập kho, nhập chuyển kho theo đúng qui trình, qui định của công ty.
<br>- Hàng hóa nhập kho đảm bảo mới 100% không trầy xước, thùng hàng mới. Trong quá trình kiểm tra phát hiện sự cố phải thông báo ngay cho quản lý trực tiếp.
<br>- Có trách nhiệm sắp xếp và bảo quản hàng hoá tồn kho theo đúng vị trí, line, khu vực qui định...
<br>- Hằng ngày kiểm tra, đối chiếu hàng hóa tồn kho so với ERP.
<br>- Soạn và lấy hàng điều chuyển đi siêu thị, hàng bán cho khách lẻ . . . hằng ngày chính xác trong tồn kho. 
<br>- Bàn giao hàng hoá cho Giao nhận nội bộ và Triển khai chính xác theo chứng từ hoá đơn.
<br>- Kiểm tra, sắp xếp hàng hóa trong kho ngăn nắp, gọn gàng', N'- Nam, nữ Sức khỏe tốt, siêng năng, sẵn sàng làm việc ngoài giờ
<br>- Có tinh thần tập thể, trách nhiệm chung trong công việc.
<br>- Tuân thủ nội qui, qui định, giá trị cốt lõi công ty', N'- Là thành viên của tập đoàn Thế Giới Di Động với môi trường làm việc chuyên nghiệp hàng đầu VN. 
<br>- Có đầy đủ HĐLĐ, các chế độ Bảo hiểm y tế, Bảo hiểm xã hội, Bảo hiểm thất nghiệp.
<br>- Chính sách mua hàng giảm giá chỉ dành cho nhân viên 
<br>- Teambuilding, du lịch nghỉ mát hàng năm, nghỉ phép năm', N'TP.HCM,...', N'Không yêu cầu', N'Không cần kinh nghiệm', N'01/07/2023', 83, 3)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (14, N'Nhân viên Kho Trung Tâm Điện Máy CDAP - online', N'- Là nhân viên trong Kho tổng của Điện Máy Xanh online
<br>- Có trách nhiệm kiểm tra hàng hoá nhập kho, nhập chuyển kho theo đúng qui trình, qui định của công ty.
<br>- Hàng hóa nhập kho đảm bảo mới 100% không trầy xước, thùng hàng mới. Trong quá trình kiểm tra phát hiện sự cố phải thông báo ngay cho quản lý trực tiếp.
<br>- Có trách nhiệm sắp xếp và bảo quản hàng hoá tồn kho theo đúng vị trí, line, khu vực qui định...
<br> Hằng ngày kiểm tra, đối chiếu hàng hóa tồn kho so với ERP.
<br>- Soạn và lấy hàng điều chuyển đi siêu thị, hàng bán cho khách lẻ . . . hằng ngày chính xác trong tồn kho. 
<br>- Bàn giao hàng hoá cho Giao nhận nội bộ và Triển khai chính xác theo chứng từ hoá đơn.
<br>- Kiểm tra, sắp xếp hàng hóa trong kho ngăn nắp, gọn gàng', N'- Nam, nữ Sức khỏe tốt, siêng năng, sẵn sàng làm việc ngoài giờ
<br>- Có tinh thần tập thể, trách nhiệm chung trong công việc.
<br>- Tuân thủ nội qui, qui định, giá trị cốt lõi công ty', N'- Là thành viên của tập đoàn Thế Giới Di Động với môi trường làm việc chuyên nghiệp hàng đầu VN. 
<br>- Có đầy đủ HĐLĐ, các chế độ Bảo hiểm y tế, Bảo hiểm xã hội, Bảo hiểm thất nghiệp.
<br>- Chính sách mua hàng giảm giá chỉ dành cho nhân viên 
<br>- Teambuilding, du lịch nghỉ mát hàng năm, nghỉ phép năm', N'TP.HCM,...', N'Không yêu cầu', N'Không cần kinh nghiệm', N'01/07/2023', 32, 3)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (15, N'Bảo vệ Bách Hóa CDAP', N'- Dẫn dắt xe cho Khách hàng đến siêu thị
<br>- Bảo vệ an ninh cửa hàng
<br>- Giữ gìn vệ sinh khuôn viên bãi xe
<br>- Hỗ trợ một số công việc khác tại siêu thị', N'- Nam, từ 18-60 tuổi
<br>- Có sức khỏe tốt, tháo vát
<br>- Giao tiếp thân thiện, vui vẻ
<br>- Làm ca gãy hoặc ca xoay linh hoạt tùy tình hình siêu thị, Đảm bảo TB 8 tiếng/ Ngày
<br>+ Trường hợp làm ca gãy, 4 tiếng/ ca, và 2 ca/ ngày: Ca 1: 6h30 - 11h00 và Ca 2: 17h00 - 21h30
<br>+ Trường hợp làm ca xoay sẽ là 6g30 - 14g00 hoặc  14g00 -21g30
<br>Lưu ý: Ca làm việc này chỉ mang tính chất tương đối, chi tiết sẽ trao đổi lúc phỏng vấn', N'- Thu nhập trung bình từ 5 triệu trở lên ( bao gồm Thưởng)
<br>- Thưởng cuối năm hấp dẫn
<br>- Được bố trí làm việc thuận tiện gần nhà
<br>- Được hướng dẫn, đào tạo nghiệp vụ bảo vệ/an ninh
<br>- Ký Hợp đồng lao động, công việc chính thức Lâu dài - Ổn định
<br>- Môi trường làm việc thân thiện, vui vẻ
<br>- Phúc lợi đầy đủ : Tham gia BHYT, BHXH, Đi du lịch Teambuilding, 12 ngày phép/ năm...', N'TP.HCM,...', N'Không yêu cầu', N'Không cần kinh nghiệm', N'01/07/2023', 53, 4)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (16, N'Bảo vệ Điện Máy CDAP', N'- Tiếp đón khách hàng tới tham quan mua sắm
<br>- Bảo vệ an ninh bãi xe siêu thị
<br>- Dẫn-dắt xe cho Khách Hàng
<br>- Ca làm việc chủ yếu: Ca Xoay (08:00-15:00 và 15:00-22:00) ', N'- Bạn là Nam, tuổi từ 20-55 và có sức khỏe tốt.
<br>- Bạn là người vui vẻ, giao tiếp thân thiện với mọi người.
<br>- Bạn cần công việc ổn định, mong muốn gắn bó lâu dài với công ty. ', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh
<br>- Cơ hội thăng tiến, phát triển bản thân
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần
<br>- Du lịch Teambuilding hàng năm
<br>- Thưởng cuối năm hấp dẫn, lên đến 3 tháng - 2018,2019', N'TP.HCM,...', N'Không yêu cầu', N'Không cần kinh nghiệm', N'01/07/2023', 45, 4)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (17, N'Bảo vệ Thế Giới Di Động CDAP', N'- Tiếp đón khách hàng tới tham quan mua sắm
<br>- Bảo vệ an ninh bãi xe siêu thị
<br>- Dẫn-dắt xe cho Khách Hàng
<br>- Ca làm việc chủ yếu: Ca Xoay (08:00-15:00 và 15:00-22:00) ', N'- Bạn là Nam, tuổi từ 20-55 và có sức khỏe tốt.
<br>- Bạn là người vui vẻ, giao tiếp thân thiện với mọi người.
<br>- Bạn cần công việc ổn định, mong muốn gắn bó lâu dài với công ty. ', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh
<br>- Cơ hội thăng tiến, phát triển bản thân
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần
<br>- Du lịch Teambuilding hàng năm
<br>- Thưởng cuối năm hấp dẫn, lên đến 3 tháng - 2018,2019', N'TP.HCM,...', N'Không yêu cầu', N'Không cần kinh nghiệm', N'01/07/2023', 23, 4)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (18, N'Giám sát An Ninh Điện Máy CDAP', N'- Phối hợp phòng ban, siêu thị huấn luyện và triển khai nhân viên bảo vệ nội bộ (Tiếp đón khách hàng) tại các siêu thị được phân công.
<br>- Giám sát hoạt động của các đội bảo vệ thuê ngoài.
<br>- Đảm bảo an ninh, trật tự tại tất cả các siêu thị, kho, văn phòng trên địa bàn được phân công và các sự kiện của Công ty.
<br>- Đảm bảo công tác PCCC theo quy định của pháp luật về PCCC
<br>- Đảm bảo an toàn về tài sản của công ty, nhân viên, khách hàng và đối tác đến giao dịch, làm việc', N'- Nam: từ 25 – 35 tuổi.
<br>- Tốt nghiệp THPT trở lên.
<br>- Sử dụng thành thạo vi tính văn phòng.
<br>- Tác phong nhanh nhẹn, không ngại va chạm, biết về võ thuật là một lợi thế
<br>- Tính tình điềm đạm, bình tĩnh, lời nói rõ ràng.
<br>- Chấp nhận sự điều động đột xuất khi được Trưởng An ninh yêu cầu liên quan đến công việc.
<br>- Ưu tiên các bạn từng làm Đội trưởng bảo vệ, quản lý an ninh siêu thị/nhà hàng - khách sạn
<br>- Có khả năng đi công tác thường xuyên, sẽ có thời gian làm việc linh hoạt tùy phân công Quản lý hoặc tình hình An ninh', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam 
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh 
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần 
<br>- Du lịch Teambuilding hàng năm 
<br>- Thưởng cuối năm hấp dẫn ', N'TP.HCM,...', N'THPT trở lên', N'1 năm trở lên', N'01/07/2023', 74, 4)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (19, N'Giám sát An Ninh Bách Hóa CDAP', N'- Phối hợp phòng ban, siêu thị huấn luyện và triển khai nhân viên bảo vệ nội bộ (Tiếp đón khách hàng) tại các siêu thị được phân công.
<br>- Giám sát hoạt động của các đội bảo vệ thuê ngoài.
<br>- Đảm bảo an ninh, trật tự tại tất cả các siêu thị, kho, văn phòng trên địa bàn được phân công và các sự kiện của Công ty.
<br>- Đảm bảo công tác PCCC theo quy định của pháp luật về PCCC
<br>- Đảm bảo an toàn về tài sản của công ty, nhân viên, khách hàng và đối tác đến giao dịch, làm việc', N'- Nam: từ 25 – 35 tuổi.
<br>- Tốt nghiệp THPT trở lên.
<br>- Sử dụng thành thạo vi tính văn phòng.
<br>- Tác phong nhanh nhẹn, không ngại va chạm, biết về võ thuật là một lợi thế
<br>- Tính tình điềm đạm, bình tĩnh, lời nói rõ ràng.
<br>- Chấp nhận sự điều động đột xuất khi được Trưởng An ninh yêu cầu liên quan đến công việc.
<br>- Ưu tiên các bạn từng làm Đội trưởng bảo vệ, quản lý an ninh siêu thị/nhà hàng - khách sạn
<br>- Có khả năng đi công tác thường xuyên, sẽ có thời gian làm việc linh hoạt tùy phân công Quản lý hoặc tình hình An ninh', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam 
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh 
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần 
<br>- Du lịch Teambuilding hàng năm 
<br>- Thưởng cuối năm hấp dẫn ', N'TP.HCM,...', N'THPT trở lên', N'1 năm trở lên', N'01/07/2023', 34, 4)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (20, N'Nhân viên Sơ chế đóng gói Điện Máy CDAP', N'- Cân hàng, kiểm tra hàng hóa: rau, củ, quả, trái cây, nhập kho theo đúng yêu cầu, qui định và đạt tiêu chuẩn.
<br>- Hằng ngày chia hàng, đóng gói hàng hóa theo sự sắp xếp của trưởng nhóm
<br>- Vận chuyển, khuân vác hàng hóa để chất hàng vào đúng khu vực 
<br>- Dọn dẹp vệ sinh sau khi hoàn tất công việc
<br>- Thu nhập: Theo năng suất
<br>- Thời gian làm việc  Kho sơ chế ca đêm Điện Máy Xanh: Ca đêm cố định: 17g00 - 05g00', N'- Nam/Nữ: sức khoẻ tốt, chăm chỉ
<br>- Chịu khó trong công việc, tính kiên nhẫn
<br>- Có tinh thần tập thể, trách nhiệm chung trong công việc.
<br>- Tuân thủ nội qui, qui định, giá trị cốt lõi công ty.
<br>- Có thể làm ca đêm cố định.', N'- Công việc ổn định lâu dài - chế độ đầy đủ - môi trường làm việc chuyên nghiệp
<br>- Thu nhập tăng theo năng suất làm việc trong ca của bạn', N'TP.HCM,...', N'Không yêu cầu', N'Không cần kinh nghiệm', N'01/07/2023', 23, 5)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (21, N'Nhân viên Sơ chế đóng gói Bách Hóa CDAP', N'- Cân hàng, kiểm tra hàng hóa: rau, củ, quả, trái cây, nhập kho theo đúng yêu cầu, qui định và đạt tiêu chuẩn.
<br>- Hằng ngày chia hàng, đóng gói hàng hóa theo sự sắp xếp của trưởng nhóm
<br>- Vận chuyển, khuân vác hàng hóa để chất hàng vào đúng khu vực 
<br>- Dọn dẹp vệ sinh sau khi hoàn tất công việc
<br>- Thu nhập: Theo năng suất
<br>- Thời gian làm việc  Kho sơ chế ca đêm Bách Hóa Xanh: Ca đêm cố định: 17g00 - 05g00', N'- Nam/Nữ: sức khoẻ tốt, chăm chỉ
<br>- Chịu khó trong công việc, tính kiên nhẫn
<br>- Có tinh thần tập thể, trách nhiệm chung trong công việc.
<br>- Tuân thủ nội qui, qui định, giá trị cốt lõi công ty.
<br>- Có thể làm ca đêm cố định.', N'- Công việc ổn định lâu dài - chế độ đầy đủ - môi trường làm việc chuyên nghiệp
<br>- Thu nhập tăng theo năng suất làm việc trong ca của bạn', N'TP.HCM,...', N'Không yêu cầu', N'Không cần kinh nghiệm', N'01/07/2023', 11, 5)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (22, N'Công tác viên Sơ chế đóng gói Bách Hóa CDAP', N'- Rửa trứng.
<br>- Đóng tem nhãn.
<br>- Đóng trứng theo đúng quy cách.
<br>- Vận chuyển hàng thành phẩm.', N'- Giới tính: ưu tiên Nam, tuổi từ 18 - 40 tuổi
<br>- Kinh nghiệm: không yêu cầu.
<br>- Nhanh nhẹn, cẩn thận, trung thực, chịu khó, có trách nhiệm, chịu được áp lực công việc, có tinh thần gắn bó lâu dài với Công ty.
<br>** Thu nhập
<br>Lương: 35k/ giờ ( Từ 7,000,000 – 9,000,000 )
<br>** Thời gian làm việc
<br>- Thời gian làm việc từ thứ 2 đến thứ 7 hàng tuần,
<br>- Ca 1: Sáng 07:00-12:00, chiều 13:00 – 16:00 ( Nghỉ ngơi 60 phút )
<br>- Ca 2 buổi đêm: Từ 16:00 – 1:00 ( Nghỉ ngơi 60 phút)', N'- Công việc ổn định lâu dài - chế độ đầy đủ - môi trường làm việc chuyên nghiệp
<br>- Thu nhập tăng theo năng suất làm việc trong ca của bạn', N'TP.HCM,...', N'Không yêu cầu', N'Không yêu cầu', N'01/07/2023', 10, 5)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (23, N'Công tác viên Sơ chế đóng gói Điện Máy CDAP', N'- Rửa trứng.
<br>- Đóng tem nhãn.
<br>- Đóng trứng theo đúng quy cách.
<br>- Vận chuyển hàng thành phẩm.', N'- Giới tính: ưu tiên Nam, tuổi từ 18 - 40 tuổi
<br>- Kinh nghiệm: không yêu cầu.
<br>- Nhanh nhẹn, cẩn thận, trung thực, chịu khó, có trách nhiệm, chịu được áp lực công việc, có tinh thần gắn bó lâu dài với Công ty.
<br>** Thu nhập
<br>Lương: 35k/ giờ ( Từ 7,000,000 – 9,000,000 )
<br>** Thời gian làm việc
<br>- Thời gian làm việc từ thứ 2 đến thứ 7 hàng tuần,
<br>- Ca 1: Sáng 07:00-12:00, chiều 13:00 – 16:00 ( Nghỉ ngơi 60 phút )
<br>- Ca 2 buổi đêm: Từ 16:00 – 1:00 ( Nghỉ ngơi 60 phút)', N'- Công việc ổn định lâu dài - chế độ đầy đủ - môi trường làm việc chuyên nghiệp
<br>- Thu nhập tăng theo năng suất làm việc trong ca của bạn', N'TP.HCM,...', N'Không yêu cầu', N'Không yêu cầu', N'01/07/2023', 32, 5)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (26, N'Công tác viên Thương Hiệu tuyển dụng', N'- Thỏa sức sáng tạo content và hình ảnh cùng Team xây dựng Thương hiệu Tuyển Dụng
<br>- Giới thiệu ứng viên, góp phần là đại sứ tuyển dụng An Khang
<br>- Lên ý tưởng viết content trên các kênh social cho mảng tuyển dụng
<br>- Thực hiện Đăng tin tuyển dụng/ share/ seeding trên facebook..
<br>- Thực hiện các clip ngắn tiktok hoặc video tuyển dụng khi cần', N'- Đang là sinh viên chưa ra trường, có thời gian thực tập/ kiến tập tại Doanh nghiệp
<br>- Năng động, sáng tạo, tự tin
<br>- Sử dụng tốt vi tính văn phòng', N'- Trải nghiệm cơ hội cùng làm việc tại Phòng nhân sự của tập đoàn bán lẻ hàng đầu Việt Nam ( Quy mô công ty hơn 80.000 nhân viên)
<br>- Môi trường làm việc trẻ trung, năng động
<br>- Cơ hội được Hướng dẫn, chia sẻ và học hỏi từ đội ngũ các Anh Chị  dày dặn kịnh nghiệm trong lĩnh vực Nhân sự/ Truyền thông PR
<br>- Nhận thu nhập hấp dẫn theo chính sách', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'Không cần kinh nghiệm', N'01/07/2023', 23, 11)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (27, N'Nhân viên Trade Marketing', N'- Khảo sát, lên kế hoạch và triển khai các hoạt động truyền thông cho siêu thị mới khai trương
<br>- Thực hiện báo cáo tổng kết, đánh giá hiệu quả các hoạt động marketing
<br>- Triển khai và kiểm soát đảm bảo hình ảnh POSM ở siêu thị chạy đúng thiết kế và CTKM hệ thống
<br>- Quản lý và cung cấp vật phẩm quảng cáo và các thiết bị công cụ hỗ trợ cho các chương trình Marketing
<br>- Thực hiện các công việc hành chính khác như: Làm giấy phép khuyến mãi, nghiệm thu, thanh toán….', N'- Trung thực, có trách nhiệm, máu lửa
<br>- Khả năng quản lý thời gian , sắp xếp tổ chức công việc
<br>- Sức khỏe tốt, thời gian di chuyển đi công tác nhiều
<br>- Có kiến thức căn bản về Marketing', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam 
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh 
<br>- Cọ xát kinh nghiệm từ đội ngũ nhân viên dày dặn kinh nghiệm 
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần 
<br>- Du lịch Teambuilding hàng năm 
<br>- Thưởng cuối năm hấp dẫn ', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'Không cần kinh nghiệm', N'01/07/2023', 29, 11)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (28, N'Nhân viên Graphic Designer', N'- Làm việc cùng team Digital Marketing MWG
<br>- Thiết kế các ấn phẩm Marketing online: Banner tĩnh/ động HTML (bao gồm cả banner quảng cáo digital, website),
<br>- Diễn hoạt Video (Video animation)
<br>- Xử lí/ cắt ghép Video, xử lí hình ảnh (retouch)
<br>- Tham gia brainstorm & creative cho các campaign lớn.', N'- Nam hoặc nữ, độ tuổi 20-28, tốt nghiệp CĐ/ĐH
<br>- Thân thiện, hòa đồng, năng động
<br>- Sử dụng thành thạo phần mềm Adobe Photoshop, Illustrator, After Effect, Premiere....
<br>- Ưu tiên ứng viên có 1 năm kinh nghiệm trở lên', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam
<br>- Văn hóa công ty khác biệt (5 Giá trị cốt lõi là trọng tâm)
<br>- Môi trường làm việc trẻ trung, năng động, trao quyền
<br>- Văn phòng trụ sở hiện đại, tiện nghi và thoải mái
<br>- Thưởng cuối năm theo KPI ( từ 3-8 tháng thu nhập- số liệu 2020)', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'1 năm trở lên', N'01/07/2023', 30, 11)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (29, N'Nhân viên Digital Marketing', N'- Lên kế hoạch và triển khai các hoạt động online cho các chương trình của công ty trên Website, các kênh quảng cáo trực tuyến (Google Adwords, Facebook Ads…), social media (Facebook, Instagram…) ...
<br>- Phân tích dữ liệu, báo cáo nhằm đánh giá hiệu quả chiến dịch marketing online, biết sử dụng Google Analytics.', N'- Tốt nghiệp Cao đẳng trở lên chuyên ngành Marketing, PR
<br>- Có ít nhất 1 năm kinh nghiệm vị trí Digital Marketing, ưu tiên từng làm qua các trang E-commerce
<br>- Có khả năng sáng tạo vô bờ bến, viết content trôi chảy như tiểu thuyết ngôn tình, chủ động trong công việc
<br>- Tiếng Anh thành thạo là 1 lợi thế', N'- Môi trường làm việc trẻ trung, năng động, trao quyền
<br>- Văn phòng trụ sở hiện đại, tiện nghi và thoải mái', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'1 năm trở lên', N'01/07/2023', 43, 11)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (30, N'Chuyên viên Marketing Thế Giới Di Động CDAP', N'- Làm việc với các nhãn hàng lên kế hoạch, thực hiện triển khai các campaign ra mắt sản phẩm công nghệ mới.
<br>- Phối hợp với các bộ phận/phòng ban khác để thực hiện các chiến dịch truyền thông Marketing.
<br>- Quản lý hình ảnh, nội dung chương trình Marketing của hệ thống TGDĐ
<br>- Theo dõi, kiểm soát và report chi phí Marketing của chuỗi Marketing.
<br>- Thực hiện các nhiệm vụ khác được giao bởi quản lí trực tiếp.', N'- Nam/ Nữ, tốt nghiệp CĐ/ĐH các chuyên ngành liên quan. 
<br>- 1 đến 2 năm kinh nghiệm liên quan Marketing.
<br>- Sáng tạo, kỹ năng giao tiếp và thuyết trình tốt, siêng năng, sẵn sàng học hỏi.
<br>- Sử dụng thành thạo tin học văn phòng và nắm căn bản các phần mềm Pts/Ai.
<br>- Giao tiếp tiếng Anh là một lợi thế.
<br>- Ngoại hình ưa nhìn.', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam 
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh
<br>- Cọ xát kinh nghiệm từ đội ngũ nhân viên dày dặn kinh nghiệm
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần
<br>- Du lịch Teambuilding hàng năm
<br>- Thưởng cuối năm hấp dẫn ', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'1 năm trở lên', N'01/07/2023', 48, 11)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (31, N'Nhân viên kế toán Bách Hóa CDAP', N'- Kiểm tra chứng từ, hóa đơn từ các siêu thị chuyển về.
<br>- Kiểm soát thu chi do thu ngân các siêu thị gửi về.
<br>- Kiểm soát chứng từ, hóa đơn mua hàng từ các nhà cung cấp.
<br>- Kiểm soát việc gửi tiền vào ngân hàng theo đúng quy định của Công ty.
<br>- Kê khai thuế vào cuối tháng.
<br>- Hỗ trợ thu ngân giải quyết các vấn đề phát sinh.
<br>- Thực hiện công việc kiểm kê định kì.', N'- Tốt nghiệp Cao đẳng trở lên chuyên ngành: Kế Toán, Kiểm Toán…
<br>- Có kiến thức tốt chuyên ngành kế toán, am hiểu luật về thuế, luật kế toán,… Sử dụng tốt excel.
<br>- Cẩn thận, tỉ mỉ, trung thực, chịu được áp lực cao trong công việc.', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh
<br>- Cọ xát kinh nghiệm từ đội ngũ nhân viên dày dặn kinh nghiệm
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần
<br>- Du lịch Teambuilding hàng năm
<br>- Thưởng cuối năm hấp dẫn', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'Không cần kinh nghiệm', N'01/07/2023', 27, 12)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (32, N'Nhân viên kế toán Điện Máy CDAP', N'- Kiểm tra chứng từ, hóa đơn từ các siêu thị chuyển về.
<br>- Kiểm soát thu chi do thu ngân các siêu thị gửi về.
<br>- Kiểm soát chứng từ, hóa đơn mua hàng từ các nhà cung cấp.
<br>- Kiểm soát việc gửi tiền vào ngân hàng theo đúng quy định của Công ty.
<br>- Kê khai thuế vào cuối tháng.
<br>- Hỗ trợ thu ngân giải quyết các vấn đề phát sinh.
<br>- Thực hiện công việc kiểm kê định kì.', N'- Tốt nghiệp Cao đẳng trở lên chuyên ngành: Kế Toán, Kiểm Toán…
<br>- Có kiến thức tốt chuyên ngành kế toán, am hiểu luật về thuế, luật kế toán,… Sử dụng tốt excel.
<br>- Cẩn thận, tỉ mỉ, trung thực, chịu được áp lực cao trong công việc.', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh
<br>- Cọ xát kinh nghiệm từ đội ngũ nhân viên dày dặn kinh nghiệm
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần
<br>- Du lịch Teambuilding hàng năm
<br>- Thưởng cuối năm hấp dẫn', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'Không cần kinh nghiệm', N'01/07/2023', 32, 12)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (33, N'Nhân viên kế toán Thế Giới Di Động CDAP', N'- Kiểm tra chứng từ, hóa đơn từ các siêu thị chuyển về.
<br>- Kiểm soát thu chi do thu ngân các siêu thị gửi về.
<br>- Kiểm soát chứng từ, hóa đơn mua hàng từ các nhà cung cấp.
<br>- Kiểm soát việc gửi tiền vào ngân hàng theo đúng quy định của Công ty.
<br>- Kê khai thuế vào cuối tháng.
<br>- Hỗ trợ thu ngân giải quyết các vấn đề phát sinh.
<br>- Thực hiện công việc kiểm kê định kì.', N'- Tốt nghiệp Cao đẳng trở lên chuyên ngành: Kế Toán, Kiểm Toán…
<br>- Có kiến thức tốt chuyên ngành kế toán, am hiểu luật về thuế, luật kế toán,… Sử dụng tốt excel.
<br>- Cẩn thận, tỉ mỉ, trung thực, chịu được áp lực cao trong công việc.', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh
<br>- Cọ xát kinh nghiệm từ đội ngũ nhân viên dày dặn kinh nghiệm
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần
<br>- Du lịch Teambuilding hàng năm
<br>- Thưởng cuối năm hấp dẫn', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'Không cần kinh nghiệm', N'01/07/2023', 11, 12)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (34, N'UI Designer', N'- Hỗ trợ thiết kế cho các Landingpage chương trình bán hàng, Banner,...cho hệ thống Website: Thegioididong.com, Dienmayxanh.com, các website thuộc chuỗi AVA, Topzone, và một số website thuộc tập đoàn do team phụ trách.
<br>- Tham gia phối hợp với team PM, hỗ trợ phần thiết kế UI cho các dự án website.
<br>- Phối hợp với các ngành hàng, IT và các bộ phận liên quan để thiết kế, tư vấn giải pháp cho các chương trình bán hàng Online và các tính năng trên Website.
<br>- Đưa ra phương án cải thiện sản phẩm dựa trên số liệu, khảo sát về hành vi người dùng.', N'- Sử dụng thành thạo các công cụ đồ họa trong bộ Adobe như: Photoshop, Illustrator. Biết After Effect là 1 lợi thế.
<br>- Biết sử dụng Figma (bắt buộc)
<br>- Am hiểu về hành vi của người dùng trên Desktop, Mobile.
<br>- Có ít nhất 01 năm kinh nghiệm làm việc trong lĩnh vực thiết kế đồ họa / UI Design.
<br>- Có thẩm mỹ tốt, khả năng tư duy, năng động trong công việc.
<br>- Có kinh nghiệm làm việc trong mảng Thương Mại Điện Tử là 1 lợi thế', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam 
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh
<br>- Cọ xát kinh nghiệm từ đội ngũ nhân viên dày dặn kinh nghiệm
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần
<br>- Du lịch Teambuilding hàng năm
<br>- Thưởng cuối năm hấp dẫn ', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'1 năm trở lên', N'01/07/2023', 42, 13)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (35, N'Nhân viên thiết kế đồ họa', N'- Làm việc tại BP. Thiết Kế
<br>- Thiết kế hình ảnh website, brochure, posm, logo
<br>- Tạo mẫu thiết kế, lên ý tưởng cùng Team
<br>- Chuẩn bị hình ảnh minh hoạ, phác thảo
<br>- Tham gia brainstorm & creative cho các campaign lớn.', N'- Nam hoặc nữ, độ tuổi 20-28, tốt nghiệp CĐ/ĐH chuyên ngành thiết kế đồ hoạ, mỹ thuật
<br>- Thân thiện, hòa đồng, năng động
<br>- Sử dụng thành thạo phần mềm Adobe Photoshop, Illustrator...
<br>- Ưu tiên ứng viên có 1 năm kinh nghiệm.', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam
<br>- Văn hóa công ty khác biệt (5 Giá trị cốt lõi là trọng tâm)
<br>- Môi trường làm việc trẻ trung, năng động, trao quyền
<br>- Văn phòng trụ sở hiện đại, tiện nghi và thoải mái
<br>- Thưởng cuối năm theo KPI', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'1 năm trở lên', N'01/07/2023', 17, 13)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (36, N'Nhân viên Biên Tập Hình Ảnh Media', N'- Chỉnh sửa, Retouch hình ảnh sản phẩm đã được chụp
<br>- Kiểm soát chất lượng hình ảnh đã sản xuất trong ngày và toàn bộ hình ảnh đang có trên các website theo guideline đã có sẵn
<br>- Tham gia nâng cấp chất lượng hình ảnh của công ty', N'- Tốt nghiệp TC/CĐ/ĐH trở lên, Tuổi từ 20 - 30.
<br>- Sử dụng thành thạo các phần mềm chỉnh sửa hình ảnh như Photoshop, LR, AI...
<br>- Sử dụng được Wacom là một lợi thế
<br>- Giao tiếp tốt, hoà đồng và có khả năng làm việc nhóm tốt.', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh
<br>- Cọ xát kinh nghiệm từ đội ngũ nhân viên dày dặn kinh nghiệm
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần
<br>- Du lịch Teambuilding hàng năm
<br>- Thưởng cuối năm hấp dẫn', N'TP.HCM,...', N'Trung cấp/Cao Đẳng/ Đại Học', N'Từ 1 năm', N'01/07/2023', 53, 13)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (37, N'Product Manager website Thế Giới Di Động CDAP', N'1. Phân tích yêu cầu kinh doanh để từ đó đưa ra Quy trình (Workflow) - Tính năng (features) - Trải nghiệm người dùng (UX/UI) tối ưu cho hệ thống Website, App của Thegioiddiong.com, DienmayXanh.com,...
<br>2. Nghiên cứu, khảo sát và phân tích dữ liệu về hành vi người dùng (Định tính và Định lượng) để đưa ra các phương án cải thiện sản phẩm. Google Analytics + Heatmap tracking + Group Survey là phương pháp team thường dùng.
<br>3. Phối hợp cùng UI Designer hoặc (tốt hơn nếu) bạn có thể chủ động thiết kế UI/UX. Bạn sẽ được huấn luyện sử dụng công cụ thiết kế Figma + Design System Library để thiết kế theo Styleguide của team.
<br>4. Làm việc với đội Business Analyst và Developers để triển khai giao diện thành tính năng lên web/app hoàn chỉnh. Viết tài liệu mô tả tính năng (Documentation).', N'1. Có kỹ năng đặt câu hỏi để hiểu vấn đề tận gốc. Có khả năng chủ động giải quyết vấn đề và có tư duy phản biện. 
<br>2. Biết sử dụng 1 trong các công cụ đồ họa: Figma, Sketch, AdobeXD, Photoshop, Wireframe tools (vd Balsamiq)
<br>3. Có kiến thức cơ bản về UI/UX. Mắt thẩm mỹ tốt, đánh giá được thiết kế xấu - đẹp - hợp lý - không hợp lý ở điểm gì
<br>4. Có kiến thức, kỹ năng về khảo sát khách hàng
<br>5. Có kiến thức cơ bản về Google Analytics
<br>6. Có kinh nghiệm làm việc trong mảng Thương Mại Điện Tử là 1 lợi thế', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam 
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh
<br>- Cọ xát kinh nghiệm từ đội ngũ nhân viên dày dặn kinh nghiệm
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần
<br>- Du lịch Teambuilding hàng năm
<br>- Thưởng cuối năm hấp dẫn ', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'1 năm trở lên', N'01/07/2023', 28, 13)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (38, N'Product Manager website Điện Máy CDAP', N'1. Phân tích yêu cầu kinh doanh để từ đó đưa ra Quy trình (Workflow) - Tính năng (features) - Trải nghiệm người dùng (UX/UI) tối ưu cho hệ thống Website, App của Thegioiddiong.com, DienmayXanh.com,...
<br>2. Nghiên cứu, khảo sát và phân tích dữ liệu về hành vi người dùng (Định tính và Định lượng) để đưa ra các phương án cải thiện sản phẩm. Google Analytics + Heatmap tracking + Group Survey là phương pháp team thường dùng.
<br>3. Phối hợp cùng UI Designer hoặc (tốt hơn nếu) bạn có thể chủ động thiết kế UI/UX. Bạn sẽ được huấn luyện sử dụng công cụ thiết kế Figma + Design System Library để thiết kế theo Styleguide của team.
<br>4. Làm việc với đội Business Analyst và Developers để triển khai giao diện thành tính năng lên web/app hoàn chỉnh. Viết tài liệu mô tả tính năng (Documentation).', N'1. Có kỹ năng đặt câu hỏi để hiểu vấn đề tận gốc. Có khả năng chủ động giải quyết vấn đề và có tư duy phản biện. 
<br>2. Biết sử dụng 1 trong các công cụ đồ họa: Figma, Sketch, AdobeXD, Photoshop, Wireframe tools (vd Balsamiq)
<br>3. Có kiến thức cơ bản về UI/UX. Mắt thẩm mỹ tốt, đánh giá được thiết kế xấu - đẹp - hợp lý - không hợp lý ở điểm gì
<br>4. Có kiến thức, kỹ năng về khảo sát khách hàng
<br>5. Có kiến thức cơ bản về Google Analytics
<br>6. Có kinh nghiệm làm việc trong mảng Thương Mại Điện Tử là 1 lợi thế', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam 
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh
<br>- Cọ xát kinh nghiệm từ đội ngũ nhân viên dày dặn kinh nghiệm
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần
<br>- Du lịch Teambuilding hàng năm
<br>- Thưởng cuối năm hấp dẫn ', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'1 năm trở lên', N'01/07/2023', 34, 13)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (39, N'Software Developer', N'- Xây dựng và vận hành các ứng dụng công nghệ giúp cho việc vận hành chuỗi trong tập đoàn.
<br>- Nghiên cứu và ứng dụng các công nghệ mới để tối ưu các hệ thống và quy trình nghiệp vụ đang có.
<br>- Phát triển các sản phẩm dựa trên thế mạnh của từng bạn
<br>- Kỹ năng lập trình hướng đối tượng, .Net/.NetCore, Java, ASP.Net, JavaScript, HTML, WebAPI.', N'- Có kinh nghiệm React Native và ReactJs là một lợi thế
<br>- Tính tính hòa đồng vui vẻ, yêu thích làm việc nhóm
<br>- Khả năng đeo bám và xử lý tận cùng vấn đề
<br>- Yêu thích nghiên cứu và ứng dụng các công nghệ mới để tối ưu các hệ thống và quy trình nghiệp vụ đang có.
<br>- Có khả năng phân tích vấn đề khoa học và xử lý sự cố nhanh nhạy.', N'- Không gian làm việc mở, hiện đại, nhiều tiện ích và hoạt động vui chơi giải trí cho nhân viên 
<br>- Vận hành theo mô hình DevOps, cùng văn hóa No Silo giúp cho mọi nhân viên đều được thể hiện quan điểm; ý kiến của mình được phản hồi liên tục từ đó tạo ra nhiều ý tưởng mới cho sản phẩm
<br>- "MWG không có người sử dụng lao động và người lao động. MWG chỉ có một thủy thủ đoàn 75.000 người cùng ra khơi đánh cá và cùng chia sẻ thành quả"
<br>- Cơ hội chinh chiến nhiều dự án mở rộng kinh doanh trong năm mới và thăng tiến sự nghiệp cùng với sự phát triển của tập đoàn.
<br>- Đảm bảo được đầy đủ quyền lợi: đóng BHXH trên tổng lương, BHSK, xe đưa đón, mua hàng nội bộ, ….', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'1 năm trở lên', N'01/07/2023', 21, 14)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (40, N'Nhân viên IT Siêu Thị', N'- Quản trị hệ thống mạng (firewall, switch, wifi...)
<br>- Quản trị hệ thống camera, máy tính và các thiết bị ngoại vi 
<br>- Hỗ trợ, hướng dẫn người dùng các vấn đề liên quan.', N'- Có kiến thức về firewall, switch cisco, wifi, camera, máy in, hỗ trợ người dùng.
<br>- Tốt nghiệp từ trung cấp CNTT trở lên hoặc tương đương.
<br>- Thân thiện, luôn nêu cao tinh thần Yêu thương & Hỗ trợ đồng đội
<br>- Sẵn sàng di chuyển và làm việc linh hoạt', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh
<br>- Cọ xát kinh nghiệm từ đội ngũ nhân viên dày dặn kinh nghiệm - Ký HĐLĐ, Phúc lợi đầy đủ tăng dần
<br>- Du lịch Teambuilding hàng năm
<br>- Thưởng cuối năm hấp dẫn', N'TP.HCM,...', N'Trung cấp/Cao Đẳng/ Đại Học', N'Không cần kinh nghiệm', N'01/07/2023', 35, 14)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (41, N'Nhân viên IT Phân tích nghiệp vụ', N'- Làm việc trực tiếp với khách hàng để thu thập và làm rõ các yêu cầu từ khách hàng
<br>- Thực hiện phân tích và xây dựng tài liệu đặc tả yêu cầu nghiệp vụ, tài liệu thiết kế các trường hợp sử dụng (usecase), giao diện mẫu (prototype, wireframe) và các quy trình nghiệp vụ (workflow) cho đội phát triển phần mềm
<br>- Phân tích các rủi ro liên quan đến các sản phẩm phần mềm, cơ sở dữ liệu và đề xuất các giải pháp khắc phục (nếu có); đóng góp các ý kiến, sáng kiến cải tiến sản phẩm phần mềm, giải pháp công nghệ
<br>- Truyền đạt nội dung, hỗ trợ các thành viên dự án để làm rõ yêu cầu của khách hàng cần đáp ứng', N'- Ứng viên từ 2 năm kinh nghiệm làm việc kỹ thuật hoặc công việc liên quan.
<br>- Có kinh nghiệm ghi lại yêu cầu người dùng, quy trình kinh doanh, phân tích nghiệp vụ, phát triển hệ thống và đặc tả phần mềm.
<br>- Tốt nghiệp chuyên ngành Khoa học máy tính, ngành Kinh tế hoặc các lĩnh vực kỹ thuật liên quan hoặc có kinh nghiệm thực tế về lĩnh vực này
<br>- Có khả năng xây dựng và thiết kế tài liệu đặc tả yêu cầu nghiệp vụ, xây dựng kịch bản kiểm thử (UAT)', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh
<br>- Cọ xát kinh nghiệm từ đội ngũ nhân viên dày dặn kinh nghiệm
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần
<br>- Du lịch Teambuilding hàng năm
<br>- Thưởng cuối năm hấp dẫn', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'1 năm trở lên', N'01/07/2023', 18, 14)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (42, N'Nhân viên IT Lập trình Database', N'- Phát triển, cập nhật, bảo trì hệ thống report phức tạp gồm báo cáo realtime,
<br>- Báo cáo phân tích và forecasting
<br>- Kiểm tra và xử lý các điểm thắt cổ chai trong hệ thống
<br>- Liên tục sáng tạo và cải tiến công việc để tăng hiệu quả công việc
<br>- Nghiên cứu và đánh giá các công nghệ mới để áp dụng vào thực tế', N'- Có kinh nghiệm làm việc với Cơ sở dữ liệu quan hệ (PostgreSQL là một lợi thế)
<br>- Mạnh về kỹ năng phân tích và tối ưu câu truy vấn
<br>- Có kinh nghiệm giải quyết Transaction Locking', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh
<br>- Cọ xát kinh nghiệm từ đội ngũ nhân viên dày dặn kinh nghiệm
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần
<br>- Du lịch Teambuilding hàng năm
<br>- Thưởng cuối năm hấp dẫn', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'1 năm trở lên', N'01/07/2023', 43, 14)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (43, N'Nhân viên IT Lập trình CRM', N'- Phát triển hệ thống công nghệ thông tin quản lý bán hàng, khách hàng', N'- Có kinh nghiệm lập trình web bằng ASP.Net MVC từ 01 năm trở lên.
<br>- Tốt nghiệp Đại học / Cao đẳng chuyên ngành công nghệ thông tin / phần mềm / hệ thống thông tin.
<br>- Thành thạo C#, HTML, CSS, Javascript,Oracle, SQL.
<br>- Ưu tiên ứng viên đã từng làm việc với các dự án về CRM, Insite
<br>- Hiểu biết các framework Angular, Bootstrap, ... là một lợi thế.', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh
<br>- Cọ xát kinh nghiệm từ đội ngũ nhân viên dày dặn kinh nghiệm
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần
<br>- Du lịch Teambuilding hàng năm
<br>- Thưởng cuối năm hấp dẫn', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'1 năm trở lên', N'01/07/2023', 56, 14)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (44, N'Công tác viên Phát triển kinh doanh', N'- Tìm kiếm seller/khách hàng & phát triển thị trường cùng với Nhân viên kinh doanh.
<br>- Tư vấn và trao đổi các chính sách hấp dẫn
<br>- Mời khách hàng/seller tham dự các Chương trình, chính sách từ Sàn mỗi tháng', N'- Là sinh viên của các trường đại học yêu thích kinh doanh
<br>- Ưu tiên sinh viên năm 1-2-3 hoặc TTS
<br>- Chưa có kinh nghiệm sẽ được đào tạo.
<br>- Không cần ngoại ngữ (Biết ngoại ngữ là một lợi thế).
<br>- Có kinh nghiệm hoạt động tại các CLB, Đoàn, Hội là một lợi thế.
<br>- Chịu khó và chịu được áp lực cá nhân', N'- Có hỗ trợ dấu mộc xác nhận quá trình thực tập.
<br>- Thu nhập: theo doanh số KH kiếm được, từ 3.000.000 VND - 5.000.000 VND hoặc cao hơn.
<br>- Thời gian làm việc: Linh động trong mùa dịch (tối thiểu 4 buổi/tuần).
<br>- Được đào tạo và phát triển năng lực THỰC TẾ: Kỹ năng quản lý thời gian, kỹ năng thiết lập mục tiêu, kỹ năng làm việc đội nhóm, kỹ năng bán hàng.', N'TP.HCM,...', N'Trung cấp/Cao Đẳng/ Đại Học', N'Không cần kinh nghiệm', N'01/07/2023', 12, 15)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (45, N'Nhân viên Content sản phẩm Thế Giới Di Động CDAP', N'- Quản lý thực tập sinh, CTV (4-7 bạn) sản xuất bài viết, hình ảnh, thông số kỹ thuật SP số lượng lớn ( có thể lên đến 200 SP/tuần)
<br>- Quản lý thực tập sinh, CTV sản xuất nội dung giải thích công nghệ, tư vấn chọn mua, hướng dẫn sử dụng SP
<br>- Khảo sát Khách hàng để thực hiện tối ưu các tính năng, bộ lọc, kết quả tìm kiếm... giúp khách hàng mua SP
<br>- Phối hợp team SEO onpage 100% SP on top google tìm kiếm
<br>- Phối hợp team chụp hình, quay clip sản phẩm đảm bảo SP có hình ảnh & video có yếu tố trải nghiệm
<br>- Các công việc khác do trưởng nhóm phân công', N'- Có khả năng chịu được áp lực khối lượng công việc lớn, nhịp độ nhanh, đa nhiệm
<br>- Có kinh nghiệm làm việc, quản lý thực tập sinh, cộng tác viên nội dung hoặc lĩnh vực bất kì
<br>- Viết tốt, diễn đạt súc tích, rành mạch, dễ hiểu, đúng chính tả.
<br>- Yêu thích và hay tìm hiểu lĩnh vực công nghệ, điện máy, điện gia dụng…
<br>- Biết xử lý hình ảnh bằng Photoshop hoặc Figma cơ bản (cắt, ghép, chỉnh màu, chỉnh sáng…)
<br>- Tin học văn phòng (soạn thảo văn bản, xử lý dữ liệu bằng hàm excel, làm file trình chiếu, Google Drive...)
<br>- Có tư duy về đo lường & tối ưu hiệu quả công viêc', N'- Môi trường làm việc chuyên nghiệp, lớn mạnh (Bộ phận content + SEO >20 người)
<br>- Cơ hội phát triển bản thân, được thúc đẩy sáng tạo ra giá trị mới cho bộ phận, công ty
<br>- Cọ xát & chia sẻ từ đội ngũ đồng nghiệp, quản lý dày dặn kinh nghiệm
<br>- Cơ hội thăng tiến rõ ràng
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần, Du lịch Team building hàng năm
<br>- Thưởng cuối năm hấp dẫn (3-9 tháng theo KPI – Số liệu 2020)', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'6 tháng/ 1 năm trở lên', N'01/07/2023', 73, 15)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (46, N'Nhân viên Content sản phẩm Điện Máy CDAP', N'- Quản lý thực tập sinh, CTV (4-7 bạn) sản xuất bài viết, hình ảnh, thông số kỹ thuật SP số lượng lớn ( có thể lên đến 200 SP/tuần)
<br>- Quản lý thực tập sinh, CTV sản xuất nội dung giải thích công nghệ, tư vấn chọn mua, hướng dẫn sử dụng SP
<br>- Khảo sát Khách hàng để thực hiện tối ưu các tính năng, bộ lọc, kết quả tìm kiếm... giúp khách hàng mua SP
<br>- Phối hợp team SEO onpage 100% SP on top google tìm kiếm
<br>- Phối hợp team chụp hình, quay clip sản phẩm đảm bảo SP có hình ảnh & video có yếu tố trải nghiệm
<br>- Các công việc khác do trưởng nhóm phân công', N'- Có khả năng chịu được áp lực khối lượng công việc lớn, nhịp độ nhanh, đa nhiệm
<br>- Có kinh nghiệm làm việc, quản lý thực tập sinh, cộng tác viên nội dung hoặc lĩnh vực bất kì
<br>- Viết tốt, diễn đạt súc tích, rành mạch, dễ hiểu, đúng chính tả.
<br>- Yêu thích và hay tìm hiểu lĩnh vực công nghệ, điện máy, điện gia dụng…
<br>- Biết xử lý hình ảnh bằng Photoshop hoặc Figma cơ bản (cắt, ghép, chỉnh màu, chỉnh sáng…)
<br>- Tin học văn phòng (soạn thảo văn bản, xử lý dữ liệu bằng hàm excel, làm file trình chiếu, Google Drive...)
<br>- Có tư duy về đo lường & tối ưu hiệu quả công viêc', N'- Môi trường làm việc chuyên nghiệp, lớn mạnh (Bộ phận content + SEO >20 người)
<br>- Cơ hội phát triển bản thân, được thúc đẩy sáng tạo ra giá trị mới cho bộ phận, công ty
<br>- Cọ xát & chia sẻ từ đội ngũ đồng nghiệp, quản lý dày dặn kinh nghiệm
<br>- Cơ hội thăng tiến rõ ràng
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần, Du lịch Team building hàng năm
<br>- Thưởng cuối năm hấp dẫn (3-9 tháng theo KPI – Số liệu 2020)', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'6 tháng/ 1 năm trở lên', N'01/07/2023', 24, 15)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (47, N'Nhân viên Content sản phẩm Bách Hóa CDAP', N'- Chịu trách nhiệm về thông tin sản phẩm, hình ảnh, clip của nhóm hàng mình phụ trách trên website: bachhoaxanh.com
<br>- Phối hợp cùng ngành hàng, QC và các bộ phận liên quan để lấy thông tin sản phẩm. Đảm bảo cập nhật thông tin lên website: Đúng, đủ và kịp thời.
<br>- Trải nghiệm trực tiếp/Test sản phẩm để nắm các thông tin cần thiết phục vụ việc làm nội dung cho sản phẩm.
<br>- Phối hợp cùng bộ phận Media để: lên kế hoạch, chụp & xử lý hình ảnh, video đúng timeline.
<br>- Tham gia xây dựng, đóng góp ý tưởng mới cho website nhằm giúp khách hàng ra quyết định nhanh chóng nhất.
<br>- Chịu trách nhiệm về SEO cho sản phẩm, ngành hàng mình phụ trách, đảm bảo từ khoá mình phụ trách nằm trong top tìm kiếm của Google.
<br>- Các nội dung công việc khác theo sự phân phối của Trưởng nhóm.', N'- Chịu khó, ham học hỏi.
<br>- Kỹ lưỡng trong việc mua & chọn mua các sản phẩm FMCG/ Đồ dùng gia đình.
<br>- Có khả năng xử lý hình ảnh (Photoshop, Sketch….) ở mức cơ bản.
<br>- Có kiến thức về SEO là một lợi thế.', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh
<br>- Cọ xát kinh nghiệm từ đội ngũ nhân viên dày dặn kinh nghiệm
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần
<br>- Du lịch Teambuilding hàng năm
<br>- Thưởng cuối năm hấp dẫn', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'Không cần kinh nghiệm', N'01/07/2023', 34, 15)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (48, N'Nhân viên Phát triển kinh doanh', N'- Tìm kiếm, kết nối và đưa các Brand/Nhà bán hàng theo mức độ ưu tiên về kinh doanh tại Sàn Thương mại điện tử (TMĐT)
<br>- Lập kế hoạch, triển khai chiến lược phát triển/tăng trưởng về hình ảnh và kinh doanh cho Brand/Nhà bán hàng
<br>- Theo dõi, chăm sóc và đánh giá hoạt động của các Brand/Nhà bán hàng lớn để đảm bảo phát triển bền vững để gắn kết giữa Brand/Nhà bán hàng với Sàn TMĐT
<br>- Các phân công khác của bộ phận để đạt mục tiêu theo từng thời điểm', N'- Trung thực, minh bạch trong tiền bạc và các mối quan hệ
<br>- Có khả năng làm việc trong môi trường áp lực và luôn thay đổi
<br>- Kĩ năng giao tiếp, thuyết phục tốt, máu kinh doanh
<br>- Tư duy logic, sử dụng tốt excel và tin học văn phòng 
<br>- Xử lý công việc thường xuyên trên máy tính + Điện thoại (các phần mềm chat), áp lực về thời gian, nhận cuộc gọi và xử lý công việc phát sinh', N'- Môi trường làm việc chuyên nghiệp, trẻ trung năng động
<br>- Với quy mô công ty lớn, mảng bán lẻ nhiều tiềm năng mang lại khối lượng kinh nghiệm thực tế khổng lồ
<br>- Chế độ phúc lợi và đãi ngộ hấp dẫn
<br>- Cơ hội thăng tiến tựa năng lực rộng mở', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'Không cần kinh nghiệm', N'01/07/2023', 54, 15)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (49, N'Thực tập sinh công nghệ thông tin', N'- Là sân chơi cho các bạn trẻ khối công nghệ thông tin thể hiện năng lực, bản lĩnh, trí tuệ và đam mê với công nghệ.
<br>- Tạo môi trường cho các bạn sinh viên được giao lưu, học hỏi, hoàn thiện bản thân để trở thành những chuyên gia công nghệ, những lập trình viên chuyên nghiệp
<br>- Cơ hội được đào tạo để là thành viên IT chính thức tại tập đoàn Thế Giới Di Động (MWG).', N'- Là sinh viên Đại học năm cuối hoặc vừa mới tốt nghiệp các ngành Công nghệ thông tin; Toán – Tin; Hệ thống thông tin quản lý hoặc các ngành có liên quan khác.
<br>- Thời gian thực tập tối thiểu 04 tháng, làm việc tối thiểu 04 ngày/tuần (tương đương trên 100 giờ công/ tháng).
<br>- Có khả năng quan sát, có tư duy logic tốt
<br>- Là bạn trẻ có thái độ tốt, ham học hỏi và yêu thích nghề CNTT
<br>- Có mục tiêu nghề nghiệp rõ ràng trong ngành CNTT.', N'- Được trải nghiệm thực tập, làm việc tại phòng IT của Tập đoàn bán lẻ hàng đầu Việt Nam với không gian trụsở hiện đại, đầy đủ tiện nghi.
<br>- Được huấn luyện, đào tạo, kèm cặp hướng dẫn về chuyên môn và kỹ năng mềm
<br>- Đặc biệt nhận được học bổng đào tạo lên tới 20 triệu/ 4 tháng, tương đương 5 triệu/ tháng.
<br>- Cơ hội trở thành nhân viên IT chính thức sau khi hoàn thành chương trình thực tập với mức thu nhập hấp dẫn.
<br>- Điều chỉnh thu nhập tương xứng khi lên Nhân viên (Từ 10 triệu/tháng) – Tổng thu nhập năm từ 15 -19 tháng lương.', N'TP.HCM,...', N'Đại Học
', N'Không cần kinh nghiệm', N'01/07/2023', 23, 6)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (50, N'Công tác viên Phát triển kinh doanh sàn TMDT', N'- Tìm kiếm seller/khách hàng & phát triển thị trường cùng với Nhân viên kinh doanh.
<br>- Tư vấn và trao đổi các chính sách hấp dẫn của Sàn TMĐT đến seller
<br>- Mời khách hàng/seller tham dự các Chương trình, chính sách từ Sàn mỗi tháng', N'- Là sinh viên của các trường đại học yêu thích kinh doanh hoặc sàn TMĐT
<br>- Ưu tiên sinh viên năm 1-2-3 hoặc TTS
<br>- Chưa có kinh nghiệm sẽ được đào tạo.
<br>- Không cần ngoại ngữ (Biết ngoại ngữ là một lợi thế).
<br>- Có kinh nghiệm hoạt động tại các CLB, Đoàn, Hội là một lợi thế.
<br>- Chịu khó và chịu được áp lực cá nhân', N'- Có hỗ trợ dấu mộc xác nhận quá trình thực tập.
<br>- Thu nhập: theo doanh số KH kiếm được, từ 3.000.000 VND - 5.000.000 VND hoặc cao hơn.
<br>- Thời gian làm việc: Linh động trong mùa dịch (tối thiểu 4 buổi/tuần).
<br>- Được đào tạo và phát triển năng lực THỰC TẾ: Kỹ năng quản lý thời gian, kỹ năng thiết lập mục tiêu, kỹ năng làm việc đội nhóm, kỹ năng bán hàng.', N'TP.HCM,...', N'Trung cấp/Cao Đẳng/ Đại Học', N'Không yêu cầu', N'01/07/2023', 45, 6)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (51, N'Công tác viên thương hiệu tuyển dụng', N'- Thỏa sức sáng tạo content và hình ảnh cùng Team xây dựng Thương hiệu Tuyển Dụng
<br>- Giới thiệu ứng viên, góp phần là đại sứ tuyển dụng An Khang
<br>- Lên ý tưởng viết content trên các kênh social cho mảng tuyển dụng
<br>- Thực hiện Đăng tin tuyển dụng/ share/ seeding trên facebook..
<br>- Thực hiện các clip ngắn tiktok hoặc video tuyển dụng khi cần', N'- Đang là sinh viên chưa ra trường, có thời gian thực tập/ kiến tập tại Doanh nghiệp
<br>- Năng động, sáng tạo, tự tin
<br>- Sử dụng tốt vi tính văn phòng', N'- Trải nghiệm cơ hội cùng làm việc tại Phòng nhân sự của tập đoàn bán lẻ hàng đầu Việt Nam ( Quy mô công ty hơn 80.000 nhân viên)
<br>- Môi trường làm việc trẻ trung, năng động
<br>- Cơ hội được Hướng dẫn, chia sẻ và học hỏi từ đội ngũ các Anh Chị  dày dặn kịnh nghiệm trong lĩnh vực Nhân sự/ Truyền thông PR
<br>- Nhận thu nhập hấp dẫn theo chính sách', N'TP.HCM,...', N'Cao Đẳng/ Đại Học', N'Không cần kinh nghiệm', N'01/07/2023', 23, 6)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (52, N'Thực tập sinh kế toán', N'- Được học tập và trải nghiệm làm việc tại trụ sở MWG - Tập đoàn bán lẻ hàng đầu Việt Nam
<br>- Được đào Tạo về văn hoá công ty, chuyên môn nghiệp vụ, đào tạo các kỹ năng mềm
<br>- Thời gian thử thách tối thiểu 03 tháng, làm việc tối thiểu 03 ngày/tuần
<br>- Đặc biệt nhận đượchọc bổng đào tạo lên tới 9 triệu/ 3 tháng. Tương đương 3 triệu/ tháng nếu đáp ứng được giờ làm việc chuẩn và năng lực học việc.
<br>- Cơ hội trở thành nhân viên Kế toán chính thức sau khi hoàn thành chương trình thực tập', N'- Nam Nữ, sinh viên Đại học năm cuối hoặc vừa mới tốt nghiệp các khoa: Kế Toán, Kiểm Toán, Tài Chính, hoặc các ngành có liên quan,...không quá 6 tháng kinh nghiệm nếu đã đi làm.
<br>- Thời gian thực tập tối thiểu 03 tháng, làm việc tối thiểu 03 ngày/tuần 
<br>- Là bạn trẻ có tinh thần ham học hỏi, yêu nghề Kế toán
<br>- Có niềm yêu thích với các con số; Sử dụng tốt excel, các hàm thông dụng
<br>- Có kiến thức tốt chuyên ngành kế toán, am hiểu luật về thuế, luật kế toán,…
<br>- Bạn cẩn thận, tỉ mỉ, trung thực; Có trách nhiệm và cầu tiến.', N'- Được đào tạo các công việc, nghiệp vụ kế toán liên quan của thế giới di động, điện máy xanh, bách hoá xanh
<br>- Trực tiếp làm việc các công việc kế toán nội bộ, nghiệp vụ, chiết khấu,...
<br>- Hỗ trợ các công việc do anh chị nhân viên dày dặn kinh nghiệm hướng dẫn', N'TP.HCM,...', N'Đại Học
', N'Không cần kinh nghiệm', N'01/07/2023', 28, 6)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (53, N'Tiếp bước Dược sĩ', N'Tham gia chương trình bạn sẽ có cơ hội thực tập theo lộ trình chương trình chuyên nghiệp bài bản, tại môi trường bán lẻ Dược chuyên nghiệp sở hữu hàng loạt nhà thuốc trên nhiều tỉnh thành. Bạn cũng sẽ tiếp xúc, học hỏi kinh nghiệm từ các anh chị làm việc với các Dược sĩ kinh nghiệm, phục vụ bằng cái Tâm của người làm Nghề Bán Thuốc. Đặc biệt sau khi tham gia chương trình bạn sẽ có cơ hội trở thành nhân viên chính thức tại Nhà thuốc An Khang sau khi tốt nghiệp với cơ hôi thăng tiến rộng mở trong tương lai.', N'- Nam Nữ, sinh viên trường Trung Cấp/Cao Đẳng/ Đại học Dược trở lên.
<br>- Chương trình chỉ tiếp nhận sinh viên thực tập từ các Trường/ Khoa Dược đang liên kết hợp tác với Nhà Thuốc An Khang và do Trường gửi danh sách sinh viên kèm đóng mộc xác nhận tham gia thực tập (chính quy).', N'- Cam kết nội dung hướng dẫn kèm cặp bài bản chuyên nghiệp, đào tạo ôn tập chuyên môn, kỹ năng mềm
<br>- Học tập thực tập tại hệ thống Nhà Thuốc An Khang các tỉnh thành.
<br>- Đánh giá trong - sau thực tập, xác nhận kết quả thực tập cho sinh viên và Nhà trường
<br>- Có cơ hội lên nhân viên chính thức sau khi sinh viên có bằng.', N'TP.HCM,...', N'Trung cấp/Cao Đẳng/ Đại Học', N'Không yêu cầu', N'01/07/2023', 25, 6)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (54, N'Thực tập sinh Nhân sự', N'- Tham gia trực tiếp vào các công việc tại Phòng Tuyển Dụng
<br>- Hỗ trợ lên nguồn ứng viên trên các kênh online ( Đăng tin, share tin...)
<br>- Gọi điện mời ứng viên tham gia phỏng vấn, sắp xếp theo lịch phỏng vấn của Chuyên viên tuyển dụng
<br>- Tiếp đón ứng viên đến tham gia phỏng vấn, nhận việc
<br>- Tiếp nhận hồ sơ, sắp xếp giấy tờ nhận việc của nhân viên mới
<br>- Hỗ trợ các công tác setup, admin tuyển dụng khác
<br>- Trực tiếp tham gia các buổi phỏng vấn để điều phối, trau dồi kinh nghiệm', N'- Để đảm bảo được việc thực tập trực tiếp tại trụ sở và đáp ứng tốt 5K trong phòng chống dịch Covid, sinh viên thực tập ứng tuyển cần tiêm đủ 2 mũi vắc xin các loại.
<br>- Đang là sinh viên chưa ra trường, đang trong thời gian thực tập/ kiến tập tại Doanh nghiệp hoặc có thời gian rảnh nhiều trong tuần
<br>- Là sinh viên CĐ/ĐH tất cả các chuyên ngành ưu tiên về Quản trị kinh doanh, Marketing, PR/ Quan hệ công chúng, Kinh tế khác...
<br>- Ưu tiên thực tập full time hoặc bán thời gian 4 ngày/tuần, hoặc 5 buổi/tuần (tối thiểu từ 2-3 tháng)
<br>- Yêu thích định hướng phát triển với nghề Nhân Sự, Talent acquisition/Employer Branding
<br>- Ngoại hình Thân thiện, giao tiếp tốt, tự tin trước đám đông
<br>- Năng động, chủ động học hỏi, không ngại việc
<br>- Sử dụng tốt vi tính văn phòng
<br>- Sẵn sàng di chuyển bên ngoài hỗ trợ công việc khi cần.', N'- Cơ hội chứng minh năng lực và trở thành nhân viên Nhân sự chính thức tại công ty
<br>- Trải nghiệm cơ hội cùng làm việc tại Phòng nhân sự của tập đoàn bán lẻ hàng đầu Việt Nam ( Quy mô công ty hơn 75.000 nhân viên)
<br>- Môi trường làm việc trẻ trung, năng động, chuyên nghiệp. Đặc biệt Phòng Nhân Sự hơn 200 người ở đầy đủ các mảng chuyên môn như Tuyển dụng, đào tạo, tiền lương, thương hiệu tuyển dụng, HR data, legal...
<br>- Văn phòng trụ sở hiện đại, tiện nghi và thoải mái
<br>- Cơ hội được Đào tạo, Hướng dẫn, Chia sẻ nghề từ đội ngũ các Anh Chị dày dặn kinh nghiệm trong lĩnh vực Nhân sự', N'TP.HCM,...', N'Cao đẳng/ Đại học
', N'Không yêu cầu', N'01/07/2023', 31, 6)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (55, N'Nhân viên Kho Bán Hàng Bách Hóa CDAP', N'- Tư vấn hỗ trợ Khách Hàng đến siêu thị.
<br>- Trưng bày, sắp xếp hàng hóa đảm bảo quầy kệ gọn gàng, sạch sẽ.
<br>- Làm cá, thịt, sơ chế món ăn có sẵn, các thực phẩm tươi sống.
<br>- Lựa hàng rau củ, trái cây bị hư hỏng.
<br>- Kiểm kê hàng hóa siêu thị.
<br>- Hủy hàng theo quy định triển khai công ty.
<br>- Nhập hàng từ nhà cung cấp hoặc kho tổng (Cân, nhập, kiểm đếm)
<br>- Vệ sinh siêu thị ( Lau dọn sàn, kính, quầy kệ)
<br>- Là người nhân viên đa nhiệm, linh hoạt bạn có thể làm thêm các vị trí công việc khác như Kho / Thu Ngân, hoặc các công việc theo sự phân công quản lý.', N'- Nam/ Nữ từ 18- 40 tuổi
<br>- Thân thiện, nhiệt tình, muốn gắn bó lâu dài
<br>- Có sức khỏe tốt, tháo vát, có trách nhiệm
<br>- Có điện thoại smartphone để làm việc, chủ động phương tiện di chuyển (xe máy)
<br>-  Sẵn sàng làm đa nhiệm: Kho- bán hàng- thu ngân - sơ chế thịt, cá
<br>- Làm ca xoay 8 tiếng:
<br>+ Ca Sáng: 5h30 - 14h30
<br>+ Ca Chiều: 14h30 - 22g00
<br>+ Ca Đêm: 22g00 - 5h30 
<br>- Thời gian xoay ca theo ngày nên thuận tiện cho việc nghỉ ngơi giữa các ngày', N'- Thu nhập trung bình từ 7-10 triệu trở lên, tăng lên theo hiệu quả làm việc và giờ công làm việc
<br>- Thưởng trong tháng và thưởng cuối năm hấp dẫn ( Thưởng tết tương đương 3 tháng thu nhập, số liệu 3 năm gần nhất)
<br>- Có cơ hội thăng tiến lên Quản lý rõ ràng- làm chủ siêu thị
<br>- Công việc bố trí làm việc thuận tiện gần nhà
<br>- Có sự hướng dẫn, đào tạo phát triển kỹ năng/ chuyên môn liên tục
<br>- Ký Hợp đồng lao động, công việc chính thức Lâu dài - Ổn định
<br>- Môi trường làm việc thân thiện, hỗ trợ đồng đội
<br>- Phúc lợi đầy đủ : Tham gia BHYT, BHXH, Đi du lịch Teambuilding, 12 ngày phép/ năm, nghỉ thai sản, ốm đau...', N'TP.HCM,...', N'Không yêu cầu
', N'Không yêu cầu', N'01/07/2023', 20, 7)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (56, N'Dược sĩ bán thuốc CDAP', N'- Bán và hướng dẫn cách sử dụng thuốc
<br>- Bán thuốc, Dược phẩm, Thực phẩm chức năng và các sản phẩm tại Nhà thuốc An Khang
<br>- Trực tiếp giao dịch, thanh toán hóa đơn cho Khách Hàng.
<br>- Hướng dẫn và giải đáp cho Khách hàng những thông tin liên quan đến Dược phẩm, Thực phẩm chức năng.
<br>- Bảo quản hàng hóa và tài sản Nhà thuốc
<br>- Giữ nhà thuốc sạch sẽ, ngăn nắp, sắp xếp thuốc đúng vị trí.
<br>- Cập nhật kiến thức về thuốc đảm bảo tư vấn thuốc đúng.
<br>- Có trách nhiệm bảo quản Dược phẩm và sắp xếp/ vệ sinh khuôn viên nhà thuốc sạch sẽ, gọn gàng, tuân thủ các quy định về Y tế, ngành Dược và của Công ty.
<br>- Thực hiện một số công việc khác theo sự phân công của quản lý', N'- Nam/ Nữ  từ 20 tuổi trở lên.
<br>- Tốt nghiệp Trung cấp/ Cao đẳng/Đại học chuyên ngành Dược.
<br>- Trung thực, hoạt bát, vui vẻ hòa đồng.
<br>- Thân thiện, yêu nghề Dược, chú trọng phục vụ KH
<br>- Ham học hỏi những kiến thức mới, chú trọng trau dồi chuyên môn Dược
<br>- Làm việc Ca XOAY linh hoạt: 07h - 22h. Trung bình 8h/ngày, các ngày trong tuần từ Thứ 2 đến Chủ Nhật, sẽ được sắp xếp lịch nghỉ phù hợp.
<br>+ Ca 1: 7g00 - 15g00
<br>+ Ca 2: 15g00 - 22g00
<br>- Thu nhập trung bình 8-12 triệu/tháng, tăng theo hiệu quả làm việc và giờ công.', N'- Làm việc tại chuỗi nhà thuốc chuẩn GPP hiện đại thuộc Tập đoàn Bán lẻ hàng đầu Việt Nam 
<br>- Môi trường làm việc chuyên nghiệp, thân thiện, năng động.
<br>- Cơ hội thăng tiến, phát triển bản thân với lộ trình rõ ràng.
<br>- Được hướng dẫn, đào tạo kiến thức chuyên môn dược liên tục
<br>- Phúc lợi dành riêng cho nhân viên (Bảo hiểm sức khỏe đặc biệt, mua hàng ưu đãi,...)
<br>- Văn hóa công ty với 5 Giá trị cốt lõi là trọng tâm
<br>- Lương thưởng cuối năm hấp dẫn TB 3 tháng thu nhập ( số liệu 2019- nay)
<br>- Công việc ổn định - lâu dài - yêu thương hỗ trợ đồng đội', N'TP.HCM,...', N'Trung cấp/ Cao đẳng/ Đại học Dược
', N'Không yêu cầu', N'01/07/2023', 40, 7)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (57, N'Nhân viên thu ngân Bách Hóa CDAP', N'- Tư vấn hỗ trợ Khách Hàng đến siêu thị.
<br>- Thanh Toán tiền cho Khách Hàng
<br>- Trưng bày, sắp xếp hàng hóa đảm bảo quầy kệ gọn gàng, sạch sẽ.
<br>- Thu hộ trả góp và bán thẻ cào, tiền điện/nước/ internet.
<br>- Kết ca cất tiền, khóa và niêm phong két sắt, giao lại chìa khóa lại cho Quản lý.
<br>- Kiểm quỹ cuối ngày khớp với tiền thu của Khách hàng.
<br>- Tổng hợp các bill cà thẻ, hóa đơn liên quan gửi về kế toán.
<br>- Vệ sinh siêu thị (Lau dọn sàn, kính, quầy kệ).
<br>- Là người nhân viên đa nhiệm, linh hoạt bạn có thể làm thêm các vị trí công việc khác như Kho / Fresh, hoặc các công việc theo sự phân công quản lý.', N'- Nam/ Nữ từ 18- 40 tuổi
<br>- Thân thiện, nhiệt tình, muốn gắn bó lâu dài
<br>- Có sức khỏe tốt, tháo vát, có trách nhiệm
<br>- Có điện thoại smartphone để làm việc, chủ động phương tiện di chuyển (xe máy)
<br>- Sẵn sàng làm đa nhiệm: Kho- bán hàng- thu ngân - sơ chế thịt, cá
<br>- Làm ca xoay 8 tiếng:
<br>+ Ca Sáng: 5h30 - 14h30
<br>+ Ca Chiều: 14h30 - 22g00
<br>+ Ca Đêm: 22g00 - 5h30 
<br>- Thời gian xoay ca theo ngày nên thuận tiện cho việc nghỉ ngơi giữa các ngày', N'- Thu nhập trung bình từ 7-10 triệu trở lên, tăng lên theo hiệu quả làm việc và giờ công làm việc
<br>- Thưởng trong tháng và thưởng cuối năm hấp dẫn ( Thưởng tết tương đương 3 tháng thu nhập, số liệu 3 năm gần nhất)
<br>- Có cơ hội thăng tiến lên Quản lý rõ ràng- làm chủ siêu thị
<br>- Công việc bố trí làm việc thuận tiện gần nhà
<br>- Có sự hướng dẫn, đào tạo phát triển kỹ năng/ chuyên môn liên tục
<br>- Ký Hợp đồng lao động, công việc chính thức Lâu dài - Ổn định
<br>- Môi trường làm việc thân thiện, hỗ trợ đồng đội
<br>- Phúc lợi đầy đủ : Tham gia BHYT, BHXH, Đi du lịch Teambuilding, 12 ngày phép/ năm, nghỉ thai sản, ốm đau...', N'TP.HCM,...', N'Không yêu cầu
', N'Không cần kinh nghiệm', N'01/07/2023', 37, 7)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (58, N'Bảo vệ Bách Hóa CDAP', N'- Dẫn dắt xe cho Khách hàng đến siêu thị
<br>- Bảo vệ an ninh cửa hàng
<br>- Giữ gìn vệ sinh khuôn viên bãi xe
<br>- Hỗ trợ một số công việc khác tại siêu thị', N'- Nam, từ 18-60 tuổi
<br>- Có sức khỏe tốt, tháo vát
<br>- Giao tiếp thân thiện, vui vẻ
<br>- Làm ca gãy hoặc ca xoay linh hoạt tùy tình hình siêu thị, Đảm bảo TB 8 tiếng/ Ngày
<br>+ Trường hợp làm ca gãy, 4 tiếng/ ca, và 2 ca/ ngày: Ca 1: 6h30 - 11h00 và Ca 2: 17h00 - 21h30
<br>+ Trường hợp làm ca xoay sẽ là 6g30 - 14g00 hoặc  14g00 -21g30
<br>Lưu ý: Ca làm việc này chỉ mang tính chất tương đối, chi tiết sẽ trao đổi lúc phỏng vấn', N'- Thu nhập trung bình từ 5 triệu trở lên ( bao gồm Thưởng)
<br>- Thưởng cuối năm hấp dẫn
<br>- Được bố trí làm việc thuận tiện gần nhà
<br>- Được hướng dẫn, đào tạo nghiệp vụ bảo vệ/an ninh
<br>- Ký Hợp đồng lao động, công việc chính thức Lâu dài - Ổn định
<br>- Môi trường làm việc thân thiện, vui vẻ
<br>- Phúc lợi đầy đủ : Tham gia BHYT, BHXH, Đi du lịch Teambuilding, 12 ngày phép/ năm...', N'TP.HCM,...', N'Không yêu cầu
', N'Không cần kinh nghiệm', N'01/07/2023', 21, 7)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (59, N'Quản lý tập sự nhà thuốc CDAP', N'Chương trình nhằm tìm kiếm các Dược sĩ tài năng mang trong mình ước mơ Làm chủ nhà thuốc chuẩn GPP Hiện đại hàng đầu VN và gia nhập đội ngũ Dược sĩ An Khang có tâm Yêu nghề Dược _ Quý Khách hàng.
<br>Đặc biệt chỉ sau 8 tuần tại nhà thuốc, bạn sẽ có cơ hội để tham gia kỳ thi Thăng cấp Quản lý chính thức tại Nhà Thuốc An Khang.', N'- Sinh viên tốt nghiệp ngành Dược (Cao Đẳng/ Đại Học Dược)
<br>- Nắm vững chuyên môn chuyên ngành Dược
<br>- Năng động – bản lĩnh – có ước mơ trở thành Quản lý
<br>- Yêu nghề Dược, thân thiện - quý phục vụ Khách hàng
<br>- Không chú trọng kinh nghiệm ', N'- Cam kết được phỏng vấn thăng cấp sau tối đa 8 tuần làm việc tại nhà thuốc
<br>- Cam kết thu nhập thăng cấp lên Quản lý từ 10- 15 Triệu
<br>- Đào tạo nâng cao chuyên môn Dược miễn phí
<br>- Thủ tục xác nhận thâm niên làm Chứng chỉ hành nghề rõ ràng
<br>- Ký Hợp đồng chính thức, đầy đủ chế độ
<br>- Học tập các kiến thức và kỹ năng mềm tại môi trường MWG
<br>- Lộ trình thăng tiến sau Quản lý rõ ràng ( Quản lý > Quản lý khu vực/Quản lý chuyên môn…)', N'TP.HCM,...', N'Cao đẳng/ Đại học
', N'Không cần kinh nghiệm', N'01/07/2023', 15, 7)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (60, N'Nhân viên Kho bán hàng Bách Hóa CDAP', N'- Tư vấn hỗ trợ Khách Hàng đến siêu thị.
<br>- Trưng bày, sắp xếp hàng hóa đảm bảo quầy kệ gọn gàng, sạch sẽ.
<br>- Làm cá, thịt, sơ chế món ăn có sẵn, các thực phẩm tươi sống.
<br>- Lựa hàng rau củ, trái cây bị hư hỏng.
<br>- Kiểm kê hàng hóa siêu thị.
<br>- Hủy hàng theo quy định triển khai công ty.
<br>- Nhập hàng từ nhà cung cấp hoặc kho tổng (Cân, nhập, kiểm đếm)
<br>- Vệ sinh siêu thị ( Lau dọn sàn, kính, quầy kệ)
<br>- Là người nhân viên đa nhiệm, linh hoạt bạn có thể làm thêm các vị trí công việc khác như Kho / Thu Ngân, hoặc các công việc theo sự phân công quản lý.', N'- Nam/ Nữ từ 18- 40 tuổi
<br>- Thân thiện, nhiệt tình, muốn gắn bó lâu dài
<br>- Có sức khỏe tốt, tháo vát, có trách nhiệm
<br>- Có điện thoại smartphone để làm việc, chủ động phương tiện di chuyển (xe máy)
<br>- Sẵn sàng làm đa nhiệm: Kho- bán hàng- thu ngân - sơ chế thịt, cá
<br>- Làm ca xoay 8 tiếng:
<br>+ Ca Sáng: 5h30 - 14h30
<br>+ Ca Chiều: 14h30 - 22g00
<br>+ Ca Đêm: 22g00 - 5h30 
<br>- Thời gian xoay ca theo ngày nên thuận tiện cho việc nghỉ ngơi giữa các ngày', N'- Thu nhập trung bình từ 7-10 triệu trở lên, tăng lên theo hiệu quả làm việc và giờ công làm việc
<br>- Thưởng trong tháng và thưởng cuối năm hấp dẫn ( Thưởng tết tương đương 3 tháng thu nhập, số liệu 3 năm gần nhất)
<br>- Có cơ hội thăng tiến lên Quản lý rõ ràng- làm chủ siêu thị
<br>- Công việc bố trí làm việc thuận tiện gần nhà
<br>- Có sự hướng dẫn, đào tạo phát triển kỹ năng/ chuyên môn liên tục
<br>- Ký Hợp đồng lao động, công việc chính thức Lâu dài - Ổn định
<br>- Môi trường làm việc thân thiện, hỗ trợ đồng đội
<br>- Phúc lợi đầy đủ : Tham gia BHYT, BHXH, Đi du lịch Teambuilding, 12 ngày phép/ năm, nghỉ thai sản, ốm đau...', N'TP.HCM,...', N'Không yêu cầu
', N'Không yêu cầu
', N'01/07/2023', 34, 7)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (61, N'Công tác viên Giao hàng lắp đặt Điện Máy CDAP', N'Công việc của bạn sẽ linh hoạt giữa việc Tư vấn bán hàng cho KH và Giao nhận lắp đặt sản phẩm cho KH khi cần, cụ thể:
<br>- Tư vấn các sản phẩm điện tử điện lạnh gia dụng
<br>- Mang sản phẩm đến tận nhà cho Khách Hàng, hỗ trợ thông tin, hướng dẫn cách sử dụng sản phẩm.
<br>- Hỗ trợ khách hàng thủ tục thanh toán và thu tiền hàng hoá.
<br>- Tư vấn linh kiện phục vụ việc lắp đặt các thiết bị Điện Tử, Điện Lạnh cho Khách Hàng.
<br>- Lắp đặt, bảo trì các thiết bị Điện Tử, Điện Lạnh theo yêu cầu Khách Hàng.
<br>- Được đào tạo chuyên môn trước khi làm việc.', N'- Nam, tuổi từ 20 đến 30, sức khỏe tốt.
<br>- Có xe máy, có Smartphone
<br>- Nếu bạn chưa có kinh nghiệm, chỉ cần bạn yêu thích công việc này công ty sẽ đào tạo cho bạn 
<br>- Có tính kỷ luật, trách nhiệm và nghiêm túc trong công việc ', N'- Môi trường làm việc thân thiện chuyên nghiệp
<br>- Được hướng dẫn đào tạo từ Công ty và Quản lý trực tiếp
<br>- Cơ hội học hỏi, tiếp xúc với quy trình làm việc chuyên nghiệp
<br>- Cơ hội lên nhân viên chính thức', N'TP.HCM,...', N'Không yêu cầu
', N'Không cần kinh nghiệm', N'01/07/2023', 53, 8)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (62, N'Công tác viên siêu thị Bách Hóa CDAP', N'- Công việc có thời gian linh hoạt có thể phù hợp với các bạn Sinh Viên.
<br>- Trưng bày hàng hóa, chăm sóc/ sơ chế thịt cá, rau củ.
<br>- Châm hàng, đóng vĩ sản phẩm.
<br>- Sắp xếp, vệ sinh gọn gàng khu vực buôn bán, kho, sàn.
<br>- Phục vụ khách hàng bên trong, bên ngoài siêu thị
<br>- Công việc khác theo sự sắp xếp của QL
<br>Thời gian làm việc:
<br>+ Ca 1: 6h00 - 14h
<br>+ Ca 2: 14h - 21h30
<br>+ Hoặc ca gãy, linh hoạt sắp xếp của siêu thị', N'Hồ sơ cần chuẩn bị:
<br>+ Hình chụp CMND/CCCD
<br>+ Số tài khoản ATM 1 trong các ngân hàng Vietin Bank, MB Bank, Standard Chartered Bank', N'- Việc làm thời vụ - thu nhập tức thì, làm bao nhiêu hưởng bấy nhiêu
<br>- Yêu cầu rất đơn giản chỉ cần có sức khoẻ tốt, lanh lẹ
<br>- Tạo cơ hội lên nhân viên chính thức nếu đáp ứng tốt công việc', N'TP.HCM,...', N'Không yêu cầu
', N'Không yêu cầu
', N'01/07/2023', 24, 8)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (63, N'Công tác viên Shipper Giao hàng Công Nghệ', N'- Shipper nhận đơn hàng tại App của công ty
<br>- Giao hàng tận nơi cho khách hàng: 1 ngày trung bình giao từ 15 - 20 đơn hàng.
<br>- Thu tiền đơn hàng và nộp tiền về hệ thống tại các HUB (kho tổng)
<br>- Nhận hàng: tại HUB (kho tổng) siêu thị TGDD/ĐMX tại Gò Vấp và Bình Chánh, Thành Phố Hồ Chí Minh
<br>- Cách thức: Lấy hàng tại HUB (kho tổng) kiểm tra đúng đủ số lượng => kiểm tra đơn hàng trên App liên hệ khác hàng đi giao => hoàn tất cập nhật đơn hàng trên App, xong quay về HUB (kho) nộp tiền, tiếp tục nhận hàng giao lần tiếp theo.
<br>** Thời Gian Làm Việc: tối thiểu 8h/ngày tùy Trưởng nhóm sắp xếp. Làm việc ít nhất 2 ca/ngày. Gồm các ca:
<br>+ Ca 1: (8h-12h)
<br>+ Ca 2: (12h- 16h)
<br>+ Ca 3: (16h - 21h)
<br>- 1 tuần được nghỉ 1 ngày trừ thứ 7, Chủ Nhật', N'- Nam/ Nữ 18 – 55 tuổi, có xe máy riêng, có điện thoại smartphone
<br>- Giao tiếp thân thiện, sức khỏe tốt, nhanh nhẹn
<br>- Rành đường địa lý khu vực giao hàng
<br>- Trung thực, trách nhiệm, có tinh thần phục vụ khách hàng
<br>- Đảm bảo làm việc được ít nhất 8h/ngày', N'- Thu nhập hấp dẫn lên đến 10 triệu/tháng
<br>- Môi trường làm việc chuyên nghiệp tại Tập Đoàn Bán lẻ Hàng đầu Việt Nam
<br>- Thu nhập theo năng suất giao hàng.', N'TP.HCM,...', N'Không yêu cầu
', N'Không yêu cầu
', N'01/07/2023', 28, 8)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (64, N'Công tác viên Giao hàng Shipper Bách Hóa CDAP', N'- Giao đơn hàng từ siêu thị Bách Hoá Xanh đến phạm vi Phường/Quận cho phép.
<br>- Nhận hàng hóa tại Siêu Thị, giao đến địa chỉ của Khách Hàng.
<br>- Thu tiền đơn hàng và nộp tiền về Quản Lý Bách Hoá Xanh.
<br>- Tiền công giao hàng tính trên giá trị của đơn hàng đi giao, từ 10.000 – 20.000 / đơn.
<br>- Đăng ký ca linh động
<br>+ Ca 1: 06h00 - 12h00
<br>+ Ca 2: 12h00 - 18h00', N'- Nam/Nữ, có xe máy, bằng lái xe
<br>- Có khả năng đi giao hàng trong Phường/Quận.
<br>- Mỗi tuần ít nhất 4 ca.
<br>- Rành đường địa lý khu vực giao hàng.
<br>- Có CMND/CCCD, Số Tài Khoản ATM dùng nhận lương theo tuần', N'- Thu nhập theo ngày trung bình 300.000 - 450.000 (tùy theo số lượng đơn hàng và năng suất làm việc)
<br>- Tính chất công việc linh hoạt, nhận lương ngay theo tuần qua số tài khoản.
<br>- Giao phạm vi gần-thuận tiện, giao càng nhiều thu nhập càng nhiều.
<br>- Không gò bó về mặt thời gian, đăng ký theo thời gian rảnh.', N'TP.HCM,...', N'Không yêu cầu
', N'Không yêu cầu
', N'01/07/2023', 31, 8)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (65, N'Công tác viên Kho trung tâm CDAP', N'Soạn hàng, đóng gói hàng hóa theo hướng dẫn nhân viên tại Kho. Kiểm tra, sắp xếp hàng hóa trong kho ngăn nắp, gọn gàng. Dọn dẹp vệ sinh sau khi hoàn tất công việc.', N'Nam, nữ dưới 50 tuổi, sức khỏe tốt, siêng năng.
<br>Làm việc theo 2 ca linh hoạt: Ca 1: 7h00 - 16h30; Ca 2: 20h00 - 5h00.', N'Thu nhập:
<br>Ca ngày (từ 6h - 22h): 31.000đ - 35.000đ /giờ (tùy khu vực, tỉnh thành)
<br>Ca đêm (từ 22h -6h): 39.000đ - 45.000đ /giờ (tùy khu vực, tỉnh thành)', N'TP.HCM,...', N'Không yêu cầu
', N'Không yêu cầu
', N'01/07/2023', 11, 8)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (66, N'Công tác viên sửa chửa điện máy tại nhà', N'- Tiếp nhận thông tin Khách hàng cần hỗ trợ từ cấp trên
<br>- Đến nhà Khách hàng kiểm tra/Khắc phục sự cố cho Khách hàng theo sự điều động của cấp trên
<br>- Báo cáo lại các vấn đề phát sinh cho cấp trên để xử lý trọn vẹn cho Khách hàng
<br>- Thực hiện các công việc liên quan theo sự điều động, hướng dẫn của cấp trên, của Công ty
<br>- Thực hiện Bảo hành tại Nhà Khách hàng theo Quy trình đặt ra
<br>- Phục vụ Khách hàng hài lòng', N'- Biết Kiểm tra/Sửa chữa/Thay thế các sự cố đối với các sản phẩm Điện tử, Điện lạnh, Điện gia dụng
<br>- Có xe máy riêng để di chuyển tới nhà Khách hàng kiểm tra/Khắc phục sự cố
<br>- Có điện thoại Smartphone sử dụng trong công việc
<br>- Có thái độ phục vụ Khách hàng tốt', N'- Là CTV của tập đoàn Thế Giới Di Động với môi trường làm việc chuyên nghiệp hàng đầu VN.
<br>- Thưởng theo năng suất  và hiệu quả làm việc
<br>- Có cơ hội phát triển lên Nhân viên chính thức.', N'TP.HCM,...', N'Không yêu cầu
', N'Không yêu cầu
', N'01/07/2023', 14, 8)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (67, N'Dược sĩ Chuyên Môn Nhà Thuốc CDAP', N'- Quản lý và hỗ trợ điều hành toàn bộ hoạt động tại nhà thuốc.
<br>- Kiểm soát và dự trù hàng hóa cho nhà thuốc.
<br>- Tham gia kiểm kê định kỳ/đột xuất tại Nhà Thuốc.
<br>- Quản lý chuyên môn dược tại nhà thuốc được giao.
<br>- Giám sát việc tư vấn bán hàng của nhân viên.
<br>- Chịu trách nhiệm hướng dẫn, huấn luyện nhân viên.
<br>- Sắp xếp ca làm việc cho nhân viên hợp lý và khoa học. ', N'- Tốt nghiệp Đại học trở lên chuyên ngành dược, có chứng chỉ hành nghề.
<br>- Trung thực, có trách nhiệm
<br>- Có khả năng làm việc độc lập tốt', N'- Làm việc tại chuỗi nhà thuốc chuẩn GPP hiện đại thuộc Tập đoàn Bán lẻ hàng đầu Việt Nam 
<br>- Môi trường làm việc chuyên nghiệp, thân thiện, năng động.
<br>- Cơ hội thăng tiến, phát triển bản thân với lộ trình rõ ràng.
<br>- Được hướng dẫn, đào tạo kiến thức chuyên môn.
<br>- Phúc lợi dành riêng cho nhân viên (Bảo hiểm sức khỏe đặc biệt, mua hàng ưu đãi,...)
<br>- Văn hóa công ty với 5 Giá trị cốt lõi là trọng tâm.
<br>- Lương thưởng cuối năm hấp dẫn TB 3 tháng thu nhập ( số liệu 2019- nay)
<br>- Công việc ổn định - lâu dài - yêu thương hỗ trợ đồng đội', N'TP.HCM,...', N'Đại Học
', N'Có kinh nghiệm
', N'01/07/2023', 21, 9)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (68, N'Quản lý Nhà thuốc CDAP', N'Về chuyên môn:
<br>- Quản lý và điều hành toàn bộ hoạt động tại Nhà thuốc.
<br>- Kiểm soát và dự trù hàng hóa cho Nhà thuốc.
<br>- Tham gia kiểm kê định kỳ/đột xuất tại Nhà thuốc.
<br>- Quản lý Chuyên môn Dược tại Nhà thuốc được giao.
<br>Về công tác nhân sự:
<br>- Chịu trách nhiệm quản lý, hướng dẫn Nhân viên Dược Sĩ Tư Vấn, Nhân viên bán thuốc
<br>- Sắp xếp ca làm việc cho Nhân viên hợp lý và khoa học.', N'- Nam. Nữ; tốt nghiệp Trung Cấp/Cao đẳng/Đại học trở lên chuyên ngành Dược
<br>- Có kinh nghiệm Quản lý nhà thuốc bên ngoài.
<br>-  Năng động, Trung thực
<br>- Thân thiện, yêu nghề Dược, chú trọng phục vụ KH
<br>- Ham học hỏi những kiến thức mới, chú trọng trau dồi chuyên môn Dược
<br>- Thu nhập TB từ 10-15++ triệu, tăng lên nếu có chứng chỉ hành nghề Dược ', N'- Làm việc tại chuỗi nhà thuốc chuẩn GPP hiện đại thuộc Tập đoàn Bán lẻ hàng đầu Việt Nam 
<br>- Môi trường làm việc chuyên nghiệp, thân thiện, năng động.
<br>- Cơ hội thăng tiến, phát triển bản thân với lộ trình rõ ràng.
<br>- Được hướng dẫn, đào tạo kiến thức chuyên môn.
<br>- Phúc lợi dành riêng cho nhân viên (Bảo hiểm sức khỏe đặc biệt, mua hàng ưu đãi,...)
<br>- Văn hóa công ty với 5 Giá trị cốt lõi là trọng tâm.
<br>- Lương thưởng cuối năm hấp dẫn TB 3 tháng thu nhập ( số liệu 2019- nay)
<br>- Công việc ổn định - lâu dài - yêu thương hỗ trợ đồng đội', N'TP.HCM,...', N'Trung cấp/Cao Đẳng/ Đại Học', N'Có kinh nghiệm
', N'01/07/2023', 64, 9)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (70, N'
Trưởng Ngành Hàng Dịch vụ Khác', N'- Tìm kiếm và thu hút nhiều người bán trong cate hàng phụ trách theo 2 chỉ số: Số lượng người bán, Số lượng SKUs khác biệt của cate
<br>(Người bán ở đây có 2 nhóm: người bán có thương hiệu/ chuỗi lớn + người bán nhỏ lẻ)
<br>- Phát triển đội ngũ nhân sự chăm sóc Người Bán thuộc cate hàng mình phụ trách (giải quyết các vấn đề phát sinh, lập kế hoạch kinh doanh, phát triển số bán…)
<br>- Chịu trách nhiệm chính về doanh số bán hàng
<br>- Phối hợp xây dựng chính sách bán hàng hiệu quả.', N'- Có ít nhất 2 năm kinh nghiệm / kiến thức về kinh doanh tại các sàn TMĐT
<br>- Có khả năng lên kế hoạch, trình bày, đàm phán, xây dựng chương trình bán hàng, tìm kiếm đối tác bán hàng online
<br>- Sáng tạo, nhiệt huyết, chủ động, giữ cam kết.', N'Thoả thuận (Lương + Thưởng theo năng lực)', N'TP.HCM,...', N'Cao đẳng/ Đại học
', N'2 năm trở lên
', N'01/07/2023', 32, 9)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (71, N'Trưởng bộ phận ngành hàng Thời Trang', N'- Nghiên cứu xu hướng các dòng sản phẩm thời trang Nam - Nữ - Trẻ em, am hiểu thị trường thời trang trong nước và quốc tế, có khả năng tư vấn cho công ty về định hướng sản phẩm, mục tiêu chiến lược, xu hướng thời trang.
<br>- Xây dựng kế hoạch ra mẫu hàng Tháng - Quý - Mùa Vụ; Lên ý tưởng Concept thời trang theo mùa và từng bộ sưu tập.
<br>- Cập nhật và nắm bắt xu hướng thời trang trong và ngoài nước phù hợp với đối tượng khách hàng mục tiêu của công ty.
<br>- Duyệt và lựa chọn hình ảnh Thiết kế để lên mẫu, đảm bảo đúng định hướng và đủ số lượng mẫu Thiết kế đáp ứng mục tiêu kinh doanh của công ty
<br>- Giám sát Thiết kế chọn vải, phụ liệu trang trí và phối hợp với kỹ thuật để lên sản phẩm đúng theo ý tưởng thiết kế.
<br>- Xây dựng và vận hành quy trình phản ứng nhanh về mẫu thiết kế với nhu cầu thị trường.
<br>- Chịu trách nhiệm và quyết định về ý tưởng mẫu thiết kế và số lượng mẫu phục vụ sản xuất kinh doanh, định hướng theo bộ sưu tập.', N'- Tốt nghiệp chính quy ngành thiết kế thời trang, mỹ thuật và các ngành khác có liên quan
<br>- Đã có 2-3 năm kinh nghiệm ở vị trí trưởng phòng thiết kế
<br>- Có kinh nghiệm làm việc và hiểu rõ kỹ thuật cắt may, sản xuất, thông thạo về nguyên phụ liệu ngành may mặc thời trang
<br>- Am hiểu về lĩnh vực thời trang, có khả năng bắt kịp với xu hướng thời trang trong nước và quốc tế
<br>- Sử dụng thành thạo phần mềm thiết kế chuyên ngành / thông dụng
<br>- Có khả năng quản lý đội nhóm
<br>- Kinh nghiệm: Thiết kế và điều phối công việc;
<br>- Trung thực, trách nhiệm, tận tụy, nhiệt tình trong công việc;
<br>- Sáng tạo trong công việc', N'Thoả thuận (Lương + Thưởng theo năng lực)', N'TP.HCM,...', N'Cao đẳng/ Đại học
', N'2 năm trở lên
', N'01/07/2023', 24, 9)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (72, N'Phó bộ phận Khối Kho Vận', N'- Quản lý Kho và Vận chuyển (tìm kiếm, đàm phán các hợp đồng vận chuyển CPN, xử lý, khai báo tuyến đảm bảo khả năng cung ứng…)
<br>- Quản lí đối soát thanh toán thuê dịch vụ ngoài (chuyển phát nhanh, thuê xe tải, gara,....)
<br>- Quản lí, giám sát nhập hàng
<br>- Xử lí sự số vận chuyển thuê ngoài + nội bộ
<br>- Hỗ trợ xây dựng, mô tả các quy trình mới với IT và triển khai
<br>- Xử lý các quy trình có liên quan đến các phòng ban nội bộ', N'- Nam/Nữ, Tốt nghiệp cao đẳng trở lên, chuyên ngành liên quan về kinh tế, tài chính, vận tải.
<br>- Kỹ năng giao tiếp tốt, công viêc liên quan nhiều đến giao tiếp với nhà cung cấp, nội bộ, kế toán.
<br>- Thành thạo Excel.
<br>- Có khả năng tư duy, phân tích.
<br>- Cẩn thận, trách nhiệm, cầu tiến, trung thực và chịu áp lực công việc tốt.
<br>- Có kinh nghiệm liên quan đến vận chuyển,quản lí kiểm soát hệ thống, làm việc trong các chuỗi bán lẻ là ưu thế.
<br>- Nắm rõ các quy trình liên quan (quy trình vận chuyển, hợp đồng vận chuyển, quy định về thời gian vận chuyển, quy trình thanh toán, nhập hàng, …)', N'- Là thành viên của tập đoàn Thế Giới Di Động với môi trường làm việc chuyên nghiệp hàng đầu VN. 
<br>- Có đầy đủ HĐLĐ, các chế độ Bảo hiểm y tế, Bảo hiểm xã hội, Bảo hiểm thất nghiệp…
<br>- Chính sách mua hàng giảm giá chỉ dành cho nhân viên.
<br>- Teambuilding, du lịch nghỉ mát hàng năm, nghỉ phép năm.
<br>** Thu nhập: từ 15tr/tháng (gồm KPIs).
<br>** Thưởng cuối năm hấp dẫn theo năng lực.
<br>=>> Làm việc tại: Trụ sở MWG, Lô T2 -1.2, Đường D1, Khu Công nghệ cao, Phường Tân Phú, Thành phố Thủ Đức, Thành phố Hồ Chí Minh', N'TP.HCM,...', N'Cao Đẳng trở lên
', N'Có kinh nghiệm
', N'01/07/2023', 16, 9)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (73, N'Nhân viên tuyển dụng', N'- Là nhân viên Tuyển Dụng của tập đoàn Thế Giới Di Động, bạn sẽ đảm nhận vai trò tuyển dụng nhân viên cho tất cả các chuỗi của công ty
<br>- Tiếp nhận yêu cầu tuyển dụng từ các phòng ban trong công ty.
<br>- Kiểm tra và tư vấn lại cho các phòng ban về yêu cầu tuyển dụng đã phù hợp với tình hình thực tế, kế hoạch, ngân sách năm.
<br>- Lên tin tuyển dụng, sử dụng các kênh tuyển dụng nhằm thu hút, tạo nguồn ứng viên, sàng lọc hồ sơ.
<br>- Tiến hành phỏng vấn và trả kết quả phỏng vấn cho ứng viên.
<br>- Tiếp nhận nhân viên mới, kiểm tra hồ sơ nhận việc.
<br>- Quản lý hồ sơ ứng viên, và chuyển hồ sơ nhận việc cho các bên có liên quan.
<br>- Thực hiện công tác thuyên chuyển và thăng cấp.
<br>- Tiến hành phỏng vấn thôi việc, trao đổi, giải quyết vấn đề nếu trong thẩm quyền được giao.
<br>- Lập báo cáo về tuyển dụng khi có yêu cầu.', N'- Tốt nghiệp CĐ/ ĐH trở lên, có từ 1 năm kinh nghiệm tuyển dụng
<br>- Ngoại hình dễ nhìn, Thân thiện, Ưu tiên Nam
<br>- Có định hướng lâu dài và sự phát triển trong ngành nhân sự.
<br>- Có tinh thần phục vụ, biết lắng nghe và quan tâm đến người khác.
<br>- Sâu sắc, làm chủ tốt cảm xúc của bản thân.
<br>- Ham học hỏi, khả năng chịu áp lực tốt.
<br>- Kiến thức căn bản Luật lao động.
<br>- Sử dụng tốt tin học văn phòng, các công cụ Microsoft Office.', N'- Làm việc tại tập đoàn bán lẻ hàng đầu VN
<br>- Đội ngũ HR đông đảo lớn mạnh, dày dặn kinh nghiệm
<br>- Được đào tạo để trở thành bộ lọc quan trọng, trực tiếp ra quyết định tuyển dụng.
<br>- Gia tăng trải nghiệm với nhiều ứng viên, nhiều ngành nghề khác nhau.
<br>- Mang đến hơn 1000 cơ hội việc làm/tháng cho người lao động, đóng góp cho xã hội.
<br>- Làm việc cùng team hết sức vui nhộn, làm hết sức chơi hết mình.
<br>- Cơ hội trải nghiệm văn hóa ở nhiều tỉnh thành (Cơ hội đi công tác)', N'TP.HCM,...', N'Cao đẳng/ Đại học
', N'6 tháng/ 1 năm trở lên
', N'01/07/2023', 10, 10)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (74, N'Nhân viên content sản phẩm', N'- Quản lý thực tập sinh, CTV (4-7 bạn) sản xuất bài viết, hình ảnh, thông số kỹ thuật SP số lượng lớn ( có thể lên đến 200 SP/tuần)
<br>- Quản lý thực tập sinh, CTV sản xuất nội dung giải thích công nghệ, tư vấn chọn mua, hướng dẫn sử dụng SP
<br>- Khảo sát Khách hàng để thực hiện tối ưu các tính năng, bộ lọc, kết quả tìm kiếm... giúp khách hàng mua SP
<br>- Phối hợp team SEO onpage 100% SP on top google tìm kiếm
<br>- Phối hợp team chụp hình, quay clip sản phẩm đảm bảo SP có hình ảnh & video có yếu tố trải nghiệm
<br>- Các công việc khác do trưởng nhóm phân công', N'- Có khả năng chịu được áp lực khối lượng công việc lớn, nhịp độ nhanh, đa nhiệm
<br>- Có kinh nghiệm làm việc, quản lý thực tập sinh, cộng tác viên nội dung hoặc lĩnh vực bất kì
<br>- Viết tốt, diễn đạt súc tích, rành mạch, dễ hiểu, đúng chính tả.
<br>- Yêu thích và hay tìm hiểu lĩnh vực công nghệ, điện máy, điện gia dụng…
<br>- Biết xử lý hình ảnh bằng Photoshop hoặc Figma cơ bản (cắt, ghép, chỉnh màu, chỉnh sáng…)
<br>- Tin học văn phòng (soạn thảo văn bản, xử lý dữ liệu bằng hàm excel, làm file trình chiếu, Google Drive...)
<br>- Có tư duy về đo lường & tối ưu hiệu quả công viêc', N'- Môi trường làm việc chuyên nghiệp, lớn mạnh (Bộ phận content + SEO >20 người)
<br>- Cơ hội phát triển bản thân, được thúc đẩy sáng tạo ra giá trị mới cho bộ phận, công ty
<br>- Cọ xát & chia sẻ từ đội ngũ đồng nghiệp, quản lý dày dặn kinh nghiệm
<br>- Cơ hội thăng tiến rõ ràng
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần, Du lịch Team building hàng năm', N'TP.HCM,...', N'Cao đẳng/ Đại học
', N'1 năm trở lên
', N'01/07/2023', 43, 10)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (75, N'Product Management website', N'1. Phân tích yêu cầu kinh doanh để từ đó đưa ra Quy trình (Workflow) - Tính năng (features) - Trải nghiệm người dùng (UX/UI) tối ưu cho hệ thống Website, App của Thegioiddiong.com, DienmayXanh.com,...
<br>2. Nghiên cứu, khảo sát và phân tích dữ liệu về hành vi người dùng (Định tính và Định lượng) để đưa ra các phương án cải thiện sản phẩm. Google Analytics + Heatmap tracking + Group Survey là phương pháp team thường dùng.
<br>3. Phối hợp cùng UI Designer hoặc (tốt hơn nếu) bạn có thể chủ động thiết kế UI/UX. Bạn sẽ được huấn luyện sử dụng công cụ thiết kế Figma + Design System Library để thiết kế theo Styleguide của team.
<Br>4. Làm việc với đội Business Analyst và Developers để triển khai giao diện thành tính năng lên web/app hoàn chỉnh. Viết tài liệu mô tả tính năng (Documentation).', N'1. Có kỹ năng đặt câu hỏi để hiểu vấn đề tận gốc. Có khả năng chủ động giải quyết vấn đề và có tư duy phản biện. 
<br>2. Biết sử dụng 1 trong các công cụ đồ họa: Figma, Sketch, AdobeXD, Photoshop, Wireframe tools (vd Balsamiq)
<br>3. Có kiến thức cơ bản về UI/UX. Mắt thẩm mỹ tốt, đánh giá được thiết kế xấu - đẹp - hợp lý - không hợp lý ở điểm gì
<br>4. Có kiến thức, kỹ năng về khảo sát khách hàng
<br>5. Có kiến thức cơ bản về Google Analytics
<br>6. Có kinh nghiệm làm việc trong mảng Thương Mại Điện Tử là 1 lợi thế', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam 
<br>- Môi trường làm việc chuyên nghiệp, lớn mạnh
<br>- Cọ xát kinh nghiệm từ đội ngũ nhân viên dày dặn kinh nghiệm
<br>- Ký HĐLĐ, Phúc lợi đầy đủ tăng dần
<br>- Du lịch Teambuilding hàng năm
<br>- Thưởng cuối năm hấp dẫn ', N'TP.HCM,...', N'Cao đẳng/ Đại học
', N'1 năm trở lên
', N'01/07/2023', 37, 10)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (76, N'Chuyên viên mua hàng thể thao', N'- Cùng với Giám Đốc Mua hàng thương thảo hợp đồng với nhà cung cấp, xây dựng kế hoạch kinh doanh cho ngành hàng phụ trách 
<br>- Bao gồm công việc Mua hàng/ Tìm kiếm Nhà cung cấp Nước ngoài.
<br>- Triển khai chương trình khuyến mãi, layout siêu thị đúng theo thiết kế vận hành
<br>- Kết hợp với các phòng ban Logistic, Kế toán, Vận Hành, … để đảm bảo việc hỗ trợ ngành hàng như thanh toán tiền hàng, giao nhận hàng hóa, ….
<br>- Nghiên cứu, phân tích thị trường, xây dựng kế hoạch kinh doanh & kế hoạch khuyến mãi, dự báo doanh thu, lợi nhuận cho từng tuần, quý, tháng
<br>- Kiểm tra tồn kho và đặt hàng, chia hàng cho hàng hóa đang kinh doanh cũng như hàng khuyến mãi, làm việc chặt chẽ với các cửa hàng về tình hình hàng hóa và phối hợp giải quyết các vấn đề phát sinh trong quá trình bán hàng tại siêu thị', N'- Tốt nghiệp Cao Đẳng trở lên, khối ngành kinh tế
<br>- Trung thực, trách nhiệm và máu lửa trong công việc
<br>- Kỹ năng giao tiếp tốt, sắp xếp công việc hợp lý
<br>- Tiếng Anh - Toiec 500 hoặc tiếng Hoa
<br>- Vi tính văn phòng: làm việc nhiều với Excel
<br>- Trình độ B, các bảng tính, email và các phần mềm chat, phần mềm quản lý hàng hoá.
<br>- Xử lý công việc thường xuyên trên máy tính + Điện thoại (các phần mềm chat), áp lực về thời gian, nhận cuộc gọi và xử lý công việc phát sinh', N'- Môi trường làm việc chuyên nghiệ
<br>- Quy mô công ty lớn, mảng bán lẻ nhiều tiềm năng mang lại khối lượng kinh nghiệm thực tế khổng lồ
<br>- Chế độ phúc lợi và đãi ngộ hấp dẫn
<br>- Cơ hội thăng tiến tựa năng lực', N'TP.HCM,...', N'Cao đẳng/ Đại học
', N'1 năm trở lên
', N'01/07/2023', 32, 10)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (77, N'Nhân viên Graphic Designer', N'- Làm việc cùng team Digital Marketing MWG
<br>- Thiết kế các ấn phẩm Marketing online: Banner tĩnh/ động HTML (bao gồm cả banner quảng cáo digital, website),
<br>- Diễn hoạt Video (Video animation)
<br>- Xử lí/ cắt ghép Video, xử lí hình ảnh (retouch)
<br>- Tham gia brainstorm & creative cho các campaign lớn.', N'- Nam hoặc nữ, độ tuổi 20-28, tốt nghiệp CĐ/ĐH
<br>- Thân thiện, hòa đồng, năng động
<br>- Sử dụng thành thạo phần mềm Adobe Photoshop, Illustrator, After Effect, Premiere....
<br>- Ưu tiên ứng viên có 1 năm kinh nghiệm trở lên', N'- Làm việc tại tập đoàn bán lẻ hàng đầu Việt Nam
<br>- Văn hóa công ty khác biệt (5 Giá trị cốt lõi là trọng tâm)
<br>- Môi trường làm việc trẻ trung, năng động, trao quyền
<br>- Văn phòng trụ sở hiện đại, tiện nghi và thoải mái', N'TP.HCM,...', N'Cao đẳng/ Đại học
', N'1 năm trở lên
', N'01/07/2023', 27, 10)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (78, N'Backend Developer sàn TMDT', N'- Develop new products based on your TALENT and SKILLS
<br>- Work in a creative and big data system
<br>- Collaborate with other departments to build up new IT solutions
<br>- Research and apply new technologies to optimize our business processes and core system', N'- Write RESTful API functions using ASP.Netcore/ C#; applied TDD in development  
<br>- Understand and applying microservices
<br>- Write unit and integration tests - Write CI/CD automation build script
<br>- Know: Elasticsearch, Redis, MySQL, MongoDB, Hazelcast, ...
<br>- Having E-Commerce knowledge would be a plus', N'1. Monday to Friday work week (8 to 5, shuttle bus)
<br>2. Full insurance coverage
<br>3. 13th month salary (upon KPI and business target)
<br>4. Annual performance and salary review
<br>5. Well-equipped entertainment room (Table tennis, billiards)
<br>6. Modern, open and comfortable working environment
<br>7. Creative and friendly colleagues, enthusiast and supportive management', N'TP.HCM,...', N'Cao đẳng/ Đại học
', N'1 năm trở lên
', N'01/07/2023', 21, 10)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (79, N'Nhân viên Phát triển kinh doanh', N'- Tìm kiếm, kết nối và đưa các Brand/Nhà bán hàng theo mức độ ưu tiên về kinh doanh tại Sàn Thương mại điện tử (TMĐT)
<br>- Lập kế hoạch, triển khai chiến lược phát triển/tăng trưởng về hình ảnh và kinh doanh cho Brand/Nhà bán hàng
<br>- Theo dõi, chăm sóc và đánh giá hoạt động của các Brand/Nhà bán hàng lớn để đảm bảo phát triển bền vững để gắn kết giữa Brand/Nhà bán hàng với Sàn TMĐT
<br>- Các phân công khác của bộ phận để đạt mục tiêu theo từng thời điểm', N'- Trung thực, minh bạch trong tiền bạc và các mối quan hệ
<br>- Có khả năng làm việc trong môi trường áp lực và luôn thay đổi
<br>- Kĩ năng giao tiếp, thuyết phục tốt, máu kinh doanh
<br>- Tư duy logic, sử dụng tốt excel và tin học văn phòng 
<br>- Xử lý công việc thường xuyên trên máy tính + Điện thoại (các phần mềm chat), áp lực về thời gian, nhận cuộc gọi và xử lý công việc phát sinh', N'- Môi trường làm việc chuyên nghiệp, trẻ trung năng động
<br>- Với quy mô công ty lớn, mảng bán lẻ nhiều tiềm năng mang lại khối lượng kinh nghiệm thực tế khổng lồ
<br>- Chế độ phúc lợi và đãi ngộ hấp dẫn
<br>- Cơ hội thăng tiến tựa năng lực rộng mở', N'TP.HCM,...', N'Cao đẳng/ Đại học
', N'Không cần kinh nghiệm', N'01/07/2023', 17, 10)
INSERT [dbo].[job] ([idJob], [nameJob], [jobDesciption], [jobRequest], [rights], [workplace], [degree], [experience], [applieddate], [quantity], [cateID]) VALUES (90, N'Java/Back End', N'- Design, code, và maintain android application. Tham gia các dự án outsource cho khách hàng Nhật Bản', N'- Có ít nhất 2 năm kinh nghiệm lập trình App với ngôn ngữ Java', N'- 12 ngày nghỉ phép, 3 ngày nghỉ hè và 4 ~ 5 ngày nghỉ có lương của riêng công ty/năm', N'Hà Nội', N'Đại Học', N'Từ 2 năm trở lên', N'20/10/2022', 20, 9)
GO
SET IDENTITY_INSERT [dbo].[jobcategory] ON 

INSERT [dbo].[jobcategory] ([idJobcate], [nameJobcate], [status], [idKhoi]) VALUES (1, N'Bán Hàng/ Thu Ngân', 1, 1)
INSERT [dbo].[jobcategory] ([idJobcate], [nameJobcate], [status], [idKhoi]) VALUES (2, N'Giao Hàng/ Shipper', 1, 1)
INSERT [dbo].[jobcategory] ([idJobcate], [nameJobcate], [status], [idKhoi]) VALUES (3, N'Kho Vận/ Kho Trung Tâm', 1, 1)
INSERT [dbo].[jobcategory] ([idJobcate], [nameJobcate], [status], [idKhoi]) VALUES (4, N'Bảo Vệ/ Giữ Xe', 1, 1)
INSERT [dbo].[jobcategory] ([idJobcate], [nameJobcate], [status], [idKhoi]) VALUES (5, N'Sơ Chế/ Đóng Gói', 1, 1)
INSERT [dbo].[jobcategory] ([idJobcate], [nameJobcate], [status], [idKhoi]) VALUES (6, N'Marketing/ Media', 1, 2)
INSERT [dbo].[jobcategory] ([idJobcate], [nameJobcate], [status], [idKhoi]) VALUES (7, N'Kế Toán/ Tài Chính', 1, 2)
INSERT [dbo].[jobcategory] ([idJobcate], [nameJobcate], [status], [idKhoi]) VALUES (8, N'Thiết Kế/ Phát Triển Sản Phẩm', 1, 2)
INSERT [dbo].[jobcategory] ([idJobcate], [nameJobcate], [status], [idKhoi]) VALUES (9, N'Công nghệ thông tin/ IT', 1, 2)
INSERT [dbo].[jobcategory] ([idJobcate], [nameJobcate], [status], [idKhoi]) VALUES (10, N'Thương Mại Điện Tử', 1, 2)
INSERT [dbo].[jobcategory] ([idJobcate], [nameJobcate], [status], [idKhoi]) VALUES (11, N'Sinh viên mới tốt nghiệp', 1, 3)
INSERT [dbo].[jobcategory] ([idJobcate], [nameJobcate], [status], [idKhoi]) VALUES (12, N'Việc làm theo Ca', 1, 3)
INSERT [dbo].[jobcategory] ([idJobcate], [nameJobcate], [status], [idKhoi]) VALUES (13, N'Bán thời gian', 1, 3)
INSERT [dbo].[jobcategory] ([idJobcate], [nameJobcate], [status], [idKhoi]) VALUES (14, N'Quản lý/Có kinh nghiệm', 1, 3)
INSERT [dbo].[jobcategory] ([idJobcate], [nameJobcate], [status], [idKhoi]) VALUES (15, N'Việc làm Giờ Hành Chánh', 1, 3)
SET IDENTITY_INSERT [dbo].[jobcategory] OFF
GO
ALTER TABLE [dbo].[applicationstatus]  WITH CHECK ADD  CONSTRAINT [FK_applicationstatus_admin] FOREIGN KEY([Aps_idAdmin])
REFERENCES [dbo].[admin] ([idAdmin])
GO
ALTER TABLE [dbo].[applicationstatus] CHECK CONSTRAINT [FK_applicationstatus_admin]
GO
ALTER TABLE [dbo].[applicationstatus]  WITH CHECK ADD  CONSTRAINT [FK_applicationstatus_applicant] FOREIGN KEY([Aps_idApplicant])
REFERENCES [dbo].[applicant] ([idApplicant])
GO
ALTER TABLE [dbo].[applicationstatus] CHECK CONSTRAINT [FK_applicationstatus_applicant]
GO
ALTER TABLE [dbo].[job]  WITH CHECK ADD  CONSTRAINT [FK_job_jobcategory1] FOREIGN KEY([cateID])
REFERENCES [dbo].[jobcategory] ([idJobcate])
GO
ALTER TABLE [dbo].[job] CHECK CONSTRAINT [FK_job_jobcategory1]
GO
USE [master]
GO
ALTER DATABASE [QuanLyTuyenDung] SET  READ_WRITE 
GO
