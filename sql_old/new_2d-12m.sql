USE [master]
GO
/****** Object:  Database [WEB_TRUYEN]    Script Date: 02/12/2021 11:06:44 CH ******/
CREATE DATABASE [WEB_TRUYEN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WEB_TRUYEN', FILENAME = N'D:\CoSoDuLieu\WebTruyenNew\WEB_TRUYEN_dat.mdf' , SIZE = 10240KB , MAXSIZE = 20971520KB , FILEGROWTH = 10240KB )
 LOG ON 
( NAME = N'WEB_TRUYEN_log', FILENAME = N'D:\CoSoDuLieu\WebTruyenNew\WEB_TRUYEN_log.ldf' , SIZE = 5120KB , MAXSIZE = 204800KB , FILEGROWTH = 10240KB )
GO
ALTER DATABASE [WEB_TRUYEN] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WEB_TRUYEN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WEB_TRUYEN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET ARITHABORT OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [WEB_TRUYEN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WEB_TRUYEN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WEB_TRUYEN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WEB_TRUYEN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WEB_TRUYEN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET RECOVERY FULL 
GO
ALTER DATABASE [WEB_TRUYEN] SET  MULTI_USER 
GO
ALTER DATABASE [WEB_TRUYEN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WEB_TRUYEN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WEB_TRUYEN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WEB_TRUYEN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WEB_TRUYEN', N'ON'
GO
USE [WEB_TRUYEN]
GO
/****** Object:  User [webtruyens]    Script Date: 02/12/2021 11:06:44 CH ******/
CREATE USER [webtruyens] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [webtruyen]    Script Date: 02/12/2021 11:06:44 CH ******/
CREATE USER [webtruyen] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [webtruyens]
GO
ALTER ROLE [db_owner] ADD MEMBER [webtruyen]
GO
/****** Object:  StoredProcedure [dbo].[CapNhatCauHinh]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CapNhatCauHinh] (@ten_web nvarchar (100),@logo_web nvarchar (1000),@favicon_web nvarchar (1000),@email_lh nvarchar (100),@diachi_lh nvarchar (100)
,@sdt_lh nvarchar (100),@lh_fb nvarchar (100),@lh_zalo nvarchar (100),@lh_itg nvarchar (100),@copyright nvarchar (100))
as
begin 
update DB_CAUHINH
set ten_web= @ten_web ,logo_web=@logo_web,favicon_web=@favicon_web,email_lh=@email_lh,diachi_lh=@diachi_lh,sdt_lh=@sdt_lh,
lh_fb=@lh_fb,lh_zalo=@lh_zalo,lh_itg=@lh_itg,copyright=@copyright
where id_cauhinh=0
end




GO
/****** Object:  StoredProcedure [dbo].[CapnhatChuong]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CapnhatChuong] (@id_chuong int, @id_user int, @ten_chuong nvarchar (250), @noidung_chuong nvarchar (max))
as
begin

update DB_CHUONG set ten_chuong = @ten_chuong, noidung_chuong = @noidung_chuong where id_chuong = @id_chuong and id_user= @id_user

end








GO
/****** Object:  StoredProcedure [dbo].[CapNhatCoinUser]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CapNhatCoinUser] (@id_user int ,@coin int)
as
begin 
Update DB_USER 
set coin=@coin 
where id_user=@id_user

end





GO
/****** Object:  StoredProcedure [dbo].[Capnhatnguoidung]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Capnhatnguoidung] (@id_users int,@fullname nvarchar (50),@mail varchar (50),@img_user nvarchar (1000))
as 
begin 
UPDATE DB_USER 
Set fullname=@fullname,mail=@mail,img_user=@img_user
where id_user=@id_users

end







GO
/****** Object:  StoredProcedure [dbo].[CapNhatQuyenHan]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CapNhatQuyenHan](
@id_user int,
@quyen int
)
as
begin
update DB_USER set quyen_han = @quyen where id_user = @id_user
end




GO
/****** Object:  StoredProcedure [dbo].[CapNhatThuVien]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CapNhatThuVien] (@id_user int,@id_truyen int,@id_chuong int)
as
begin
update DB_THUVIEN
set id_chuong= @id_chuong,  updated_at = GETDATE()
where id_user = @id_user and id_truyen = @id_truyen
end





GO
/****** Object:  StoredProcedure [dbo].[CapNhatThuVienDoc]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CapNhatThuVienDoc] (@id_user int ,@id_truyen int,@id_chuong int)
as
 begin
 Update DB_THUVIEN
 set id_chuong =@id_chuong, updated_at = GETDATE()
 where id_truyen= @id_truyen and id_user = @id_user;
 end






GO
/****** Object:  StoredProcedure [dbo].[CapNhatTruyen]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CapNhatTruyen](
@id_user int,
@ten_truyen nvarchar(250),
@tac_gia nvarchar(250),
@tomtat_truyen nvarchar(1500),
@img_truyen nvarchar(1000),
@coin_truyen char(20),
@link_raw  nvarchar(1000),
@id_truyen int
)
as
begin
update DB_TRUYEN set id_user = @id_user 
, ten_truyen =  @ten_truyen
, tac_gia = @tac_gia
, tomtat_truyen = @tomtat_truyen
, img_truyen = @img_truyen
, coin_truyen = @coin_truyen
, link_raw = @link_raw  where id_truyen = @id_truyen
end









GO
/****** Object:  StoredProcedure [dbo].[DangKyNguoiDung]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DangKyNguoiDung](
@fullname nvarchar(20),
@ten_dangnhap varchar(14),
@mail varchar(50),
@matkhau_user varchar(50),
@ma_khoa varchar(50)
)
as
begin
insert into DB_USER(fullname, ten_dangnhap, mail, matkhau_user, ma_khoa)
values
(@fullname, @ten_dangnhap, @mail, @matkhau_user, @ma_khoa)
end;









GO
/****** Object:  StoredProcedure [dbo].[DelUser]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DelUser] (@id_user int,@quyen_han int)
as
begin
Delete  from DB_USER where id_user= @id_user and quyen_han < @quyen_han;
end




GO
/****** Object:  StoredProcedure [dbo].[LayLuotXem]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[LayLuotXem]
as
begin
select top 8 COUNT(id_chuong) as sum, id_truyen from DB_LUOTXEM group by id_truyen ORDER BY COUNT(id_chuong) DESC
end



GO
/****** Object:  StoredProcedure [dbo].[LayThongTinBinhLuan]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[LayThongTinBinhLuan](
@id_truyen int
)
as
begin

if @id_truyen = 0
begin
select top 20 DB_USER.id_user,DB_USER.img_user , DB_COMMENT.id_cmt, DB_COMMENT.id_truyen ,DB_COMMENT.id_chuong, DB_COMMENT.id_truyen, DB_USER.fullname, DB_COMMENT.status_, DB_COMMENT.noidung_cmt, DB_COMMENT.created_at  from DB_COMMENT inner join DB_USER on DB_COMMENT.id_user = DB_USER.id_user
order by DB_COMMENT.created_at DESC
end
else
begin
select top 20 DB_USER.id_user, DB_USER.img_user ,DB_COMMENT.id_cmt, DB_COMMENT.id_truyen ,DB_COMMENT.id_chuong,  DB_USER.fullname, DB_COMMENT.status_, DB_COMMENT.noidung_cmt, DB_COMMENT.created_at  from DB_COMMENT inner join DB_USER on DB_COMMENT.id_user = DB_USER.id_user
where DB_COMMENT.id_truyen = @id_truyen
order by DB_COMMENT.created_at DESC
end

end










GO
/****** Object:  StoredProcedure [dbo].[LayThongTinBinhLuanChuong]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[LayThongTinBinhLuanChuong](
@id_chuong int
)
as
begin


select top 20 DB_USER.id_user, DB_COMMENT.id_cmt, DB_COMMENT.id_truyen ,DB_COMMENT.id_chuong,  DB_USER.fullname, DB_COMMENT.status_, DB_COMMENT.noidung_cmt, DB_COMMENT.created_at, DB_USER.img_user from DB_COMMENT inner join DB_USER on DB_COMMENT.id_user = DB_USER.id_user
where DB_COMMENT.id_chuong = @id_chuong
order by DB_COMMENT.created_at DESC
end






GO
/****** Object:  StoredProcedure [dbo].[LayThuVienDoc]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[LayThuVienDoc] (@id_user int)
as
begin
select DB_TRUYEN.id_user,DB_TRUYEN.ten_truyen,DB_TRUYEN.link_raw,DB_TRUYEN.img_truyen, DB_THUVIEN.id_truyen,DB_THUVIEN.id_chuong,DB_THUVIEN.id_thuvien from DB_THUVIEN 
inner join DB_TRUYEN
on DB_TRUYEN.id_truyen = DB_THUVIEN.id_truyen
where DB_THUVIEN.id_user = @id_user ORDER BY DB_THUVIEN.updated_at desc
end





GO
/****** Object:  StoredProcedure [dbo].[LayTruyenRand]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[LayTruyenRand]
as
begin
SELECT TOP 10 * FROM DB_TRUYEN
ORDER BY NEWID()
end









GO
/****** Object:  StoredProcedure [dbo].[LayTruyenTheLoai]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[LayTruyenTheLoai](
@id_truyen int
)
as
begin
select * from DB_THELOAI inner join DB_TRUYEN_THELOAI on DB_THELOAI.id_theloai = DB_TRUYEN_THELOAI.id_theloai
where DB_TRUYEN_THELOAI.id_truyen = @id_truyen
end









GO
/****** Object:  StoredProcedure [dbo].[NangLuotXem]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[NangLuotXem](
@id_truyen int,
@LuotXem int
)
as
begin
update DB_TRUYEN SET LuotXem = @LuotXem where id_truyen = @id_truyen
end






GO
/****** Object:  StoredProcedure [dbo].[Them_cmt]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Them_cmt] (@id_user int ,@id_truyen int, @id_chuong int,@noidung_cmt nvarchar(300))
as 
begin 
insert into DB_COMMENT (id_user,id_truyen,id_chuong,noidung_cmt) values (@id_user,@id_truyen,@id_chuong,@noidung_cmt)
end






GO
/****** Object:  StoredProcedure [dbo].[ThemChuong]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemChuong] (@id_truyen int, @id_user int, @ten_chuong nvarchar(250), @noidung_chuong nvarchar(max) )
as
begin

insert into DB_CHUONG(id_truyen, id_user, ten_chuong, noidung_chuong) values (@id_truyen,@id_user,@ten_chuong,@noidung_chuong);
update DB_TRUYEN set updated_at = getdate() where id_truyen = @id_truyen
end









GO
/****** Object:  StoredProcedure [dbo].[ThemThuVien]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemThuVien] (@id_user int,@id_truyen int,@id_chuong int)
as
begin 
insert into DB_THUVIEN (id_user,id_truyen,id_chuong) values (@id_user,@id_truyen,@id_chuong)  

end





GO
/****** Object:  StoredProcedure [dbo].[ThemTruyen]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ThemTruyen](
@id_user int,
@ten_truyen nvarchar(250),
@tac_gia nvarchar(250),
@tomtat_truyen nvarchar(1500),
@img_truyen nvarchar(1000),
@coin_truyen char(20),
@link_raw  nvarchar(1000)
)
as
begin
if (LEN(@tac_gia) = 0)
print N'Đang cập nhật';

insert into DB_TRUYEN (id_user, ten_truyen, tac_gia, tomtat_truyen, img_truyen, coin_truyen, link_raw)
values (@id_user, @ten_truyen, @tac_gia, @tomtat_truyen, @img_truyen,@coin_truyen, @link_raw)


end




GO
/****** Object:  StoredProcedure [dbo].[ThemTruyenTheLoai]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemTruyenTheLoai](
@id_truyen int,
@id_theloai int
)
as
begin
insert into DB_TRUYEN_THELOAI(id_truyen, id_theloai)
values (@id_truyen, @id_theloai)
end









GO
/****** Object:  StoredProcedure [dbo].[TimKiem]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[TimKiem](
@Data varchar,
@TheLoai varchar
)
as
begin
select  DB_TRUYEN.ten_truyen,DB_TRUYEN.tac_gia,DB_TRUYEN.id_truyen,DB_TRUYEN.link_raw,DB_TRUYEN.img_truyen
, DB_THELOAI.ten_theloai  from DB_TRUYEN inner join DB_TRUYEN_THELOAI on DB_TRUYEN.id_truyen = DB_TRUYEN_THELOAI.id_truyen inner join DB_THELOAI on DB_THELOAI.id_theloai = DB_TRUYEN_THELOAI.id_theloai 
where DB_TRUYEN.ten_truyen LIKE '%' + @Data + '%' or DB_THELOAI.ten_theloai LIKE '%' + @TheLoai + '%'
end









GO
/****** Object:  StoredProcedure [dbo].[TimKiemTheoTen]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[TimKiemTheoTen]
(
@TenTruyen nvarchar(MAX)
)
as
begin

select *
from DB_TRUYEN
where ten_truyen like N'%' + @TenTruyen + '%'

end











GO
/****** Object:  StoredProcedure [dbo].[TimKiemTheoTheLoai]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TimKiemTheoTheLoai]
(
@data int
)
as
begin

select * from DB_TRUYEN where id_truyen in (
select id_truyen from DB_TRUYEN_THELOAI where id_theloai  = @data
)
end









GO
/****** Object:  StoredProcedure [dbo].[XoaChuong]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[XoaChuong] (@id_chuong int, @id_user int)
as
begin
update DB_THUVIEN set id_chuong = null where id_chuong = @id_chuong;
delete from DB_CHUONG where id_user = @id_user and id_chuong= @id_chuong;
end




GO
/****** Object:  StoredProcedure [dbo].[XoaChuongAdmin]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[XoaChuongAdmin] (@id_chuong int)
as
begin
update DB_THUVIEN set id_chuong = null where id_chuong = @id_chuong;
delete from DB_CHUONG where  id_chuong= @id_chuong;
end




GO
/****** Object:  StoredProcedure [dbo].[XoaThuVien]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[XoaThuVien](
@id_user int,
@id_thuvien int
)
as
begin
delete from DB_THUVIEN where id_thuvien = @id_thuvien and id_user = @id_user
end





GO
/****** Object:  StoredProcedure [dbo].[XoaTruyen]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[XoaTruyen](
@id_truyen int
)
as
begin

delete from DB_TRUYEN where id_truyen = @id_truyen;


end









GO
/****** Object:  StoredProcedure [dbo].[XoaTruyenTL]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[XoaTruyenTL](
@id_truyen int
)
as
begin
delete from DB_TRUYEN_THELOAI where id_truyen = @id_truyen
end;








GO
/****** Object:  Table [dbo].[DB_CAUHINH]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_CAUHINH](
	[id_cauhinh] [int] NOT NULL,
	[ten_web] [nvarchar](100) NOT NULL,
	[logo_web] [nvarchar](1000) NOT NULL,
	[favicon_web] [nvarchar](1000) NOT NULL,
	[email_lh] [nvarchar](100) NOT NULL,
	[diachi_lh] [nvarchar](100) NOT NULL,
	[sdt_lh] [nvarchar](100) NOT NULL,
	[lh_fb] [nvarchar](100) NOT NULL,
	[lh_zalo] [nvarchar](100) NOT NULL,
	[lh_itg] [nvarchar](100) NOT NULL,
	[copyright] [nvarchar](100) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK__DB_CAUHI__5F1E7193E1259BE4] PRIMARY KEY CLUSTERED 
(
	[id_cauhinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DB_CHUONG]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_CHUONG](
	[id_chuong] [int] IDENTITY(1,1) NOT NULL,
	[id_truyen] [int] NOT NULL,
	[id_user] [int] NOT NULL,
	[ten_chuong] [nvarchar](250) NOT NULL,
	[noidung_chuong] [nvarchar](max) NOT NULL,
	[status_] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK__DB_CHUON__B9DCE8E432F3E3B2] PRIMARY KEY CLUSTERED 
(
	[id_chuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DB_COMMENT]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_COMMENT](
	[id_cmt] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NOT NULL,
	[id_truyen] [int] NOT NULL,
	[id_chuong] [int] NOT NULL,
	[noidung_cmt] [nvarchar](300) NOT NULL,
	[status_] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK__DB_COMME__D696612FA34781BE] PRIMARY KEY CLUSTERED 
(
	[id_cmt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DB_LUOTXEM]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_LUOTXEM](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NULL,
	[id_truyen] [int] NULL,
	[id_chuong] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_DB_LUOTXEM] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DB_THELOAI]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_THELOAI](
	[id_theloai] [int] IDENTITY(1,1) NOT NULL,
	[ten_theloai] [nvarchar](200) NOT NULL,
	[mota_theloai] [nvarchar](1000) NULL,
	[status_] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK__DB_THELO__80AF8C6EC787253B] PRIMARY KEY CLUSTERED 
(
	[id_theloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DB_THUVIEN]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_THUVIEN](
	[id_thuvien] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NOT NULL,
	[id_truyen] [int] NOT NULL,
	[id_chuong] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK__DB_THUVI__514FB55A48EFFBF2] PRIMARY KEY CLUSTERED 
(
	[id_thuvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DB_TRUYEN]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DB_TRUYEN](
	[id_truyen] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NOT NULL,
	[ten_truyen] [nvarchar](250) NOT NULL,
	[tac_gia] [nvarchar](250) NOT NULL,
	[tomtat_truyen] [nvarchar](1500) NOT NULL,
	[status_] [int] NULL,
	[img_truyen] [nvarchar](1000) NOT NULL,
	[coin_truyen] [char](20) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[link_raw] [nvarchar](200) NULL,
	[LuotXem] [int] NULL,
 CONSTRAINT [PK__DB_TRUYE__E9EF74F3C65FEEE4] PRIMARY KEY CLUSTERED 
(
	[id_truyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DB_TRUYEN_THELOAI]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_TRUYEN_THELOAI](
	[id_truyen_theloai] [int] IDENTITY(1,1) NOT NULL,
	[id_truyen] [int] NOT NULL,
	[id_theloai] [int] NOT NULL,
	[status_] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK__DB_TRUYE__A7EA5BAFDB197165] PRIMARY KEY CLUSTERED 
(
	[id_truyen_theloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DB_USER]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DB_USER](
	[id_user] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](20) NOT NULL,
	[ten_dangnhap] [varchar](14) NOT NULL,
	[mail] [varchar](50) NOT NULL,
	[matkhau_user] [varchar](50) NOT NULL,
	[quyen_han] [varchar](14) NULL,
	[coin] [int] NULL,
	[ma_khoa] [varchar](50) NULL,
	[img_user] [nvarchar](1000) NULL,
	[status_] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK__DB_USER__D2D146377B544414] PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DB_VOTE]    Script Date: 02/12/2021 11:06:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_VOTE](
	[id_vote] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NOT NULL,
	[id_truyen] [int] NOT NULL,
	[giatri] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_vote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[DB_CAUHINH] ([id_cauhinh], [ten_web], [logo_web], [favicon_web], [email_lh], [diachi_lh], [sdt_lh], [lh_fb], [lh_zalo], [lh_itg], [copyright], [created_at], [updated_at]) VALUES (0, N'KDA Website Đọc Truyện', N'204612.png', N'KDA STUDIO_logo.png', N'mail@gm.com', N'Cần thơ', N'0123456789', N'fb.com', N'zl.com', N'ig.com', N'a@b.com', CAST(0x0000ADD800965C00 AS DateTime), CAST(0x0000ADD800965C00 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_CHUONG] ON 

INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (6, 4108, 4, N'Quyển 1: Tà Quân Vấn Thế - Chương 1: Tà quân Quân Tà', N'&lt;p&gt;&lt;br /&gt;
Qu&amp;acirc;n T&amp;agrave; bỗng nhi&amp;ecirc;n tỉnh lại.&lt;br /&gt;
Hắn thậm ch&amp;iacute; c&amp;ograve;n chưa kịp mở mắt nhưng tay phải theo bản năng vỗ một c&amp;aacute;i xuống đất nhảy l&amp;ecirc;n. Đ&amp;acirc;y l&amp;agrave; một nơi phức tạp, sự sống v&amp;agrave; c&amp;aacute;i chết lu&amp;ocirc;n cận kề nhau, v&amp;igrave; vậy kh&amp;ocirc;ng thể ở l&amp;acirc;u!&lt;br /&gt;
Đ&amp;acirc;y l&amp;agrave; suy nghĩ đầu ti&amp;ecirc;n của hắn khi tỉnh lại, l&amp;agrave; cảm gi&amp;aacute;c gần như đ&amp;atilde; trở th&amp;agrave;nh bản năng của một s&amp;aacute;t thủ vĩ đại!&lt;br /&gt;
Cơ thể thuận thế định bật l&amp;ecirc;n nhưng bỗng nhi&amp;ecirc;n c&amp;aacute;nh tay của hắn lại trở n&amp;ecirc;n mềm nhũn, ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc;ng c&amp;ograve;n khả năng chống đỡ nổi sức nặng của th&amp;acirc;n thể n&amp;ecirc;n &amp;ldquo;bịch&amp;rdquo; một tiếng, hắn lại nặng nề ng&amp;atilde; trở lại.&lt;br /&gt;
Sau một thời gian định thần, Qu&amp;acirc;n T&amp;agrave; v&amp;ocirc; c&amp;ugrave;ng kinh h&amp;atilde;i. Chuyện n&amp;agrave;y rốt cuộc l&amp;agrave; chuyện g&amp;igrave;? Ngay sau đ&amp;oacute; hắn đột nhi&amp;ecirc;n ph&amp;aacute;t hiện ph&amp;iacute;a dưới m&amp;igrave;nh l&amp;agrave; một chiếc giường mềm mại.! Đưa mắt nh&amp;igrave;n xung quanh, th&amp;igrave; ra m&amp;igrave;nh đang nằm trong một gian ph&amp;ograve;ng được trang tr&amp;iacute; lộng lẫy. Chỉ c&amp;oacute; điều gian ph&amp;ograve;ng n&amp;agrave;y chẳng c&amp;oacute; một c&amp;aacute;i g&amp;igrave; ngoại trừ một chiếc b&amp;agrave;n bốn cạnh c&amp;ugrave;ng một c&amp;aacute;i giường lớn m&amp;agrave; m&amp;igrave;nh đang nằm tr&amp;ecirc;n đ&amp;oacute;. Thực ra chiếc giường lớn n&amp;agrave;y &amp;iacute;t nhất phải ngủ được tới bảy t&amp;aacute;m người, thậm ch&amp;iacute; bảy t&amp;aacute;m người nằm tr&amp;ecirc;n đ&amp;oacute; c&amp;ograve;n kh&amp;ocirc;ng c&amp;oacute; cảm gi&amp;aacute;c chật chội.&lt;br /&gt;
&amp;ldquo;Chuyện n&amp;agrave;y l&amp;agrave; sao? Ta kh&amp;ocirc;ng phải vẫn c&amp;ograve;n đang chiến đấu với người ta sao? Tại sao giờ lại ở tr&amp;ecirc;n giường thế n&amp;agrave;y?&amp;rdquo;&lt;br /&gt;
Giờ ph&amp;uacute;t n&amp;agrave;y, suy nghĩ của Qu&amp;acirc;n T&amp;agrave; vẫn c&amp;ograve;n đang lưu lại trước khi ngủ say, hoặc phải n&amp;oacute;i l&amp;agrave;... Tạm thời c&amp;ograve;n đang suy nghĩ về thời khắc cuối c&amp;ugrave;ng ở kiếp trước.&lt;br /&gt;
......&lt;br /&gt;
Qu&amp;acirc;n T&amp;agrave; l&amp;agrave; một s&amp;aacute;t thủ, hơn nữa l&amp;agrave; một kim b&amp;agrave;i s&amp;aacute;t thủ v&amp;ocirc; c&amp;ugrave;ng vĩ đại. Từ khi hắn xuất đạo tới nay đ&amp;atilde; được năm năm nhưng mỗi lần ra tay mọi việc đều rất thuận lợi v&amp;agrave; c&amp;oacute; x&amp;aacute;c xuất th&amp;agrave;nh c&amp;ocirc;ng đạt tới trăm phần trăm. Một th&amp;agrave;nh t&amp;iacute;ch m&amp;agrave; người xưa chưa từng c&amp;oacute;. Bởi vậy m&amp;agrave; hắn đ&amp;atilde; trở th&amp;agrave;nh s&amp;aacute;t thủ đứng đầu trong S&amp;aacute;t Thủ bảng. M&amp;agrave; c&amp;aacute;i t&amp;ecirc;n &amp;ldquo;T&amp;agrave; Qu&amp;acirc;n&amp;rdquo; n&amp;agrave;y cũng v&amp;igrave; thế m&amp;agrave; đứng vị tr&amp;iacute; h&amp;agrave;ng đầu trong giới hắc đạo. M&amp;agrave; hắn c&amp;ograve;n c&amp;oacute; một vinh quang kh&amp;aacute;c nữa, ch&amp;iacute;nh l&amp;agrave; được đứng thứ nhất trong suốt ba năm r&amp;ograve;ng của Huyền Thưởng bảng, một bảng danh s&amp;aacute;ch liệt k&amp;ecirc; những nh&amp;acirc;n vật bị đuổi giết được treo giải thưởng tr&amp;ecirc;n to&amp;agrave;n thế giới.&lt;br /&gt;
Nhưng ở đ&amp;oacute; cũng kh&amp;ocirc;ng phải l&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; người d&amp;aacute;m tiếp nhận m&amp;agrave; l&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; người c&amp;oacute; khả năng tiếp nhận vụ đ&amp;oacute;. Bởi v&amp;igrave; kh&amp;ocirc;ng ai c&amp;oacute; bản lĩnh để giết chết vị s&amp;aacute;t thủ gần như đ&amp;atilde; trở th&amp;agrave;nh truyền thuyết n&amp;agrave;y.&lt;br /&gt;
Đ&amp;atilde; từng c&amp;oacute; rất nhiều s&amp;aacute;t thủ hạng nhất tiếp nhận nhiệm vụ kia, nhưng m&amp;agrave; bọn họ đều đ&amp;atilde; chết, c&amp;ograve;n T&amp;agrave; qu&amp;acirc;n lại vẫn c&amp;ograve;n sống ph&amp;acirc;y ph&amp;acirc;y.&lt;br /&gt;
Ở nước Y c&amp;oacute; một &amp;ocirc;ng tr&amp;ugrave;m đ&amp;atilde; treo giải một trăm triệu đ&amp;ocirc; la Mỹ để mua lấy t&amp;iacute;nh mạng của T&amp;agrave; qu&amp;acirc;n. M&amp;agrave; hai s&amp;aacute;t thủ tiếp nhận vụ mua b&amp;aacute;n n&amp;agrave;y th&amp;igrave; cả hai đều l&amp;agrave; những s&amp;aacute;t thủ h&amp;agrave;ng đầu c&amp;ugrave;ng nổi danh với T&amp;agrave; qu&amp;acirc;n tr&amp;ecirc;n thế giới. Nhưng sau ba ng&amp;agrave;y, cả hai người n&amp;agrave;y đều chuyển nghề đi b&amp;aacute;n muối v&amp;agrave; uống tr&amp;agrave; với c&amp;aacute;c cụ cao tằng cố tổ. V&amp;agrave; cũng v&amp;igrave; đ&amp;oacute; m&amp;agrave; sau đ&amp;oacute; kh&amp;ocirc;ng c&amp;ograve;n người n&amp;agrave;o đồng &amp;yacute; nhận c&amp;aacute;i nhiệm vụ tử vong n&amp;agrave;y, bọn họ mỗi người đều k&amp;iacute;nh nhi viễn chi, cho d&amp;ugrave; giải thưởng c&amp;oacute; tiếp tục tăng hết lần n&amp;agrave;y tới lần kh&amp;aacute;c nhưng từ đầu đến cuối kh&amp;ocirc;ng người n&amp;agrave;o d&amp;aacute;m nhận.&lt;br /&gt;
Tiền tuy c&amp;oacute; nhiều nhưng kh&amp;ocirc;ng c&amp;ograve;n mạng để hưởng th&amp;igrave; c&amp;ograve;n &amp;yacute; nghĩa g&amp;igrave; nữa chứ!&lt;br /&gt;
C&amp;aacute;i t&amp;ecirc;n T&amp;agrave; qu&amp;acirc;n trở th&amp;agrave;nh cấm kỵ tr&amp;ecirc;n Huyền Thưởng bảng của hắc đạo.&lt;br /&gt;
M&amp;agrave; c&amp;aacute;i t&amp;ecirc;n T&amp;agrave; qu&amp;acirc;n cũng uy hiếp đến hắc đạo của c&amp;aacute;c quốc gia. C&amp;oacute; rất nhiều người biết tới kỳ nh&amp;acirc;n T&amp;agrave; qu&amp;acirc;n nhưng kh&amp;ocirc;ng c&amp;oacute; một ai hiểu r&amp;otilde; vị Vua s&amp;aacute;t thủ T&amp;agrave; qu&amp;acirc;n n&amp;agrave;y rốt cuộc l&amp;agrave; c&amp;oacute; d&amp;aacute;ng vẻ như thế n&amp;agrave;o cả, v&amp;agrave; chung quy hắn l&amp;agrave; loại người ra sao đ&amp;acirc;y?&lt;br /&gt;
T&amp;iacute;nh c&amp;aacute;ch của Qu&amp;acirc;n T&amp;agrave;, đ&amp;uacute;ng l&amp;agrave; người cũng như t&amp;ecirc;n. Một chữ: T&amp;agrave;! Hai chữ: Rất T&amp;agrave;! Ba chữ: V&amp;ocirc; c&amp;ugrave;ng T&amp;agrave;!&lt;br /&gt;
Hắn cho tới b&amp;acirc;y giờ đều chuy&amp;ecirc;n quyền độc đo&amp;aacute;n, kh&amp;ocirc;ng hề li&amp;ecirc;n thủ với bất cứ kẻ n&amp;agrave;o, lại c&amp;agrave;ng kh&amp;ocirc;ng c&amp;oacute; một nửa người bạn. Hơn nữa, hắn nhận một vụ l&amp;agrave;m ăn th&amp;igrave; kh&amp;ocirc;ng chỉ muốn xem x&amp;eacute;t người mua m&amp;agrave; c&amp;ograve;n muốn chọn cả mục ti&amp;ecirc;u nữa.&lt;br /&gt;
Hắn nếu nh&amp;igrave;n người thu&amp;ecirc; m&amp;agrave; kh&amp;ocirc;ng vừa mắt, cho d&amp;ugrave; tiền c&amp;oacute; nhiều hơn đi nữa th&amp;igrave; c&amp;oacute; mới hắn đi giết một t&amp;ecirc;n ăn m&amp;agrave;y kh&amp;ocirc;ng c&amp;oacute; năng lực phản kh&amp;aacute;ng, hắn cũng sẽ kh&amp;ocirc;ng ch&amp;uacute;t do dự cự tuyệt. Nhưng hắn nếu thấy một người n&amp;agrave;o đ&amp;oacute; đ&amp;aacute;ng chết th&amp;igrave; hắn lại tự động xuống tay rồi sau đ&amp;oacute; t&amp;igrave;m nh&amp;agrave; đối thủ của kẻ đ&amp;oacute; đ&amp;ograve;i th&amp;ugrave; lao. M&amp;agrave; thường thường những nh&amp;agrave; đ&amp;oacute; cũng chưa từng thu&amp;ecirc; hắn ta, thậm ch&amp;iacute; ngay cả nghe tới t&amp;ecirc;n của hắn c&amp;ograve;n chưa từng nghe qua.&lt;br /&gt;
Tương truyền... C&amp;oacute; một lần, hắn giết một t&amp;ecirc;n bu&amp;ocirc;n người tội &amp;aacute;c t&amp;agrave;y trời nhưng lại kh&amp;ocirc;ng t&amp;igrave;m thấy khổ chủ. Kh&amp;ocirc;ng c&amp;ograve;n c&amp;aacute;ch n&amp;agrave;o kh&amp;aacute;c hắn đ&amp;agrave;nh đ&amp;ograve;i một tiểu c&amp;ocirc; nương bị lừa b&amp;aacute;n được một v&amp;agrave;i cắc tiền xu, c&amp;ograve;n n&amp;oacute;i một c&amp;aacute;ch h&amp;ugrave;ng hồn rằng, t&amp;ocirc;i cho tới giờ chưa từng l&amp;agrave;m một vụ mua b&amp;aacute;n n&amp;agrave;o m&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; th&amp;ugrave; lao cả, tuyệt đối kh&amp;ocirc;ng c&amp;oacute; c&amp;aacute;i g&amp;igrave; ngoại lệ...&lt;br /&gt;
T&amp;iacute;nh c&amp;aacute;ch n&amp;agrave;y của hắn cũng khiến những người hiểu hắn như sư phụ c&amp;ugrave;ng c&amp;aacute;c sư huynh đệ cũng kh&amp;ocirc;ng biết phải n&amp;oacute;i g&amp;igrave; hơn...&lt;br /&gt;
Tương truyền... C&amp;oacute; một lần, khi sư phụ của hắn ta đi giải quyết nỗi buồn bị hắn ch&amp;ocirc;m giấy trong WC đi. Kh&amp;ocirc;ng c&amp;oacute; giấy, sự phụ hắn liền gọi hắn mang tới ch&amp;uacute;t giấy vệ sinh. Kết quả hắn nh&amp;acirc;n cơ hội đ&amp;ograve;i năm trăm ngh&amp;igrave;n đ&amp;ocirc; ph&amp;iacute; dịch vụ, khiến sư phụ hắn biết thế n&amp;agrave;o l&amp;agrave; gian xảo&lt;br /&gt;
C&amp;ograve;n tại sao sư phụ hắn lại phải chịu quả đắng...&lt;br /&gt;
Đ&amp;oacute; l&amp;agrave; bởi v&amp;igrave; ng&amp;agrave;y đ&amp;oacute; hắn gọi tất cả sư huynh muội tới cửa WC, c&amp;ograve;n mới cả mấy vị mỹ nữ tới tham quan nữa...&lt;br /&gt;
Nhưng m&amp;agrave; hắn cho rằng thiếu s&amp;oacute;t lớn nhất của bản th&amp;acirc;n ch&amp;iacute;nh l&amp;agrave; hắn thật sự rất c&amp;oacute; l&amp;ograve;ng thương y&amp;ecirc;u. L&amp;agrave;m một s&amp;aacute;t thủ, hơn nữa l&amp;agrave; một s&amp;aacute;t thủ h&amp;agrave;ng đầu hai tay d&amp;iacute;nh đầy m&amp;aacute;u tươi n&amp;ecirc;n những lời n&amp;agrave;y từng khiến v&amp;ocirc; số người khịt mũi khinh bỉ.&lt;br /&gt;
Chẳng qua gia hỏa n&amp;agrave;y tự xưng c&amp;oacute; l&amp;ograve;ng thương y&amp;ecirc;u kỳ thật cũng c&amp;oacute; ch&amp;uacute;t căn cứ.&lt;br /&gt;
Trong nước, hắn rất kh&amp;ocirc;ng th&amp;iacute;ch nh&amp;igrave;n cảnh người gi&amp;agrave;u ch&amp;egrave;n &amp;eacute;p người ngh&amp;egrave;o, v&amp;agrave; nhất l&amp;agrave; tr&amp;ocirc;ng thấy cảnh quan lại h&amp;agrave; hiếp d&amp;acirc;n ch&amp;uacute;ng. Ở nước ngo&amp;agrave;i, hắn kh&amp;ocirc;ng nh&amp;igrave;n nổi cảnh c&amp;oacute; người ức hiếp người nước m&amp;igrave;nh. V&amp;igrave; t&amp;iacute;nh c&amp;aacute;ch của hắn l&amp;agrave; một người &amp;ldquo;Y&amp;ecirc;u nước&amp;rdquo;, v&amp;agrave; cũng v&amp;igrave; thế m&amp;agrave; hắn kh&amp;ocirc;ng biết đ&amp;atilde; gặp phải bao nhi&amp;ecirc;u tai họa ngập trời.&lt;br /&gt;
Nhưng một người như vậy vẫn c&amp;oacute; v&amp;ocirc; số người đổ x&amp;ocirc; đi thu&amp;ecirc; hắn. Đ&amp;oacute; l&amp;agrave; bởi v&amp;igrave; kỹ thuật bắn s&amp;uacute;ng của hắn chẳng những si&amp;ecirc;u quần, b&amp;aacute;ch ph&amp;aacute;t b&amp;aacute;ch tr&amp;uacute;ng m&amp;agrave; c&amp;ograve;n c&amp;oacute; một th&amp;acirc;n v&amp;otilde; nghệ quỷ thần kh&amp;oacute; lường. Bất luận tu vi quyền chưởng hay đao kiếm đều kh&amp;ocirc;ng tầm thường. Đ&amp;oacute; mới l&amp;agrave; nguy&amp;ecirc;n nh&amp;acirc;n lớn nhất gi&amp;uacute;p tỉ lệ th&amp;agrave;nh c&amp;ocirc;ng trong c&amp;aacute;c nhiệm vụ của hắn trước sau vẫn l&amp;agrave; trăm phần trăm. Th&amp;agrave;nh t&amp;iacute;ch n&amp;agrave;y mặc d&amp;ugrave; chưa chắc sau n&amp;agrave;y sẽ kh&amp;ocirc;ng c&amp;oacute;, nhưng tuyệt đối l&amp;agrave; chưa từng c&amp;oacute; từ trước tới giờ.&lt;br /&gt;
Hắn ho&amp;agrave;n to&amp;agrave;n xứng đ&amp;aacute;ng l&amp;agrave; chung cực s&amp;aacute;t thủ trong giới s&amp;aacute;t thủ!&lt;br /&gt;
Cũng l&amp;agrave; một cường giả đỉnh phong trong giới s&amp;aacute;t thủ, l&amp;agrave; người duy nhất chưa bao giờ bị thất thủ tr&amp;ecirc;n to&amp;agrave;n thế giới từ trước tới giờ!&lt;br /&gt;
Nhưng vị s&amp;aacute;t thủ kim b&amp;agrave;i n&amp;agrave;y từ trong cốt tủy lại l&amp;agrave; một thanh ni&amp;ecirc;n c&amp;oacute; khuynh hướng d&amp;acirc;n tộc chủ nghĩa cực đoan.&lt;br /&gt;
Hắn nghe n&amp;oacute;i gi&amp;aacute;n điệp nước M khai quật được một b&amp;iacute; bảo v&amp;ocirc; gi&amp;aacute; tại n&amp;uacute;i C&amp;ocirc;n L&amp;ocirc;n Trung Quốc. Tin tức n&amp;agrave;y lộ ra khiến một người c&amp;oacute; khuynh hướng d&amp;acirc;n tộc chủ nghĩa cực đoan như Qu&amp;acirc;n T&amp;agrave; nổi giận.&lt;br /&gt;
Bảo vật của Trung Quốc rộng lớn sao c&amp;oacute; thể rơi v&amp;agrave;o tay người nước M được cơ chứ?!&lt;br /&gt;
Qu&amp;acirc;n T&amp;agrave; đơn thương độc m&amp;atilde; giết tới. Hắn một m&amp;igrave;nh cuồng ngạo tới c&amp;ugrave;ng cực chọi với cả gần một trăm đặc c&amp;ocirc;ng của nước M, thi triển hết mọi thủ đoạn từ &amp;aacute;m s&amp;aacute;t, cuối c&amp;ugrave;ng l&amp;agrave; tới đ&amp;aacute;nh ch&amp;iacute;nh diện. Sau khi giết chết hơn bảy mươi t&amp;ecirc;n, hắn cuối c&amp;ugrave;ng cũng cướp được b&amp;iacute; bảo kia v&amp;agrave;o tay. M&amp;agrave; l&amp;uacute;c đ&amp;oacute; đ&amp;aacute;m đặc c&amp;ocirc;ng của nước M đều bị giết tới vỡ gan vỡ mật n&amp;ecirc;n nếu hắn muốn bỏ chạy th&amp;igrave; nhất định c&amp;oacute; thể ung dung m&amp;agrave; rời khỏi đi. M&amp;agrave; trong l&amp;ograve;ng Qu&amp;acirc;n T&amp;agrave; cũng tuyệt đối nắm chắc được điều n&amp;agrave;y.&lt;br /&gt;
Nhưng sau khi tay hắn tiếp x&amp;uacute;c với kiện b&amp;iacute; bảo kia- một pho Lung Linh bảo th&amp;aacute;p lớn bằng một b&amp;agrave;n tay th&amp;igrave; một việc thần kỳ ngo&amp;agrave;i &amp;yacute; muốn tới cực điểm liền xuất hiện. B&amp;agrave;n tay hắn bị thương cầm tiểu th&amp;aacute;p kia th&amp;igrave; đột nhi&amp;ecirc;n to&amp;agrave;n th&amp;acirc;n bỗng dưng cảm thấy t&amp;ecirc; liệt, đến cả cử động cũng kh&amp;ocirc;ng thể cử động được, thậm ch&amp;iacute; cho d&amp;ugrave; l&amp;agrave; nh&amp;aacute;y mắt cũng kh&amp;ocirc;ng thể l&amp;agrave;m được.&lt;br /&gt;
Hắn kh&amp;ocirc;ng hề ch&amp;uacute; &amp;yacute; tới một việc, m&amp;aacute;u tươi từ miệng vết thương của m&amp;igrave;nh đang kh&amp;ocirc;ng ngừng chảy ra rồi nhập v&amp;agrave;o b&amp;ecirc;n trong tiểu th&amp;aacute;p tr&amp;ocirc;ng rất tinh xảo, rất lung linh v&amp;agrave; cũng rất t&amp;agrave; m&amp;ocirc;n kia.&lt;br /&gt;
K&amp;iacute; ức cuối c&amp;ugrave;ng của hắn ch&amp;iacute;nh l&amp;agrave;, kh&amp;ocirc;ng dưới năm mươi quả lựu đạn loại mini đang bay về ph&amp;iacute;a hắn, đồng thời hơn hai mươi n&amp;ograve;ng s&amp;uacute;ng c&amp;aacute;c loại cũng hướng về ph&amp;iacute;a hắn m&amp;agrave; bắt đ&amp;acirc;u khạc lửa. M&amp;agrave; uổng cho một th&amp;acirc;n bản lĩnh của hắn, một th&amp;acirc;n bản lĩnh c&amp;oacute; thể trong một lần giết chết được những kẻ n&amp;agrave;y nhưng thật l&amp;agrave; bi ai, bi ai tới c&amp;ugrave;ng cực, bi ai v&amp;igrave; hắn muốn động của kh&amp;ocirc;ng thể động được.&lt;br /&gt;
Cảm gi&amp;aacute;c n&amp;agrave;y thật khiến người ta nổi đi&amp;ecirc;n!&lt;br /&gt;
&amp;ldquo;Kh&amp;ocirc;ng thể tưởng được Qu&amp;acirc;n T&amp;agrave; ta tung ho&amp;agrave;nh một đời, kh&amp;ocirc;ng c&amp;oacute; địch thủ l&amp;agrave; lại chết oan chết uổng trong tay những t&amp;ecirc;n n&amp;agrave;y. Chỉ c&amp;oacute; điều, &amp;ocirc;ng đ&amp;acirc;y c&amp;oacute; chết cũng kh&amp;ocirc;ng t&amp;iacute;nh l&amp;agrave; bị lỗ. Cả đời n&amp;agrave;y, những t&amp;ecirc;n tham quan &amp;ocirc; lại, cường h&amp;agrave;o &amp;aacute;c b&amp;aacute; rồi đặc c&amp;ocirc;ng của c&amp;aacute;c quốc gia, chết dưới tay ta tổng cộng c&amp;oacute; tới hơn một ng&amp;agrave;n t&amp;ecirc;n. Thế cũng coi như l&amp;agrave; ho&amp;agrave; vốn rồi! Đ&amp;aacute;ng! Rất đ&amp;aacute;ng!&amp;rdquo;&lt;br /&gt;
&amp;ldquo;Người kh&amp;aacute;c th&amp;igrave; mỉm cười dưới cửu tuyền th&amp;igrave; &amp;ocirc;ng đ&amp;acirc;y cũng cười h&amp;ocirc; hố m&amp;agrave; xuống địa ngục!&amp;rdquo;&lt;br /&gt;
&amp;ldquo;Một đời n&amp;agrave;y ta sống oanh oanh liệt liệt! V&amp;ocirc; c&amp;ugrave;ng ti&amp;ecirc;u s&amp;aacute;i! Kh&amp;ocirc;ng thẹn với lương t&amp;acirc;m!&amp;rdquo;&lt;br /&gt;
&amp;ldquo;Mặc d&amp;ugrave; ta giết kh&amp;ocirc;ng &amp;iacute;t người nhưng những người đ&amp;oacute; tuyệt đối kh&amp;ocirc;ng c&amp;oacute; một t&amp;ecirc;n n&amp;agrave;o l&amp;agrave; kh&amp;ocirc;ng đ&amp;aacute;ng giết cả! Nếu đ&amp;atilde; như vậy th&amp;igrave; c&amp;oacute; giết, cũng kh&amp;ocirc;ng hối hận! Cho d&amp;ugrave; c&amp;oacute; v&amp;igrave; thế m&amp;agrave; xuống địa ngục th&amp;igrave; c&amp;oacute; l&amp;agrave;m sao?!&amp;rdquo;&lt;br /&gt;
&amp;ldquo;Giết giết giết giết giết giết! Giết hết mọi thứ dơ bẩn thối n&amp;aacute;t! Gột rửa tất cả mọi tội &amp;aacute;c! Ngay cả ta c&amp;oacute; l&amp;agrave;m một s&amp;aacute;t thủ bị người ta khinh miệt th&amp;igrave; c&amp;oacute; l&amp;agrave;m sao?!!&amp;rdquo;&lt;br /&gt;
&amp;ldquo;Ung dung sống tr&amp;ecirc;n thế gian th&amp;igrave; liệu c&amp;oacute; thể sống một c&amp;aacute;ch ph&amp;oacute;ng kho&amp;aacute;ng như ta kh&amp;ocirc;ng? Quả l&amp;agrave; v&amp;ocirc; c&amp;ugrave;ng sảng kho&amp;aacute;i?!&amp;rdquo;&lt;br /&gt;
- Ha ha ha...&lt;br /&gt;
Qu&amp;acirc;n T&amp;agrave; nghĩ tới đ&amp;acirc;y m&amp;agrave; kh&amp;ocirc;ng khỏi cười cả ra tiếng.&lt;br /&gt;
- Thiếu gia, người... Người l&amp;agrave;m sao vậy?&lt;br /&gt;
Một giọng n&amp;oacute;i rụt r&amp;egrave; vang l&amp;ecirc;n b&amp;ecirc;n cạnh, h&amp;igrave;nh như l&amp;agrave; bị h&amp;agrave;nh động vừa rồi của hắn l&amp;agrave;m cho sợ h&amp;atilde;i m&amp;agrave; đang c&amp;oacute; xu hướng muốn kh&amp;oacute;c. Tiếp theo đ&amp;oacute;, một b&amp;agrave;n tay nhỏ b&amp;eacute; lạnh gi&amp;aacute; sờ l&amp;ecirc;n tr&amp;aacute;n hắn.&lt;br /&gt;
&amp;ldquo;Thiếu gia? Ta hiện tại kh&amp;ocirc;ng phải đang nằm mơ chứ? Kh&amp;ocirc;ng phải tới địa ngục rồi &amp;agrave;?!&amp;rdquo;&lt;br /&gt;
Qu&amp;acirc;n T&amp;agrave; giật m&amp;igrave;nh rồi đột ngột mở mắt. Tiếp đ&amp;oacute;, một k&amp;yacute; ức lạ lẫm đột nhi&amp;ecirc;n d&amp;acirc;ng l&amp;ecirc;n từ đ&amp;aacute;y l&amp;ograve;ng hắn! K&amp;yacute; ức lạ lẫm đ&amp;oacute; như thủy triều tiến v&amp;agrave;o trong đầu hắn. M&amp;agrave; Qu&amp;acirc;n T&amp;agrave; giống như bị s&amp;eacute;t đ&amp;aacute;nh, giật m&amp;igrave;nh ngơ ng&amp;aacute;c!&lt;br /&gt;
&amp;ldquo;M&amp;igrave;nh đang... Đang ở trong một th&amp;acirc;n thể kh&amp;aacute;c sao? Đầu thai chuyển thế ư? Nhưng tr&amp;iacute; nhớ kiếp trước sao vẫn c&amp;ograve;n r&amp;otilde; r&amp;agrave;ng vậy? Chẳng lẽ m&amp;igrave;nh chưa uống canh Mạnh b&amp;agrave;?! Hay l&amp;agrave; mượn x&amp;aacute;c ho&amp;agrave;n hồn?!&amp;rdquo;&lt;br /&gt;
Một l&amp;agrave; xuy&amp;ecirc;n việt?&lt;br /&gt;
Hai l&amp;agrave; phụ thể sống lại?!&lt;br /&gt;
Qu&amp;acirc;n T&amp;agrave; trừng mắt sững sờ tới nửa ng&amp;agrave;y cũng kh&amp;ocirc;ng hiểu chuyện g&amp;igrave; đang xảy ra. Cả nửa ng&amp;agrave;y hắn cũng chẳng buồn nh&amp;uacute;c nh&amp;iacute;ch.&lt;br /&gt;
Chỉ khi b&amp;agrave;n tay nhỏ b&amp;eacute; đang kinh h&amp;atilde;i kia quơ quơ v&amp;agrave;i c&amp;aacute;i trước mặt hắn th&amp;igrave; đ&amp;uacute;ng l&amp;uacute;c đ&amp;oacute; Qu&amp;acirc;n T&amp;agrave; đột nhi&amp;ecirc;n hớn hở k&amp;ecirc;u:&lt;br /&gt;
- Con mẹ n&amp;oacute;! Quả nhi&amp;ecirc;n người tốt tất c&amp;oacute; b&amp;aacute;o đ&amp;aacute;p! Bất kể l&amp;agrave; chuyện g&amp;igrave; đang diễn ra nhưng d&amp;ugrave; thế n&amp;agrave;o đi nữa &amp;ocirc;ng đ&amp;acirc;y vẫn chưa chết. Kh&amp;ocirc;ng ngờ lại c&amp;oacute; chuyện tốt như vậy. Xem ra kiếp trước bổn đại gia nhất định đ&amp;atilde; t&amp;iacute;ch lũy được v&amp;ocirc; số c&amp;ocirc;ng đức, chắc chắn l&amp;agrave; v&amp;ocirc; số c&amp;ocirc;ng đức?! Ha ha ha...&lt;br /&gt;
Một tiếng k&amp;ecirc;u sợ h&amp;atilde;i v&amp;acirc;ng l&amp;ecirc;n. Một tiểu c&amp;ocirc; nương chừng mười tuổi đang run run rẩy rẩy đứng ở b&amp;ecirc;n cạnh. Đ&amp;ocirc;i mắt to tr&amp;ograve;n xinh đẹp kinh hoảng nh&amp;igrave;n chằm chằm v&amp;agrave;o vị &amp;ldquo;thiếu gia&amp;rdquo; đang gặp &amp;aacute;c mộng trước mặt. Th&amp;acirc;n thể nhỏ nhắn xinh xắn kh&amp;ocirc;ng ngừng run rẩy, sắc mặt t&amp;aacute;i nhợt, tựa như một con chim c&amp;uacute;t đang v&amp;ocirc; c&amp;ugrave;ng sợ h&amp;atilde;i.&lt;br /&gt;
Lại một tiếng k&amp;ecirc;u sợ h&amp;atilde;i nữa vang l&amp;ecirc;n. Một tiếng k&amp;ecirc;u nghe thật l&amp;agrave; th&amp;ecirc; lương. V&amp;agrave; tiếng k&amp;ecirc;u sợ h&amp;atilde;i đ&amp;oacute; ch&amp;iacute;nh l&amp;agrave; từ miệng Qu&amp;acirc;n T&amp;agrave; ph&amp;aacute;t ra. Bởi v&amp;igrave; hắn đột nhi&amp;ecirc;n ph&amp;aacute;t hiện giọng n&amp;oacute;i vừa rồi của m&amp;igrave;nh lại the th&amp;eacute; giống như giọng của một nữ h&amp;agrave;i tử vậy. Chẳng lẻ c&amp;aacute;i kia của m&amp;igrave;nh mất rồi. Kh&amp;ocirc;ng phải chứ! Phản ứng đầu ti&amp;ecirc;n của Qu&amp;acirc;n T&amp;agrave; đ&amp;oacute; l&amp;agrave; kh&amp;ocirc;ng th&amp;egrave;m để &amp;yacute; tới h&amp;igrave;nh tượng, kh&amp;ocirc;ng quả tới c&amp;oacute; một tiểu muội muội đang đứng b&amp;ecirc;n người, một trảo chụp v&amp;agrave;o đũng quần của m&amp;igrave;nh.&lt;br /&gt;
Cuối c&amp;ugrave;ng khi đ&amp;atilde; nắm được c&amp;aacute;i khối thịt quen thuộc kia Qu&amp;acirc;n T&amp;agrave; mới thở d&amp;agrave;i một hơi. &amp;Ocirc;ng trời đối xử với ta thật kh&amp;ocirc;ng tệ! Vẫn c&amp;oacute; c&amp;aacute;i thứ n&amp;agrave;y! Haizzz!&lt;br /&gt;
Vừa rồi l&amp;agrave;m ta sợ muốn chết. &amp;Ocirc;ng đ&amp;acirc;y c&amp;ograve;n muốn xuy&amp;ecirc;n v&amp;agrave;o c&amp;aacute;i đ&amp;oacute; đ&amp;oacute;... Qu&amp;acirc;n T&amp;agrave; lau mồ h&amp;ocirc;i lạnh.&lt;br /&gt;
Lấy lại b&amp;igrave;nh tĩnh, Qu&amp;acirc;n T&amp;agrave; bắt đầu xem x&amp;eacute;t th&amp;acirc;n thể mới của m&amp;igrave;nh.&lt;br /&gt;
Kinh mạch ứ đọng. Cơ thể nh&amp;atilde;o nhoẹt. C&amp;aacute;c đốt ng&amp;oacute;n tay cứng ngắc...&lt;br /&gt;
&amp;ldquo;C&amp;aacute;i th&amp;acirc;n thể n&amp;agrave;y sao hỗn tạp vậy? Cơ thể lại yếu đuối nữa? Kh&amp;ocirc;ng xong rồi!&amp;rdquo;&lt;br /&gt;
Qu&amp;acirc;n T&amp;agrave; thầm th&amp;igrave;.&lt;br /&gt;
&amp;ldquo;Nhưng kh&amp;ocirc;ng sao, chỉ cần kinh mạch kh&amp;ocirc;ng bị vỡ th&amp;igrave; chỉ cần ba tới bảy năm, bổn đại gia lại đứng tr&amp;ecirc;n đỉnh của thế giới!&amp;rdquo;&lt;br /&gt;
Sau khi quyết định xong, Qu&amp;acirc;n T&amp;agrave; l&amp;uacute;c n&amp;agrave;y mới để &amp;yacute; tới m&amp;igrave;nh giờ đang ở một thế giới c&amp;oacute; vẻ ho&amp;agrave;n to&amp;agrave;n xa lạ!&lt;br /&gt;
Ở đ&amp;acirc;y sao lại kh&amp;ocirc;ng giống địa cầu m&amp;agrave; m&amp;igrave;nh quen thuộc vậy? M&amp;igrave;nh ở đ&amp;acirc;y thực sự kh&amp;ocirc;ng quen, c&amp;aacute;i g&amp;igrave; cũng kh&amp;ocirc;ng biết, c&amp;aacute;i g&amp;igrave; cũng kh&amp;ocirc;ng hiểu. Với cả ph&amp;eacute;p tắc của thế giới n&amp;agrave;y l&amp;agrave; g&amp;igrave;? V&amp;agrave; thế giới n&amp;agrave;y c&amp;oacute; những c&amp;aacute;i g&amp;igrave;?&lt;br /&gt;
Tho&amp;aacute;ng suy nghĩ qua mấy vấn đề đ&amp;oacute;, với tố chất t&amp;acirc;m l&amp;yacute; cả vị s&amp;aacute;t thủ l&amp;atilde;nh huyết vốn được gọi l&amp;agrave; T&amp;agrave; qu&amp;acirc;n n&amp;agrave;y kh&amp;ocirc;ng ngờ cũng c&amp;oacute; ch&amp;uacute;t ch&amp;aacute;n nản.&lt;br /&gt;
Nh&amp;igrave;n đồ d&amp;ugrave;ng cũng chiếc gường c&amp;oacute; phong c&amp;aacute;ch cổ xưa, cả bộ quần &amp;aacute;o đặc th&amp;ugrave; của thời đại n&amp;agrave;y tr&amp;ecirc;n người lập tức niềm vui sướng khi biết được m&amp;igrave;nh vẫn chưa chết, hơn nữa c&amp;ograve;n xuy&amp;ecirc;n việt dần dần trở n&amp;ecirc;n b&amp;igrave;nh tĩnh rồi tiếp đ&amp;oacute; t&amp;acirc;m tư hắn bỗng rối loạn...&lt;br /&gt;
Th&amp;igrave; ra... Th&amp;igrave; ra thực sự l&amp;agrave; m&amp;igrave;nh c&amp;oacute; thể sống lại...&lt;br /&gt;
Ban đầu điều n&amp;agrave;y sẽ khiến hắn v&amp;ocirc; c&amp;ugrave;ng phấn chấn nhưng về sau từ đ&amp;aacute;y l&amp;ograve;ng hắn lại d&amp;acirc;ng l&amp;ecirc;n nỗi niềm mất m&amp;aacute;t c&amp;ugrave;ng sự thống khổ tới v&amp;ocirc; c&amp;ugrave;ng. Đ&amp;oacute; l&amp;agrave; một cảm gi&amp;aacute;c vi diệu dập dềnh kh&amp;ocirc;ng ổn định, khiến mũi hắn hơi cảm thấy chua x&amp;oacute;t, khiến mắt hắn cũng c&amp;oacute; ch&amp;uacute;t g&amp;igrave; đ&amp;oacute; cay cay, khiến l&amp;ograve;ng người c&amp;oacute; ch&amp;uacute;t buồn phiền. Qu&amp;acirc;n T&amp;agrave; tự giễu một c&amp;acirc;u, kh&amp;oacute;a miệng khẽ nhếch l&amp;ecirc;n. Cả đời hắn gần như chưa bao giờ rơi lệ m&amp;agrave; vừa rồi su&amp;yacute;t nữa l&amp;agrave; hắn đ&amp;atilde; rơi lệ.&lt;br /&gt;
Cố quốc xa x&amp;ocirc;i, cố hương c&amp;aacute;ch trở! Ta vốn tưởng rằng m&amp;igrave;nh c&amp;oacute; thể rất ti&amp;ecirc;u s&amp;aacute;i, vốn tưởng rằng m&amp;igrave;nh c&amp;oacute; thể dễ d&amp;agrave;ng bu&amp;ocirc;ng bỏ. Nhưng khi mọi việc xảy ra ở trước mắt v&amp;agrave; tất cả đều rất ch&amp;acirc;n thực th&amp;igrave; ta mới đột nhi&amp;ecirc;n ph&amp;aacute;t hiện ra rằng, ta kh&amp;ocirc;ng bu&amp;ocirc;ng được. Ta thực sự kh&amp;ocirc;ng bu&amp;ocirc;ng bỏ được!&lt;br /&gt;
Vốn tưởng rằng tr&amp;ecirc;n đời n&amp;agrave;y sớm đ&amp;atilde; kh&amp;ocirc;ng c&amp;ograve;n g&amp;igrave; li&amp;ecirc;n quan, kh&amp;ocirc;ng c&amp;ograve;n g&amp;igrave; để m&amp;igrave;nh m&amp;igrave;nh phải vướng bận. Nhưng giờ m&amp;igrave;nh mới ph&amp;aacute;t hiện ra, những thứ m&amp;agrave; m&amp;igrave;nh quan t&amp;acirc;m lại nhiều v&amp;ocirc; kể! M&amp;agrave; quan trọng nhất ch&amp;iacute;nh l&amp;agrave; tại đ&amp;acirc;y, một nơi lạ lẫm n&amp;agrave;y m&amp;igrave;nh kh&amp;ocirc;ng thể t&amp;igrave;m thấy những c&amp;aacute;i, những phần thuộc về ch&amp;iacute;nh m&amp;igrave;nh! Thuộc về ch&amp;iacute;nh m&amp;igrave;nh...&lt;br /&gt;
Từ trong cốt tủy, ta vĩnh viễn từ đầu tới cuối chỉ l&amp;agrave; một người ngo&amp;agrave;i...&lt;br /&gt;
Qu&amp;acirc;n T&amp;agrave; lẳng lặng nhắm hai mắt lại, nhẹ nh&amp;agrave;ng nghi&amp;ecirc;ng đầu v&amp;agrave; khi kh&amp;ocirc;ng c&amp;ograve;n ai c&amp;oacute; thể nh&amp;igrave;n thấy được, một giọt nước mắt nhẹ nh&amp;agrave;ng, kh&amp;ocirc;ng một tiếng động chảy xuống...&lt;br /&gt;
Đ&amp;acirc;y l&amp;agrave; giọt nước mắt đầu ti&amp;ecirc;n của hai kiếp l&amp;agrave;m người!&lt;br /&gt;
Nam nhi kh&amp;ocirc;ng rơi lệ chỉ v&amp;igrave; chưa tới l&amp;uacute;c đau l&amp;ograve;ng!&lt;br /&gt;
******************&lt;br /&gt;
Kinh ngạc nh&amp;igrave;n khu&amp;ocirc;n mặt trẻ tuổi c&amp;oacute; ch&amp;uacute;t non nớt, gầy yếu với đ&amp;ocirc;i m&amp;ocirc;i mỏng, cặp l&amp;ocirc;ng mi nghi&amp;ecirc;ng d&amp;agrave;i, đ&amp;ocirc;i mắt hơi ch&amp;uacute;t d&amp;agrave;i nhỏ đầy vẻ sắc b&amp;eacute;n b&amp;ecirc;n trong chiếc gương đồng trước mặt m&amp;agrave; Qu&amp;acirc;n T&amp;agrave; chỉ biết cười khổ một tiếng, th&amp;igrave; th&amp;agrave;o n&amp;oacute;i:&lt;br /&gt;
- Kh&amp;ocirc;ng thể kh&amp;ocirc;ng n&amp;oacute;i bộ dạng của t&amp;ecirc;n gia hỏa n&amp;agrave;y cũng kh&amp;ocirc;ng tệ, rất thanh t&amp;uacute; đ&amp;oacute;! Chỉ l&amp;agrave; c&amp;oacute; ch&amp;uacute;t g&amp;igrave; đ&amp;oacute; yếu đuối, ẻo lả, lại hơi mặt trắng!&lt;br /&gt;
Nhớ lại kiếp trước, m&amp;igrave;nh thật uy phong biết bao, dữ tợn tới mức n&amp;agrave;o? Mặc d&amp;ugrave; bề ngo&amp;agrave;i cũng kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; đặc biết khiến người ta y&amp;ecirc;u th&amp;iacute;ch, mắt c&amp;oacute; nhỏ, mũi c&amp;oacute; thấp một ch&amp;uacute;t, về tổng thể th&amp;igrave; c&amp;oacute; ch&amp;uacute;t đại ch&amp;uacute;ng nhưng bản th&amp;acirc;n m&amp;igrave;nh ch&amp;iacute;nh l&amp;agrave; một nam nh&amp;acirc;n ti&amp;ecirc;u chuẩn! Tiểu bạch kiểm n&amp;agrave;y tuy rằng l&amp;agrave; nam nh&amp;acirc;n, l&amp;agrave; đại trượng phu nhưng m&amp;igrave;nh lại khinh thường những kẻ như vậy. Song kh&amp;ocirc;ng thể tưởng được rằng khi xuy&amp;ecirc;n việt m&amp;igrave;nh lại xuy&amp;ecirc;n tới một t&amp;ecirc;n tiểu bạch kiểm ti&amp;ecirc;u chuẩn như thế n&amp;agrave;y, nhất l&amp;agrave; tiểu bạch kiểm n&amp;agrave;y lại c&amp;ograve;n rất l&amp;agrave; xinh đẹp nữa...&lt;br /&gt;
&amp;ldquo;Anh bạn, l&amp;agrave; anh mang ta tới đ&amp;acirc;y sao?&amp;rdquo;&lt;br /&gt;
Tay phải nhẹ nh&amp;agrave;ng vuốt ve hoa văn h&amp;igrave;nh th&amp;aacute;p nhỏ tr&amp;ecirc;n cổ tay tr&amp;aacute;i m&amp;agrave; hoa văn bảo th&amp;aacute;p kia rất giống một h&amp;igrave;nh xăm. Tr&amp;ecirc;n khu&amp;ocirc;n mặt Qu&amp;acirc;n T&amp;agrave; lộ vẻ ki&amp;ecirc;u ngạo. Ngay cả khi ta xuy&amp;ecirc;n việt th&amp;igrave; thứ n&amp;agrave;y vẫn ở trong tay người Trung Quốc m&amp;agrave; kh&amp;ocirc;ng bị rơi v&amp;agrave;o tay bọn Dương quỷ tử.&lt;br /&gt;
Hoa văn bảo th&amp;aacute;p n&amp;agrave;y giống y hệt c&amp;aacute;i Linh Lung tiểu th&amp;aacute;p m&amp;agrave; Qu&amp;acirc;n T&amp;agrave; đ&amp;atilde; liều mạng cướp đoạt! Mặc d&amp;ugrave; n&amp;oacute; đ&amp;atilde; biến th&amp;agrave;nh một hoa văn nhỏ b&amp;eacute; tr&amp;ecirc;n tay m&amp;igrave;nh nhưng Qu&amp;acirc;n T&amp;agrave; c&amp;oacute; thể khẳng định rằng đ&amp;acirc;y ch&amp;iacute;nh l&amp;agrave; c&amp;aacute;i tiểu th&amp;aacute;p kia! Ch&amp;iacute;nh hắn cũng kh&amp;ocirc;ng biết v&amp;igrave; sao trong l&amp;ograve;ng lại c&amp;oacute; cảm gi&amp;aacute;c n&amp;agrave;y, rất ch&amp;acirc;n thực, m&amp;agrave; cũng rất huyền diệu.&lt;br /&gt;
Thấy hoa văn tiểu th&amp;aacute;p, niềm an ủi duy nhất c&amp;oacute; thể được m&amp;igrave;nh mang từ kiếp trước đến n&amp;agrave;y m&amp;agrave; trong l&amp;ograve;ng Qu&amp;acirc;n T&amp;agrave; bỗng nổi s&amp;oacute;ng dữ dội, tới ch&amp;iacute;nh hắn cũng kh&amp;ocirc;ng hiểu đ&amp;acirc;y l&amp;agrave; cảm gi&amp;aacute;c g&amp;igrave; nữa. Chỉ l&amp;agrave; do t&amp;acirc;m t&amp;iacute;nh của hắn lu&amp;ocirc;n trầm ổn n&amp;ecirc;n tr&amp;ecirc;n khu&amp;ocirc;n mặt kh&amp;ocirc;ng để lộ ra bất cứ một c&amp;aacute;i g&amp;igrave; cả.&lt;br /&gt;
Vẫn l&amp;atilde;nh đạm, vẫn trầm tĩnh như xưa!&lt;br /&gt;
Đột nhi&amp;ecirc;n, hoa văn tiểu th&amp;aacute;p đang bị hắn nhẹ nh&amp;agrave;ng vuốt ve bỗng ph&amp;aacute;t ra một hồi &amp;aacute;nh s&amp;aacute;ng m&amp;agrave;u v&amp;agrave;ng, sau đ&amp;oacute; Qu&amp;acirc;n T&amp;agrave; đột nhi&amp;ecirc;n cảm thấy nặng đầu, tiếp theo trong đầu hắn h&amp;igrave;nh như c&amp;oacute; th&amp;ecirc;m một c&amp;aacute;i g&amp;igrave; đ&amp;oacute;, m&amp;agrave; hoa văn tr&amp;ecirc;n tay kia cũng đột nhi&amp;ecirc;n biến mất!&lt;br /&gt;
&amp;ldquo;Chuyện lạ!&amp;rdquo;&lt;br /&gt;
Lắc lắc đầu, Qu&amp;acirc;n T&amp;agrave; cảm thấy kỳ qu&amp;aacute;i. Tr&amp;ograve; n&amp;agrave;y đ&amp;uacute;ng thật l&amp;agrave; kỳ qu&amp;aacute;i. Trước ti&amp;ecirc;n một tiểu th&amp;aacute;p lớn bằng b&amp;agrave;n tay biến th&amp;agrave;nh một h&amp;igrave;nh xăm tr&amp;ecirc;n người m&amp;igrave;nh, tiếp theo lại biến mất một c&amp;aacute;ch thần kỳ. Chẳng lẻ đồ chơi n&amp;agrave;y lại l&amp;agrave; bảo bối g&amp;igrave; g&amp;igrave; đ&amp;oacute; của thần ti&amp;ecirc;n trong truyền thuyết ư?&lt;br /&gt;
- Thiếu gia, l&amp;atilde;o th&amp;aacute;i gia mời người qua đ&amp;oacute;.&lt;br /&gt;
Khi Qu&amp;acirc;n T&amp;agrave; đang định xem x&amp;eacute;t xem trong đầu m&amp;igrave;nh rốt cuộc c&amp;oacute; th&amp;ecirc;m c&amp;aacute;i g&amp;igrave; th&amp;igrave; đột nhi&amp;ecirc;n một giọng n&amp;oacute;i vang l&amp;ecirc;n.&lt;br /&gt;
- Mời ta qua ư?&lt;br /&gt;
Qu&amp;acirc;n T&amp;agrave; nh&amp;iacute;u m&amp;agrave;y.&lt;br /&gt;
- Để l&amp;agrave;m g&amp;igrave;?&lt;br /&gt;
Bằng v&amp;agrave;o c&amp;aacute;i g&amp;igrave; m&amp;agrave; l&amp;atilde;o gi&amp;agrave; kia bảo ta qua b&amp;ecirc;n đ&amp;oacute; l&amp;agrave; ta phải qua chứ? Ta l&amp;agrave; ch&amp;agrave;u của l&amp;atilde;o &amp;agrave;?! Nhưng những lời n&amp;agrave;y c&amp;ograve;n chưa thốt ra khỏi mồm th&amp;igrave; l&amp;uacute;c n&amp;agrave;y hắn mới chợt nhớ ra, c&amp;oacute; vẻ như l&amp;atilde;o gi&amp;agrave; kia quả đ&amp;uacute;ng l&amp;agrave; gia gia của m&amp;igrave;nh. &amp;Iacute;t nhất l&amp;agrave; gia gia của th&amp;acirc;n thể n&amp;agrave;y.&lt;br /&gt;
- Điều n&amp;agrave;y... N&amp;ocirc; tỳ kh&amp;ocirc;ng biết.&lt;br /&gt;
Tiểu c&amp;ocirc; nương hoảng sợ nh&amp;igrave;n hắn một c&amp;aacute;i rồi c&amp;uacute;i đầu. Đ&amp;ocirc;i h&amp;agrave;ng l&amp;ocirc;ng mi d&amp;agrave;i d&amp;agrave;i bối rối nh&amp;aacute;y nh&amp;aacute;y li&amp;ecirc;n tục. Hai ch&amp;acirc;n một trước một sau, th&amp;acirc;n thể nhỏ nhắn hơi nghi&amp;ecirc;ng nghi&amp;ecirc;ng, bộ d&amp;aacute;ng chuẩn bị để bất cứ l&amp;uacute;c n&amp;agrave;o cũng c&amp;oacute; thể co ch&amp;acirc;n chạy trốn.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;
', 1, CAST(0x0000ADF201688209 AS DateTime), CAST(0x0000ADF201688209 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (7, 4108, 4, N'Quyển 1: Tà Quân Vấn Thế - Chương 2: Quân Mạc Tà', N'&lt;p&gt;Qu&amp;acirc;n Mạc T&amp;agrave; hiện nay mười s&amp;aacute;u tuổi, l&amp;agrave; ch&amp;aacute;u nhỏ nhất của Qu&amp;acirc;n thị gia tộc ở Thi&amp;ecirc;n Hương Đế Quốc. Một t&amp;ecirc;n chơi bời l&amp;ecirc;u lổng, ham ăn biếng l&amp;agrave;m, ch&amp;iacute;nh l&amp;agrave; một t&amp;ecirc;n si&amp;ecirc;u cấp ho&amp;agrave;n khố nỗi danh. Đ&amp;aacute;nh gi&amp;aacute; về hắn đơn giản chỉ c&amp;oacute; một c&amp;acirc;u: Một k&amp;yacute; sinh tr&amp;ugrave;ng c&amp;ograve;n sống kh&amp;ocirc;ng một điểm gi&amp;aacute; trị.&lt;br /&gt;
Đ&amp;acirc;y l&amp;agrave; tư liệu chung của th&amp;acirc;n phận mới hiện tại của Qu&amp;acirc;n T&amp;agrave;.&lt;br /&gt;
Tr&amp;aacute;ch kh&amp;ocirc;ng được tại sao ngươi bị xuy&amp;ecirc;n việt. Ngoại hiệu trước kia của ta l&amp;agrave; T&amp;agrave; Qu&amp;acirc;n t&amp;ecirc;n l&amp;agrave; Qu&amp;acirc;n T&amp;agrave; m&amp;agrave; ngươi được gọi l&amp;agrave; Mạc T&amp;agrave;. Điều n&amp;agrave;y kh&amp;ocirc;ng phải l&amp;agrave; xung khắc trời sinh sao? Ngươi kh&amp;ocirc;ng oan nha.&lt;br /&gt;
Trong đầu xem lại một ch&amp;uacute;t h&amp;agrave;nh vi thường ng&amp;agrave;y của t&amp;ecirc;n n&amp;agrave;y m&amp;agrave; Qu&amp;acirc;n T&amp;agrave; thở d&amp;agrave;i. Nếu đổi lại kiếp trước th&amp;igrave; hắn ch&amp;iacute;nh l&amp;agrave; đối tượng m&amp;igrave;nh muốn giết. M&amp;agrave; ch&amp;iacute;nh m&amp;igrave;nh cũng đ&amp;acirc;u c&amp;oacute; tệ sao lại d&amp;iacute;nh ngay c&amp;aacute;i th&amp;acirc;n r&amp;aacute;c rưởi n&amp;agrave;y? Thi&amp;ecirc;n &amp;yacute; sao? Người ta thường n&amp;oacute;i nh&amp;acirc;n quả phật gia. Một đời n&amp;agrave;y giết heo th&amp;igrave; kiếp sau sẽ trở th&amp;agrave;nh con heo. Lời n&amp;agrave;y xem ra cũng c&amp;oacute; đạo l&amp;yacute;. Ch&amp;iacute;nh m&amp;igrave;nh kiếp trước giết kh&amp;ocirc;ng &amp;iacute;t t&amp;ecirc;n ho&amp;agrave;n khố đ&amp;oacute; chứ...&lt;br /&gt;
Tổ phụ của t&amp;ecirc;n tiểu tử ho&amp;agrave;n khố n&amp;agrave;y l&amp;agrave; Qu&amp;acirc;n Chiến Thi&amp;ecirc;n, l&amp;agrave; Huyết Lan Hoa đại c&amp;ocirc;ng tước cũng l&amp;agrave; nh&amp;acirc;n vật nắm quyền qu&amp;acirc;n đội. Phụ th&amp;acirc;n ch&amp;iacute;nh l&amp;agrave; Qu&amp;acirc;n V&amp;ocirc; Hối. Từng l&amp;agrave; đại tướng của đế quốc, mười năm trước chết trận tr&amp;ecirc;n chiến trường. Mẫu th&amp;acirc;n th&amp;igrave; ch&amp;iacute;n năm trước do buồn bực qu&amp;aacute; độ n&amp;ecirc;n đ&amp;atilde; đi đo&amp;agrave;n tụ với cha hắn dưới suối v&amp;agrave;ng. Hai vị ca ca l&amp;agrave; Qu&amp;acirc;n Mạc Sầu, Qu&amp;acirc;n Mạc Ưu đ&amp;atilde; chết trận trong đại chiến lừng lẫy trước kia.&lt;br /&gt;
C&amp;ograve;n c&amp;oacute; một vị th&amp;uacute;c th&amp;uacute;c gọi l&amp;agrave; Qu&amp;acirc;n V&amp;ocirc; &amp;Yacute; cũng bị thương trong chiến trận ở mười năm trước. Tuy rằng giữ được c&amp;aacute;i mệnh nhưng nửa phần dưới eo bị t&amp;ecirc; liệt...&lt;br /&gt;
Một gia tộc khổng lồ như thế c&amp;oacute; thể được n&amp;oacute;i l&amp;agrave; cả nh&amp;agrave; trung liệt. Đ&amp;aacute;ng tiếc đ&amp;atilde; rơi v&amp;agrave;o t&amp;igrave;nh trạng xuống dốc trầm trọng. C&amp;ograve;n lại một c&amp;acirc;y nối d&amp;otilde;i Qu&amp;acirc;n Mạc T&amp;agrave; bị Qu&amp;acirc;n T&amp;agrave; xuy&amp;ecirc;n việt. Nếu sau n&amp;agrave;y Qu&amp;acirc;n T&amp;agrave; c&amp;oacute; con th&amp;igrave; tr&amp;ecirc;n l&amp;yacute; luận cũng ch&amp;iacute;nh l&amp;agrave; huyết mạch của Qu&amp;acirc;n gia. Xem như trời cao đ&amp;atilde; ban &amp;acirc;n với Qu&amp;acirc;n gia rồi...&lt;br /&gt;
Nếu như &amp;ocirc;ng trời quyết định như vậy cũng xem tr&amp;ecirc;n qu&amp;acirc;n t&amp;iacute;ch của gia tộc. Bổn đại s&amp;aacute;t thủ n&amp;agrave;y đ&amp;agrave;nh phải thay ngươi sống một đời thật tốt đi a. Qu&amp;acirc;n T&amp;agrave; nhếch miệng cười nh&amp;uacute;n nh&amp;uacute;n vai. Thật ra l&amp;atilde;o tử cũng kh&amp;ocirc;ng muốn ph&amp;aacute; thanh danh để cho l&amp;atilde;o tử bị mắng l&amp;agrave;m chi.&lt;br /&gt;
Đẩy cửa ph&amp;ograve;ng, Qu&amp;acirc;n T&amp;agrave; cất bước đi ra, &amp;aacute;nh mặt trời chiếu s&amp;aacute;ng khắp nơi. Nh&amp;igrave;n &amp;aacute;nh s&amp;aacute;ng mặt trời một l&amp;uacute;c l&amp;acirc;u, Qu&amp;acirc;n T&amp;agrave; thở d&amp;agrave;i. Mặt trời kia ch&amp;iacute;nh l&amp;agrave; mặt trời a... M&amp;agrave; ta cũng kh&amp;ocirc;ng phải l&amp;agrave; ta. Qu&amp;acirc;n Mạc T&amp;agrave; kh&amp;ocirc;ng phải l&amp;agrave; Qu&amp;acirc;n T&amp;agrave;.&lt;br /&gt;
T&amp;acirc;m của ta ch&amp;iacute;nh l&amp;agrave; t&amp;acirc;m của T&amp;agrave; Qu&amp;acirc;n? Dị thế l&amp;agrave; như thế n&amp;agrave;o?&lt;br /&gt;
B&amp;ecirc;n ngo&amp;agrave;i cửa c&amp;oacute; hai t&amp;ecirc;n người hầu khom người n&amp;oacute;i: &amp;ldquo;Thiếu gia mạnh giỏi...&amp;rdquo;&lt;br /&gt;
Qu&amp;acirc;n T&amp;agrave; nh&amp;agrave;n nhạt gật đầu. Nh&amp;igrave;n bốn t&amp;ecirc;n hạ nh&amp;acirc;n đang bận rộn c&amp;aacute;ch đ&amp;oacute; kh&amp;ocirc;ng xa lại nh&amp;igrave;n lại b&amp;ecirc;n người liền lắc lắc đầu.&lt;br /&gt;
Nh&amp;igrave;n một c&amp;aacute;i những hạ nh&amp;acirc;n b&amp;ecirc;n cạnh. C&amp;aacute;c c&amp;ocirc;ng tử kh&amp;aacute;c đều c&amp;oacute; mỹ nữ thi&amp;ecirc;n kiều b&amp;aacute;ch mỵ hầu hạ. M&amp;agrave; người hầu trẻ nhất của ch&amp;iacute;nh m&amp;igrave;nh chỉ c&amp;oacute; một đứa hầu g&amp;aacute;i t&amp;ecirc;n l&amp;agrave; La Lỵ mười hai tuổi. Trong ấn tượng th&amp;igrave; đ&amp;acirc;y l&amp;agrave; do gia gia cường thế của m&amp;igrave;nh an b&amp;agrave;i. Những hạ nh&amp;acirc;n của m&amp;igrave;nh đều c&amp;oacute; một đặc điểm, đ&amp;oacute; ch&amp;iacute;nh l&amp;agrave; rất khỏe mạnh v&amp;agrave; cường tr&amp;aacute;ng.&lt;br /&gt;
- Bọn họ đang l&amp;agrave;m g&amp;igrave;?&lt;br /&gt;
Ngẩng đầu nh&amp;igrave;n mấy đầy tớ gi&amp;agrave; kia Qu&amp;acirc;n T&amp;agrave; hỏi.&lt;br /&gt;
- Bọn họ... Đang gi&amp;uacute;p những con chim v&amp;agrave; ch&amp;oacute; đấu th&amp;uacute; của thiếu gia.&lt;br /&gt;
Một người đầy tớ gi&amp;agrave; c&amp;uacute;i đầu trả lời.&lt;br /&gt;
- Ồ?&lt;br /&gt;
Qu&amp;acirc;n T&amp;agrave; thong thả đi qua. Ừ, đ&amp;uacute;ng l&amp;agrave; &amp;lsquo;rực rỡ v&amp;ocirc; c&amp;ugrave;ng&amp;rsquo;. Bảy t&amp;aacute;m lồng sắt đặt chỉnh tề, b&amp;ecirc;n trong đ&amp;oacute; c&amp;oacute; mấy con chim bất đồng nhan sắc bay đến bay lui tr&amp;ocirc;ng rất hoạt b&amp;aacute;t. C&amp;aacute;ch đ&amp;oacute; kh&amp;ocirc;ng xa c&amp;oacute; mấy con ch&amp;oacute; lớn đang le lưỡi nằm tr&amp;ecirc;n đất. Xa hơn l&amp;agrave; c&amp;oacute; mấy ống tr&amp;uacute;c nhỏ ph&amp;aacute;t ra tiếng k&amp;ecirc;u của dế m&amp;egrave;n. Xem ra l&amp;agrave; những con rất chuy&amp;ecirc;n đấu th&amp;uacute;...&lt;br /&gt;
Ừa. Xem ra vị c&amp;ocirc;ng tử n&amp;agrave;y c&amp;oacute; sở th&amp;iacute;ch rộng r&amp;atilde;i đ&amp;oacute; chứ. B&amp;ecirc;n cạnh c&amp;oacute; hai lồng sắt nu&amp;ocirc;i hai con độc x&amp;agrave; đầy m&amp;agrave;u sắc đang le lưỡi v&amp;agrave;o ra...&lt;br /&gt;
Nh&amp;igrave;n những c&amp;aacute;i n&amp;agrave;y đầy ch&amp;aacute;n ngh&amp;eacute;t, Qu&amp;acirc;n T&amp;agrave; nh&amp;iacute;u m&amp;agrave;y n&amp;oacute;i:&lt;br /&gt;
- Gọi người đến đưa bọn ch&amp;uacute;ng b&amp;aacute;n đi. Nếu b&amp;aacute;n kh&amp;ocirc;ng được th&amp;igrave; l&amp;agrave;m thịt. Đừng đặt chổ n&amp;agrave;y l&amp;agrave;m g&amp;igrave;. Đ&amp;acirc;y l&amp;agrave; nơi d&amp;agrave;nh cho người chứ kh&amp;ocirc;ng phải l&amp;agrave; vườn th&amp;uacute;.&lt;br /&gt;
Hả?&lt;br /&gt;
Vừa nghe những lời n&amp;agrave;y th&amp;igrave; s&amp;aacute;u người hầu gi&amp;agrave; v&amp;agrave; La lỵ đi theo sau lưng Qu&amp;acirc;n T&amp;agrave; đều trợn mắt l&amp;ecirc;n. Kh&amp;ocirc;ng nhịn được nh&amp;igrave;n thiếu gia m&amp;igrave;nh. Một khắc sau, trong đầu bảy người đều xuất hiện một &amp;yacute; nghĩ giống nhau: &amp;ldquo;Vị thiếu gia n&amp;agrave;y h&amp;ocirc;m nay bị đi&amp;ecirc;n rồi sao? Những c&amp;aacute;i n&amp;agrave;y đều l&amp;agrave; do ng&amp;agrave;i t&amp;igrave;m mua với gi&amp;aacute; cao đ&amp;oacute;. Trước giờ vẫn l&amp;agrave; bảo bối m&amp;agrave;? H&amp;ocirc;m nay n&amp;eacute;m đi mai lại mua tiếp?&amp;rdquo;&lt;br /&gt;
- &amp;Aacute;ch! Hai con rắn kia đừng b&amp;aacute;n! Chờ ta quay lại nấu canh uống.&lt;br /&gt;
Đi được hai bước th&amp;igrave; Qu&amp;acirc;n T&amp;agrave; kh&amp;ocirc;ng quay đầu lại n&amp;oacute;i tiếp.&lt;br /&gt;
Cả đ&amp;aacute;m ngẩn t&amp;ograve; te kh&amp;ocirc;ng biết phải n&amp;oacute;i g&amp;igrave;.&lt;br /&gt;
Đi xuy&amp;ecirc;n qua một hoa vi&amp;ecirc;n, mấy t&amp;ograve;a lầu c&amp;aacute;c, một thao trường lại đi đến một hồ c&amp;aacute; thật lớn. Dọc theo h&amp;agrave;ng c&amp;acirc;y bờ hồ đi th&amp;ecirc;m nửa canh giờ mới đến chỗ Qu&amp;acirc;n l&amp;atilde;o gia tử. L&amp;uacute;c n&amp;agrave;y Qu&amp;acirc;n T&amp;agrave; mới ph&amp;aacute;t hiện khu vực m&amp;igrave;nh ở v&amp;agrave; nơi của Qu&amp;acirc;n l&amp;atilde;o gia tử đ&amp;uacute;ng l&amp;agrave; một nam một bắc. Nếu t&amp;iacute;nh khoảng c&amp;aacute;ch theo đường chim bay chắc cũng được năm s&amp;aacute;u dặm đường. Xem ra gia tộc n&amp;agrave;y của m&amp;igrave;nh thật lớn. Nếu m&amp;igrave;nh nhớ kh&amp;ocirc;ng lầm th&amp;igrave; nơi đ&amp;acirc;y ch&amp;iacute;nh l&amp;agrave; kinh th&amp;agrave;nh của một quốc gia. C&amp;oacute; thể ở trong kinh th&amp;agrave;nh x&amp;acirc;y dựng gia vi&amp;ecirc;n lớn hơn mười mẫu th&amp;igrave; ngoại trừ ho&amp;agrave;ng cung ra chỉ sợ kh&amp;ocirc;ng được mấy nh&amp;agrave;.&lt;br /&gt;
Qu&amp;acirc;n l&amp;atilde;o gia tử ngồi ph&amp;iacute;a sau b&amp;agrave;n, mặc d&amp;ugrave; tuổi đ&amp;atilde; qua lục tuần nhưng r&amp;acirc;u t&amp;oacute;c vẫn đen mượt, mới nh&amp;igrave;n như người chỉ bốn mươi tuổi. Khu&amp;ocirc;n mặt uy nghi&amp;ecirc;m lộ ra vẻ bất đắc dĩ. Nh&amp;igrave;n đứa ch&amp;aacute;u lười biếng hữu kh&amp;iacute; v&amp;ocirc; lực tiến v&amp;agrave;o m&amp;agrave; kh&amp;ocirc;ng nhịn được tức giận.&lt;br /&gt;
Đǫc truyện với&lt;br /&gt;
Http://Ｔruyencuatui.Net/ L&amp;atilde;o gia tử Qu&amp;acirc;n Chiến Thi&amp;ecirc;n c&amp;oacute; xuất th&amp;acirc;n từ ngh&amp;egrave;o khổ, thời trẻ l&amp;agrave;m tướng tung ho&amp;agrave;nh thi&amp;ecirc;n hạ khiến cho qu&amp;acirc;n địch mỗi nước đều kinh sợ. Kh&amp;ocirc;ng chỉ văn thao vũ lược v&amp;ocirc; c&amp;ugrave;ng cao minh m&amp;agrave; cũng ch&amp;iacute;nh l&amp;agrave; một trong những Huyền cấp cao thủ tại Thi&amp;ecirc;n Hương Quốc. T&amp;iacute;nh c&amp;aacute;ch trầm ổn ki&amp;ecirc;n nghị, buồn vui kh&amp;ocirc;ng biểu lộ ra ngo&amp;agrave;i.&lt;br /&gt;
Chỉ cần một c&amp;acirc;u &amp;lsquo;xuất th&amp;acirc;n ngh&amp;egrave;o khổ, thiếu ni&amp;ecirc;n l&amp;agrave;m tướng&amp;rsquo; c&amp;oacute; thể nh&amp;igrave;n ra được một h&amp;agrave;i tử ngh&amp;egrave;o khổ như nhau th&amp;igrave; mấy ai l&amp;agrave;m được vị tr&amp;iacute; tướng qu&amp;acirc;n n&amp;agrave;y? C&amp;agrave;ng huống chi l&amp;agrave;m tướng từ khi trẻ...&lt;br /&gt;
Qu&amp;acirc;n Chiến Thi&amp;ecirc;n từ một người d&amp;acirc;n ngh&amp;egrave;o khổ trở th&amp;agrave;nh Huyết Hoa Lan đại c&amp;ocirc;ng tước trong v&amp;ograve;ng kh&amp;ocirc;ng đến bốn mươi năm. Mặc d&amp;ugrave; n&amp;oacute;i thời thế tạo anh h&amp;ugrave;ng nhưng xem lại lịch sử cũng kh&amp;ocirc;ng c&amp;oacute; mấy người l&amp;agrave;m được như vậy. Chỉ với điều đ&amp;oacute; th&amp;ocirc;i cũng đủ để ki&amp;ecirc;u ngạo. Nhưng b&amp;acirc;y giờ nh&amp;igrave;n thấy đứa ch&amp;aacute;u c&amp;ograve;n lại duy nhất của m&amp;igrave;nh trong l&amp;ograve;ng bất đắc dĩ kh&amp;ocirc;ng th&amp;ocirc;i. Trong l&amp;ograve;ng &amp;ldquo;Hận sắt kh&amp;ocirc;ng th&amp;agrave;nh th&amp;eacute;p&amp;rdquo;&lt;br /&gt;
L&amp;atilde;o gia tử thật sự kh&amp;ocirc;ng nghĩ rằng với huyết thống của gia tộc v&amp;agrave; sự quản l&amp;yacute; chặt chẽ vậy m&amp;agrave; vẫn sinh ra một nghiệt chướng! Tiểu tử n&amp;agrave;y văn kh&amp;ocirc;ng tốt v&amp;otilde; kh&amp;ocirc;ng hay. Cầm s&amp;aacute;ch liền ngủ gục, nghe luyện c&amp;ocirc;ng liền bỏ chạy nhanh hơn thỏ. Con ch&amp;aacute;u nh&amp;agrave; người ta tr&amp;ecirc;n ngực đ&amp;atilde; c&amp;oacute; cẩm t&amp;uacute;, c&amp;oacute; ch&amp;uacute;t danh vọng; Đều đ&amp;atilde; tu luyện huyền kh&amp;iacute; nhập quỹ đạo cũng đạt &amp;iacute;t nhất l&amp;agrave; ngũ phẩm. M&amp;agrave; bảo bối của m&amp;igrave;nh trước sau thay đổi năm vị thư sinh dạy cho, huyền kh&amp;iacute; tu luyện đến nay chỉ được tam phẩm.&lt;br /&gt;
Một người như vậy kh&amp;ocirc;ng l&amp;agrave;m n&amp;ecirc;n thể thống g&amp;igrave; nhưng ăn uống chơi bời đ&amp;uacute;ng l&amp;agrave; &amp;lsquo;v&amp;ocirc; sự tự th&amp;ocirc;ng&amp;rsquo;. Mấy phương diện n&amp;agrave;y c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; thi&amp;ecirc;n t&amp;agrave;i. Một đời anh h&amp;ugrave;ng m&amp;igrave;nh m&amp;igrave;nh lại c&amp;oacute; đứa ch&amp;aacute;u &amp;lsquo;tốt&amp;rsquo; như vậy...&lt;br /&gt;
Thở d&amp;agrave;i v&amp;ocirc; lực, Qu&amp;acirc;n l&amp;atilde;o gia tử nhịn kh&amp;ocirc;ng được nhớ lại con m&amp;igrave;nh v&amp;agrave; hai đứa ch&amp;aacute;u kia. Nghĩ đến đ&amp;acirc;y liền cười tự giễu một ch&amp;uacute;t: &amp;ldquo;Đem đứa ch&amp;aacute;u duy nhất nu&amp;ocirc;ng chiều th&amp;agrave;nh như vậy? Năm đ&amp;oacute; khi V&amp;ocirc; Hối con m&amp;igrave;nh tử trận, bản th&amp;acirc;n cố gắng kh&amp;ocirc;ng rơi lệ. Tự xưng l&amp;agrave; con trai của l&amp;atilde;o tử ch&amp;iacute;nh l&amp;agrave; anh h&amp;ugrave;ng. Sau khi hai đứa ch&amp;aacute;u Mạc Ưu Mạc Sầu chết nơi xa trường cũng mạnh mẽ nhịn đau kh&amp;ocirc;ng rơi nước mắt. Ch&amp;aacute;u m&amp;igrave;nh l&amp;agrave; anh h&amp;ugrave;ng hảo h&amp;aacute;n. Nhưng sau khi V&amp;ocirc; &amp;Yacute; bị t&amp;agrave;n phế th&amp;acirc;n thể th&amp;igrave; bản th&amp;acirc;n cũng l&amp;agrave; lần đầu ti&amp;ecirc;n rơi nước mắt từ sau khi ch&amp;agrave;o đời. Nhưng trong l&amp;ograve;ng c&amp;ograve;n một tia may mắn, m&amp;igrave;nh vẫn c&amp;ograve;n một đứa ch&amp;aacute;u. Hương kh&amp;oacute;i của Qu&amp;acirc;n gia c&amp;oacute; thể duy tr&amp;igrave;. Nhưng h&amp;ocirc;m nay thấy ch&amp;aacute;u m&amp;igrave;nh l&amp;agrave; một tiểu hỗn đản, một t&amp;ecirc;n bại hoại kh&amp;ocirc;ng ra g&amp;igrave;. Phải l&amp;agrave;m g&amp;igrave; b&amp;acirc;y giờ?&amp;rdquo;&lt;br /&gt;
- Nghe n&amp;oacute;i đ&amp;ecirc;m qua ngươi t&amp;eacute; từ giường xuống nhưng lại h&amp;ocirc;n m&amp;ecirc; bất tỉnh đ&amp;uacute;ng kh&amp;ocirc;ng?&lt;br /&gt;
Thu lại l&amp;ograve;ng cảm kh&amp;aacute;i trong l&amp;ograve;ng, Qu&amp;acirc;n Chiến Thi&amp;ecirc;n thản nhi&amp;ecirc;n hỏi.&lt;br /&gt;
- &amp;Aacute;ch?&lt;br /&gt;
Qu&amp;acirc;n T&amp;agrave; ngẩng đầu, trong l&amp;ograve;ng c&amp;oacute; ch&amp;uacute;t nghi hoặc cũng c&amp;oacute; ch&amp;uacute;t thoải m&amp;aacute;i. Nếu l&amp;agrave; hỏi chuyện của hắn th&amp;igrave; c&amp;oacute; thể dựa theo tr&amp;iacute; nhớ trong đầu để trả lời. Nhưng chuyện n&amp;agrave;y hắn lại kh&amp;ocirc;ng hề biết g&amp;igrave;. C&amp;ograve;n c&amp;oacute; chuyện n&amp;agrave;y thật kỳ lạ, trong l&amp;ograve;ng Qu&amp;acirc;n T&amp;agrave; nghi hoặc: S&amp;aacute;ng nay ngủ dậy liền thấy th&amp;acirc;n thể n&amp;agrave;y kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; bất thường th&amp;igrave; m&amp;igrave;nh xuy&amp;ecirc;n việt bằng c&amp;aacute;ch n&amp;agrave;o? L&amp;uacute;c n&amp;agrave;y l&amp;atilde;o gia tử hỏi mới biết được l&amp;agrave; do t&amp;ecirc;n n&amp;agrave;y t&amp;eacute; giường chết.&lt;br /&gt;
Thật sự l&amp;agrave; ho&amp;agrave;n khố m&amp;agrave;. Ngủ rớt giường cũng c&amp;oacute; thể chết sao =) )&lt;br /&gt;
Trong l&amp;ograve;ng Qu&amp;acirc;n T&amp;agrave; &amp;acirc;m thầm h&amp;acirc;m mộ kh&amp;ocirc;ng th&amp;ocirc;i. Một nh&amp;acirc;n vật cao nh&amp;acirc;n như vậy thật đ&amp;aacute;ng ngưỡng mộ m&amp;agrave;.&lt;br /&gt;
- &amp;Aacute;ch g&amp;igrave; m&amp;agrave; &amp;aacute;ch?&lt;br /&gt;
Qu&amp;acirc;n l&amp;atilde;o gia tử vỗ b&amp;agrave;n, thổi ria m&amp;eacute;p trừng mắt. Nh&amp;igrave;n bộ d&amp;aacute;ng lười biếng của hắn muốn đ&amp;aacute;nh cho một c&amp;aacute;i:&lt;br /&gt;
- Hỗn trướng. Ngươi bị người kh&amp;aacute;c hạ độc thủ m&amp;agrave; cũng kh&amp;ocirc;ng biết? Nếu kh&amp;ocirc;ng phải l&amp;atilde;o phu đ&amp;atilde; sớm đề ph&amp;ograve;ng th&amp;igrave; ngươi sớm đ&amp;atilde; đi gặp di&amp;ecirc;m vương rồi. N&amp;oacute;i xem ngươi c&amp;oacute; tiền đồ kh&amp;ocirc;ng hả?&lt;br /&gt;
Th&amp;igrave; ra l&amp;agrave; tiểu tử kia bị hạ độc thủ m&amp;agrave; chết. Trong l&amp;ograve;ng Qu&amp;acirc;n T&amp;agrave; &amp;acirc;m thầm bĩu m&amp;ocirc;i, thầm nghĩ l&amp;atilde;o &amp;lsquo;sớm đ&amp;atilde; đề ph&amp;ograve;ng&amp;rsquo; cũng kh&amp;ocirc;ng tốt g&amp;igrave;. Ch&amp;aacute;u của l&amp;atilde;o v&amp;igrave; sự &amp;lsquo;đề ph&amp;ograve;ng&amp;rsquo; m&amp;agrave; đ&amp;atilde; đi đầu thai rồi.&lt;br /&gt;
Thấy hắn kh&amp;ocirc;ng n&amp;oacute;i g&amp;igrave; khiến cho Qu&amp;acirc;n l&amp;atilde;o gia tử cảm thấy kinh ngạc. Với t&amp;iacute;nh t&amp;igrave;nh ngu ngốc của hắn th&amp;igrave; sao c&amp;oacute; thể an tĩnh như vậy được? Nếu l&amp;agrave; trước kia nghe được người kh&amp;aacute;c hạ độc thủ th&amp;igrave; sớm đ&amp;atilde; nhảy dựng l&amp;ecirc;n. B&amp;acirc;y giờ lại thản nhi&amp;ecirc;n lơ đễnh như đ&amp;atilde; đo&amp;aacute;n trước rồi. Mơ hồ c&amp;oacute; th&amp;aacute;i độ lạnh l&amp;ugrave;ng.&lt;br /&gt;
Ta kh&amp;ocirc;ng nh&amp;igrave;n lầm chứ? Qu&amp;acirc;n l&amp;atilde;o gia tử kh&amp;ocirc;ng thể tin được đứa ch&amp;aacute;u yếu k&amp;eacute;m của m&amp;igrave;nh c&amp;oacute; th&amp;aacute;i độ như vậy.&lt;/p&gt;

&lt;p&gt;Đọc đầy đủ truyện chữ Dị Thế T&amp;agrave; Qu&amp;acirc;n, truyện full Dị Thế T&amp;agrave; Qu&amp;acirc;n thuộc thể loại Kiếm Hiệp cực kỳ hấp dẫn v&amp;agrave; kịch t&amp;iacute;nh tại:&amp;nbsp;&lt;a href=&quot;https://truyenchu.vn/di-the-ta-quan&quot; target=&quot;_blamk&quot;&gt;Dị Thế T&amp;agrave; Qu&amp;acirc;n&lt;/a&gt;&lt;/p&gt;
', 1, CAST(0x0000ADF201689180 AS DateTime), CAST(0x0000ADF201689180 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (8, 4108, 4, N'Quyển 1: Tà Quân Vấn Thế - Chương 3: Quân Vô Ý', N'&lt;p&gt;- Th&amp;ocirc;i, d&amp;ugrave; l&amp;agrave; người một nh&amp;agrave; nhưng ngươi lại lu&amp;ocirc;n tr&amp;aacute;nh n&amp;eacute; ta, c&amp;ograve;n cố &amp;yacute; dọn đến phủ đệ ph&amp;iacute;a Nam sống nữa, &amp;ocirc;i, như vậy sao coi được... Ng&amp;agrave;y mai h&amp;atilde;y dọn về đ&amp;acirc;y sống c&amp;ugrave;ng ta đi!&lt;br /&gt;
Qu&amp;acirc;n Chiến Thi&amp;ecirc;n nh&amp;igrave;n Qu&amp;acirc;n T&amp;agrave; thật s&amp;acirc;u, giọng n&amp;oacute;i mang vẻ bi thương nh&amp;agrave;n nhạt. D&amp;ugrave; t&amp;ecirc;n tiểu tử n&amp;agrave;y c&amp;oacute; quậy ph&amp;aacute;, c&amp;oacute; l&amp;agrave; một t&amp;ecirc;n bất th&amp;agrave;nh kh&amp;iacute; đi chăng nữa, hắn vẫn l&amp;agrave; con ch&amp;aacute;u của l&amp;atilde;o, hơn nữa c&amp;ograve;n l&amp;agrave; huyết mạch duy nhất của gia tộc. Mặc d&amp;ugrave; l&amp;uacute;c n&amp;agrave;y mọi việc đều tr&amp;ocirc;i đi lặng lẽ, c&amp;oacute; vẻ s&amp;oacute;ng lặng gi&amp;oacute; y&amp;ecirc;n, nhưng mấy vị ho&amp;agrave;ng tử đều đang dần trưởng th&amp;agrave;nh, cơn s&amp;oacute;ng ngầm dữ dội trong triều kh&amp;ocirc;ng biết l&amp;uacute;c n&amp;agrave;o sẽ cuộn tr&amp;agrave;o s&amp;ocirc;i sục, th&amp;acirc;n l&amp;agrave; người đứng đầu qu&amp;acirc;n đội, nắm trong tay binh quyền, Qu&amp;acirc;n Chiến Thi&amp;ecirc;n l&amp;atilde;o chẳng kh&amp;aacute;c n&amp;agrave;o một quả n&amp;uacute;i y&amp;ecirc;n ổn m&amp;agrave; ai cũng muốn dựa v&amp;agrave;o, nếu kh&amp;ocirc;ng th&amp;igrave; cũng muốn ngấm ngầm mượn tay l&amp;atilde;o để ti&amp;ecirc;u diệt kẻ đối nghịch. T&amp;aacute; đao s&amp;aacute;t nh&amp;acirc;n, c&amp;ograve;n g&amp;igrave; tuyệt hơn, c&amp;ograve;n g&amp;igrave; ho&amp;agrave;n hảo hơn l&amp;agrave; xuống tay với huyết mạch duy nhất của gia tộc l&amp;atilde;o rồi vu oan gi&amp;aacute; họa cho kẻ th&amp;ugrave;? L&amp;atilde;o kh&amp;ocirc;ng thể y&amp;ecirc;n t&amp;acirc;m khi Qu&amp;acirc;n T&amp;agrave; vẫn chưa nằm trong v&amp;ograve;ng tay bảo hộ của m&amp;igrave;nh, ai biết sự t&amp;igrave;nh sau n&amp;agrave;y sẽ diễn biến tới đ&amp;acirc;u?&lt;br /&gt;
- Kh&amp;ocirc;ng cần đ&amp;acirc;u &amp;ocirc;ng, con ở đ&amp;oacute; rất tốt!&lt;br /&gt;
Qu&amp;acirc;n T&amp;agrave; lập tức cười cười cự tuyệt. Hắn đang t&amp;ograve; m&amp;ograve; muốn biết mấy t&amp;ecirc;n s&amp;aacute;t thủ ở thế giới n&amp;agrave;y c&amp;oacute; bộ dạng ra sao, nếu dọn đi th&amp;igrave; kh&amp;aacute;c n&amp;agrave;o tự đ&amp;aacute;nh mất cơ hội trời cho ấy? V&amp;igrave; thế, khi nghe Qu&amp;acirc;n l&amp;atilde;o gia tử đem t&amp;igrave;nh h&amp;igrave;nh nguy hiểm ra dọa nạt để khuy&amp;ecirc;n hắn, trong l&amp;ograve;ng hắn kh&amp;ocirc;ng giấu được hưng phấn c&amp;ugrave;ng chờ mong.&lt;br /&gt;
S&amp;aacute;t thủ... L&amp;uacute;c n&amp;agrave;y đối với hắn vừa l&amp;agrave; dĩ v&amp;atilde;ng xa x&amp;ocirc;i, vừa l&amp;agrave; ho&amp;agrave;i niệm da diết.&lt;br /&gt;
- Ngươi!... Hỗn l&amp;aacute;o!&lt;br /&gt;
Qu&amp;acirc;n l&amp;atilde;o gia tử kh&amp;iacute; giận c&amp;ocirc;ng t&amp;acirc;m, đứng bật dậy giơ chưởng l&amp;ecirc;n muốn đập cho đứa ch&amp;aacute;u ngỗ ngược một c&amp;aacute;i, nhưng chợt ngẫm nghĩ rồi lại ngồi xuống, thở d&amp;agrave;i n&amp;oacute;i:&lt;br /&gt;
- Ngươi... Lui ra đi.&lt;br /&gt;
Chuyện g&amp;igrave; xảy ra với t&amp;ecirc;n tiểu tử n&amp;agrave;y vậy? Hắn d&amp;aacute;m c&amp;ocirc;ng nhi&amp;ecirc;n chống lại mệnh lệnh của ta, lần đầu ti&amp;ecirc;n! Hơn nữa, hắn c&amp;ograve;n cự tuyệt một c&amp;aacute;ch cực k&amp;igrave; dứt kho&amp;aacute;t! Điềm gở hay điềm tốt đ&amp;acirc;y?&lt;br /&gt;
Qu&amp;acirc;n T&amp;agrave; c&amp;uacute;i người h&amp;agrave;nh lễ rồi lập tức đứng thẳng l&amp;ecirc;n, xoay người bước ra.&lt;br /&gt;
- Chậm đ&amp;atilde;, ta c&amp;ograve;n muốn nhắc nhở ngươi một chuyện, sau n&amp;agrave;y kh&amp;ocirc;ng được c&amp;oacute; &amp;yacute; d&amp;acirc;y dưa g&amp;igrave; với Linh Mộng c&amp;ocirc;ng ch&amp;uacute;a nữa, việc n&amp;agrave;y tuyệt đối kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; để thương lượng hết!&lt;br /&gt;
Qu&amp;acirc;n l&amp;atilde;o gia tử giọng n&amp;oacute;i nhuốm đầy mệt mỏi, thậm ch&amp;iacute; c&amp;ograve;n ẩn chứa mấy phần t&amp;acirc;m t&amp;agrave;n tro lạnh.&lt;br /&gt;
Mấy năm qua, Qu&amp;acirc;n gia d&amp;ugrave; bề ngo&amp;agrave;i quyền khuynh thi&amp;ecirc;n hạ, ngạo thị triều đ&amp;igrave;nh, nhưng b&amp;ecirc;n trong lại ẩn chứa một khuyết điểm ch&amp;iacute; mạng, ch&amp;iacute;nh l&amp;agrave; huyết mạch kế thừa &amp;iacute;t tới mức đ&amp;aacute;ng thương. Con ch&amp;aacute;u đời thứ ba chỉ c&amp;oacute; duy nhất t&amp;ecirc;n tiểu tử v&amp;ocirc; dụng Qu&amp;acirc;n Mạc T&amp;agrave; n&amp;agrave;y m&amp;agrave; th&amp;ocirc;i, Qu&amp;acirc;n l&amp;atilde;o gia tử đ&amp;atilde; sống đến chừng n&amp;agrave;y tuổi, sao c&amp;ograve;n kh&amp;ocirc;ng biết nếu vạn nhất một ng&amp;agrave;y n&amp;agrave;o đ&amp;oacute; m&amp;igrave;nh nhắm mắt xu&amp;ocirc;i tay, Qu&amp;acirc;n gia sẽ bị người kh&amp;aacute;c lập tức ch&amp;agrave; đạp, thậm ch&amp;iacute; vĩnh viễn biến mất tr&amp;ecirc;n đời. Nh&amp;igrave;n &amp;ldquo;t&amp;agrave;i năng&amp;rdquo; m&amp;agrave; Qu&amp;acirc;n Mạc T&amp;agrave; đ&amp;atilde; &amp;ldquo;thể hiện&amp;rdquo;, e rằng đ&amp;acirc;y l&amp;agrave; một c&amp;aacute;i kết hiển nhi&amp;ecirc;n cho Qu&amp;acirc;n gia, một c&amp;aacute;i kết bi thảm đ&amp;atilde; được dự b&amp;aacute;o từ trước.&lt;br /&gt;
V&amp;igrave; muốn tr&amp;aacute;nh c&amp;aacute;i sự kh&amp;ocirc;ng ai muốn ấy, Qu&amp;acirc;n Chiến Thi&amp;ecirc;n trước đ&amp;acirc;y đ&amp;atilde; từng hướng tới Ho&amp;agrave;ng đế xin cho người con g&amp;aacute;i y&amp;ecirc;u của người l&amp;agrave; c&amp;ocirc;ng ch&amp;uacute;a Linh Mộng về l&amp;agrave;m d&amp;acirc;u Qu&amp;acirc;n gia. Nếu việc c&amp;oacute; thể th&amp;agrave;nh, sau n&amp;agrave;y d&amp;ugrave; l&amp;atilde;o đ&amp;atilde; nhắm mắt quy thi&amp;ecirc;n, Qu&amp;acirc;n Mạc T&amp;agrave; chỉ cần dựa hơi tổ ti&amp;ecirc;n để lại c&amp;ugrave;ng với th&amp;acirc;n phận Ph&amp;ograve; m&amp;atilde; ho&amp;agrave;ng thất, nếu hắn kh&amp;ocirc;ng qu&amp;aacute; phận th&amp;igrave; việc duy tr&amp;igrave; hương hỏa cho Qu&amp;acirc;n gia cũng kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; đ&amp;aacute;ng ngại.&lt;br /&gt;
L&amp;agrave;m chồng của đấng Kim chi ngọc diệp, nh&amp;igrave;n c&amp;oacute; vẻ phong quang x&amp;aacute;n lạn, nhưng sự thực lại l&amp;agrave; thứ g&amp;acirc;n g&amp;agrave; kh&amp;oacute; chịu bậc nhất, thậm ch&amp;iacute; c&amp;aacute;c đại tộc, c&amp;aacute;c gia đ&amp;igrave;nh quyền thế đều thắp hương khấn v&amp;aacute;i cầu cho Ho&amp;agrave;ng đế đừng nổi dạ y&amp;ecirc;u qu&amp;yacute; đo&amp;aacute;i thương bất tử m&amp;agrave; ban cho họ một c&amp;ocirc; c&amp;ocirc;ng ch&amp;uacute;a về l&amp;agrave;m d&amp;acirc;u trong nh&amp;agrave;. C&amp;ocirc;ng ch&amp;uacute;a l&amp;agrave; con d&amp;acirc;u, ừ, nhưng vẫn l&amp;agrave; c&amp;ocirc;ng ch&amp;uacute;a cơ m&amp;agrave;? Thế n&amp;ecirc;n sẽ c&amp;oacute; chuyện dở kh&amp;oacute;c dở cười loạn ngầu diễn ra: &amp;Ocirc;ng chồng đ&amp;aacute;ng lẽ phải ngồi tr&amp;ecirc;n th&amp;igrave; lại phải quỳ xuống h&amp;agrave;nh lễ với b&amp;agrave; vợ, rồi cha chồng mẹ phu qu&amp;acirc;n đến ho trước mặt n&amp;agrave;ng d&amp;acirc;u cũng kh&amp;ocirc;ng d&amp;aacute;m chứ n&amp;oacute;i g&amp;igrave; đến l&amp;ecirc;n mặt dạy dỗ? Đặc biệt nếu kh&amp;ocirc;ng c&amp;oacute; sự đồng &amp;yacute; của vị &amp;ldquo;phu nh&amp;acirc;n đặc biệt&amp;rdquo;, th&amp;igrave; ph&amp;ograve; m&amp;atilde; cứ ngoan ngo&amp;atilde;n m&amp;agrave; tu&amp;acirc;n thủ chế độ một vợ một chồng văn minh đi, đừng tơ tưởng l&amp;agrave;m g&amp;igrave; cho mất c&amp;ocirc;ng. C&amp;ocirc;ng ch&amp;uacute;a dễ d&amp;atilde;i biết h&amp;ograve;a nhập th&amp;igrave; kh&amp;ocirc;ng sao, nhưng h&amp;atilde;y thử tưởng tượng ngươi vớ phải một b&amp;agrave; c&amp;ocirc; đ&amp;agrave;nh hanh ưa kiểu c&amp;aacute;ch l&amp;ecirc;n mặt, quen với c&amp;aacute;i nếp cả thi&amp;ecirc;n hạ nằm dưới gấu v&amp;aacute;y, vậy th&amp;igrave; ch&amp;uacute;c mừng, gia đ&amp;igrave;nh ngươi hẳn sẽ v&amp;ocirc; c&amp;ugrave;ng &amp;ldquo;hạnh ph&amp;uacute;c&amp;rdquo;!.&lt;br /&gt;
Đối với người kh&amp;aacute;c l&amp;agrave; vậy, nhưng ngược lại, trong mắt Qu&amp;acirc;n Chiến Thi&amp;ecirc;n m&amp;agrave; n&amp;oacute;i, đ&amp;acirc;y lại l&amp;agrave; một điều đại hỷ đối với t&amp;ecirc;n tiểu tử Qu&amp;acirc;n Mạc T&amp;agrave;, th&amp;acirc;n phận ph&amp;ograve; m&amp;atilde; nếu c&amp;oacute; ch&amp;iacute;nh l&amp;agrave; một tấm b&amp;ugrave;a bảo hộ tuyệt với cho hắn trong tương lai. V&amp;igrave; vậy, l&amp;atilde;o đ&amp;agrave;nh cắn răng hướng tới Ho&amp;agrave;ng đế y&amp;ecirc;u cầu h&amp;ocirc;n sự, &amp;acirc;u cũng l&amp;agrave; do t&amp;igrave;nh thế &amp;eacute;p buộc, đ&amp;aacute;ng thương.&lt;br /&gt;
Ho&amp;agrave;ng đế bệ hạ tự nhi&amp;ecirc;n hiểu r&amp;otilde; t&amp;acirc;m &amp;yacute; vị l&amp;atilde;o chiến hữu của m&amp;igrave;nh, cũng c&amp;oacute; ch&amp;uacute;t động t&amp;acirc;m thương hại, nhưng sau khi cẩn thận t&amp;igrave;m hiểu tư c&amp;aacute;ch ch&amp;agrave;ng rể tương lai, biết được những &amp;ldquo;th&amp;agrave;nh t&amp;iacute;ch&amp;rdquo; kh&amp;aacute;c người của ch&amp;agrave;ng, cộng với th&amp;aacute;i độ th&amp;agrave; chết chứ kh&amp;ocirc;ng chấp nhận của con g&amp;aacute;i y&amp;ecirc;u, cuối c&amp;ugrave;ng l&amp;atilde;o Ho&amp;agrave;ng đế đ&amp;agrave;nh ngậm ng&amp;ugrave;i n&amp;oacute;i lời từ chối.&lt;br /&gt;
&amp;ldquo;Qu&amp;acirc;n đại ca, kh&amp;ocirc;ng phải kẻ l&amp;agrave;m tiểu đệ n&amp;agrave;y kh&amp;ocirc;ng nể mặt đại ca, nhưng n&amp;oacute;i g&amp;igrave; th&amp;igrave; n&amp;oacute;i tiểu đệ cũng l&amp;agrave; một người cha, Linh Mộng lại l&amp;agrave; đứa con g&amp;aacute;i m&amp;agrave; đệ y&amp;ecirc;u qu&amp;yacute; nhất. Huynh n&amp;oacute;i đi, l&amp;agrave;m sao đệ c&amp;oacute; thể đem con g&amp;aacute;i của m&amp;igrave;nh gửi gắm cho một... &amp;Ocirc;i!&amp;rdquo; Qu&amp;acirc;n Chiến Thi&amp;ecirc;n nhớ lại t&amp;igrave;nh cảnh l&amp;uacute;c ấy, khi Ho&amp;agrave;ng đế bệ hạ c&amp;ograve;n chưa dứt lời, l&amp;atilde;o đ&amp;atilde; thấy cổ họng m&amp;igrave;nh nghẹn đắng lại.&lt;br /&gt;
Th&amp;acirc;n l&amp;agrave; người l&amp;agrave;m cha sao? V&amp;igrave; nữ nhi của m&amp;igrave;nh m&amp;agrave; suy nghĩ sao? Nực cười! Rắm ch&amp;oacute;! Nếu l&amp;agrave; mười năm trước, l&amp;uacute;c Qu&amp;acirc;n gia ta đang trong thời k&amp;igrave; thịnh vượng nhất, th&amp;igrave; d&amp;ugrave; tiểu tử Mạc T&amp;agrave; c&amp;oacute; khốn kiếp, c&amp;oacute; v&amp;ocirc; dụng gấp mười lần b&amp;acirc;y giờ đi chăng nữa, sợ rằng ngươi mới nghe ta mở miệng y&amp;ecirc;u cầu h&amp;ocirc;n sự đ&amp;atilde; mừng qu&amp;yacute;nh l&amp;ecirc;n m&amp;agrave; gật đầu đến s&amp;aacute;i cổ. &amp;Ocirc;i, nh&amp;acirc;n t&amp;igrave;nh ấm lạnh, l&amp;ograve;ng người đa đoan, sự đời đ&amp;atilde; thế, biết tr&amp;aacute;ch ai đ&amp;acirc;y?&lt;br /&gt;
- V&amp;acirc;ng, con biết rồi.&lt;br /&gt;
Qu&amp;acirc;n T&amp;agrave; hơi dừng ch&amp;acirc;n trước cửa, nh&amp;agrave;n nhạt n&amp;oacute;i, giọng n&amp;oacute;i b&amp;igrave;nh thản như mặt nước hồ thu, kh&amp;ocirc;ng buồn kh&amp;ocirc;ng vui, n&amp;oacute;i xong hắn lập tức bước ra ngo&amp;agrave;i.&lt;br /&gt;
Qu&amp;acirc;n l&amp;atilde;o đang ch&amp;igrave;m trong suy tưởng, bị c&amp;acirc;u n&amp;oacute;i lạnh nhạt của g&amp;atilde; ch&amp;aacute;u bất tử n&amp;agrave;y doạ cho giật m&amp;igrave;nh t&amp;eacute; rớt khỏi mộng đẹp.&lt;br /&gt;
L&amp;uacute;c trước, khi Qu&amp;acirc;n l&amp;atilde;o gia tử vừa mới bộc lộ &amp;yacute; định biến Qu&amp;acirc;n T&amp;agrave; th&amp;agrave;nh ph&amp;ograve; m&amp;atilde;, t&amp;ecirc;n tiểu tử liền dương dương tự coi m&amp;igrave;nh đ&amp;atilde; l&amp;agrave; h&amp;ocirc;n phu của Linh Mộng c&amp;ocirc;ng ch&amp;uacute;a, đi đ&amp;acirc;u cũng kh&amp;ocirc;ng ngừng l&amp;ecirc;n mặt khoe khoang khiến n&amp;agrave;ng cảm thấy phiền n&amp;atilde;o kh&amp;ocirc;n ngu&amp;ocirc;i. Nhưng Qu&amp;acirc;n l&amp;atilde;o thấy bộ d&amp;aacute;ng l&amp;atilde;nh đạm kh&amp;ocirc;ng ch&amp;uacute;t quan t&amp;acirc;m của ch&amp;aacute;u m&amp;igrave;nh l&amp;uacute;c n&amp;agrave;y th&amp;igrave; hơi giật m&amp;igrave;nh, cảm thấy bất ngờ. Qu&amp;acirc;n T&amp;agrave; nổi giận, Qu&amp;acirc;n T&amp;agrave; ủ rũ th&amp;ecirc; thảm, Qu&amp;acirc;n T&amp;agrave; nhảy cẫng l&amp;ecirc;n la h&amp;eacute;t, thậm ch&amp;iacute; chửi bới th&amp;oacute;a mạ, Qu&amp;acirc;n T&amp;agrave;... N&amp;oacute;i t&amp;oacute;m lại l&amp;agrave; biểu hiện k&amp;iacute;ch động, thất vọng th&amp;igrave; l&amp;atilde;o chẳng lấy g&amp;igrave; l&amp;agrave;m ngạc nhi&amp;ecirc;n. Nhưng &amp;ocirc; hay, h&amp;ocirc;m nay thằng ch&amp;aacute;u l&amp;atilde;o giở chứng thay đổi, khiến l&amp;atilde;o chịu giật m&amp;igrave;nh kh&amp;ocirc;ng &amp;iacute;t, quả l&amp;agrave; nguy hiểm cho tim mạch người gi&amp;agrave;!&lt;br /&gt;
&amp;ldquo;Mới c&amp;oacute; mấy ng&amp;agrave;y, sao t&amp;iacute;nh t&amp;igrave;nh lại thay đổi gh&amp;ecirc; gớm đến thế nhỉ?&amp;rdquo; Qu&amp;acirc;n l&amp;atilde;o gia tử v&amp;acirc;n v&amp;ecirc; r&amp;acirc;u m&amp;eacute;p, nh&amp;igrave;n v&amp;agrave;o b&amp;oacute;ng lưng đứa ch&amp;aacute;u vừa bước ra cửa, đ&amp;ocirc;i mắt th&amp;acirc;m th&amp;uacute;y c&amp;oacute; v&amp;agrave;i phần tư lự. Một l&amp;uacute;c sau l&amp;atilde;o mới từ trong suy tư tỉnh lại, đập tay đ&amp;aacute;nh &amp;ldquo;ch&amp;aacute;t&amp;rdquo; xuống b&amp;agrave;n, lẩm bẩm như tự n&amp;oacute;i với ch&amp;iacute;nh m&amp;igrave;nh:&lt;br /&gt;
- Phải ph&amp;aacute;i th&amp;ecirc;m v&amp;agrave;i tay hảo thủ, ng&amp;agrave;y đ&amp;ecirc;m hộ vệ b&amp;ecirc;n người thiếu gia, kh&amp;ocirc;ng cho ph&amp;eacute;p bất k&amp;igrave; một sơ suất n&amp;agrave;o t&amp;aacute;i diễn! Chỉ cần l&amp;agrave; kẻ lạ mặt xuất hiện, lập tức giết chết! Kh&amp;ocirc;ng cần cố kị điều g&amp;igrave;!.&lt;br /&gt;
Sự t&amp;igrave;nh kiểu thế n&amp;agrave;y, chỉ c&amp;oacute; thể diễn ra một lần, tuyệt đối kh&amp;ocirc;ng được c&amp;oacute; cơ hội lặp lại, hừ, đứa ch&amp;aacute;u y&amp;ecirc;u của Chiến Thi&amp;ecirc;n ta, ta xem kẻ n&amp;agrave;o d&amp;aacute;m động v&amp;agrave;o hắn? H&amp;agrave;n &amp;yacute; trong mắt Qu&amp;acirc;n l&amp;atilde;o chợt xạ ra m&amp;atilde;nh liệt.&lt;br /&gt;
Trong sảnh ho&amp;agrave;n to&amp;agrave;n vắng lặng đột nhi&amp;ecirc;n vang l&amp;ecirc;n một &amp;acirc;m thanh l&amp;atilde;ng đ&amp;atilde;ng, như c&amp;oacute; như kh&amp;ocirc;ng:&lt;br /&gt;
- R&amp;otilde;!&lt;br /&gt;
Qu&amp;acirc;n T&amp;agrave; bước ra ngo&amp;agrave;i, hắn khẽ nhắm mắt cảm nhận &amp;aacute;nh mặt trời ấm &amp;aacute;p đang dịu d&amp;agrave;ng tỏa nắng tr&amp;ecirc;n cao. Từng vầng s&amp;aacute;ng ấm &amp;aacute;p nhẹ nh&amp;agrave;ng &amp;ocirc;m ấp, sưởi ấm th&amp;acirc;n h&amp;igrave;nh v&amp;agrave; khu&amp;ocirc;n mặt c&amp;oacute; phần tiều tụy của hắn, Qu&amp;acirc;n T&amp;agrave; chậm r&amp;atilde;i đi về ph&amp;iacute;a tiểu viện m&amp;agrave; hắn vẫn sinh sống, tr&amp;ecirc;n đường người hầu nườm nượp qua lại li&amp;ecirc;n tục dạt sang hai b&amp;ecirc;n h&amp;agrave;nh lễ v&amp;agrave; tr&amp;aacute;nh đường cho hắn, nhưng hắn kh&amp;ocirc;ng hề để &amp;yacute;, vẫn tiếp tục ch&amp;igrave;m trong suy tưởng. Kh&amp;ocirc;ng ai biết rằng, trong đầu vị Qu&amp;acirc;n gia tam c&amp;ocirc;ng tử kh&amp;ocirc;ng ngừng lặp đi lặp lại một đoạn đối thoại:&lt;br /&gt;
&amp;ldquo;S&amp;aacute;t thủ l&amp;agrave; g&amp;igrave;? Nghe t&amp;ecirc;n l&amp;agrave; biết, ch&amp;iacute;nh l&amp;agrave; kẻ giết người trong b&amp;oacute;ng tối,&amp;rdquo; hắc thủ &amp;ldquo;! Nhất định phải nhớ kĩ một chữ&amp;rdquo; hắc &amp;ldquo;, ch&amp;iacute;nh l&amp;agrave; yếu quyết tối quan trọng trong nghề!&amp;rdquo;&lt;br /&gt;
&amp;ldquo;S&amp;aacute;t thủ, xưa nay đều huyền b&amp;iacute;, đến từ nơi phi&amp;ecirc;u miểu, tan biến v&amp;agrave;o hư kh&amp;ocirc;ng!&amp;rdquo;&lt;br /&gt;
&amp;ldquo;Thế n&amp;agrave;o l&amp;agrave; một s&amp;aacute;t thủ th&amp;agrave;nh c&amp;ocirc;ng? Nếu cho đến l&amp;uacute;c chết vẫn kh&amp;ocirc;ng ai biết ngươi từng l&amp;agrave; một t&amp;ecirc;n s&amp;aacute;t thủ tay nhuốm đầy m&amp;aacute;u tanh, ngươi ch&amp;iacute;nh l&amp;agrave; một kẻ th&amp;agrave;nh c&amp;ocirc;ng!&amp;rdquo;&lt;br /&gt;
&amp;ldquo;Vậy, thế n&amp;agrave;o mới được coi l&amp;agrave; một si&amp;ecirc;u cấp s&amp;aacute;t thủ, một si&amp;ecirc;u cấp s&amp;aacute;t thủ thực sự?&amp;rdquo;&lt;br /&gt;
&amp;ldquo;S&amp;aacute;t thủ thực sự, th&amp;igrave; trong bất k&amp;igrave; t&amp;igrave;nh huống n&amp;agrave;o vẫn c&amp;oacute; c&amp;aacute;ch ẩn t&amp;agrave;ng bản th&amp;acirc;n! Ngồi cạnh văn nh&amp;acirc;n; Văn nh&amp;acirc;n coi hắn l&amp;agrave; mặc kh&amp;aacute;ch tri kỉ, sống cạnh hoạ sĩ, hắn m&amp;uacute;a cọ chẳng k&amp;eacute;m g&amp;igrave; người; Đi với lưu manh, hắn l&amp;agrave; thần c&amp;ocirc;n khốn khiếp; Ở c&amp;ugrave;ng qu&amp;yacute; phụ hắn l&amp;agrave; qu&amp;yacute; &amp;ocirc;ng, l&amp;agrave; th&amp;acirc;n sĩ ti&amp;ecirc;u chuẩn; Đứng cạnh sắc lang, hắn trở th&amp;agrave;nh d&amp;acirc;m thần, đứng b&amp;ecirc;n anh h&amp;ugrave;ng, hắn l&amp;agrave; h&amp;aacute;n tử đỉnh thi&amp;ecirc;n lập địa!&amp;rdquo;&lt;br /&gt;
&amp;ldquo;Trong sa mạc, hắn l&amp;agrave; thằn lằn; Tr&amp;ecirc;n thảo nguy&amp;ecirc;n, hắn đ&amp;iacute;nh thị s&amp;oacute;i ch&amp;uacute;a; Trở về sơn l&amp;acirc;m, hắn biến th&amp;agrave;nh m&amp;atilde;nh hổ - vạn th&amp;uacute; chi vương; V&amp;ugrave;ng vẫy trong đại dương, hắn sẽ l&amp;agrave; thần long h&amp;ocirc; mưa gọi gi&amp;oacute;!&amp;rdquo;&lt;br /&gt;
&amp;ldquo;C&amp;oacute; thể l&amp;agrave;m như vậy, hắn mới l&amp;agrave; một s&amp;aacute;t thủ, một s&amp;aacute;t thủ đ&amp;uacute;ng nghĩa!&amp;rdquo;&lt;br /&gt;
&amp;ldquo;Một kẻ chỉ biết giết người, nhiều nhất hắn th&amp;igrave; hắn được coi l&amp;agrave; t&amp;ecirc;n đồ tể!&amp;rdquo;&lt;br /&gt;
&amp;ldquo;Giết người v&amp;igrave; mục đ&amp;iacute;ch, cho d&amp;ugrave; b&amp;aacute;ch s&amp;aacute;t b&amp;aacute;ch th&amp;agrave;nh, c&amp;ugrave;ng lắm người ta gọi ngươi l&amp;agrave; th&amp;iacute;ch kh&amp;aacute;ch ưu t&amp;uacute;!&amp;rdquo;&lt;br /&gt;
&amp;ldquo;Giết người, bản th&amp;acirc;n n&amp;oacute; đ&amp;atilde; l&amp;agrave; một m&amp;ocirc;n nghệ thuật! Th&amp;acirc;n l&amp;agrave; một s&amp;aacute;t thủ, ngươi cần ng&amp;agrave;n lần nhớ kĩ, tuyệt đối kh&amp;ocirc;ng được c&amp;oacute; &amp;yacute; nghĩ coi thường bộ m&amp;ocirc;n nghệ thuật cao nh&amp;atilde; n&amp;agrave;y!&amp;rdquo;&lt;br /&gt;
...&lt;br /&gt;
Đ&amp;acirc;y l&amp;agrave; đoạn đối thoại m&amp;agrave; Qu&amp;acirc;n T&amp;agrave; được sư phụ hắn tại kiếp trước từng đ&amp;agrave;m luận, nghĩ đến đ&amp;oacute;, hắn kh&amp;ocirc;ng khỏi cười khổ tự giễu: &amp;ldquo;... Bổ sung th&amp;ecirc;m một điều, ở trong loại gia đ&amp;igrave;nh kiểu n&amp;agrave;y, ta ch&amp;iacute;nh l&amp;agrave; một t&amp;ecirc;n khốn v&amp;ocirc; dụng chỉ biết ăn chực như heo, nhị thế tổ ăn hại v&amp;ocirc; dụng!&amp;rdquo;&lt;br /&gt;
Đột nhi&amp;ecirc;n, một thanh &amp;acirc;m lạnh l&amp;ugrave;ng vang l&amp;ecirc;n: &amp;ldquo;Sai! Ngươi kh&amp;ocirc;ng phải l&amp;agrave; nhị thế tổ! Ta mới l&amp;agrave; nhị thế tổ, c&amp;ograve;n ngươi, l&amp;agrave; tam thế tổ!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đọc đầy đủ truyện chữ Dị Thế T&amp;agrave; Qu&amp;acirc;n, truyện full Dị Thế T&amp;agrave; Qu&amp;acirc;n thuộc thể loại Kiếm Hiệp cực kỳ hấp dẫn v&amp;agrave; kịch t&amp;iacute;nh tại:&amp;nbsp;&lt;a href=&quot;https://truyenchu.vn/di-the-ta-quan&quot; target=&quot;_blamk&quot;&gt;Dị Thế T&amp;agrave; Qu&amp;acirc;n&lt;/a&gt;&lt;/p&gt;
', 1, CAST(0x0000ADF20168A3F3 AS DateTime), CAST(0x0000ADF20168A3F3 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (9, 4108, 4, N'Cập nhật', N'&lt;p&gt;https://metruyenchu.net/di-the-ta-quan/quyen-1-ta-quan-van-the-chuong-4-nhi-the-to-tam-the-to&lt;/p&gt;
', 1, CAST(0x0000ADF20168AE66 AS DateTime), CAST(0x0000ADF20168AE66 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (10, 4108, 3, N'test thêm chương', N'&lt;p&gt;th&amp;ecirc;m chương cho truyện của KDUy&lt;/p&gt;
', 1, CAST(0x0000ADF2016B28F8 AS DateTime), CAST(0x0000ADF2016B28F8 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_CHUONG] OFF
SET IDENTITY_INSERT [dbo].[DB_COMMENT] ON 

INSERT [dbo].[DB_COMMENT] ([id_cmt], [id_user], [id_truyen], [id_chuong], [noidung_cmt], [status_], [created_at], [updated_at]) VALUES (14, 3, 4108, 7, N'<p>TRuyện d&agrave;i qu&aacute; l&agrave;m biếng đọc</p>
<p>&nbsp;</p>', 1, CAST(0x0000ADF20169342A AS DateTime), CAST(0x0000ADF20169342A AS DateTime))
INSERT [dbo].[DB_COMMENT] ([id_cmt], [id_user], [id_truyen], [id_chuong], [noidung_cmt], [status_], [created_at], [updated_at]) VALUES (19, 4, 4108, 7, N'<p>alo h&ugrave;ng b&agrave;n ph&iacute;m 🔥</p>', 1, CAST(0x0000ADF20169A615 AS DateTime), CAST(0x0000ADF20169A615 AS DateTime))
INSERT [dbo].[DB_COMMENT] ([id_cmt], [id_user], [id_truyen], [id_chuong], [noidung_cmt], [status_], [created_at], [updated_at]) VALUES (20, 3, 4108, 7, N'<p>m th&iacute;ch anh h&ugrave;ng b&agrave;n ph&iacute;m k? Nổ bố c&aacute;i địa chỉ</p>
<p>&nbsp;</p>', 1, CAST(0x0000ADF2016A02F7 AS DateTime), CAST(0x0000ADF2016A02F7 AS DateTime))
INSERT [dbo].[DB_COMMENT] ([id_cmt], [id_user], [id_truyen], [id_chuong], [noidung_cmt], [status_], [created_at], [updated_at]) VALUES (21, 3, 4108, 8, N'<p>Truyện g&igrave; m&agrave; tới 10000 ng&agrave;n lận dị mắc qu&aacute;</p>', 1, CAST(0x0000ADF2016D39FF AS DateTime), CAST(0x0000ADF2016D39FF AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_COMMENT] OFF
SET IDENTITY_INSERT [dbo].[DB_LUOTXEM] ON 

INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (5, 4, 4108, 6, CAST(0x0000ADF20168BF30 AS DateTime), CAST(0x0000ADF20168BF30 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (6, 3, 4108, 9, CAST(0x0000ADF20168DF2D AS DateTime), CAST(0x0000ADF20168DF2D AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (7, 3, 4108, 7, CAST(0x0000ADF201692642 AS DateTime), CAST(0x0000ADF201692642 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (8, 4, 4108, 7, CAST(0x0000ADF20169590C AS DateTime), CAST(0x0000ADF20169590C AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (9, 3, 4108, 8, CAST(0x0000ADF2016A1729 AS DateTime), CAST(0x0000ADF2016A1729 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (11, 3, 4108, 10, CAST(0x0000ADF2016D1BB6 AS DateTime), CAST(0x0000ADF2016D1BB6 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (12, 1, 4108, 8, CAST(0x0000ADF2016E0D66 AS DateTime), CAST(0x0000ADF2016E0D66 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (13, 2, 4108, 9, CAST(0x0000ADF2016F3755 AS DateTime), CAST(0x0000ADF2016F3755 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (14, 2, 4108, 8, CAST(0x0000ADF2016FE631 AS DateTime), CAST(0x0000ADF2016FE631 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_LUOTXEM] OFF
SET IDENTITY_INSERT [dbo].[DB_THELOAI] ON 

INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (4, N'Hài Hước', N'Nội dung có chứa các tình tiết gây cười.', 1, CAST(0x0000ADD60084AD9E AS DateTime), CAST(0x0000ADD60084AD9E AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (5, N'Phiêu Lưu', N'Hành trình chu du khắp thế giới', 1, CAST(0x0000ADD60084D8A8 AS DateTime), CAST(0x0000ADD60084D8A8 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (6, N'Harem', N'Hậu cung', 1, CAST(0x0000ADD60087C155 AS DateTime), CAST(0x0000ADD60087C155 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (7, N'Đời thường', N'Cuộc sống hàng ngày', 1, CAST(0x0000ADD60087EE7D AS DateTime), CAST(0x0000ADD60087EE7D AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (8, N'Siêu nhiên', N'Hiện tượng kỳ ảo giả tưởng', 1, CAST(0x0000ADD60089680C AS DateTime), CAST(0x0000ADD60089680C AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (9, N'Siêu năng lực', N'Nhân vật có khả năng đặc biệt', 1, CAST(0x0000ADD600899562 AS DateTime), CAST(0x0000ADD600899562 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (10, N'Lịch sử', N'Đề tài có liên quan tới lịch sử', 1, CAST(0x0000ADD60089CBE1 AS DateTime), CAST(0x0000ADD60089CBE1 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (11, N'Mecha', N'Cỗ máy chiến đấu', 1, CAST(0x0000ADD60089E16F AS DateTime), CAST(0x0000ADD60089E16F AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (12, N'Trinh thám', N'Nơi mà nhân vật chính sẽ là những người khám phá ra các bí mật được ẩn giấu sau các vụ án hay những bí ẩn được che giấu. Nhân vật chính thường có nghề nghiệp như thám tử, điệp viên , v.v.... ', 1, CAST(0x0000ADD6008A1B6C AS DateTime), CAST(0x0000ADD6008A1B6C AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (13, N'Lãng mạn', N'Tình cảm ướt át', 1, CAST(0x0000ADD6008AE3F2 AS DateTime), CAST(0x0000ADD6008AE3F2 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (14, N'Âm nhạc', N'Nơi chữa lành tâm hồn bằng những giai điệu.', 1, CAST(0x0000ADD6008B5924 AS DateTime), CAST(0x0000ADD6008B5924 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (15, N'Oneshot', N'Truyện ngắn 1 chương', 1, CAST(0x0000ADD6008CFC18 AS DateTime), CAST(0x0000ADD6008CFC18 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (16, N'Kinh dị', N'Rùng rợn máu me', 1, CAST(0x0000ADD6008D5DE4 AS DateTime), CAST(0x0000ADD6008D5DE4 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (17, N'Drama', N'Chính kịch', 1, CAST(0x0000ADD6008D9416 AS DateTime), CAST(0x0000ADD6008D9416 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (18, N'Shounen', N'Nói về nv nam chủ yếu ở tuổi vị thành niên', 1, CAST(0x0000ADD6008ECB73 AS DateTime), CAST(0x0000ADD6008ECB73 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (19, N'Shoujo', N'Nói về nv nữ chủ yếu ở tuổi vị thành niên', 1, CAST(0x0000ADD6008EF769 AS DateTime), CAST(0x0000ADD6008EF769 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (20, N'Thể thao', N'Chủ đề tập trung nói tới các hoạt động  chơi các môn vận động như đá bóng, bóng rổ, bóng chuyền,.... ', 1, CAST(0x0000ADD6008F67C9 AS DateTime), CAST(0x0000ADD6008F67C9 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (21, N'Khoa học Viễn tưởng', N'Thể loại này sẽ mang đến những góc nhìn về nền khoa học tiên tiến hơn và là sản phẩm của trí tưởng tượng mà tạo thành.', 1, CAST(0x0000ADD600904BC6 AS DateTime), CAST(0x0000ADD600904BC6 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (22, N'Yaoi', N'Tình cảm nam x nam (Đam mĩ)', 1, CAST(0x0000ADD60090B5D5 AS DateTime), CAST(0x0000ADD60090B5D5 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (23, N'Yuri', N'Tình cảm nữ x nữ (bách hợp)', 1, CAST(0x0000ADD60090DA6A AS DateTime), CAST(0x0000ADD60090DA6A AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (24, N'Chuyển sinh', N'Tái sinh ở một thế giới khác', 1, CAST(0x0000ADD6009501E6 AS DateTime), CAST(0x0000ADD6009501E6 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (25, N'Xuyên không', N'Du hành thời gian', 1, CAST(0x0000ADD6009511EA AS DateTime), CAST(0x0000ADD6009511EA AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (26, N'Phép thuật', N'Nơi nhân vật có thể sử dụng năng lực ma thuật .', 1, CAST(0x0000ADD600D94139 AS DateTime), CAST(0x0000ADD600D94139 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (27, N'Fantasy', N'Được xây dựng dựa trên trí tưởng tượng và sẽ có những tình tiết không có trong thực tại mà do tác giả tưởng tượng mà tạo ra.', 1, CAST(0x0000ADD600D9F624 AS DateTime), CAST(0x0000ADD600D9F624 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (28, N'Demons', N'Ác quỷ.', 1, CAST(0x0000ADD600DA2B7F AS DateTime), CAST(0x0000ADD600DA2B7F AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (29, N'Game', N'Trò chơi', 1, CAST(0x0000ADD600DA4430 AS DateTime), CAST(0x0000ADD600DA4430 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (30, N'Space', N'Ngoài không gian vũ trụ', 1, CAST(0x0000ADD600DA6E2B AS DateTime), CAST(0x0000ADD600DA6E2B AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (31, N'Tragedy', N'Kết cục của truyện thường sẽ là kết buồn (sad ending ) và nhân vật chính sẽ có nhiều rủi ro, mất mát lớn.', 1, CAST(0x0000ADD600DAF790 AS DateTime), CAST(0x0000ADD600DAF790 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (32, N'Bí ẩn', N'Những sự việc không thể lý giải được.', 1, CAST(0x0000ADD600DB6AEF AS DateTime), CAST(0x0000ADD600DB6AEF AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (33, N'Học đường', N'Nói về những hoạt động ở trường học', 1, CAST(0x0000ADD6014E7227 AS DateTime), CAST(0x0000ADD6014E7227 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (34, N'Ecchi', N'Độ tuổi từ 16+ trở lên', 1, CAST(0x0000ADE20161C30D AS DateTime), CAST(0x0000ADE20161C30D AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (35, N'Quân đội', N'Đề tài liên quan đến chiến tranh và xuất hiện các quân đội', 1, CAST(0x0000ADE201629DB8 AS DateTime), CAST(0x0000ADE201629DB8 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (36, N'Hành động', N'Kịch tích mãn nhãn', 1, CAST(0x0000ADED015ABC28 AS DateTime), CAST(0x0000ADED015ABC28 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (37, N'Light Novel', N'Tiểu thuyết, Truyện chữ', 1, CAST(0x0000ADED015AC52E AS DateTime), CAST(0x0000ADED015AC52E AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (38, N'Color', N'Truyện tranh có màu', 1, CAST(0x0000ADED015ACC45 AS DateTime), CAST(0x0000ADED015ACC45 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (39, N'Manga', N'Truyện tranh Nhật Bản', 1, CAST(0x0000ADED015AD602 AS DateTime), CAST(0x0000ADED015AD602 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (40, N'Anime', N'Video hoạt hình Nhật và Trung.', 1, CAST(0x0000ADED015B1326 AS DateTime), CAST(0x0000ADED015B1326 AS DateTime))
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at]) VALUES (41, N'Comics', N'Truyện tranh Phương Tây', 1, CAST(0x0000ADED015B720D AS DateTime), CAST(0x0000ADED015B720D AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_THELOAI] OFF
SET IDENTITY_INSERT [dbo].[DB_THUVIEN] ON 

INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (7099, 4, 4108, 7, CAST(0x0000ADF20168B96B AS DateTime), CAST(0x0000ADF20169CBA2 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (7103, 3, 4106, 11, CAST(0x0000ADF2016C2B6D AS DateTime), CAST(0x0000ADF2016E2F1E AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (7105, 3, 4108, 9, CAST(0x0000ADF2016CFDDE AS DateTime), CAST(0x0000ADF2016EEA54 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (7106, 1, 4108, 8, CAST(0x0000ADF2016E0E3F AS DateTime), CAST(0x0000ADF2017A7666 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (7107, 2, 4108, 8, CAST(0x0000ADF2016F2DE3 AS DateTime), CAST(0x0000ADF2016FE622 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (7108, 4, 4106, 11, CAST(0x0000ADF20172408F AS DateTime), CAST(0x0000ADF201745082 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (7109, 1, 4106, NULL, CAST(0x0000ADF201748B11 AS DateTime), CAST(0x0000ADF20178DC91 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_THUVIEN] OFF
SET IDENTITY_INSERT [dbo].[DB_TRUYEN] ON 

INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (4106, 3, N'One Piece', N'Oda Eiichiro', N'<h2>kaizokuou ni naru otoko da.&nbsp;&nbsp;<strong>T&ocirc;i</strong>&nbsp;l&agrave; Luffy, người đ&agrave;n &ocirc;ng&nbsp;<strong>sẽ trở th&agrave;nh Vua hải tặc</strong>! .....</h2>
', 0, N'987One Piece.png', N'100000', CAST(0x0000ADF201677D0F AS DateTime), CAST(0x0000ADF2016B8019 AS DateTime), N'one-piece-987', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (4108, 4, N'DỊ THẾ TÀ QUÂN', N' Phong Lăng Thiên Hạ', N'<p>Kh&ocirc;ng giống với một số t&aacute;c phẩm truyện Ti&ecirc;n Hiệp v&agrave; Kiếm Hiệp nổi tiếng, nh&acirc;n vật ch&iacute;nh thường c&oacute; khởi đầu l&agrave; một yếu nh&acirc;n ngh&egrave;o khổ. Nhưng Qu&acirc;n T&agrave; trong t&aacute;c phẩm Dị Thế T&agrave; Qu&acirc;n của t&aacute;c giả Phong Lăng Thi&ecirc;n Hạ lại c&oacute; xuất th&acirc;n l&agrave; một s&aacute;t thủ kh&eacute;t tiếng trong giới hắc đạo, với kỹ năng bắn s&uacute;ng c&ugrave;ng tr&igrave;nh độ v&otilde; học si&ecirc;u ph&agrave;m.</p>

<p>Tuy l&agrave; một s&aacute;t thủ m&aacute;u lạnh, giết người v&ocirc; số nhưng trong th&acirc;m t&acirc;m hắn vẫn c&ograve;n lại tr&aacute;i tim con người với l&ograve;ng cảm thương đối với những người c&ocirc; thế. Đối với nhiều người, hắn l&agrave; một kẻ v&ocirc; c&ugrave;ng hiểm &aacute;c nhưng nếu b&igrave;nh t&acirc;m nh&igrave;n lại sẽ thấy những kẻ m&agrave; hắn giết đều l&agrave; những t&ecirc;n cường h&agrave;o &aacute;c b&aacute;, lạm dụng chức quyền h&agrave; hiếp người c&ocirc; thế&hellip;</p>

<p>Trong một lần tranh đoạt cổ vật với những phe c&aacute;nh hắc đạo, t&iacute;nh mạng của y gặp phải nguy hiểm tột c&ugrave;ng khi rơi v&agrave;o v&ograve;ng v&acirc;y phục k&iacute;ch. Trong c&aacute;i rủi lại c&oacute; c&aacute;i may, ch&iacute;nh l&uacute;c n&agrave;y, những m&oacute;n bảo vật huyền b&iacute; m&agrave; hắn tranh đoạt đ&atilde; ph&aacute;t tỏa huyền năng đưa hắn trở về thế giới cổ đại, nơi m&agrave; ph&aacute;p luật chỉ mang t&iacute;n', 1, N'585700.jpg', N'0', CAST(0x0000ADF201686369 AS DateTime), CAST(0x0000ADF2016B28F9 AS DateTime), N'DI-THE-TA-QUAN-5857', NULL)
SET IDENTITY_INSERT [dbo].[DB_TRUYEN] OFF
SET IDENTITY_INSERT [dbo].[DB_TRUYEN_THELOAI] ON 

INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (23, 4108, 36, 1, CAST(0x0000ADF20168636D AS DateTime), CAST(0x0000ADF20168636D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (24, 4108, 7, 1, CAST(0x0000ADF20168636E AS DateTime), CAST(0x0000ADF20168636E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (25, 4108, 5, 1, CAST(0x0000ADF20168636F AS DateTime), CAST(0x0000ADF20168636F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (26, 4108, 4, 1, CAST(0x0000ADF201686370 AS DateTime), CAST(0x0000ADF201686370 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (29, 4106, 37, 1, CAST(0x0000ADF201750717 AS DateTime), CAST(0x0000ADF201750717 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_TRUYEN_THELOAI] OFF
SET IDENTITY_INSERT [dbo].[DB_USER] ON 

INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (1, N'admin', N'admin', N'admin@admin.com', N'fcea92f7412b5da7be0cf42b8c93759', N'2', 99898699, N'2874c474dbf44cdeb17eebb99d828', NULL, 1, CAST(0x0000ADF201494DCB AS DateTime), CAST(0x0000ADF201494DCB AS DateTime))
INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (2, N'kevinle', N'kevinle', N'kevinle@a.com', N'b57260e817f17461bbca8b6ed7d623f1', N'1', 0, N'e3ed2c9f76ccf53c6f7c8a3729025ce', NULL, 1, CAST(0x0000ADF20162294A AS DateTime), CAST(0x0000ADF20162294A AS DateTime))
INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (3, N'Dy nhỏ nè', N'dyno11', N'lildy011@gmail.com', N'b59c67bf196a4758191e42f76670ceba', N'2', 99990699, N'b5d0fa5c1b262964a5b959a6e6793b5', N'8425rose.jpg', 1, CAST(0x0000ADF201624CAB AS DateTime), CAST(0x0000ADF201624CAB AS DateTime))
INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (4, N'duy võ', N'duyvo', N'duy@ga.com', N'7a8fbde2e8c919527d2f8a29e6acd32', N'2', 99901999, N'68dbaf636013deb0333d5e6c67add19', NULL, 1, CAST(0x0000ADF20162577A AS DateTime), CAST(0x0000ADF20162577A AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_USER] OFF
SET IDENTITY_INSERT [dbo].[DB_VOTE] ON 

INSERT [dbo].[DB_VOTE] ([id_vote], [id_user], [id_truyen], [giatri], [created_at], [updated_at]) VALUES (9, 3, 4106, 5, CAST(0x0000ADF2016847AA AS DateTime), CAST(0x0000ADF2016847AA AS DateTime))
INSERT [dbo].[DB_VOTE] ([id_vote], [id_user], [id_truyen], [giatri], [created_at], [updated_at]) VALUES (10, 3, 4108, 1, CAST(0x0000ADF20168CD94 AS DateTime), CAST(0x0000ADF2016D17E7 AS DateTime))
INSERT [dbo].[DB_VOTE] ([id_vote], [id_user], [id_truyen], [giatri], [created_at], [updated_at]) VALUES (11, 4, 4108, 5, CAST(0x0000ADF20168F180 AS DateTime), CAST(0x0000ADF20168F180 AS DateTime))
INSERT [dbo].[DB_VOTE] ([id_vote], [id_user], [id_truyen], [giatri], [created_at], [updated_at]) VALUES (12, 2, 4108, 5, CAST(0x0000ADF2016F30B0 AS DateTime), CAST(0x0000ADF2016F3FAA AS DateTime))
INSERT [dbo].[DB_VOTE] ([id_vote], [id_user], [id_truyen], [giatri], [created_at], [updated_at]) VALUES (13, 1, 4108, 5, CAST(0x0000ADF20179E6DF AS DateTime), CAST(0x0000ADF20179E6DF AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_VOTE] OFF
ALTER TABLE [dbo].[DB_CAUHINH] ADD  CONSTRAINT [DF__DB_CAUHIN__creat__2C3393D0]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[DB_CAUHINH] ADD  CONSTRAINT [DF__DB_CAUHIN__updat__2D27B809]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[DB_CHUONG] ADD  CONSTRAINT [DF__DB_CHUONG__statu__2E1BDC42]  DEFAULT ((1)) FOR [status_]
GO
ALTER TABLE [dbo].[DB_CHUONG] ADD  CONSTRAINT [DF__DB_CHUONG__creat__2F10007B]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[DB_CHUONG] ADD  CONSTRAINT [DF__DB_CHUONG__updat__300424B4]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[DB_COMMENT] ADD  CONSTRAINT [DF__DB_COMMEN__statu__30F848ED]  DEFAULT ((1)) FOR [status_]
GO
ALTER TABLE [dbo].[DB_COMMENT] ADD  CONSTRAINT [DF__DB_COMMEN__creat__31EC6D26]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[DB_COMMENT] ADD  CONSTRAINT [DF__DB_COMMEN__updat__32E0915F]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[DB_LUOTXEM] ADD  CONSTRAINT [DF_DB_LUOTXEM_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[DB_LUOTXEM] ADD  CONSTRAINT [DF_DB_LUOTXEM_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[DB_THELOAI] ADD  CONSTRAINT [DF__DB_THELOA__statu__33D4B598]  DEFAULT ((1)) FOR [status_]
GO
ALTER TABLE [dbo].[DB_THELOAI] ADD  CONSTRAINT [DF__DB_THELOA__creat__34C8D9D1]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[DB_THELOAI] ADD  CONSTRAINT [DF__DB_THELOA__updat__35BCFE0A]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[DB_THUVIEN] ADD  CONSTRAINT [DF__DB_THUVIE__creat__36B12243]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[DB_THUVIEN] ADD  CONSTRAINT [DF__DB_THUVIE__updat__37A5467C]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[DB_TRUYEN] ADD  CONSTRAINT [DF__DB_TRUYEN__statu__38996AB5]  DEFAULT ((1)) FOR [status_]
GO
ALTER TABLE [dbo].[DB_TRUYEN] ADD  CONSTRAINT [DF__DB_TRUYEN__coin___398D8EEE]  DEFAULT ((0)) FOR [coin_truyen]
GO
ALTER TABLE [dbo].[DB_TRUYEN] ADD  CONSTRAINT [DF__DB_TRUYEN__creat__3A81B327]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[DB_TRUYEN] ADD  CONSTRAINT [DF__DB_TRUYEN__updat__3B75D760]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[DB_TRUYEN_THELOAI] ADD  CONSTRAINT [DF__DB_TRUYEN__statu__3C69FB99]  DEFAULT ((1)) FOR [status_]
GO
ALTER TABLE [dbo].[DB_TRUYEN_THELOAI] ADD  CONSTRAINT [DF__DB_TRUYEN__creat__3D5E1FD2]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[DB_TRUYEN_THELOAI] ADD  CONSTRAINT [DF__DB_TRUYEN__updat__3E52440B]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[DB_USER] ADD  CONSTRAINT [DF__DB_USER__quyen_h__3F466844]  DEFAULT ((0)) FOR [quyen_han]
GO
ALTER TABLE [dbo].[DB_USER] ADD  CONSTRAINT [DF__DB_USER__coin__403A8C7D]  DEFAULT ((0)) FOR [coin]
GO
ALTER TABLE [dbo].[DB_USER] ADD  CONSTRAINT [DF__DB_USER__status___412EB0B6]  DEFAULT ((1)) FOR [status_]
GO
ALTER TABLE [dbo].[DB_USER] ADD  CONSTRAINT [DF__DB_USER__created__4222D4EF]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[DB_USER] ADD  CONSTRAINT [DF__DB_USER__updated__4316F928]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[DB_VOTE] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[DB_VOTE] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[DB_CHUONG]  WITH CHECK ADD  CONSTRAINT [FK_DB_CHUONG_DB_TRUYEN1] FOREIGN KEY([id_truyen])
REFERENCES [dbo].[DB_TRUYEN] ([id_truyen])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DB_CHUONG] CHECK CONSTRAINT [FK_DB_CHUONG_DB_TRUYEN1]
GO
ALTER TABLE [dbo].[DB_CHUONG]  WITH CHECK ADD  CONSTRAINT [FK_DB_CHUONG_DB_USER] FOREIGN KEY([id_user])
REFERENCES [dbo].[DB_USER] ([id_user])
GO
ALTER TABLE [dbo].[DB_CHUONG] CHECK CONSTRAINT [FK_DB_CHUONG_DB_USER]
GO
ALTER TABLE [dbo].[DB_COMMENT]  WITH CHECK ADD  CONSTRAINT [FK_DB_COMMENT_DB_CHUONG] FOREIGN KEY([id_chuong])
REFERENCES [dbo].[DB_CHUONG] ([id_chuong])
GO
ALTER TABLE [dbo].[DB_COMMENT] CHECK CONSTRAINT [FK_DB_COMMENT_DB_CHUONG]
GO
ALTER TABLE [dbo].[DB_COMMENT]  WITH CHECK ADD  CONSTRAINT [FK_DB_COMMENT_DB_TRUYEN] FOREIGN KEY([id_truyen])
REFERENCES [dbo].[DB_TRUYEN] ([id_truyen])
GO
ALTER TABLE [dbo].[DB_COMMENT] CHECK CONSTRAINT [FK_DB_COMMENT_DB_TRUYEN]
GO
ALTER TABLE [dbo].[DB_COMMENT]  WITH CHECK ADD  CONSTRAINT [FK_DB_COMMENT_DB_USER] FOREIGN KEY([id_user])
REFERENCES [dbo].[DB_USER] ([id_user])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DB_COMMENT] CHECK CONSTRAINT [FK_DB_COMMENT_DB_USER]
GO
ALTER TABLE [dbo].[DB_LUOTXEM]  WITH CHECK ADD  CONSTRAINT [FK_DB_LUOTXEM_DB_CHUONG] FOREIGN KEY([id_chuong])
REFERENCES [dbo].[DB_CHUONG] ([id_chuong])
GO
ALTER TABLE [dbo].[DB_LUOTXEM] CHECK CONSTRAINT [FK_DB_LUOTXEM_DB_CHUONG]
GO
ALTER TABLE [dbo].[DB_LUOTXEM]  WITH CHECK ADD  CONSTRAINT [FK_DB_LUOTXEM_DB_TRUYEN] FOREIGN KEY([id_truyen])
REFERENCES [dbo].[DB_TRUYEN] ([id_truyen])
GO
ALTER TABLE [dbo].[DB_LUOTXEM] CHECK CONSTRAINT [FK_DB_LUOTXEM_DB_TRUYEN]
GO
ALTER TABLE [dbo].[DB_LUOTXEM]  WITH CHECK ADD  CONSTRAINT [FK_DB_LUOTXEM_DB_USER] FOREIGN KEY([id_user])
REFERENCES [dbo].[DB_USER] ([id_user])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DB_LUOTXEM] CHECK CONSTRAINT [FK_DB_LUOTXEM_DB_USER]
GO
ALTER TABLE [dbo].[DB_THUVIEN]  WITH CHECK ADD  CONSTRAINT [FK_DB_THUVIEN_DB_TRUYEN] FOREIGN KEY([id_truyen])
REFERENCES [dbo].[DB_TRUYEN] ([id_truyen])
GO
ALTER TABLE [dbo].[DB_THUVIEN] CHECK CONSTRAINT [FK_DB_THUVIEN_DB_TRUYEN]
GO
ALTER TABLE [dbo].[DB_THUVIEN]  WITH CHECK ADD  CONSTRAINT [FK_DB_THUVIEN_DB_USER] FOREIGN KEY([id_user])
REFERENCES [dbo].[DB_USER] ([id_user])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DB_THUVIEN] CHECK CONSTRAINT [FK_DB_THUVIEN_DB_USER]
GO
ALTER TABLE [dbo].[DB_TRUYEN]  WITH CHECK ADD  CONSTRAINT [FK_DB_TRUYEN_DB_USER] FOREIGN KEY([id_user])
REFERENCES [dbo].[DB_USER] ([id_user])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DB_TRUYEN] CHECK CONSTRAINT [FK_DB_TRUYEN_DB_USER]
GO
ALTER TABLE [dbo].[DB_TRUYEN_THELOAI]  WITH CHECK ADD  CONSTRAINT [FK_DB_TRUYEN_THELOAI_DB_THELOAI] FOREIGN KEY([id_theloai])
REFERENCES [dbo].[DB_THELOAI] ([id_theloai])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DB_TRUYEN_THELOAI] CHECK CONSTRAINT [FK_DB_TRUYEN_THELOAI_DB_THELOAI]
GO
ALTER TABLE [dbo].[DB_TRUYEN_THELOAI]  WITH CHECK ADD  CONSTRAINT [FK_DB_TRUYEN_THELOAI_DB_TRUYEN] FOREIGN KEY([id_truyen])
REFERENCES [dbo].[DB_TRUYEN] ([id_truyen])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DB_TRUYEN_THELOAI] CHECK CONSTRAINT [FK_DB_TRUYEN_THELOAI_DB_TRUYEN]
GO
ALTER TABLE [dbo].[DB_VOTE]  WITH CHECK ADD  CONSTRAINT [FK_DB_VOTE_DB_TRUYEN] FOREIGN KEY([id_truyen])
REFERENCES [dbo].[DB_TRUYEN] ([id_truyen])
GO
ALTER TABLE [dbo].[DB_VOTE] CHECK CONSTRAINT [FK_DB_VOTE_DB_TRUYEN]
GO
ALTER TABLE [dbo].[DB_VOTE]  WITH CHECK ADD  CONSTRAINT [FK_DB_VOTE_DB_USER] FOREIGN KEY([id_user])
REFERENCES [dbo].[DB_USER] ([id_user])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DB_VOTE] CHECK CONSTRAINT [FK_DB_VOTE_DB_USER]
GO
USE [master]
GO
ALTER DATABASE [WEB_TRUYEN] SET  READ_WRITE 
GO
