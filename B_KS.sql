USE [master]
GO
/****** Object:  Database [BookingKS]    Script Date: 5/19/2023 10:02:29 PM ******/
CREATE DATABASE [BookingKS]
GO
USE [BookingKS]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 5/19/2023 10:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/19/2023 10:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/19/2023 10:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/19/2023 10:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/19/2023 10:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/19/2023 10:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PhieuDatPhong]    Script Date: 5/19/2023 10:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PhieuDatPhong](
	[Id_CTDT] [int] IDENTITY(1,1) NOT NULL,
	[maPhong] [int] NULL,
	[maPDP] [int] NULL,
	[tienCoc] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CT_PhieuDatPhong] PRIMARY KEY CLUSTERED 
(
	[Id_CTDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PhieuThuePhong]    Script Date: 5/19/2023 10:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PhieuThuePhong](
	[Id_CTTP] [int] IDENTITY(1,1) NOT NULL,
	[maPTP] [int] NULL,
	[maPhong] [int] NULL,
	[ngaySuDung] [datetime] NULL,
	[maDV] [int] NULL,
 CONSTRAINT [PK_CT_PhieuThuePhong] PRIMARY KEY CLUSTERED 
(
	[Id_CTTP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 5/19/2023 10:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[maDV] [int] IDENTITY(1,1) NOT NULL,
	[tenDV] [nvarchar](50) NULL,
	[donGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[maDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/19/2023 10:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHD] [int] IDENTITY(1,1) NOT NULL,
	[tongTien] [decimal](18, 0) NULL,
	[ngayThanhToan] [date] NULL,
	[maNV] [int] NULL,
	[maPTP] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/19/2023 10:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKH] [int] IDENTITY(1,1) NOT NULL,
	[tenKH] [nvarchar](50) NULL,
	[gioiTinh] [nvarchar](10) NULL,
	[CCCD] [varchar](12) NULL,
	[diaChi] [nvarchar](50) NULL,
	[sdt] [varchar](12) NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 5/19/2023 10:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](50) NULL,
	[sdt] [varchar](12) NULL,
	[email] [nvarchar](50) NULL,
	[ngayGui] [date] NULL,
	[noiDung] [nvarchar](500) NULL,
 CONSTRAINT [PK_LienHe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 5/19/2023 10:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[ma_LP] [int] IDENTITY(1,1) NOT NULL,
	[tenLP] [nchar](10) NULL,
	[hinhAnh] [nvarchar](250) NULL,
	[SC] [int] NULL,
	[DG] [decimal](18, 0) NULL,
	[MT] [nvarchar](500) NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[ma_LP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/19/2023 10:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNV] [int] IDENTITY(1,1) NOT NULL,
	[tenNV] [nvarchar](50) NULL,
	[gioiTinh] [nvarchar](10) NULL,
	[ngaySinh] [date] NULL,
	[diaChi] [nvarchar](50) NULL,
	[sdt] [varchar](12) NULL,
	[email] [nvarchar](50) NULL,
	[ImageNV] [nvarchar](250) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatPhong]    Script Date: 5/19/2023 10:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatPhong](
	[maPDP] [int] IDENTITY(1,1) NOT NULL,
	[ngayDen] [date] NULL,
	[ngayDi] [date] NULL,
	[tongTienCoc] [decimal](18, 0) NULL,
	[soNguoi] [int] NULL,
	[maKH] [int] NULL,
	[maNV] [int] NULL,
 CONSTRAINT [PK_PhieuDatPhong] PRIMARY KEY CLUSTERED 
(
	[maPDP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuThuePhong]    Script Date: 5/19/2023 10:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThuePhong](
	[maPTP] [int] IDENTITY(1,1) NOT NULL,
	[ngayThue] [date] NULL,
	[ngayTra] [date] NULL,
	[maPDP] [int] NULL,
	[maKH] [int] NULL,
	[maNV] [int] NULL,
 CONSTRAINT [PK_PhieuThuePhong] PRIMARY KEY CLUSTERED 
(
	[maPTP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 5/19/2023 10:02:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[maPhong] [int] IDENTITY(1,1) NOT NULL,
	[tenPhong] [nvarchar](50) NULL,
	[maLP] [int] NULL,
	[Image] [nvarchar](250) NULL,
	[sucChua] [int] NULL,
	[donGia] [decimal](18, 0) NULL,
	[moTa] [nvarchar](500) NULL,
	[tinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[maPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202305141238156_InitIdentityTable', N'BookingKS.Migrations.Configuration', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA9726488DDD16CEDA6E8DFA86AC13F42DE04ADCB510895225CAB151F4CBFAD04FEA2F742851375E74D99577D7418060450ECF0C874372381CFABF7FFE1DFFF2E87BC6038E62372013F360B46F1A98D881E392E5C44CE8E2D55BF3979FBFFD667CE6F88FC6C79CEE88D1414B124FCC7B4AC363CB8AED7BECA378E4BB7614C4C1828EECC0B790135887FBFB3F59070716060813B00C63FC3E21D4F571FA019FD380D838A409F2AE02077B312F879A598A6A5C231FC721B2F1C47C17049F41B8DF67A38CD6344E3C17811C33EC2D4C031112504441CAE30F319ED12820CB590805C8BB7B0A31D02D9017632EFD7149DEB523FB87AC2356D93087B29398067E4FC08323AE194B6CBE927ECD4273A0BB33D0317D62BD4EF537312F1C9C16BD0F3C5080C8F078EA458C78625E152C4EE2F01AD351DE7094419E4700F725883E8FAA887B46E7767B85251D8EF6D9BF3D639A783489F084E08446C8DB336E93B9E7DABFE3A7BBE0332693A383F9E2E8EDEB37C8397AF3233E7A5DED29F415E86A0550741B05218E4036BC28FA6F1A56BD9D25362C9A55DA645A015B02BB338D2BF47889C992DEC374397C6B1AE7EE2376F2126E5C1F880B73081AD12881CFEBC4F3D0DCC345BDD5C893FDDFC0F5F0F59B41B85EA30777990EBDC01F264E04F3EA3DF6D2DAF8DE0DB3E9551BEF4F9CEC3C0A7CF65DB7AFACF6D32C48229B7526D092DCA16889695DBAB1551A6F27936650C39B758EBAFBA6CD2495CD5B49CA3AB4CA4CC8596C7A36E4F23E2FDFCE167712863078A969318D34199CB8558D84B67B4641519ACD4157B321D09DAF79153CF391EB0DB00C76E002FEC7C28D7C5CF412C6C5C388F496F916C531AC02CE6F28BE6F101D7E0E20FA0CDB4904C639A3C80F9F9DDBED7D40F075E2CF99CD6F8ED7604373F7253847360DA233C25AAD8D7719D89F83849E11E71451FC81DA3920FBBC73FDEE0083887362DB388ECFC198B1330DC0BDCE012F083D3AEC0DC796A76DBB21530FB9BEDA0F1116D24F3969E98BA829247F4443A6F2499A44BD0C962EE9266A4EAA1735A368159593F515958175939453EA054D095AE5CCA806F3F2D2111ADECD4B6177DFCF5B6FF3D6AD051535CE6085C4BF62822358C69C5B44298E4839025DD68D6D380BE9F031A6CFBE37A59C3E222F199AD54AB3215D04869F0D29ECEECF86544C287E701DE6957438FCE4C400DF895E7DAE6A9F7382649B9E0EB56E6E9AF966D600DD743989E3C076D359A0087BF1A0455D7EF0E18CF60846D61B310A021D034377D9960725D0375334AA1B728A3D4CB171626761C1298A6DE4C86A840E393D04CB775485606534A42EDC0F124FB0741CB146881D826298A92EA1F2B47089ED86C86BD592D0B2E316C6FA5EF0106B4E71880963D8AA892ECCD5C10F2640C1471894360D8DAD8AC5351BA2C66BD58D799B0B5B8EBB1493D8884DB6F8CE1ABBE4FEDBB31866B3C636609CCD2AE922803690B70D03E56795AE06201E5C76CD40851393C640B94BB51103AD6B6C0B065A57C98B33D0EC88DA75FC85F3EAAE9967FDA0BCF96DBD515D5BB0CD9A3E76CC3433DF13DA50688123D93C4FE7AC123F52C5E10CE4E4E7B398BBBAA28930F019A6F5904DE9EF2AFD50AB194434A226C0D2D05A40F915A004244DA81EC2E5B1BC46E9B817D103368FBB35C2F2B55F80ADD8808C5DBD0AAD10EA2F4C45E3EC74FA287A56588364E49D0E0B151C8541888B57BDE31D94A28BCBCA8AE9E20BF7F1862B1DE383D1A0A016CF55A3A4BC33836B2937CD762DA91CB23E2ED95A5A12DC278D96F2CE0CAE256EA3ED4A5238053DDC82B55454DFC2079A6C79A4A3D86D8ABAB195E547F182B1A549A41A5FA13074C9B29258C54B8C599655357D35EB9F70E46718961D2BF28E0A690B4E3488D0120BB5C01A243D77A3989E228AE688C579A68E2F9129F756CDF29FB3AC6E9FF220E6FB404ECD7E672DA48BFBDA4E2BBB221CE11CFAE7337F260DA22B465FDDDC60696EC84391226E3F0DBCC4277AF74ADF3ABBBDABB6CF4A6484B125C82FB94F92AE2427B7AEF84EC3224F894186A8F05D561F263D844ED9B9E75955B7CE1BD5A3E4C1A92A8A2E60B5B561D339313D864AF40EFB8F542BC2F3CC299E925205E0453D312A590D1258A5AE3B6A3DF1A48A59AFE98E286497542185AA1E525673486A42562B56C2D368544DD19D839C355245976BBB232BF247AAD08AEA15B015328B75DD511529265560457577EC32DF445C427778D7D29E5956DCB6B243ED7AFB9606E379D6C361B6BDCADD7D15A852DC138BDFCE4B60BC7C276D497BB25BD196B248C67AB6A4C1D0AF3AB53BEFFAA2D37851AFC7AC5D64D716F6A68B7C3D5E3F8B7D56BB908E752249C1BD38DE09C7B8313F52B53F9A91CE58198969E46A844DFD29A6D81F3182D1EC4F6FEAB9982DE139C11522EE02C7344BDE300FF70F0E859737BBF30AC68A63C7531C49754F61EA63B6813C2CF28022FB1E457256C41A2F454A5029E07C411CFC3831FF4A5B1DA7B10BF62B2DDE332EE20FC4FD33818ABB28C1C6DF7296E73099F31DDE6A1482FEFD221E417457F9C51F9FB2A67BC64D04D3E9D8D81714BDCAF0D79F46F492266BBA86342B3F9878B9B3ADF62241892ACC96D51F20CC5D3AC8E3835CCAEF7CF4F87D5FD1940F0CD642543C22180A6F1015EA1E09AC82A57D20E0C0274D1F08F4EBACFAC1C02AA2691F0BB8A43F98F854A0FB3294B7DCE23EA4382E6D62494AF5DC9A6ABD56DEE5B6F72629237BAD892E675DF7801B34B37A3D17E585652C0FB6752A129207C3DEA6DD3F7B16F2AE241E974EFB76F38D379962DC7095F4556516EF402E9C22B767FBF9C39BB6355DFC77C79330FB6509EF98B1F16D7EFBB9C09B36365D8078C78DAD57C6EF8ED9DAB6F6CF2D5B5AE72D74EBF9BB722A92E61E4715456ECBCFCD42EE70FC9F0760049947993DAB5427843525B3B6302C49F44CF59968226369E2487C258A66B6FDFACA37FCC6CE729A66B69AFCCD26DE7CFD6FE4CD699A796BB222B79159ACCC4B54657BB7AC634D89532F2993B8D69396C4F5369FB5F152FE25250E0FA294DAECD1DC2EBF9C3CE1415432E4D4E991172C5F14C3DE59F91B8CB07FC7EEB284607F919160BBB66B1634176411E49BB720514E224468AE30450E6CA927117517C8A650CD02D0E9BBF034A8C7AE41E6D8B92037090D130A5DC6FEDCAB05BC9813D0C43F4D7EAECB3CBE09D9573C4417404C9705EE6FC8BBC4F59C42EE73454C4803C1BC0B1EEE65634959D877F954205D07A42310575FE114DD613FF4002CBE2133F48057910DCCEF122F91FD5446007520ED035157FBF8D445CB08F931C728DBC327D8B0E33FFEFC3FF4EA14ED8A540000, N'6.4.4')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'01c2f686-7eb6-4e1f-b47f-7c4310553328', N'phong@gmail.com', 0, N'AO+FZptc1yMI3Y/EvNj7zINXaoTozNoe0P7Te7qoEaDTJxhBldW9X7eCwAR/Ib0pLg==', N'e4fbb5a7-79d7-40aa-88e9-01bb2e3626b5', NULL, 0, 0, NULL, 1, 0, N'phong@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'317f4dbe-8ae7-4d82-8da8-87c70291aab5', N'quang@gmail.com', 0, N'AJYWOWdQRMgP1+42u7PZjtr4wc+oWe7PwHkxTW4BtYO31+71oRB8xObkyaYclZ4FWw==', N'e2249888-a543-494b-9d04-906a20fd0039', NULL, 0, 0, NULL, 1, 0, N'quang@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[CT_PhieuDatPhong] ON 

INSERT [dbo].[CT_PhieuDatPhong] ([Id_CTDT], [maPhong], [maPDP], [tienCoc]) VALUES (1, NULL, 1, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[CT_PhieuDatPhong] ([Id_CTDT], [maPhong], [maPDP], [tienCoc]) VALUES (2, NULL, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[CT_PhieuDatPhong] ([Id_CTDT], [maPhong], [maPDP], [tienCoc]) VALUES (4, NULL, 5, CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[CT_PhieuDatPhong] ([Id_CTDT], [maPhong], [maPDP], [tienCoc]) VALUES (5, 2, 6, CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[CT_PhieuDatPhong] ([Id_CTDT], [maPhong], [maPDP], [tienCoc]) VALUES (7, NULL, 8, CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[CT_PhieuDatPhong] ([Id_CTDT], [maPhong], [maPDP], [tienCoc]) VALUES (8, NULL, 9, CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[CT_PhieuDatPhong] ([Id_CTDT], [maPhong], [maPDP], [tienCoc]) VALUES (10, NULL, 11, CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[CT_PhieuDatPhong] ([Id_CTDT], [maPhong], [maPDP], [tienCoc]) VALUES (12, 12, 14, CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[CT_PhieuDatPhong] ([Id_CTDT], [maPhong], [maPDP], [tienCoc]) VALUES (13, 3, 15, CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[CT_PhieuDatPhong] ([Id_CTDT], [maPhong], [maPDP], [tienCoc]) VALUES (14, 3, 16, CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[CT_PhieuDatPhong] ([Id_CTDT], [maPhong], [maPDP], [tienCoc]) VALUES (15, 2, 17, CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[CT_PhieuDatPhong] ([Id_CTDT], [maPhong], [maPDP], [tienCoc]) VALUES (16, 6, 18, CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[CT_PhieuDatPhong] ([Id_CTDT], [maPhong], [maPDP], [tienCoc]) VALUES (1015, 3, 1017, CAST(20000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[CT_PhieuDatPhong] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (1, N'phong', NULL, NULL, NULL, N'555555555555', N'phong@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (2, N'quang', NULL, NULL, NULL, N'22222222222', N'quang@gmai.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (3, N'yyyy', NULL, NULL, NULL, N'454543', N'hehe@gamil.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (4, N'pp', NULL, NULL, NULL, N'23232', N'sad@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (5, N'sss', NULL, NULL, NULL, N'0972222', N'as@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (6, N'rrr', NULL, NULL, NULL, N'454', N'ee@gmail.cmo')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (7, N'sad', NULL, NULL, NULL, N'232', N'asss@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (8, N'fdgdfg', NULL, NULL, NULL, N'345435435', N'dsfds@gamil.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (9, N'ád', NULL, NULL, NULL, N'34', N'hhhh@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (10, N'êrew', NULL, NULL, NULL, N'343242', N'uuu@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (11, N'ewwww', NULL, NULL, NULL, N'3432', N'dsfds@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (12, N'phongdss', NULL, NULL, NULL, N'23432', N'saa@gamil.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (14, N'phongsá', NULL, NULL, NULL, N'2423423', N'sads@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (15, N'sts', NULL, NULL, NULL, N'34', N'aaaaa@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (16, N'quang', NULL, NULL, NULL, N'12312321', N'quang@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (17, N'phong222', NULL, NULL, NULL, N'123213', N'gpdsm@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (18, N'hhhh', NULL, NULL, NULL, N'23232', N'hhhhh@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [gioiTinh], [CCCD], [diaChi], [sdt], [email]) VALUES (1017, N'kk', N'Nam', N'123456789', N'Khu e, Quận 9, HCM', N'0987654321', N'kk@gmail.com')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiPhong] ON 

INSERT [dbo].[LoaiPhong] ([ma_LP], [tenLP], [hinhAnh], [SC], [DG], [MT]) VALUES (1, N'Single
  ', NULL, NULL, CAST(400000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[LoaiPhong] ([ma_LP], [tenLP], [hinhAnh], [SC], [DG], [MT]) VALUES (2, N'Triple 2  ', NULL, NULL, CAST(800000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[LoaiPhong] ([ma_LP], [tenLP], [hinhAnh], [SC], [DG], [MT]) VALUES (3, N'Triple 3
', NULL, NULL, CAST(1000000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[LoaiPhong] ([ma_LP], [tenLP], [hinhAnh], [SC], [DG], [MT]) VALUES (4, N'TWIN
    ', NULL, NULL, CAST(1300000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[LoaiPhong] ([ma_LP], [tenLP], [hinhAnh], [SC], [DG], [MT]) VALUES (5, N'Gia Đình  ', NULL, NULL, CAST(1000000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[LoaiPhong] ([ma_LP], [tenLP], [hinhAnh], [SC], [DG], [MT]) VALUES (6, N'Sang Trọng', NULL, NULL, CAST(2500000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[LoaiPhong] ([ma_LP], [tenLP], [hinhAnh], [SC], [DG], [MT]) VALUES (7, N'Giá Rẻ    ', NULL, NULL, CAST(650000 AS Decimal(18, 0)), NULL)
SET IDENTITY_INSERT [dbo].[LoaiPhong] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuDatPhong] ON 

INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (1, CAST(N'2023-05-13' AS Date), CAST(N'2023-06-13' AS Date), NULL, 2, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (2, NULL, CAST(N'2023-05-14' AS Date), NULL, 3, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (3, CAST(N'2023-05-15' AS Date), CAST(N'2023-05-15' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (4, CAST(N'2023-05-15' AS Date), CAST(N'2023-05-15' AS Date), NULL, 2, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (5, CAST(N'2023-05-15' AS Date), CAST(N'2023-05-15' AS Date), NULL, 3, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (6, CAST(N'2023-05-15' AS Date), CAST(N'2023-05-15' AS Date), NULL, 3, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (7, CAST(N'2023-02-01' AS Date), CAST(N'2023-05-15' AS Date), NULL, 2, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (8, CAST(N'2023-05-16' AS Date), CAST(N'2023-05-16' AS Date), NULL, 3, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (9, CAST(N'2023-05-16' AS Date), CAST(N'2023-05-16' AS Date), NULL, 3, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (10, CAST(N'2023-05-16' AS Date), CAST(N'2023-05-16' AS Date), NULL, 1, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (11, CAST(N'2023-05-16' AS Date), CAST(N'2023-05-16' AS Date), NULL, 1, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (12, CAST(N'2023-05-16' AS Date), CAST(N'2023-05-16' AS Date), NULL, 2, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (14, CAST(N'2023-05-16' AS Date), CAST(N'2023-05-16' AS Date), NULL, 3, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (15, CAST(N'2023-05-16' AS Date), CAST(N'2023-05-16' AS Date), NULL, 2, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (16, CAST(N'2023-05-16' AS Date), CAST(N'2023-05-16' AS Date), NULL, 2, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (17, CAST(N'2023-05-18' AS Date), CAST(N'2023-05-18' AS Date), NULL, 2, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (18, CAST(N'2023-05-18' AS Date), CAST(N'2023-05-18' AS Date), NULL, 2, NULL, NULL)
INSERT [dbo].[PhieuDatPhong] ([maPDP], [ngayDen], [ngayDi], [tongTienCoc], [soNguoi], [maKH], [maNV]) VALUES (1017, CAST(N'2023-05-18' AS Date), CAST(N'2023-05-18' AS Date), NULL, 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PhieuDatPhong] OFF
GO
SET IDENTITY_INSERT [dbo].[Phong] ON 

INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLP], [Image], [sucChua], [donGia], [moTa], [tinhTrang]) VALUES (2, N'P101
', 1, N'/Content/Theme_KS/img/room-1.jpg
', 1, CAST(400000 AS Decimal(18, 0)), N'Đây là phòng 1 giường đơn', N'Trống
')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLP], [Image], [sucChua], [donGia], [moTa], [tinhTrang]) VALUES (3, N'P102', 2, N'/Content/Theme_KS/img/room-2.jpg', 2, CAST(800000 AS Decimal(18, 0)), N'Đây là phòng 1 giường đôi
', N'Trống
')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLP], [Image], [sucChua], [donGia], [moTa], [tinhTrang]) VALUES (4, N'P103', 3, N'/Content/Theme_KS/img/room-3.jpg', 3, CAST(1000000 AS Decimal(18, 0)), N'Đây là phòng 3 giường đơn', N'Trống
')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLP], [Image], [sucChua], [donGia], [moTa], [tinhTrang]) VALUES (5, N'P104', 4, N'/Content/Theme_KS/img/room-4.jpg', 2, CAST(1300000 AS Decimal(18, 0)), N'Căn phòng chất lượng với tầm nhìn ra biển', N'Trống
')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLP], [Image], [sucChua], [donGia], [moTa], [tinhTrang]) VALUES (6, N'P105', 5, N'/Content/Theme_KS/img/room-1.jpg
', 4, CAST(1000000 AS Decimal(18, 0)), N'Căn phòng chất lượng với tầm nhìn ra biển', N'Trống
')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLP], [Image], [sucChua], [donGia], [moTa], [tinhTrang]) VALUES (7, N'P106', 6, N'/Content/Theme_KS/img/room-2.jpg', 2, CAST(2500000 AS Decimal(18, 0)), N'Căn phòng chất lượng với tầm nhìn ra biển', N'Trống
')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLP], [Image], [sucChua], [donGia], [moTa], [tinhTrang]) VALUES (8, N'P200', 7, N'/Content/Theme_KS/img/room-3.jpg', 2, CAST(650000 AS Decimal(18, 0)), N'Căn phòng chất lượng với tầm nhìn ra biển', N'Trống
')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLP], [Image], [sucChua], [donGia], [moTa], [tinhTrang]) VALUES (9, N'P201', 1, N'/Content/Theme_KS/img/room-1.jpg
', 1, CAST(400000 AS Decimal(18, 0)), N'Đây là phòng 1 giường đơn', N'Trống
')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLP], [Image], [sucChua], [donGia], [moTa], [tinhTrang]) VALUES (10, N'P202', 1, N'/Content/Theme_KS/img/room-4.jpg', 1, CAST(400000 AS Decimal(18, 0)), N'Đây là phòng 1 giường đơn', N'Trống
')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLP], [Image], [sucChua], [donGia], [moTa], [tinhTrang]) VALUES (11, N'P203', 2, N'/Content/Theme_KS/img/room-1.jpg
', 2, CAST(800000 AS Decimal(18, 0)), N'Đây là phòng 1 giường đôi
', N'Trống
')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLP], [Image], [sucChua], [donGia], [moTa], [tinhTrang]) VALUES (12, N'P204', 3, N'/Content/Theme_KS/img/room-3.jpg', 3, CAST(1000000 AS Decimal(18, 0)), N'Đây là phòng 3 giường đơn', N'Trống
')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLP], [Image], [sucChua], [donGia], [moTa], [tinhTrang]) VALUES (13, N'P205', 4, N'/Content/Theme_KS/img/room-2.jpg', 2, CAST(1300000 AS Decimal(18, 0)), N'Căn phòng chất lượng với tầm nhìn ra biển', N'Trống
')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLP], [Image], [sucChua], [donGia], [moTa], [tinhTrang]) VALUES (14, N'P206', 5, N'/Content/Theme_KS/img/room-4.jpg', 4, CAST(1000000 AS Decimal(18, 0)), N'Căn phòng chất lượng với tầm nhìn ra biển', N'Trống
')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLP], [Image], [sucChua], [donGia], [moTa], [tinhTrang]) VALUES (15, N'P301', 6, N'/Content/Theme_KS/img/room-1.jpg
', 2, CAST(2500000 AS Decimal(18, 0)), N'Căn phòng chất lượng với tầm nhìn ra biển', N'Trống
')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLP], [Image], [sucChua], [donGia], [moTa], [tinhTrang]) VALUES (16, N'P302', 7, N'/Content/Theme_KS/img/room-3.jpg', 2, CAST(650000 AS Decimal(18, 0)), N'Căn phòng chất lượng với tầm nhìn ra biển', N'Trống
')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLP], [Image], [sucChua], [donGia], [moTa], [tinhTrang]) VALUES (18, N'P401', 1, N'/Content/Theme_KS/img/room-1.jpg', 1, CAST(100000 AS Decimal(18, 0)), N'Phòng 1 người ', N'Trống')
SET IDENTITY_INSERT [dbo].[Phong] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/19/2023 10:02:30 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 5/19/2023 10:02:30 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 5/19/2023 10:02:30 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 5/19/2023 10:02:30 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 5/19/2023 10:02:30 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/19/2023 10:02:30 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CT_PhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [FK_CT_PhieuDatPhong_PhieuDatPhong] FOREIGN KEY([maPDP])
REFERENCES [dbo].[PhieuDatPhong] ([maPDP])
GO
ALTER TABLE [dbo].[CT_PhieuDatPhong] CHECK CONSTRAINT [FK_CT_PhieuDatPhong_PhieuDatPhong]
GO
ALTER TABLE [dbo].[CT_PhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [FK_CT_PhieuDatPhong_Phong] FOREIGN KEY([maPhong])
REFERENCES [dbo].[Phong] ([maPhong])
GO
ALTER TABLE [dbo].[CT_PhieuDatPhong] CHECK CONSTRAINT [FK_CT_PhieuDatPhong_Phong]
GO
ALTER TABLE [dbo].[CT_PhieuThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_CT_PhieuThuePhong_DichVu] FOREIGN KEY([maDV])
REFERENCES [dbo].[DichVu] ([maDV])
GO
ALTER TABLE [dbo].[CT_PhieuThuePhong] CHECK CONSTRAINT [FK_CT_PhieuThuePhong_DichVu]
GO
ALTER TABLE [dbo].[CT_PhieuThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_CT_PhieuThuePhong_PhieuThuePhong] FOREIGN KEY([maPTP])
REFERENCES [dbo].[PhieuThuePhong] ([maPTP])
GO
ALTER TABLE [dbo].[CT_PhieuThuePhong] CHECK CONSTRAINT [FK_CT_PhieuThuePhong_PhieuThuePhong]
GO
ALTER TABLE [dbo].[CT_PhieuThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_CT_PhieuThuePhong_Phong] FOREIGN KEY([maPhong])
REFERENCES [dbo].[Phong] ([maPhong])
GO
ALTER TABLE [dbo].[CT_PhieuThuePhong] CHECK CONSTRAINT [FK_CT_PhieuThuePhong_Phong]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVien] ([maNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_PhieuThuePhong] FOREIGN KEY([maPTP])
REFERENCES [dbo].[PhieuThuePhong] ([maPTP])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_PhieuThuePhong]
GO
ALTER TABLE [dbo].[PhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatPhong_KhachHang] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[PhieuDatPhong] CHECK CONSTRAINT [FK_PhieuDatPhong_KhachHang]
GO
ALTER TABLE [dbo].[PhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatPhong_NhanVien] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVien] ([maNV])
GO
ALTER TABLE [dbo].[PhieuDatPhong] CHECK CONSTRAINT [FK_PhieuDatPhong_NhanVien]
GO
ALTER TABLE [dbo].[PhieuThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThuePhong_KhachHang] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[PhieuThuePhong] CHECK CONSTRAINT [FK_PhieuThuePhong_KhachHang]
GO
ALTER TABLE [dbo].[PhieuThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThuePhong_NhanVien] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVien] ([maNV])
GO
ALTER TABLE [dbo].[PhieuThuePhong] CHECK CONSTRAINT [FK_PhieuThuePhong_NhanVien]
GO
ALTER TABLE [dbo].[PhieuThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThuePhong_PhieuDatPhong] FOREIGN KEY([maPDP])
REFERENCES [dbo].[PhieuDatPhong] ([maPDP])
GO
ALTER TABLE [dbo].[PhieuThuePhong] CHECK CONSTRAINT [FK_PhieuThuePhong_PhieuDatPhong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([maLP])
REFERENCES [dbo].[LoaiPhong] ([ma_LP])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
USE [master]
GO
ALTER DATABASE [BookingKS] SET  READ_WRITE 
GO
