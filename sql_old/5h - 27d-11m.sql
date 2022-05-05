USE [master]
GO
/****** Object:  Database [WEB_TRUYEN]    Script Date: 27/11/2021 5:02:30 CH ******/
CREATE DATABASE [WEB_TRUYEN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WEB_TRUYEN', FILENAME = N'D:\HOCLAPTRINH\database\27-11\WEB_TRUYEN_dat.mdf' , SIZE = 10240KB , MAXSIZE = 20971520KB , FILEGROWTH = 10240KB )
 LOG ON 
( NAME = N'WEB_TRUYEN_log', FILENAME = N'D:\HOCLAPTRINH\database\27-11\WEB_TRUYEN_log.ldf' , SIZE = 5120KB , MAXSIZE = 204800KB , FILEGROWTH = 10240KB )
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
/****** Object:  User [webtruyens]    Script Date: 27/11/2021 5:02:30 CH ******/
CREATE USER [webtruyens] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [webtruyen]    Script Date: 27/11/2021 5:02:30 CH ******/
CREATE USER [webtruyen] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [webtruyens]
GO
ALTER ROLE [db_owner] ADD MEMBER [webtruyen]
GO
/****** Object:  StoredProcedure [dbo].[CapNhatCauHinh]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[CapnhatChuong]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[CapNhatCoinUser]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[Capnhatnguoidung]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[CapNhatQuyenHan]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[CapNhatThuVien]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[CapNhatThuVienDoc]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[CapNhatTruyen]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[DangKyNguoiDung]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[DelUser]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[LayLuotXem]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[LayThongTinBinhLuan]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[LayThongTinBinhLuanChuong]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[LayThuVienDoc]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[LayTruyenRand]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[LayTruyenTheLoai]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[NangLuotXem]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[Them_cmt]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[ThemChuong]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[ThemThuVien]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[ThemTruyen]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[ThemTruyenTheLoai]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[TimKiem]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[TimKiemTheoTen]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[TimKiemTheoTheLoai]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[XoaChuong]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[XoaChuongAdmin]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[XoaThuVien]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[XoaTruyen]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  StoredProcedure [dbo].[XoaTruyenTL]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  Table [dbo].[DB_CAUHINH]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  Table [dbo].[DB_CHUONG]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  Table [dbo].[DB_COMMENT]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  Table [dbo].[DB_LUOTXEM]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  Table [dbo].[DB_THELOAI]    Script Date: 27/11/2021 5:02:30 CH ******/
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
	[id_user] [int] NULL,
 CONSTRAINT [PK__DB_THELO__80AF8C6EC787253B] PRIMARY KEY CLUSTERED 
(
	[id_theloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DB_THUVIEN]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  Table [dbo].[DB_TRUYEN]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  Table [dbo].[DB_TRUYEN_THELOAI]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  Table [dbo].[DB_USER]    Script Date: 27/11/2021 5:02:30 CH ******/
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
/****** Object:  Table [dbo].[DB_VOTE]    Script Date: 27/11/2021 5:02:30 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_VOTE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[giatri] [int] NULL,
	[id_user] [int] NULL,
	[id_truyen] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_DB_VOTE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[DB_CAUHINH] ([id_cauhinh], [ten_web], [logo_web], [favicon_web], [email_lh], [diachi_lh], [sdt_lh], [lh_fb], [lh_zalo], [lh_itg], [copyright], [created_at], [updated_at]) VALUES (0, N'KDA Website Đọc Truyện', N'204612.png', N'KDA STUDIO_logo.png', N'mail@gm.com', N'Cần thơ', N'0123456789', N'fb.com', N'zl.com', N'ig.com', N'a@b.com', CAST(0x0000ADD800965C00 AS DateTime), CAST(0x0000ADD800965C00 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_CHUONG] ON 

INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1071, 1090, 7, N'123213', N'&lt;p&gt;12312313123&lt;/p&gt;
', 1, CAST(0x0000ADDF00A430C2 AS DateTime), CAST(0x0000ADDF00A430C2 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1072, 1078, 7, N'Episode 1', N'&lt;p&gt;sdafcxvvdfgre&lt;/p&gt;
', 1, CAST(0x0000ADDF00A5517E AS DateTime), CAST(0x0000ADDF00A5517E AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1076, 23, 7, N'132', N'&lt;p&gt;123123&lt;/p&gt;
', 1, CAST(0x0000ADDF00A791A2 AS DateTime), CAST(0x0000ADDF00A791A2 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1077, 1099, 7, N'chuong 1.2', N'&lt;p&gt;12345&lt;/p&gt;
', 1, CAST(0x0000ADE0004CE34E AS DateTime), CAST(0x0000ADE0004CE34E AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1079, 1073, 7, N'Tập 01 - Sát thủ đệ nhất thế giới chuyển sinh thành quý tộc ở thế giới khác', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/i4r0VbB94u0&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADE0014DBE41 AS DateTime), CAST(0x0000ADE0014DBE41 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1080, 1073, 7, N'Tập 02 - Sát thủ đệ nhất thế giới chuyển sinh thành quý tộc ở thế giới khác', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/lS17E55hoa4&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADE0014EAC49 AS DateTime), CAST(0x0000ADE0014EAC49 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1081, 1073, 7, N'Tập 03 - Sát thủ đệ nhất thế giới chuyển sinh thành quý tộc ở thế giới khác', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/y_zJB9Wdo14&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADE0014EEC17 AS DateTime), CAST(0x0000ADE0014EEC17 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1082, 1073, 7, N'Tập 04 - Sát thủ đệ nhất thế giới chuyển sinh thành quý tộc ở thế giới khác', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/EG0Fe2QZemM&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADE0014F1B50 AS DateTime), CAST(0x0000ADE0014F1B50 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1083, 1073, 7, N'Tập 05 - Sát thủ đệ nhất thế giới chuyển sinh thành quý tộc ở thế giới khác', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/UisoD-2rr20&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADE0014F475E AS DateTime), CAST(0x0000ADE0014F475E AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1084, 1073, 7, N'Tập 06 - Sát thủ đệ nhất thế giới chuyển sinh thành quý tộc ở thế giới khác', N'&lt;iframe width=&quot;100%&quot; height=&quot;750&quot; src=&quot;https://www.youtube.com/embed/oq8sxzX39_c&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', 1, CAST(0x0000ADE0014F6FB8 AS DateTime), CAST(0x0000ADE0014F6FB8 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1090, 1088, 7, N'Chương 1: Giấc mơ', N'&lt;p&gt;Một giọng n&amp;oacute;i quen thuộc, một m&amp;ugrave;i hương quen thuộc, &amp;aacute;nh s&amp;aacute;ng v&amp;agrave; hơi ấm dễ chịu bao quanh t&amp;ocirc;i một c&amp;aacute;ch &amp;ecirc;m &amp;aacute;i.&lt;/p&gt;

&lt;p&gt;Một cảm gi&amp;aacute;c kh&amp;oacute; hiểu như thể c&amp;oacute; điều g&amp;igrave; đ&amp;oacute; rất quan trọng bỗng nhi&amp;ecirc;n lấp đầy bất cứ x&amp;oacute; xỉnh n&amp;agrave;o, kết nối tất cả những mắt x&amp;iacute;ch của cuộc đời t&amp;ocirc;i lại.&lt;/p&gt;

&lt;p&gt;Những nỗi c&amp;ocirc; đơn, v&amp;agrave; lo lắng bỗng chốc tan biến, như thể t&amp;ocirc;i bỗng nhi&amp;ecirc;n b&amp;eacute; lại, trở th&amp;agrave;nh đứa trẻ sơ sinh đang ngậm bầu sữa mẹ v&amp;ocirc; tư lự.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i ch&amp;igrave;m trong một cảm gi&amp;aacute;c mềm mại v&amp;agrave; dịu d&amp;agrave;ng, như thể chưa từng trải qua mất m&amp;aacute;t v&amp;agrave; đau thương.&lt;/p&gt;

&lt;p&gt;V&amp;agrave;, t&amp;ocirc;i mở mắt.&lt;/p&gt;

&lt;p&gt;Kia l&amp;agrave; trần nh&amp;agrave;.&lt;/p&gt;

&lt;p&gt;Đ&amp;acirc;y l&amp;agrave; căn ph&amp;ograve;ng, v&amp;agrave; b&amp;acirc;y giờ l&amp;agrave; buổi s&amp;aacute;ng sớm.&lt;/p&gt;

&lt;p&gt;Một m&amp;igrave;nh, giữa Tokyo.&lt;/p&gt;

&lt;p&gt;Ra vậy&amp;hellip;&lt;/p&gt;

&lt;p&gt;H&amp;oacute;a ra, đ&amp;oacute; chỉ l&amp;agrave; một giấc mơ. T&amp;ocirc;i xoay sở t&amp;igrave;m c&amp;aacute;ch cựa quậy cơ thể để tho&amp;aacute;t khỏi c&amp;aacute;i&amp;nbsp; giường m&amp;agrave; t&amp;ocirc;i đang nằm.&lt;/p&gt;

&lt;p&gt;Chỉ trong khoảnh khắc, ước chừng hai gi&amp;acirc;y, những cảm x&amp;uacute;c tr&amp;agrave;n ngập t&amp;acirc;m tr&amp;iacute; t&amp;ocirc;i l&amp;uacute;c n&amp;atilde;y, bỗng chốc tan biến đi một c&amp;aacute;ch nhanh ch&amp;oacute;ng. Kh&amp;ocirc;ng dấu vết, kh&amp;ocirc;ng đọng lại bất cứ điều g&amp;igrave;, như thể c&amp;oacute; một cảm x&amp;uacute;c m&amp;atilde;nh liệt n&amp;agrave;o đ&amp;oacute; b&amp;ecirc;n trong t&amp;ocirc;i đang trỗi dậy, nước mắt t&amp;ocirc;i tr&amp;agrave;o ra.&lt;/p&gt;

&lt;p&gt;S&amp;aacute;ng sớm, khi vừa tỉnh giấc, kh&amp;ocirc;ng hiểu v&amp;igrave; sao bỗng nhi&amp;ecirc;n thỉnh thoảng t&amp;ocirc;i lại kh&amp;oacute;c. C&amp;oacute; những l&amp;uacute;c xảy ra những chuyện như vậy đấy, v&amp;agrave; thực tế th&amp;igrave; t&amp;ocirc;i chẳng thể n&amp;agrave;o nhớ được giấc mơ m&amp;agrave; t&amp;ocirc;i chắc chắn rằng, chỉ ước chừng v&amp;agrave;i gi&amp;acirc;y trước, đ&amp;atilde; tr&amp;ocirc;ng thấy r&amp;otilde; r&amp;agrave;ng lắm.&lt;/p&gt;

&lt;p&gt;Lấy b&amp;agrave;n tay phải gạt nước mắt c&amp;ograve;n đọng tr&amp;ecirc;n kh&amp;oacute;e mắt, t&amp;ocirc;i liếc nh&amp;igrave;n xung quanh. Nước mắt b&amp;aacute;m lại ở ng&amp;oacute;n tay. Nhưng rồi n&amp;oacute; cũng nhanh ch&amp;oacute;ng kh&amp;ocirc; đi,&amp;nbsp; giống như những k&amp;yacute; ức c&amp;ograve;n đọng lại trong giấc mơ trước đ&amp;oacute;. C&amp;oacute; thứ g&amp;igrave; đ&amp;oacute; quan trọng, rất quan trọng m&amp;agrave; dường như t&amp;ocirc;i đ&amp;atilde; từng giữ trong b&amp;agrave;n tay n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cũng kh&amp;ocirc;ng biết nữa.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i rời khỏi giường, hướng về bồn rửa tay ph&amp;iacute;a b&amp;ecirc;n kia nhưng cũng nằm trong ph&amp;ograve;ng. Vục khu&amp;ocirc;n mặt v&amp;agrave;o l&amp;agrave;n nước lạnh, v&amp;agrave; tận hưởng m&amp;ugrave;i vị của n&amp;oacute;, cũng như c&amp;aacute;i cảm gi&amp;aacute;c r&amp;ugrave;ng m&amp;igrave;nh sảng kho&amp;aacute;i, t&amp;ocirc;i ngước nh&amp;igrave;n bản th&amp;acirc;n đang phản chiếu trong tấm gương ph&amp;iacute;a trước mặt.&lt;/p&gt;

&lt;p&gt;Tấm gương đang phản chiếu t&amp;ocirc;i, trong một bộ dạng dường như c&amp;oacute; phần bất m&amp;atilde;n c&amp;aacute;i g&amp;igrave; đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Rồi t&amp;ocirc;i bắt đầu chải t&amp;oacute;c, k&amp;eacute;o thắt lưng để chỉnh đốn lại bộ đồng phục đang mặc. T&amp;ocirc;i đ&amp;atilde; bỏ kh&amp;ocirc;ng d&amp;ugrave;ng c&amp;agrave;-vạt, cũng chẳng hiểu v&amp;igrave; sao nữa. Cuối c&amp;ugrave;ng t&amp;ocirc;i kho&amp;aacute;c vội &amp;aacute;o cho&amp;agrave;ng.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; t&amp;ocirc;i mở cửa căn hộ đang thu&amp;ecirc; ra.&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute;ng c&amp;aacute;nh cửa lại rồi quay đi, trước mắt t&amp;ocirc;i hiện l&amp;ecirc;n một khung cảnh vốn đ&amp;atilde; quen thuộc. Phong cảnh của Tokyo như mở rộng ra trước mắt t&amp;ocirc;i, những t&amp;ograve;a nh&amp;agrave; cao tầng chạy san s&amp;aacute;t nhau, khiến t&amp;ocirc;i c&amp;oacute; một sự li&amp;ecirc;n tưởng k&amp;igrave; lạ tới những d&amp;atilde;y n&amp;uacute;i ở đ&amp;acirc;u đ&amp;oacute; t&amp;ocirc;i từng nh&amp;igrave;n thấy.&lt;/p&gt;

&lt;p&gt;Rốt cuộc, t&amp;ocirc;i cũng xoay sở h&amp;ograve;a v&amp;agrave;o d&amp;ograve;ng người tấp nập ở nh&amp;agrave; ga,rồi sau đ&amp;oacute; t&amp;igrave;m c&amp;aacute;ch tho&amp;aacute;t ra để cuối c&amp;ugrave;ng đứng b&amp;ecirc;n thang m&amp;aacute;y nối chuyến, chuyển l&amp;ecirc;n chuyến t&amp;agrave;u điện c&amp;ocirc;ng cộng, v&amp;agrave; trong khi chờ đợi, t&amp;ocirc;i ngước nh&amp;igrave;n khung cảnh quen thuộc kia. Trong những g&amp;oacute;c nhỏ nhất của th&amp;agrave;nh phố n&amp;agrave;y, từ cửa sổ, từ những chuyến t&amp;agrave;u, v&amp;agrave; từ những c&amp;acirc;y cầu d&amp;agrave;nh cho người đi bộ, lu&amp;ocirc;n lu&amp;ocirc;n đọng lại dấu vết của con người.&lt;/p&gt;

&lt;p&gt;Giống như một cơn mưa những c&amp;aacute;nh hoa anh đ&amp;agrave;o v&amp;agrave;o m&amp;ugrave;a xu&amp;acirc;n, h&amp;agrave;ng trăm h&amp;agrave;ng ngh&amp;igrave;n người đang đan v&amp;agrave;o nhau, để l&amp;ecirc;n những chuyến t&amp;agrave;u điện&amp;nbsp; hoặc l&amp;agrave; đang chuyển đến một chuyến t&amp;agrave;u kh&amp;aacute;c, tất cả tạo n&amp;ecirc;n d&amp;ograve;ng chảy cho th&amp;agrave;nh phố n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng hiểu tại sao h&amp;ocirc;m nay, t&amp;ocirc;i mới nhận ra những điều s&amp;acirc;u xa v&amp;agrave; ưu tư ấy. T&amp;ocirc;i đăm chi&amp;ecirc;u ngắm nh&amp;igrave;n th&amp;agrave;nh phố.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Dường như t&amp;ocirc;i đang cố gắng t&amp;igrave;m kiếm thứ g&amp;igrave; đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Một ai đ&amp;oacute;.&lt;/p&gt;
', 1, CAST(0x0000ADE00157702B AS DateTime), CAST(0x0000ADE00157702B AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1091, 1102, 1034, N'Chương 1', N'&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/public/nguoidung/Images/68dbaf636013deb0333d5e6c67add19/images/truyen-kieu-co-bao-nhieu-cau-tho-luc-bat-01.jpg&quot; style=&quot;height:720px; width:1280px&quot; /&gt;&lt;/p&gt;
', 1, CAST(0x0000ADE00157FC48 AS DateTime), CAST(0x0000ADE00157FC48 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1092, 1088, 1034, N'Chương 2: Sự khởi đầu', N'&lt;p&gt;C&amp;oacute; tiếng chu&amp;ocirc;ng điện thoại ho&amp;agrave;n to&amp;agrave;n lạ lẫm reo vang.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Nghe như tiếng chim h&amp;oacute;t ngo&amp;agrave;i cửa sổ. T&amp;ocirc;i lờ mờ nghĩ như vậy. Th&amp;ocirc;i dậy nh&amp;eacute;? Nhưng m&amp;agrave; t&amp;ocirc;i vẫn c&amp;ograve;n đang buồn ngủ lắm. Bởi đ&amp;ecirc;m qua t&amp;ocirc;i đ&amp;atilde; thức miệt m&amp;agrave;i tập trung vẽ tranh, đến khi l&amp;ecirc;n giường th&amp;igrave; trời đ&amp;atilde; tảng s&amp;aacute;ng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Taki kun, taki kun&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Lần n&amp;agrave;y l&amp;agrave; tiếng ai đ&amp;oacute; đang gọi t&amp;ecirc;n ai đ&amp;oacute;. Giọng con g&amp;aacute;i.&lt;/p&gt;

&lt;p&gt;Giọng con g&amp;aacute;i?&lt;/p&gt;

&lt;p&gt;&amp;ldquo; Taki kun, taki kun&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Giọng n&amp;oacute;i nghẹn lại như thể c&amp;ocirc; b&amp;eacute; chuẩn bị kh&amp;oacute;c tới nơi. Một giọng n&amp;oacute;i giống như c&amp;oacute; một nỗi buồn n&amp;agrave;o đ&amp;oacute; bao phủ, v&amp;agrave; vang vọng xa xăm như thể n&amp;oacute; đến từ những v&amp;igrave; sao.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cậu kh&amp;ocirc;ng nhớ sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Giọng n&amp;oacute;i đầy bất an bỗng nhi&amp;ecirc;n hỏi t&amp;ocirc;i. Nhưng kh&amp;ocirc;ng, tớ kh&amp;ocirc;ng biết cậu l&amp;agrave; ai đ&amp;acirc;u.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Chuyến t&amp;agrave;u điện bất chợt dừng lại, v&amp;agrave; cửa tự động mở ra. T&amp;ocirc;i giật m&amp;igrave;nh nhanh ch&amp;oacute;ng bước rời khỏi. V&amp;agrave; khi nhận ra l&amp;agrave; m&amp;igrave;nh đang đứng ở bậc thềm đợi chuyến kế, th&amp;igrave; toa t&amp;agrave;u vừa rồi đ&amp;atilde; lại đầy ắp người. Ngay ph&amp;iacute;a trước mắt t&amp;ocirc;i, một c&amp;ocirc; b&amp;eacute; học sinh c&amp;oacute; vẻ l&amp;agrave; c&amp;ugrave;ng tuổi đang chăm ch&amp;uacute; nh&amp;igrave;n t&amp;ocirc;i, v&amp;agrave; khi t&amp;ocirc;i đang thắc mắc bộ đồng phục đ&amp;oacute; của trường n&amp;agrave;o, th&amp;igrave; c&amp;ocirc; b&amp;eacute; đ&amp;atilde; bị cuốn đi bởi c&amp;aacute;i sự đ&amp;ocirc;ng đặc người tr&amp;ecirc;n chuyến t&amp;agrave;u.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ecirc;n m&amp;igrave;nh l&amp;agrave; Mitsuha&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; b&amp;eacute; bỗng nhi&amp;ecirc;n h&amp;eacute;t l&amp;ecirc;n, v&amp;agrave; cố gắng vươn sợi d&amp;acirc;y buộc t&amp;oacute;c về ph&amp;iacute;a t&amp;ocirc;i. V&amp;agrave; t&amp;ocirc;i cũng bất th&amp;igrave;nh l&amp;igrave;nh vươn tay m&amp;igrave;nh ra để bắt lấy. Con t&amp;agrave;u bỗng chốc nhấn ch&amp;igrave;m trong m&amp;agrave;n đ&amp;ecirc;m như thể trời đ&amp;atilde; chuyển tối, v&amp;agrave; rồi tất cả lại trở lại ồn &amp;agrave;o như trước. T&amp;ocirc;i va v&amp;agrave;o hết người n&amp;agrave;y đến người kh&amp;aacute;c, c&amp;oacute; lẽ bởi ảnh hưởng của c&amp;aacute;i cảm gi&amp;aacute;c k&amp;igrave; lạ vừa rồi khiến t&amp;ocirc;i mất thăng bằng.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; rồi t&amp;ocirc;i lại mở mắt ra.&lt;/p&gt;

&lt;p&gt;Giọng n&amp;oacute;i của c&amp;ocirc; g&amp;aacute;i, tiếng vang, vẫn c&amp;ograve;n đọng lại đ&amp;acirc;u đ&amp;oacute; trong t&amp;acirc;m tr&amp;iacute; t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;T&amp;ecirc;n c&amp;ocirc; b&amp;eacute; l&amp;agrave; Mitsuha? C&amp;oacute; phải kh&amp;ocirc;ng nhỉ?&lt;/p&gt;

&lt;p&gt;Một c&amp;aacute;i t&amp;ecirc;n kh&amp;ocirc;ng hề quen thuộc, với một c&amp;ocirc; g&amp;aacute;i t&amp;ocirc;i kh&amp;ocirc;ng hề hay biết.&lt;/p&gt;

&lt;p&gt;Một c&amp;ocirc; b&amp;eacute; dường như đang sợ h&amp;atilde;i điều g&amp;igrave; đ&amp;oacute;, đang cố gắng giữ những giọt nước mắt khỏi lăn d&amp;agrave;i tr&amp;ecirc;n kh&amp;oacute;e mắt, v&amp;agrave; bộ đồng phục dường như kh&amp;ocirc;ng thuộc về bất k&amp;igrave; ng&amp;ocirc;i trường n&amp;agrave;o ở đ&amp;acirc;y. Một biểu hiện như thể c&amp;ocirc; b&amp;eacute; đang nắm giữ vận mệnh của vũ trụ v&amp;agrave; đang t&amp;igrave;m kiếm thứ g&amp;igrave; đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Nhưng m&amp;agrave;, chắc đ&amp;oacute; chỉ l&amp;agrave; mơ th&amp;ocirc;i m&amp;agrave;? Chẳng c&amp;oacute; &amp;yacute; nghĩa g&amp;igrave; cả. Chẳng c&amp;oacute; g&amp;igrave; phải để t&amp;acirc;m, khu&amp;ocirc;n mặt đ&amp;oacute; cũng kh&amp;ocirc;ng thể nhớ được. Rồi th&amp;igrave; c&amp;aacute;i &amp;acirc;m thanh vang vọng trong đầu kia cũng bị biến mất.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Nhưng m&amp;agrave;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Nhưng m&amp;agrave;, tim t&amp;ocirc;i vẫn đập mạnh, v&amp;agrave; cơ thể t&amp;ocirc;i nặng trĩu một c&amp;aacute;ch k&amp;igrave; lạ, to&amp;agrave;n th&amp;acirc;n t&amp;ocirc;i ướt sũng v&amp;igrave; mồ h&amp;ocirc;i. T&amp;ocirc;i cố gắng h&amp;iacute;t thở để trấn tĩnh lại.&lt;/p&gt;

&lt;p&gt;Bị cảm &amp;agrave;? Mũi v&amp;agrave; họng t&amp;ocirc;i như c&amp;oacute; một cảm gi&amp;aacute;c k&amp;igrave; cục, kh&amp;ocirc;ng kh&amp;iacute; của con đường ng&amp;agrave;y n&amp;agrave;o cũng đi lại cũng kh&amp;aacute;c, v&amp;agrave; ngực t&amp;ocirc;i bỗng nhi&amp;ecirc;n c&amp;oacute; cảm gi&amp;aacute;c rất nặng nề, một cảm gi&amp;aacute;c nặng nề mang t&amp;iacute;nh vật l&amp;yacute;. Cơ thể t&amp;ocirc;i như đổ xuống ngay trước mắt.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; ở đ&amp;oacute;, t&amp;ocirc;i nh&amp;igrave;n thấy c&amp;oacute; một khe ngực.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Ở đ&amp;oacute;, t&amp;ocirc;i nh&amp;igrave;n thấy c&amp;oacute; một khe ngực.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;..????&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Tấm r&amp;egrave;m phản chiếu &amp;aacute;nh s&amp;aacute;ng buổi b&amp;igrave;nh minh, đang rọi v&amp;agrave;o một l&amp;agrave;n da trắng muốt v&amp;agrave; mềm mại. Giữa hai bầu ngực, đổ b&amp;oacute;ng xuống như thể đọng lại một c&amp;aacute;i hồ nước ở đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;C&amp;aacute;i g&amp;igrave; thế n&amp;agrave;y?&lt;/p&gt;

&lt;p&gt;Những g&amp;igrave; trước mắt t&amp;ocirc;i như&amp;nbsp; một sự hiển nhi&amp;ecirc;n b&amp;igrave;nh thường, như thể quả t&amp;aacute;o rơi xuống mặt đất. T&amp;ocirc;i đ&amp;atilde; nghĩ như thế.&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;.&lt;/p&gt;

&lt;p&gt;?????????&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i bỗng nhi&amp;ecirc;n cảm động, &amp;ldquo;&amp;Ocirc;i, &amp;ocirc;i&amp;hellip;&amp;rdquo;, c&amp;aacute;i g&amp;igrave; thế n&amp;agrave;y, t&amp;ocirc;i nh&amp;igrave;n một c&amp;aacute;ch chăm ch&amp;uacute;. C&amp;aacute;i n&amp;agrave;y gọi l&amp;agrave; g&amp;igrave; nhỉ? Cơ thể con g&amp;aacute;i &amp;agrave;? Tuyệt vời qu&amp;aacute;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chị ơi, chị l&amp;egrave;m g&amp;igrave; thế?&amp;rdquo; (Ch&amp;uacute; th&amp;iacute;ch: giọng của Yotsuba v&amp;agrave; Mitsuha l&amp;agrave; giọng địa phương- ND)&lt;/p&gt;

&lt;p&gt;Vừa ngước nh&amp;igrave;n t&amp;igrave;m kiếm phương hướng của giọng n&amp;oacute;i, một c&amp;ocirc; b&amp;eacute; bỗng nhi&amp;ecirc;n k&amp;eacute;o tấm cửa ph&amp;ograve;ng ra. Nh&amp;igrave;n thấy cảnh t&amp;ocirc;i đang nắn b&amp;oacute;p ngực, c&amp;ocirc; b&amp;eacute; ng&amp;acirc;y ng&amp;ocirc; cất tiếng hỏi.&lt;/p&gt;

&lt;p&gt;Ui tuyệt vời thế, mơ g&amp;igrave; m&amp;agrave; cực k&amp;igrave; ch&amp;acirc;n thật thế n&amp;agrave;y, n&amp;agrave;y&amp;hellip;ơ?&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i lại nh&amp;igrave;n c&amp;ocirc; b&amp;eacute; một lần nữa. Khoảng tầm mười tuổi, một c&amp;ocirc; b&amp;eacute; lộ vẻ năng động v&amp;agrave; rất xinh xắn.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chị ưi?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; b&amp;eacute; vừa hỏi vừa chỉ v&amp;agrave;o t&amp;ocirc;i. N&amp;oacute;i vậy th&amp;igrave; t&amp;ocirc;i l&amp;agrave; chị &amp;agrave;? C&amp;ocirc; b&amp;eacute; &amp;aacute; khẩu trong một l&amp;uacute;c rồi cũng cất tiếng:&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chị ngủ nướng c&amp;aacute;i g&amp;igrave; vựi? C&amp;ograve;n kh&amp;ocirc;ng mau nhanh nhanh l&amp;ecirc;n, đi ăn s&amp;aacute;ng.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Để mặc t&amp;ocirc;i c&amp;ograve;n đang ngơ ng&amp;aacute;c, con b&amp;eacute; đ&amp;oacute;ng sầm tấm cửa lại. Trong l&amp;uacute;c nghĩ thầm, con b&amp;eacute; n&amp;agrave;y sao dễ c&amp;aacute;u thế nhỉ? T&amp;ocirc;i tho&amp;aacute;t khỏi đống chăn đệm v&amp;agrave; đứng l&amp;ecirc;n nh&amp;igrave;n xung quanh.&amp;nbsp; M&amp;agrave; nhắc tới chuyện đấy, t&amp;ocirc;i cũng cảm thấy đ&amp;oacute;i meo rồi. T&amp;ocirc;i dừng lại ở một tấm gương d&amp;agrave;i đặt trong g&amp;oacute;c ph&amp;ograve;ng v&amp;agrave; nh&amp;igrave;n chăm ch&amp;uacute; h&amp;igrave;nh ảnh đang phản chiếu trong đ&amp;oacute;. T&amp;ocirc;i mặc một bộ pịjama đang trễ một phần xuống tận vai, sau đ&amp;oacute; th&amp;igrave; cả quần &amp;aacute;o đều rơi xuống nền nh&amp;agrave;, t&amp;ocirc;i ho&amp;agrave;n to&amp;agrave;n khỏa th&amp;acirc;n.&lt;/p&gt;

&lt;p&gt;Cơn ng&amp;aacute;i ngủ lập tức biến mất. H&amp;igrave;nh ảnh của t&amp;ocirc;i hiện l&amp;ecirc;n r&amp;otilde; mồn một trong gương. Một m&amp;aacute;i t&amp;oacute;c d&amp;agrave;i đen &amp;oacute;ng như d&amp;ograve;ng nước,&amp;nbsp; một khu&amp;ocirc;n mặt tr&amp;ograve;n nhỏ nhắn được nhấn bằng một cặp l&amp;ocirc;ng m&amp;agrave;y thanh t&amp;uacute;, với đ&amp;ocirc;i m&amp;ocirc;i lu&amp;ocirc;n như đang mỉm cười vui vẻ tạo cảm gi&amp;aacute;c gần gũi. Một c&amp;aacute;i cổ nhỏ nhắn ẩn dưới đ&amp;oacute; l&amp;agrave; những l&amp;aacute;ch xương vai c&amp;acirc;n đối, v&amp;agrave; ơn trời l&amp;agrave; cơ thể n&amp;agrave;y dường như được nu&amp;ocirc;i dưỡng một c&amp;aacute;ch điều độ. V&amp;agrave; cặp ngực ch&amp;iacute;nh l&amp;agrave; c&amp;uacute; quyết định nhất của to&amp;agrave;n bộ t&amp;ograve;a thi&amp;ecirc;n nhi&amp;ecirc;n n&amp;agrave;y, tiếp theo đ&amp;oacute; l&amp;agrave; những đường cong đầy gợi h&amp;igrave;nh mềm mại v&amp;agrave; quyến rũ.&lt;/p&gt;

&lt;p&gt;Mặc d&amp;ugrave; t&amp;ocirc;i chưa một lần nh&amp;igrave;n thấy trong đời.&lt;/p&gt;

&lt;p&gt;Nhưng kh&amp;ocirc;ng c&amp;ograve;n g&amp;igrave; nghi ngờ nữa, đ&amp;acirc;y ch&amp;iacute;nh l&amp;agrave; cơ thể của một c&amp;ocirc; g&amp;aacute;i.&lt;/p&gt;

&lt;p&gt;Con g&amp;aacute;i?&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i&amp;hellip;l&amp;agrave; con g&amp;aacute;i &amp;agrave;?&lt;/p&gt;

&lt;p&gt;Bỗng nhi&amp;ecirc;n bị bao bọc trong một cơ thể như thế n&amp;agrave;y chỉ trong chớp mắt, đầu &amp;oacute;c t&amp;ocirc;i như trống trơn.&lt;/p&gt;

&lt;p&gt;Rồi bất th&amp;igrave;nh l&amp;igrave;nh, t&amp;acirc;m tr&amp;iacute; t&amp;ocirc;i rối loạn.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;V&amp;agrave; t&amp;ocirc;i h&amp;eacute;t l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chị! &amp;nbsp;l&amp;agrave;m g&amp;igrave; m&amp;agrave; l&amp;acirc;u thế!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Yotsuba vừa n&amp;oacute;i vừa mở cửa v&amp;agrave;o ph&amp;ograve;ng, n&amp;eacute;m cho t&amp;ocirc;i một c&amp;aacute;i nh&amp;igrave;n đầy tr&amp;aacute;ch m&amp;oacute;c.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;S&amp;aacute;ng mai chị sẽ nấu bữa s&amp;aacute;ng cho&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i n&amp;oacute;i thay cho lời xin lỗi. C&amp;ocirc; b&amp;eacute; Yotsuba, răng vẫn c&amp;ograve;n chưa thay hết, dường như c&amp;oacute; một c&amp;aacute;i uy hơn cả chị của n&amp;oacute;. T&amp;ocirc;i thầm nghĩ, c&amp;oacute; lẽ cần phải tỏ th&amp;aacute;i độ hối lỗi hơn th&amp;igrave; mới ổn. Ngồi v&amp;agrave;o b&amp;agrave;n, t&amp;ocirc;i loay hoay giữa đống đồ c&amp;aacute; nh&amp;acirc;n v&amp;agrave; mở nồi cơm ra để tự lấy phần cơm cho m&amp;igrave;nh. Lấy thế n&amp;agrave;y c&amp;oacute; nhiều qu&amp;aacute; kh&amp;ocirc;ng nhỉ? H&amp;igrave;nh như nhiều qu&amp;aacute; thật. M&amp;agrave; th&amp;ocirc;i kệ đi vậy, đang đ&amp;oacute;i m&amp;agrave;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Itadakimasu.&amp;rdquo; (Xin mời d&amp;ugrave;ng bữa- tiếng Nhật, ND)&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Trứng r&amp;aacute;n c&amp;ugrave;ng s&amp;uacute;p ăn k&amp;egrave;m với nước tương v&amp;agrave; cơm, t&amp;ocirc;i h&amp;aacute; họng thật to để l&amp;agrave;m sao tọng được hết ch&amp;uacute;ng v&amp;agrave;o v&amp;agrave; nhai nhồm nho&amp;agrave;m. Ngon qu&amp;aacute;, hạnh ph&amp;uacute;c qu&amp;aacute;. Nhưng, h&amp;igrave;nh như kh&amp;ocirc;ng kh&amp;iacute; c&amp;oacute; vẻ kh&amp;ocirc;ng được b&amp;igrave;nh thường cho lắm, t&amp;ocirc;i thầm nghĩ khi bắt gặp &amp;aacute;nh mắt của mọi người.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hum nay, ch&amp;aacute;u kh&amp;ocirc;ng b&amp;igrave;nh thường he?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Dạ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Dường như nhận ra c&amp;aacute;i g&amp;igrave; đ&amp;oacute;, c&amp;oacute; lẽ l&amp;agrave; b&amp;agrave; t&amp;ocirc;i, nh&amp;igrave;n chằm chằm qu&amp;ecirc;n cả nhai cơm.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;H&amp;ocirc;m qua tại ch&amp;aacute;u đ&amp;oacute;i v&amp;atilde;i ra b&amp;agrave; ạ&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Con b&amp;eacute; Yotsuba nh&amp;igrave;n t&amp;ocirc;i cười cười.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng được vừa ăn vừa n&amp;oacute;i như thế, v&amp;agrave; đừng d&amp;ugrave;ng những từ k&amp;igrave; quặc như thế&amp;rdquo;&lt;/p&gt;

&lt;p&gt;K&amp;igrave; quặc? &amp;Aacute;nh nh&amp;igrave;n của b&amp;agrave; như đang đ&amp;aacute;nh gi&amp;aacute; một c&amp;aacute;ch trịch thượng, khiến t&amp;ocirc;i c&amp;oacute; cảm gi&amp;aacute;c m&amp;igrave;nh vừa h&amp;agrave;nh động một c&amp;aacute;ch đầy ngu ngốc. Lại th&amp;ecirc;m con b&amp;eacute; Yotsuba đang nh&amp;igrave;n t&amp;ocirc;i một c&amp;aacute;ch đẩy ngờ vực.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;aacute;i g&amp;igrave; k&amp;igrave; quặc hở b&amp;agrave;? C&amp;aacute;i g&amp;igrave; thế b&amp;agrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Con b&amp;eacute; Yotsuba sốt sắng hỏi một c&amp;aacute;ch t&amp;ograve; m&amp;ograve;.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ping pong ping pong&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Bằng một &amp;acirc;m thanh đột ngột vọng v&amp;agrave;o, tiếng loa th&amp;ocirc;ng b&amp;aacute;o ở đ&amp;acirc;u đ&amp;oacute; bỗng vang l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ch&amp;agrave;o buổi s&amp;aacute;ng, thưa mọi người&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; l&amp;agrave; giọng của chị c&amp;ocirc; bạn sayaka th&amp;acirc;n thiết của t&amp;ocirc;i, đang l&amp;agrave; nh&amp;acirc;n vi&amp;ecirc;n h&amp;agrave;nh ch&amp;iacute;nh của ph&amp;ograve;ng c&amp;ocirc;ng t&amp;aacute;c sinh hoạt v&amp;agrave; th&amp;ocirc;ng tin. Thị trấn Itomori n&amp;agrave;y, lượng cư d&amp;acirc;n chỉ tầm một ngh&amp;igrave;n năm trăm người, nhỏ tới độ m&amp;agrave; ai cũng biết nhau cả. N&amp;oacute;i cho đ&amp;uacute;ng l&amp;agrave; người n&amp;agrave;y biết người kia, v&amp;agrave; người kia quen người kia nữa.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;acirc;y l&amp;agrave; th&amp;ocirc;ng b&amp;aacute;o từ văn ph&amp;ograve;ng của thị trấn Itomori&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;Acirc;m thanh từ loa ph&amp;aacute;t ra, chậm r&amp;atilde;i v&amp;agrave; r&amp;otilde; r&amp;agrave;ng từng từ một: đ&amp;acirc;y- l&amp;agrave;- th&amp;ocirc;ng-b&amp;aacute;o-từ-thị-trấn&amp;hellip; &amp;Acirc;m thanh dội v&amp;agrave;o những d&amp;atilde;y n&amp;uacute;i bao bọc chốn n&amp;agrave;y v&amp;agrave; vọng ngược về, khiến cho bất cứ x&amp;oacute; xỉnh n&amp;agrave;o của c&amp;aacute;i thị trấn b&amp;eacute; tẹo n&amp;agrave;y đều c&amp;oacute; thể nghe r&amp;otilde; mồn một bản th&amp;ocirc;ng b&amp;aacute;o buổi s&amp;aacute;ng n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;Mỗi ng&amp;agrave;y hai lần, đ&amp;agrave;i ph&amp;aacute;t thanh sẽ b&amp;aacute;o những th&amp;ocirc;ng tin như t&amp;igrave;nh h&amp;igrave;nh thời tiết v&amp;agrave; tin tức đ&amp;aacute;ng ch&amp;uacute; &amp;yacute;. Mọi nh&amp;agrave; trong thị trấn n&amp;agrave;y đều được ph&amp;aacute;t một m&amp;aacute;y thu ph&amp;aacute;t thanh như thế n&amp;agrave;y, để v&amp;iacute; dụ c&amp;oacute; những th&amp;ocirc;ng b&amp;aacute;o kiểu kế hoạch n&amp;agrave;y nọ, hoặc b&amp;atilde;o tuyết, hoặc h&amp;ocirc;m qua c&amp;oacute; em b&amp;eacute; n&amp;agrave;o vừa ch&amp;agrave;o đời chẳng hạn. Thỉnh thoảng c&amp;oacute; thể l&amp;agrave; c&amp;aacute;o ph&amp;oacute; cho tang lễ của ai đ&amp;oacute;&amp;hellip; Chung quy lại, tất cả những sự kiện d&amp;ugrave; lớn hay nhỏ g&amp;igrave; đều được th&amp;ocirc;ng b&amp;aacute;o tr&amp;ecirc;n đ&amp;agrave;i ph&amp;aacute;t thanh n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ng&amp;agrave;y 20 th&amp;aacute;ng sau sẽ l&amp;agrave; ng&amp;agrave;y tuyển cử trưởng th&amp;ocirc;n của l&amp;agrave;ng, hội đồng bầu cử Itomori xin được th&amp;ocirc;ng b&amp;aacute;o&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Rột một c&amp;aacute;i.&lt;/p&gt;

&lt;p&gt;Tất cả ch&amp;igrave;m trong im lặng.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;C&amp;aacute;i loa vốn thiết kế để kh&amp;ocirc;ng ai thể tắt được. Nhưng b&amp;agrave; t&amp;ocirc;i th&amp;igrave; chỉ đơn giản r&amp;uacute;t phứt d&amp;acirc;y điện ra. B&amp;agrave; l&amp;atilde;o ngo&amp;agrave;i t&amp;aacute;m mươi tuổi, lu&amp;ocirc;n mặc &amp;aacute;o kimono truyền thống, &amp;iacute;t n&amp;oacute;i nhưng lu&amp;ocirc;n tiềm ẩn một c&amp;aacute;i g&amp;igrave; đ&amp;oacute; v&amp;ocirc; c&amp;ugrave;ng uy nghi&amp;ecirc;m v&amp;agrave; đ&amp;aacute;ng sợ, lu&amp;ocirc;n h&amp;agrave;nh động một c&amp;aacute;ch dứt kho&amp;aacute;t. &amp;ldquo;Ngầu thiệt&amp;rdquo;, vừa nghĩ t&amp;ocirc;i vừa vươn tay lấy c&amp;aacute;i điều khiển bật ti vi l&amp;ecirc;n. Tr&amp;aacute;i ngược với &amp;acirc;m thanh đ&amp;aacute;ng sợ của chị g&amp;aacute;i Sayaka, th&amp;igrave; c&amp;ocirc; g&amp;aacute;i dẫn chương tr&amp;igrave;nh của đ&amp;agrave;i NHK n&amp;agrave;y n&amp;oacute;i với một giọng rất dễ thương.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;acirc;y l&amp;agrave; một chuyến viếng thăm hiếm hoi của một h&amp;agrave;nh tr&amp;igrave;nh một ngh&amp;igrave;n hai trăm năm của ng&amp;ocirc;i sao chổi n&amp;agrave;y, v&amp;acirc;ng cuối th&amp;aacute;ng n&amp;agrave;y chỉ c&amp;ograve;n v&amp;agrave;i ng&amp;agrave;y nữa tất cả sẽ được chứng kiến một hiện tượng k&amp;igrave; vĩ nhất. JAXA với tư c&amp;aacute;ch cơ quan đầu ti&amp;ecirc;n chịu tr&amp;aacute;ch nhiệm về kh&amp;ocirc;ng gian đang ho&amp;agrave;n tất qu&amp;aacute; tr&amp;igrave;nh quan s&amp;aacute;t thi&amp;ecirc;n thể khi n&amp;oacute; tiếp cận gần tr&amp;aacute;i đất&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;M&amp;agrave;n h&amp;igrave;nh đang hiện l&amp;ecirc;n h&amp;igrave;nh ảnh của sao chổi Tiamate với d&amp;ograve;ng chữ nổi bật : chỉ c&amp;ograve;n 1 th&amp;aacute;ng nữa. Bỗng nhi&amp;ecirc;n kh&amp;ocirc;ng kh&amp;iacute; trở n&amp;ecirc;n im lặng, kh&amp;ocirc;ng ai n&amp;oacute;i với ai điều g&amp;igrave;, cả ba lặng lẽ ăn cho xong bữa cơm s&amp;aacute;ng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chị c&amp;oacute; thể th&amp;ocirc;i đi kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đột nhi&amp;ecirc;n, Yotsuba cất lời như thể hiểu ra c&amp;aacute;i nguy&amp;ecirc;n nh&amp;acirc;n của sự im lặng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chuyện của người lớn, đừng xen v&amp;agrave;o&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đ&amp;uacute;ng vậy, đ&amp;oacute; l&amp;agrave; chuyện của người lớn. C&amp;aacute;i g&amp;igrave; m&amp;agrave; bầu với chả cử cơ chứ.&lt;/p&gt;

&lt;p&gt;Phi phi bi&amp;hellip;. Một tiếng động ngu ngốc n&amp;agrave;o đ&amp;oacute; từ đ&amp;acirc;u đ&amp;oacute; vang ra, h&amp;oacute;a ra đ&amp;oacute; l&amp;agrave; tiếng của c&amp;aacute;nh cửa nh&amp;agrave; đ&amp;atilde; qu&amp;aacute; cũ. &amp;ldquo;Con đi học đ&amp;acirc;y&amp;rdquo;, t&amp;ocirc;i cất lời lớn như để b&amp;aacute;o cho người b&amp;agrave; đang ngồi trong nh&amp;agrave;. T&amp;ocirc;i c&amp;ugrave;ng với Yotsuba, nhanh ch&amp;oacute;ng rời khỏi bậc thềm ph&amp;ograve;ng kh&amp;aacute;ch.&lt;/p&gt;

&lt;p&gt;Ph&amp;iacute;a b&amp;ecirc;n ngo&amp;agrave;i, tiếng chim h&amp;oacute;t r&amp;eacute;o rắt.&lt;/p&gt;

&lt;p&gt;Con đường d&amp;agrave;i ngoằn ngh&amp;egrave;o, tạo bởi những bậc thang bằng sỏi đ&amp;aacute; b&amp;aacute;m vắt vẻo tr&amp;ecirc;n những con dốc n&amp;uacute;i, tạo th&amp;agrave;nh những vệt bạc mờ mờ như những sợi chỉ đang ngoằn ngh&amp;egrave;o. &amp;Aacute;nh b&amp;igrave;nh minh chiếu rọi c&amp;agrave;ng l&amp;agrave;m cho những con đường đ&amp;oacute; trở n&amp;ecirc;n nổi bật. Những sợi chỉ đ&amp;oacute; cuối c&amp;ugrave;ng đều dẫn tới một c&amp;aacute;i hồ ở ch&amp;iacute;nh giữa thị trấn, được bao bọc một c&amp;aacute;ch cẩn thận lại bằng những d&amp;atilde;y n&amp;uacute;i tr&amp;ugrave;ng điệp, khiến khung cảnh trở n&amp;ecirc;n m&amp;ecirc; hoặc một c&amp;aacute;ch k&amp;igrave; lạ.&lt;/p&gt;

&lt;p&gt;Khung cảnh mở ra như trong phần mở đầu của một t&amp;aacute;c phẩm điện ảnh n&amp;agrave;o đ&amp;oacute; thời cổ xưa, c&amp;oacute; lẽ l&amp;agrave; từ thời Chi&amp;ecirc;u H&amp;ograve;a. V&amp;agrave; chị em ch&amp;uacute;ng t&amp;ocirc;i, đang sống ở đấy.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Mi-tsuhaaaaaa&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Ngay sau khi chia tay Yotsuba để đi về hướng trường học của m&amp;igrave;nh, một giọng n&amp;oacute;i bất th&amp;igrave;nh th&amp;igrave;nh vang l&amp;ecirc;n sau lưng t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; l&amp;agrave; giọng n&amp;oacute;i của Teshi đang v&amp;ocirc; tư thả dốc bằng con xe đạp của m&amp;igrave;nh, ngồi ph&amp;iacute;a sau lấp l&amp;oacute; khu&amp;ocirc;n mặt của Saya, cũng l&amp;agrave; một người bạn th&amp;acirc;n thiết của t&amp;ocirc;i. C&amp;ocirc; b&amp;eacute; đang c&amp;agrave;u nh&amp;agrave;u với Tesshi &amp;ldquo;&amp;Ocirc;ng l&amp;uacute;c n&amp;agrave;o cũng lao xuống nhanh qu&amp;aacute;, nguy hiểm lắm&amp;rdquo; v&amp;agrave; cậu sẽ đ&amp;aacute;p lại kiểu &amp;ldquo;cứ ngồi im đi&amp;rdquo; hoặc l&amp;agrave; &amp;ldquo;tại v&amp;igrave; nặng qu&amp;aacute; đ&amp;oacute; m&amp;agrave;&amp;rdquo;. V&amp;agrave; c&amp;aacute;i khung cảnh n&amp;agrave;y, hầu như lặp đi lặp lại mỗi ng&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo; Hai người, th&amp;acirc;n thiết gh&amp;ecirc; đ&amp;oacute; nhỉ&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Th&amp;acirc;n c&amp;aacute;i con khỉ mốc&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Cả hai đồng thanh phản b&amp;aacute;c lại. C&amp;aacute;i kiểu phủ định một c&amp;aacute;ch rất nghi&amp;ecirc;m t&amp;uacute;c đ&amp;oacute;, chẳng hiểu v&amp;igrave; sao l&amp;agrave;m cho t&amp;ocirc;i bật cười. Cả ba ch&amp;uacute;ng t&amp;ocirc;i l&amp;agrave; bạn th&amp;acirc;n của nhau hơn mười năm nay. V&amp;agrave; l&amp;uacute;c n&amp;agrave;o, ch&amp;uacute;ng t&amp;ocirc;i cũng gặp nhau như thế n&amp;agrave;y, v&amp;agrave; bắt đầu một ng&amp;agrave;y mới như vậy. Mặc d&amp;ugrave; c&amp;oacute; l&amp;uacute;c t&amp;ocirc;i nghĩ, thực ra ch&amp;uacute;ng t&amp;ocirc;i cũng chẳng tới mức hợp nhau như vậy.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Mitsuha, h&amp;ocirc;m nay rốt cuộc b&amp;agrave; cũng buộc t&amp;oacute;c đ&amp;agrave;ng ho&amp;agrave;ng trở lại.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Saya, vẫn đang y&amp;ecirc;n vị ở y&amp;ecirc;n &amp;nbsp;sau xe tận hưởng cảm gi&amp;aacute;c thả dốc, liếc nh&amp;igrave;n d&amp;acirc;y buộc t&amp;oacute;c của t&amp;ocirc;i v&amp;agrave; n&amp;oacute;i một c&amp;aacute;ch kh&amp;oacute; hiểu.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Sao, t&amp;oacute;c th&amp;igrave; sao cơ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;M&amp;agrave; n&amp;oacute;i như vậy, th&amp;igrave; h&amp;igrave;nh như s&amp;aacute;ng nay, t&amp;ocirc;i cũng được Yotsuba n&amp;oacute;i về c&amp;aacute;i g&amp;igrave; đ&amp;oacute; cũng li&amp;ecirc;n quan tới t&amp;oacute;c tai, chẳng lẽ h&amp;ocirc;m qua c&amp;oacute; chuyện g&amp;igrave; rất buồn cười đ&amp;atilde; xảy ra sao? T&amp;ocirc;i đang cố gắng nhớ lại những k&amp;iacute; ức của ng&amp;agrave;y h&amp;ocirc;m qua&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ừ, đừng n&amp;oacute;i l&amp;agrave; b&amp;agrave; đang bị b&amp;agrave; ngoại trấn b&amp;ugrave;a nh&amp;eacute;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Trấn b&amp;ugrave;a?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nếu thế th&amp;igrave; v&amp;atilde;i rồi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hả&amp;rdquo; Đột nhi&amp;ecirc;n t&amp;ocirc;i kh&amp;ocirc;ng biết phải d&amp;ugrave;ng từ ngữ n&amp;agrave;o để trả lời cả. C&amp;ograve;n Saya-chan th&amp;igrave; đang lộ vẻ cực k&amp;igrave; quan t&amp;acirc;m tới mức c&amp;oacute; phần hơi lo lắng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tại sao cậu lại như đang giấu diếm chuyện g&amp;igrave; vậy? Chắc chắn l&amp;agrave; cậu đang bị stress rồi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Stress?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Khoan đ&amp;atilde;, hai người đang n&amp;oacute;i chuyện g&amp;igrave; vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Tự nhi&amp;ecirc;n cả hai bỗng trở n&amp;ecirc;n lo lắng cho t&amp;ocirc;i, ng&amp;agrave;y h&amp;ocirc;m qua, thực sự t&amp;ocirc;i kh&amp;ocirc;ng thể nhớ r&amp;otilde; r&amp;agrave;ng lắm, nhưng chắc chắn đ&amp;oacute; l&amp;agrave; một ng&amp;agrave;y rất b&amp;igrave;nh thường. T&amp;ocirc;i đoan chắc l&amp;agrave; như vậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;V&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; hơn điều đ&amp;oacute;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Những nghi vấn trong đầu t&amp;ocirc;i lập tức bị x&amp;oacute;a tan bởi &amp;acirc;m thanh được khuếch đại vang l&amp;ecirc;n từ xa. T&amp;ocirc;i ngước nh&amp;igrave;n vị tr&amp;iacute; ph&amp;aacute;t ra nguồn &amp;acirc;m, đ&amp;oacute; l&amp;agrave; t&amp;ograve;a nh&amp;agrave; h&amp;agrave;nh ch&amp;iacute;nh của thị trấn. Giữa b&amp;atilde;i đậu xe c&amp;oacute; phần rộng một c&amp;aacute;ch thừa th&amp;atilde;i, người ta đ&amp;atilde; dựng l&amp;ecirc;n một c&amp;aacute;i bậc cao v&amp;agrave; đặt tr&amp;ecirc;n đ&amp;oacute; một c&amp;aacute;i micro c&amp;ugrave;ng hai d&amp;agrave;n loa. Đứng giữa s&amp;acirc;n khấu ấy, l&amp;agrave; một người cao lớn c&amp;oacute; khu&amp;ocirc;n mặt nghi&amp;ecirc;m nghị. Đ&amp;oacute; l&amp;agrave; cha t&amp;ocirc;i. &amp;Ocirc;ng mặc bộ vest nghi&amp;ecirc;m chỉnh, ph&amp;iacute;a tr&amp;ecirc;n t&amp;uacute;i &amp;aacute;o ngực đ&amp;iacute;nh ngay ngắn một tấm thẻ ghi r&amp;otilde; r&amp;agrave;ng t&amp;ecirc;n của &amp;ocirc;ng: Miyamizu Toshiki. &amp;Ocirc;ng đang diễn thuyết để tranh chức trưởng thị trấn cho lần bầu cử n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hơn tất cả, t&amp;ocirc;i muốn tiếp tục ph&amp;aacute;t triển những nghề truyền thống của l&amp;agrave;ng, v&amp;agrave; để l&amp;agrave;m được điều đ&amp;oacute;, cần phải hợp t&amp;aacute;c x&amp;atilde; h&amp;oacute;a to&amp;agrave;n bộ những vật tư của l&amp;agrave;ng. V&amp;agrave; cần phải thực hiện điều đ&amp;oacute; đầu ti&amp;ecirc;n, để c&amp;oacute; thể tạo ra sự ổn định cho ph&amp;aacute;t triển. Với tư c&amp;aacute;ch l&amp;agrave; trưởng thị trấn của nhiệm k&amp;igrave; trước, t&amp;ocirc;i đ&amp;atilde; cố gắng hết sức để ph&amp;aacute;t triển l&amp;agrave;ng cho tới l&amp;uacute;c n&amp;agrave;y, nhưng t&amp;ocirc;i vẫn muốn tiếp tục tiến xa hơn, để cho tất cả trẻ con cũng như người gi&amp;agrave; trong l&amp;agrave;ng c&amp;oacute; được cuộc sống ổn định ấm no hơn. Với sứ mệnh đ&amp;oacute;, t&amp;ocirc;i sẽ tiếp tục đổi mới cũng như củng cố năng lực của m&amp;igrave;nh&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;B&amp;agrave;i diễn thuyết đầy thuyết phục. Giống như những ch&amp;iacute;nh trị gia vẫn thường xuất hiện tr&amp;ecirc;n truyền h&amp;igrave;nh vậy. Nhưng đ&amp;aacute;ng tiếc, khung cảnh lại kh&amp;ocirc;ng được như &amp;yacute; lắm khi thay v&amp;igrave; l&amp;agrave; những th&amp;iacute;nh giả, th&amp;igrave; xung quanh s&amp;acirc;n khấu lại bị bao v&amp;acirc;y bởi c&amp;acirc;y cối, n&amp;uacute;i rừng v&amp;agrave; ruộng l&amp;uacute;a. T&amp;ocirc;i chẳng mấy hứng th&amp;uacute; lắm, bởi kiểu g&amp;igrave; th&amp;igrave; cha t&amp;ocirc;i cũng sẽ t&amp;aacute;i đắc cử. Nhưng t&amp;ocirc;i cố gắng giấu c&amp;aacute;i sự ch&amp;aacute;n chường đ&amp;oacute; đi.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Ocirc; k&amp;igrave;a, miyamizu-san&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;.Ch&amp;agrave;o buổi s&amp;aacute;ng&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Cực k&amp;igrave; tệ hại rồi.&lt;/p&gt;

&lt;p&gt;Một nh&amp;oacute;m ba người bạn học c&amp;ugrave;ng trường từ đ&amp;acirc;u xuất hiện cất tiếng gọi t&amp;ocirc;i. Cho d&amp;ugrave; ở trong trường cao trung m&amp;agrave; vốn chẳng c&amp;oacute; mấy học sinh, nhưng ch&amp;uacute;ng t&amp;ocirc;i vẫn chơi theo từng nh&amp;oacute;m ri&amp;ecirc;ng biệt, v&amp;agrave; mỗi khi c&amp;oacute; chuyện g&amp;igrave; đ&amp;oacute; li&amp;ecirc;n quan tới những quyết s&amp;aacute;ch của trong l&amp;agrave;ng m&amp;agrave; vốn kh&amp;ocirc;ng được đồng thuận, th&amp;igrave; đ&amp;aacute;m học sinh c&amp;ugrave;ng trường lại n&amp;eacute;m c&amp;aacute;i nh&amp;igrave;n đầy vẻ o&amp;aacute;n gh&amp;eacute;t v&amp;agrave;o đ&amp;aacute;m bọn t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Về vấn đề trưởng th&amp;ocirc;n, v&amp;agrave; c&amp;aacute;c cơ sở th&amp;igrave;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Một người đ&amp;agrave;n &amp;ocirc;ng sau khi chăm ch&amp;uacute; nghe lời diễn thuyết của cha t&amp;ocirc;i bỗng nhi&amp;ecirc;n l&amp;ecirc;n tiếng. &amp;Ocirc;ng ta ch&amp;iacute;nh l&amp;agrave; cha của Tessi, đang đứng b&amp;ecirc;n cạnh cha t&amp;ocirc;i v&amp;agrave; cười với một vẻ mặt đầy đắc &amp;yacute;. Tr&amp;ecirc;n t&amp;uacute;i &amp;aacute;o &amp;ocirc;ng đ&amp;iacute;nh một dải ruy băng nhỏ viết &amp;ldquo;ủng hộ ng&amp;agrave;i&amp;nbsp; Miyamizu&amp;rdquo;. Từ đằng xa, ch&amp;uacute;ng t&amp;ocirc;i vẫn tiếp tục quan s&amp;aacute;t b&amp;agrave;i ph&amp;aacute;t biểu của cha Tessi.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Mấy c&amp;ocirc; cậu ở ph&amp;iacute;a kia giờ n&amp;agrave;y c&amp;ograve;n tụ tập l&amp;agrave;m g&amp;igrave; vậy? Kh&amp;ocirc;ng đi học đi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i giật th&amp;oacute;t cả m&amp;igrave;nh khi bỗng nhi&amp;ecirc;n bị ch&amp;uacute; &amp;yacute;. T&amp;ocirc;i kh&amp;ocirc;ng d&amp;aacute;m nh&amp;igrave;n về ph&amp;iacute;a hội trường nữa, giả tảng như kh&amp;ocirc;ng nghe thấy v&amp;agrave; t&amp;igrave;m c&amp;aacute;ch rảo bước đi thật nhanh để tr&amp;aacute;nh xa khỏi những c&amp;aacute;i nh&amp;igrave;n đang ngo&amp;aacute;i lại t&amp;igrave;m hiểu nguy&amp;ecirc;n nh&amp;acirc;n của c&amp;acirc;u n&amp;oacute;i tr&amp;ecirc;n loa ph&amp;oacute;ng thanh vừa rồi. Saya-chan, tr&amp;ocirc;ng c&amp;oacute; vẻ đang v&amp;ocirc; c&amp;ugrave;ng bối rối vội v&amp;atilde; chạy theo t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Mitsuha&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đột nhi&amp;ecirc;n c&amp;oacute; tiếng gọi t&amp;ecirc;n t&amp;ocirc;i vang l&amp;ecirc;n, trong một khoảnh khắc tim t&amp;ocirc;i như ngừng đập, kh&amp;ocirc;ng thể tin nổi, nguời cha đang diễn thuyết say sưa bỗng nhi&amp;ecirc;n hạ micro xuống v&amp;agrave; cất giọng hướng về ph&amp;iacute;a ch&amp;uacute;ng t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Mitsuha, kh&amp;ocirc;ng được thả ngực m&amp;agrave; chạy như thế&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đỏ mặt t&amp;iacute;a tai, kh&amp;ocirc;ng hiểu sao, tự nhi&amp;ecirc;n nước mắt t&amp;ocirc;i lại tr&amp;agrave;o ra.&lt;/p&gt;

&lt;p&gt;Thật l&amp;agrave; tồi tệ. Bằng những sải bước thật d&amp;agrave;i, t&amp;ocirc;i cố gắng tho&amp;aacute;t khỏi chốn đấy. &amp;ldquo;Với con g&amp;aacute;i m&amp;agrave; nghi&amp;ecirc;m khắc dữ ta&amp;rdquo;, &amp;ldquo;Qủa đ&amp;uacute;ng kh&amp;iacute; chất của nh&amp;agrave; l&amp;atilde;nh đạo đ&amp;oacute; chứ&amp;rdquo;. Những c&amp;acirc;u b&amp;igrave;nh phẩm đại loại như vậy cứ tr&amp;ocirc;i qua tai khi t&amp;ocirc;i vụt qua đ&amp;aacute;m đ&amp;ocirc;ng đ&amp;oacute;. Dường như đ&amp;aacute;m bạn cũng đang x&amp;igrave; x&amp;agrave;o b&amp;agrave;n t&amp;aacute;n đằng sau lưng: &amp;ldquo;&amp;Ocirc;i ch&amp;agrave;, tội nghiệp nhỏ qu&amp;aacute;&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;Thật tồi tệ.&lt;/p&gt;

&lt;p&gt;Tiếng nhạc cổ động r&amp;eacute;o rắt từ chỗ đ&amp;aacute;m đ&amp;ocirc;ng dần dần lắng xuống, v&amp;agrave; cho tới khi mọi &amp;acirc;m thanh trở n&amp;ecirc;n lặng ngắt, th&amp;igrave; t&amp;ocirc;i nhận ra ng&amp;ocirc;i l&amp;agrave;ng n&amp;agrave;y chỉ l&amp;agrave; một nơi kh&amp;ocirc;ng đ&amp;aacute;ng sống.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cạch cạch cạch&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;Acirc;m thanh từ tấm bảng đen lại vang l&amp;ecirc;n, h&amp;igrave;nh như tr&amp;ecirc;n đ&amp;oacute; đang viết một b&amp;agrave;i thơ, hay đoản ca g&amp;igrave; đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Xin ai đừng vấn hỏi, t&amp;ocirc;i đang ở chốn n&amp;agrave;o&lt;/p&gt;

&lt;p&gt;Lặng dưới cơn mưa ng&amp;acirc;u, chờ người thương m&amp;ograve;n mỏi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chữ ai, đ&amp;acirc;y l&amp;agrave; một từ cổ c&amp;aacute;c em nh&amp;eacute;, n&amp;oacute; ch&amp;iacute;nh bắt nguồn từ chữ chạng vạng. C&amp;aacute;c em biết thời điểm chạng vạng chứ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; gi&amp;aacute;o Yuki cất giọng du dương như vậy v&amp;agrave; hỏi ch&amp;uacute;ng t&amp;ocirc;i, vừa hỏi c&amp;ocirc; vừa viết thật to chữ &amp;ldquo;Xin ai&amp;rdquo; l&amp;ecirc;n bảng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;L&amp;agrave; thời điểm m&amp;agrave; kh&amp;ocirc;ng hẳn l&amp;agrave; trời đ&amp;atilde; tối, cũng kh&amp;ocirc;ng phải l&amp;agrave; trời đ&amp;atilde; s&amp;aacute;ng. Thời điểm v&amp;ograve;ng lu&amp;acirc;n hồi của con người trở th&amp;agrave;nh một nhịp. Người đ&amp;agrave;n &amp;ocirc;ng ấy, đ&amp;atilde; khiến Ai trở n&amp;ecirc;n kh&amp;ocirc;ng thể hiểu được nỗi niềm. Đ&amp;oacute; l&amp;agrave; thời điểm m&amp;agrave; c&amp;oacute; thể con người sẽ gặp những thứ k&amp;igrave; lạ, như hồn ma người chết, hay y&amp;ecirc;u qu&amp;aacute;i. Ch&amp;iacute;nh v&amp;igrave; thế đ&amp;oacute; l&amp;agrave; thời điểm &amp;ldquo;K&amp;igrave; ngộ&amp;rdquo;. Xưa hơn nữa, cũng c&amp;oacute; những người gọi đ&amp;acirc;y l&amp;agrave; thời gian của mộ, hay biến &amp;acirc;m đi một ch&amp;uacute;t.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Yuki-chan sensei, lần n&amp;agrave;y c&amp;ocirc; viết th&amp;ecirc;m nhiều dị bản của chữ h&amp;aacute;n &amp;ldquo; Chạng vạng&amp;rdquo; l&amp;ecirc;n bảng đen. Chữ g&amp;igrave; thế n&amp;agrave;y? T&amp;ocirc;i bất gi&amp;aacute;c tự hỏi.&lt;/p&gt;

&lt;p&gt;Bỗng c&amp;oacute; tiếng ai đ&amp;oacute; cất l&amp;ecirc;n từ dưới.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Seiseiii, l&amp;agrave; c&amp;acirc;u hỏi ạ. Vậy c&amp;oacute; c&amp;aacute;i gọi l&amp;agrave; thời gian &amp;ldquo;đi nửa&amp;rdquo; kh&amp;ocirc;ng ạ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Dĩ nhi&amp;ecirc;n l&amp;agrave; t&amp;ocirc;i hiểu c&amp;acirc;u hỏi đ&amp;oacute;, từ khi c&amp;ograve;n nhỏ, t&amp;ocirc;i đ&amp;atilde; được dạy khi n&amp;oacute;i về buổi chiều, tức l&amp;agrave; thời gian đ&amp;atilde; đi được &amp;ldquo;một nửa&amp;rdquo;. Yuki sensei nghe xong c&amp;acirc;u hỏi, c&amp;ocirc; bỗng nở một nụ cười dịu d&amp;agrave;ng v&amp;agrave; kh&amp;oacute; hiểu.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; n&amp;oacute;i tới kh&amp;oacute; hiểu, cũng quả l&amp;agrave; k&amp;igrave; lạ khi ở l&amp;agrave;ng qu&amp;ecirc; hẻo l&amp;aacute;nh n&amp;agrave;y, trong ng&amp;ocirc;i trường b&amp;eacute; x&amp;iacute;u n&amp;agrave;y, lại c&amp;oacute; một người dạy văn cổ điển xinh đẹp như Yuki sensei.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;oacute; l&amp;agrave; từ địa phương em ạ. Ở đ&amp;acirc;y, từ những người cao tuổi, c&amp;ograve;n rất rất nhiều từ địa phương được lưu truyền lại.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hiển nhi&amp;ecirc;n rồi, v&amp;igrave; đ&amp;acirc;y l&amp;agrave; v&amp;ugrave;ng qu&amp;ecirc; m&amp;agrave;&amp;rdquo;. C&amp;oacute; ai đ&amp;oacute;&amp;nbsp;bỗng n&amp;oacute;i leo . K&amp;eacute;o theo một tr&amp;agrave;ng cười rần rần của cả lớp.&lt;/p&gt;

&lt;p&gt;Đ&amp;uacute;ng thật vậy, thỉnh thoảng b&amp;agrave; t&amp;ocirc;i cũng n&amp;oacute;i nhiều khi khiến t&amp;ocirc;i phải thốt l&amp;ecirc;n: tiếng g&amp;igrave; vậy? Một thứ &amp;acirc;m thanh c&amp;oacute; t&amp;iacute;nh chất ng&amp;ocirc;n ngữ để truyền đạt &amp;agrave;? Thỉnh thoảng b&amp;agrave; t&amp;ocirc;i c&amp;ograve;n thậm xưng &amp;ldquo;l&amp;atilde;o&amp;rdquo; với đ&amp;aacute;m trẻ con nữa mới buồn cười. Vẩn vơ những suy nghĩ như thế trong đầu, t&amp;ocirc;i liếc nh&amp;igrave;n xuống trang vở. Trang giấy trắng kh&amp;ocirc;ng hiểu sao lại bị lấp bởi d&amp;ograve;ng chữ to v&amp;agrave; th&amp;ocirc;, như thể ai đ&amp;oacute; kh&amp;ocirc;ng phải t&amp;ocirc;i viết l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;&lt;strong&gt;&amp;ldquo;Cậu l&amp;agrave; ai vậy?&amp;rdquo;&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;

&lt;p&gt;Ơ&amp;hellip;&lt;/p&gt;

&lt;p&gt;C&amp;aacute;i g&amp;igrave; thế n&amp;agrave;y?&lt;/p&gt;

&lt;p&gt;B&amp;uacute;t t&amp;iacute;ch n&amp;agrave;y ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc;ng phải l&amp;agrave; do t&amp;ocirc;i viết, v&amp;agrave; trong l&amp;uacute;c đăm chi&amp;ecirc;u suy nghĩ, tiếng l&amp;agrave;o r&amp;agrave;o xung quanh t&amp;ocirc;i dường như được k&amp;eacute;o d&amp;atilde;n ra từ nơi rất xa x&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Ơ lạ nhỉ, &amp;ldquo;Cậu l&amp;agrave; ai&amp;hellip;&amp;rdquo; nghĩa l&amp;agrave; g&amp;igrave; ?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;. Tiếp theo, xin mời Miyamizu&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Dạ v&amp;acirc;ng&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i lập cập đứng l&amp;ecirc;n ng&amp;aacute;o ng&amp;aacute;c, khiến Yuki-sensei nh&amp;igrave;n với một vẻ mặt k&amp;igrave; lạ, rồi đ&amp;agrave;nh nhắc t&amp;ocirc;i h&amp;atilde;y đọc nốt những g&amp;igrave; c&amp;ograve;n lại ở trang ch&amp;iacute;n mươi t&amp;aacute;m.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y Miyamizu-san, h&amp;ocirc;m nay em c&amp;oacute; nhớ t&amp;ecirc;n em l&amp;agrave; g&amp;igrave; kh&amp;ocirc;ng vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ngay lập tức cả lớp cười nghi&amp;ecirc;ng ngả. Ha&amp;hellip;Hả&amp;hellip;? C&amp;aacute;i qu&amp;aacute;i g&amp;igrave; vậy? C&amp;oacute; chuyện g&amp;igrave; vậy?&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;B&amp;agrave; kh&amp;ocirc;ng nhớ g&amp;igrave; &amp;agrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;ừa&amp;hellip; Kh&amp;ocirc;ng nhớ g&amp;igrave; cả&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thật kh&amp;ocirc;ng đ&amp;oacute;?&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i bảo rồi c&amp;ograve;n g&amp;igrave;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Trả lời một c&amp;aacute;ch kh&amp;oacute; chịu, t&amp;ocirc;i uống một ngụm nước tr&amp;aacute;i c&amp;acirc;y. Ồ, ngon thế? Nước g&amp;igrave; vậy, nước chuối &amp;agrave;? T&amp;ocirc;i nh&amp;igrave;n c&amp;aacute;i lon nước. L&amp;uacute;c n&amp;agrave;y, Saya-chan nh&amp;igrave;n t&amp;ocirc;i như thể nh&amp;igrave;n một thứ đồ g&amp;igrave; đ&amp;oacute; ngộ nghĩnh lắm.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;L&amp;agrave; tại v&amp;igrave;, b&amp;agrave; h&amp;ocirc;m qua, qu&amp;ecirc;n cả b&amp;agrave;n m&amp;igrave;nh ngồi, qu&amp;ecirc;n lu&amp;ocirc;n cả tủ gi&amp;agrave;y của m&amp;igrave;nh nữa. T&amp;oacute;c tai th&amp;igrave; b&amp;ugrave; x&amp;ugrave; như kiểu từ tr&amp;ecirc;n giường b&amp;agrave; chạy thẳng tới trường lu&amp;ocirc;n vậy. Khăn qu&amp;agrave;ng cổ thậm ch&amp;iacute; c&amp;ograve;n kh&amp;ocirc;ng thắt lu&amp;ocirc;n nữa. V&amp;agrave; b&amp;agrave; cứ ng&amp;aacute;o ngơ như thế suốt.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cố tưởng tượng ra c&amp;aacute;i bộ dạng ấy như m&amp;ocirc; tả.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hả&amp;hellip;.trời&amp;hellip;, c&amp;aacute;i đ&amp;oacute; l&amp;agrave; thật &amp;agrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Ocirc;i c&amp;aacute;i g&amp;igrave;, chả lẽ k&amp;iacute; ức của Mitsuha ng&amp;agrave;y h&amp;ocirc;m qua bị ai đ&amp;oacute; x&amp;oacute;a mất rồi &amp;agrave;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i hoang mang cố gắng nhớ lại. R&amp;otilde; r&amp;agrave;ng l&amp;agrave; c&amp;oacute; c&amp;aacute;i g&amp;igrave; đ&amp;oacute; kh&amp;ocirc;ng b&amp;igrave;nh thường. Tất cả k&amp;iacute; ức ng&amp;agrave;y h&amp;ocirc;m qua t&amp;ocirc;i tuyệt nhi&amp;ecirc;n kh&amp;ocirc;ng thể nhớ được g&amp;igrave; cả.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;Agrave;, m&amp;agrave; đ&amp;oacute; l&amp;agrave; th&amp;agrave;nh phố n&amp;agrave;o ấy nhỉ?&lt;/p&gt;

&lt;p&gt;Một c&amp;aacute;i g&amp;igrave; đ&amp;oacute; tho&amp;aacute;ng qua&amp;hellip;Một cậu con trai?&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cố gắng lần theo những k&amp;iacute; ức. Nhưng tiếng chu&amp;ocirc;ng v&amp;agrave;o giờ đ&amp;atilde; vang l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;Ch&amp;uacute;ng t&amp;ocirc;i mau ch&amp;oacute;ng dọn những hộp nước tr&amp;aacute;i c&amp;acirc;y b&amp;agrave;y biện ra từ l&amp;uacute;c n&amp;atilde;y.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ừ, như kiểu t&amp;ocirc;i c&amp;oacute; cảm giấc l&amp;agrave; t&amp;ocirc;i c&amp;oacute; một giấc mơ giống nhau vậy. Đ&amp;oacute; kiểu như, cuộc sống của một nam sinh, ừ, mơ, m&amp;agrave; t&amp;ocirc;i cũng kh&amp;ocirc;ng thể nhớ được&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;.Uhm, t&amp;ocirc;i hiểu rồi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đột nhi&amp;ecirc;n Tessie la l&amp;ecirc;n một tiếng thật lớn khiến t&amp;ocirc;i giật nảy người. Cậu ta d&amp;iacute; cuốn tạp ch&amp;iacute; Move, cuốn tạp ch&amp;iacute; đề t&amp;agrave;i về những điều huyền b&amp;iacute; m&amp;agrave; hắn đang say sưa đọc từ n&amp;atilde;y v&amp;agrave;o s&amp;aacute;t mũi ch&amp;uacute;ng t&amp;ocirc;i. Hắn vừa n&amp;oacute;i, nước bọt bay l&amp;egrave;o ph&amp;egrave;o:&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;eacute;y gọi l&amp;agrave; k&amp;iacute; ức từ tiền kiếp . C&amp;eacute;i n&amp;agrave;y, kh&amp;ocirc;ng pheỉ l&amp;agrave; khoa học. N&amp;oacute;i seo cho dễ hỉu nhỉ? Dựa v&amp;agrave;o giải th&amp;iacute;ch về thuyết đa thế giới của Elbert, tui sẽ cố gắng thuyết minh cho dễ hiểu về sự kế tục của &amp;yacute; thức&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Th&amp;ocirc;i &amp;ocirc;ng im d&amp;ugrave;m t&amp;ocirc;i được kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Saya- chan ngay lập tức quặc lại Tessie. C&amp;ograve;n t&amp;ocirc;i, chợt nhận ra điều g&amp;igrave; đ&amp;oacute;, cũng la l&amp;ecirc;n: &amp;ldquo;Chẳng lẽ &amp;ocirc;ng ch&amp;iacute;nh l&amp;agrave; người viết bậy l&amp;ecirc;n vở của t&amp;ocirc;i &amp;agrave; ?&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Viết..g&amp;igrave; cơ?&amp;rdquo; Tessie nh&amp;iacute;u m&amp;agrave;y hỏi lại.&lt;/p&gt;

&lt;p&gt;Chẳng lẽ kh&amp;ocirc;ng phải &amp;agrave;? Thực ra Tessie cũng chẳng phải l&amp;agrave; loại hay b&amp;agrave;y tr&amp;ograve; nghịch ngợm với người kh&amp;aacute;c như vậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Agrave; kh&amp;ocirc;ng, kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; đ&amp;acirc;u&amp;rdquo; T&amp;ocirc;i sửa lại.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;G&amp;igrave; chứ, tại sao lại l&amp;agrave; viết bậy, b&amp;agrave; nghi ngờ t&amp;ocirc;i chuyện g&amp;igrave; sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i đ&amp;atilde; bảo l&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; rồi&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ờ, Mitsuha tồi tệ qu&amp;aacute; nh&amp;eacute;. Sayaka nghe g&amp;igrave; kh&amp;ocirc;ng? T&amp;ocirc;i cần được bảo vệ, gọi t&amp;ocirc;i cảnh s&amp;aacute;t, cảnh s&amp;aacute;t. M&amp;agrave; trường hợp n&amp;agrave;y, phải nhờ luật sư th&amp;igrave; đ&amp;uacute;ng hơn nhỉ? Theo b&amp;agrave; th&amp;igrave; n&amp;ecirc;n như thế n&amp;agrave;o?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Phớt lờ Tessie đang cố gắng pha tr&amp;ograve; nhạt thếch, Sayaka nh&amp;igrave;n chăm chăm v&amp;agrave;o ngọn cỏ ph&amp;iacute;a trước chỗ ch&amp;uacute;ng t&amp;ocirc;i ngồi v&amp;agrave; kết luận: &amp;ldquo;Nhưng đ&amp;uacute;ng l&amp;agrave; lạ thật ha, chẳng lẽ b&amp;agrave; thực sự bị stress sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cũng cảm thấy điều đ&amp;oacute;. Cố gắng tin v&amp;agrave;o những lời của hai người bạn. L&amp;uacute;c n&amp;agrave;y, Tessie lại trốn m&amp;igrave;nh v&amp;agrave;o quyển tạp ch&amp;iacute; về những điều huyền b&amp;iacute;, v&amp;agrave; tỏ vẻ chẳng c&amp;oacute; chuyện g&amp;igrave; đ&amp;atilde; xảy ra với t&amp;ocirc;i cả. Kh&amp;ocirc;ng bao giờ cố l&amp;agrave;m mọi thứ trở n&amp;ecirc;n tồi tệ hơn, lại l&amp;agrave; ưu điểm của hắn.&lt;/p&gt;

&lt;p&gt;&amp;ldquo; Kết luận, nhất định b&amp;agrave; đ&amp;atilde; bị stress. Mitsuha, dạo gần đ&amp;acirc;y mấy chuyện đau đầu nhiều lắm hả?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ờ đ&amp;uacute;ng vậy. Nhiều lắm. Kh&amp;ocirc;ng chỉ mỗi c&amp;aacute;i việc bầu cử kia, mỗi tối c&amp;ograve;n phải chuẩn bị cho mấy thủ tục cho lễ lạt. Trong ng&amp;ocirc;i l&amp;agrave;ng n&amp;agrave;y, n&amp;oacute;i g&amp;igrave; th&amp;igrave; n&amp;oacute;i, cha t&amp;ocirc;i cũng l&amp;agrave; người đứng đầu, b&amp;agrave; t&amp;ocirc;i th&amp;igrave; l&amp;agrave; thần chủ của ng&amp;ocirc;i ch&amp;ugrave;a linh thi&amp;ecirc;ng duy nhất ở đ&amp;acirc;y. T&amp;ocirc;i ấp hai tay v&amp;agrave;o mặt đăm chi&amp;ecirc;u suy nghĩ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Ocirc;i, t&amp;ocirc;i chỉ muốn mau ch&amp;oacute;ng tốt nghiệp rồi l&amp;ecirc;n Tokyo th&amp;ocirc;i. Rời khỏi ng&amp;ocirc;i l&amp;agrave;ng qu&amp;aacute; chật hẹp, qu&amp;aacute; lệ thuộc v&amp;agrave;o n&amp;ocirc;ng nghiệp n&amp;agrave;y&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Kaya-san, bằng một biểu cảm như rất rất hiểu v&amp;agrave; th&amp;ocirc;ng cảm điều đ&amp;oacute;, sốt sắng gật đầu với t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nh&amp;agrave; t&amp;ocirc;i cũng kh&amp;aacute; hơn g&amp;igrave; đ&amp;acirc;u, ba đời gia đ&amp;igrave;nh đều l&amp;agrave;m nữ ph&amp;aacute;t thanh của l&amp;agrave;ng, đến nỗi t&amp;ocirc;i ra đường cũng bị c&amp;aacute;c cụ gọi l&amp;agrave; &amp;ldquo;Chị ph&amp;aacute;t thanh vi&amp;ecirc;n&amp;rdquo; đ&amp;oacute;. Rồi kiểu g&amp;igrave; t&amp;ocirc;i cũng sẽ v&amp;agrave;o trong sở ph&amp;aacute;t thanh của l&amp;agrave;ng v&amp;agrave; tiếp tục c&amp;ocirc;ng việc của gia đ&amp;igrave;nh. T&amp;ocirc;i c&amp;ograve;n chẳng biết m&amp;igrave;nh muốn g&amp;igrave; nữa.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Sayaka-chan, vậy khi tốt nghiệp rồi, b&amp;agrave; h&amp;atilde;y c&amp;ugrave;ng t&amp;ocirc;i l&amp;ecirc;n Tokyo nh&amp;eacute;. H&amp;atilde;y t&amp;igrave;m c&amp;aacute;ch tho&amp;aacute;t khỏi nơi n&amp;agrave;y, tung đ&amp;ocirc;i c&amp;aacute;nh của tự do. N&amp;agrave;y Tessie, cũng đi c&amp;ugrave;ng bọn t&amp;ocirc;i đi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Tessie th&amp;ograve; mặt ra khỏi cuốn tạp ch&amp;iacute; huyền b&amp;iacute;, ng&amp;acirc;y người ra nh&amp;igrave;n ch&amp;uacute;ng t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Ocirc;ng, c&amp;oacute; nghe g&amp;igrave; n&amp;atilde;y giờ kh&amp;ocirc;ng vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Agrave; ừ, t&amp;ocirc;i th&amp;igrave;&amp;hellip;n&amp;oacute;i sao nhỉ, t&amp;ocirc;i nghĩ l&amp;agrave; sẽ sống cuộc sống b&amp;igrave;nh thường ở ng&amp;ocirc;i l&amp;agrave;ng n&amp;agrave;y th&amp;ocirc;i&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Cả t&amp;ocirc;i v&amp;agrave; Sayaka nh&amp;igrave;n nhau, kh&amp;ocirc;ng ai n&amp;oacute;i g&amp;igrave;, lặng lẽ thở d&amp;agrave;i. C&amp;aacute;i g&amp;atilde; n&amp;agrave;y, hắn chẳng bao giờ c&amp;oacute; một suy nghĩ g&amp;igrave; hiểu t&amp;acirc;m l&amp;yacute; con g&amp;aacute;i g&amp;igrave; cả, cứ sống đơn giản như vậy. Ờ m&amp;agrave; n&amp;oacute;i lại, t&amp;ocirc;i cũng l&amp;agrave;m g&amp;igrave; c&amp;oacute; bạn trai m&amp;agrave; hiểu t&amp;acirc;m l&amp;yacute; đ&amp;aacute;m con trai kia chứ.&lt;/p&gt;

&lt;p&gt;Một cơn gi&amp;oacute; thoảng qua trước mắt ch&amp;uacute;ng t&amp;ocirc;i, l&amp;agrave;m gợn s&amp;oacute;ng hồ nước phẳng lặng giữa l&amp;agrave;ng. Tho&amp;aacute;ng chốc, mọi thứ trở n&amp;ecirc;n thật b&amp;igrave;nh y&amp;ecirc;n một c&amp;aacute;ch k&amp;igrave; lạ.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Ng&amp;ocirc;i l&amp;agrave;ng nhỏ b&amp;eacute; n&amp;agrave;y, kh&amp;ocirc;ng c&amp;oacute; hiệu s&amp;aacute;ch, cũng chẳng c&amp;oacute; ph&amp;ograve;ng nha sĩ, t&amp;agrave;u điện th&amp;igrave; phải hai tiếng mới c&amp;oacute; lấy một chuyến. C&amp;ograve;n xe bu&amp;yacute;t th&amp;igrave; một ng&amp;agrave;y hai chuyến gh&amp;eacute; qua. Dự b&amp;aacute;o thời tiết th&amp;igrave; lu&amp;ocirc;n nằm ngo&amp;agrave;i tầm phủ s&amp;oacute;ng của vệ tinh địa tĩnh hay l&amp;agrave; trạm quan trắc đối lưu. Cửa h&amp;agrave;ng tiện lời th&amp;igrave; ch&amp;iacute;n giờ l&amp;agrave; đ&amp;oacute;ng cửa m&amp;agrave; thậm ch&amp;iacute; c&amp;oacute; b&amp;aacute;n g&amp;igrave; đ&amp;acirc;u, chỉ b&amp;aacute;n rau v&amp;agrave; n&amp;ocirc;ng cụ.&lt;/p&gt;

&lt;p&gt;Tr&amp;ecirc;n đường học về, t&amp;ocirc;i v&amp;agrave; Sayaka tiếp tục &amp;ldquo;chế độ&amp;rdquo; bất m&amp;atilde;n về ng&amp;ocirc;i l&amp;agrave;ng Itomori nhỏ b&amp;eacute;.&lt;/p&gt;

&lt;p&gt;Chỗ để giải tr&amp;iacute; th&amp;igrave; c&amp;oacute; hai nơi n&amp;agrave;y, nhưng cũng chẳng phải l&amp;agrave; Mc.Donal hay l&amp;agrave; Mosu. Việc tuyển dụng kh&amp;oacute; khăn n&amp;agrave;y, chẳng c&amp;oacute; gia đ&amp;igrave;nh n&amp;agrave;o mới chuyển đến n&amp;agrave;y, thời gian chiếu s&amp;aacute;ng trong ng&amp;agrave;y qu&amp;aacute; &amp;iacute;t n&amp;agrave;y, v&amp;agrave; cứ thế, ch&amp;uacute;ng t&amp;ocirc;i thao thao bất tuyệt về những thứ trong ng&amp;ocirc;i l&amp;agrave;ng n&amp;agrave;y v&amp;agrave; cảm nhận ch&amp;aacute;n nản của hai đứa. H&amp;ocirc;m nay thực sự, cả hai đều trở n&amp;ecirc;n tuyệt vọng.&lt;/p&gt;

&lt;p&gt;Giữ xe đạp theo ch&amp;uacute;ng t&amp;ocirc;i, Tessie im lặng như thể đang ng&amp;aacute;i ngủ. Bỗng hắn cất tiếng uể oải cực k&amp;igrave; đ&amp;aacute;ng gh&amp;eacute;t.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y hai b&amp;agrave;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;aacute;i g&amp;igrave;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Hai đứa quay người lại hỏi, nh&amp;igrave;n Tessie nở nụ cười yếu ớt để cố gắng kh&amp;ocirc;ng phải trở th&amp;agrave;nh kẻ ph&amp;aacute; bĩnh c&amp;acirc;u chuyện đang trở n&amp;ecirc;n rất hăng của ch&amp;uacute;ng t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;oacute;i về chuyện l&amp;uacute;c n&amp;atilde;y th&amp;igrave;&amp;hellip;, tr&amp;ecirc;n đường vừa mở một qu&amp;aacute;n caf&amp;eacute; đ&amp;oacute;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ca&amp;hellip;C&amp;aacute;i g&amp;igrave; cơ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Caf&amp;eacute; sao, ch&amp;uacute;ng t&amp;ocirc;i phấn kh&amp;iacute;ch h&amp;eacute;t lớn.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Xạch xạch&amp;rdquo;, một tiếng &amp;acirc;m thanh đanh gi&amp;ograve;n của kim loại va v&amp;agrave;o nhau vang l&amp;ecirc;n nhưng đột ngột tắt lịm đi như thể c&amp;oacute; thứ g&amp;igrave; đ&amp;oacute; đang cố ngăn n&amp;oacute; ph&amp;aacute;t ra. &amp;ldquo;Thấy kh&amp;ocirc;ng&amp;rdquo;, Tessie n&amp;oacute;i với một vẻ mặt tự h&amp;agrave;o, khi lấy lon caf&amp;eacute; từ chiếc m&amp;aacute;y b&amp;aacute;n h&amp;agrave;ng tự động mới c&amp;oacute;ng đặt tr&amp;ecirc;n vệ đường. Tiếng p&amp;iacute;p p&amp;iacute;p của n&amp;uacute;t bấm, v&amp;agrave; tiếng lạch xạch của bộ phận đẩy h&amp;agrave;ng, một lần nữa lại khiến c&amp;aacute;c &amp;ocirc;ng b&amp;agrave; gi&amp;agrave; đi đồng về ch&amp;uacute; &amp;yacute;. Bọn t&amp;ocirc;i cố gắng ngồi t&amp;aacute;ch biệt ra, để kh&amp;ocirc;ng bị coi l&amp;agrave; &amp;ldquo;đang đi c&amp;ugrave;ng với nhau uống caf&amp;eacute; đấy&amp;rdquo;. V&amp;agrave; đ&amp;oacute; l&amp;agrave; qu&amp;aacute;n caf&amp;eacute; của ch&amp;uacute;ng t&amp;ocirc;i, n&amp;oacute; kh&amp;ocirc;ng phải l&amp;agrave; qu&amp;aacute;n Starbuck, hay l&amp;agrave; qu&amp;aacute;n Talese. M&amp;agrave; n&amp;oacute; cũng chẳng phải l&amp;agrave; bất k&amp;igrave; cửa h&amp;agrave;ng caf&amp;eacute; b&amp;aacute;n b&amp;aacute;nh kem ăn k&amp;egrave;m n&amp;agrave;o tr&amp;ecirc;n c&amp;otilde;i thế gian n&amp;agrave;y, thậm ch&amp;iacute; cả trong mơ cũng chẳng phải. B&amp;ecirc;n cạnh chiếc m&amp;aacute;y b&amp;aacute;n h&amp;agrave;ng đ&amp;oacute;, l&amp;agrave; một tấm bảng c&amp;oacute; d&amp;aacute;n quảng c&amp;aacute;o về một loại kem n&amp;agrave;o đ&amp;oacute;, tr&amp;ocirc;ng n&amp;oacute; cũ kĩ c&amp;oacute; khi đ&amp;atilde; được ba mươi năm tuổi. Đặt b&amp;ecirc;n cạnh một c&amp;aacute;i ghế d&amp;agrave;i tr&amp;ocirc;ng cũ kĩ chẳng k&amp;eacute;m. Bởi vốn lẽ, đ&amp;acirc;y l&amp;agrave; một trạm dừng xe bu&amp;yacute;t cũ.&lt;/p&gt;

&lt;p&gt;Chẳng c&amp;ograve;n c&amp;aacute;ch n&amp;agrave;o kh&amp;aacute;c, ch&amp;uacute;ng t&amp;ocirc;i ba người c&amp;ugrave;ng ngồi xuống chiếc ghế đặt gần đ&amp;oacute;. Chẳng ai n&amp;oacute;i với ai c&amp;acirc;u g&amp;igrave;, c&amp;ugrave;ng nhau chậm r&amp;atilde;i thưởng thức lon caf&amp;eacute; n&amp;oacute;ng hổi.&lt;/p&gt;

&lt;p&gt;M&amp;agrave;, c&amp;oacute; lẽ Tessie cố t&amp;igrave;nh lừa ch&amp;uacute;ng t&amp;ocirc;i th&amp;igrave; đ&amp;uacute;ng hơn. Th&amp;ocirc;i th&amp;igrave; cũng chẳng biết phải xử hắn như thế n&amp;agrave;o cả.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Vậy nh&amp;eacute;, t&amp;ocirc;i về trước đ&amp;acirc;y&amp;rdquo;&lt;/p&gt;

&lt;p&gt;H&amp;ocirc;m nay c&amp;oacute; vẻ m&amp;aacute;t hơn h&amp;ocirc;m qua tầm một độ nhỉ? Đ&amp;acirc;u c&amp;oacute; t&amp;ocirc;i nghĩ l&amp;agrave; n&amp;oacute;ng hơn chứ. Hai đứa ch&amp;uacute;ng t&amp;ocirc;i lại tiếp tục c&amp;acirc;u chuyện chủ đề đấy, trong khi thu dọn lại đống vỏ lon rỗng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tối nay nhớ quẩy hết m&amp;igrave;nh nh&amp;eacute;&amp;rdquo; Sayaka-chan đột ngột đổi chủ đề. &amp;ldquo;T&amp;ocirc;i sẽ đứng ở ph&amp;iacute;a sau cổ vũ cho b&amp;agrave;&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Th&amp;ocirc;i b&amp;agrave; đừng đến l&amp;agrave;m g&amp;igrave; cả. M&amp;agrave; kh&amp;ocirc;ng, tuyệt đối đừng c&amp;oacute; đến&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Vừa n&amp;oacute;i t&amp;ocirc;i vừa quay lại hai người bạn, ra vẻ cầu khẩn như muốn n&amp;oacute;i &amp;ldquo; Nếu đ&amp;atilde; l&amp;agrave; chiến hữu th&amp;igrave; h&amp;atilde;y hiểu cho t&amp;ocirc;i&amp;rdquo; như vậy. Cả đ&amp;aacute;m bắt đầu leo l&amp;ecirc;n những bậc dốc đ&amp;aacute; trở về nh&amp;agrave;.&lt;/p&gt;

&lt;p&gt;Đi được một qu&amp;atilde;ng, ch&amp;uacute;ng t&amp;ocirc;i bất chợt quay người lại, ngắm nh&amp;igrave;n ho&amp;agrave;ng h&amp;ocirc;n đang đổ xuống chậm r&amp;atilde;i v&amp;agrave; nhẹ nh&amp;agrave;ng về ph&amp;iacute;a đằng xa của hồ nước phẳng lặng. B&amp;oacute;ng đổ xuống c&amp;aacute;i ghế đ&amp;aacute; dưới dốc l&amp;uacute;c n&amp;atilde;y, khiến tr&amp;ocirc;ng n&amp;oacute; như trở th&amp;agrave;nh một c&amp;aacute;i đ&amp;agrave;n dương cầm đang cất những &amp;acirc;m thanh du dương cuối ng&amp;agrave;y. Qủa nhi&amp;ecirc;n l&amp;agrave; giống thật. Nhưng t&amp;ocirc;i th&amp;igrave; đang chỉ đăm chi&amp;ecirc;u về buổi tối bất hạnh h&amp;ocirc;m nay. Hai người kia, ch&amp;iacute; &amp;iacute;t h&amp;atilde;y c&amp;ugrave;ng t&amp;ocirc;i h&amp;aacute;t l&amp;ecirc;n b&amp;agrave;i ca cho nỗi thống khổ n&amp;agrave;y n&amp;agrave;o&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;..&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Con cũng l&amp;agrave;m được chứ bộ&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Yotsuba n&amp;oacute;i bằng giọng bất m&amp;atilde;n.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Yotsuba th&amp;igrave; vẫn c&amp;ograve;n nhỏ qu&amp;aacute;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;B&amp;agrave; t&amp;ocirc;i đ&amp;aacute;p lời của c&amp;ocirc; em g&amp;aacute;i.&lt;/p&gt;

&lt;p&gt;Trong căn ph&amp;ograve;ng chủ yếu đặt những dụng cụ th&amp;ecirc;u th&amp;ugrave;a. Ba người ch&amp;uacute;ng t&amp;ocirc;i lặng lẽ đan những sợi tơ v&amp;agrave;o với nhau. &amp;Acirc;m thanh của m&amp;aacute;y đan vang l&amp;ecirc;n kh&amp;ocirc;ng ngớt. &amp;ldquo;H&amp;atilde;y thử nghe tiếng của những sợi tơ n&amp;agrave;y m&amp;agrave; xem&amp;rdquo;, b&amp;agrave; t&amp;ocirc;i vẫn tiếp tục k&amp;eacute;o sợi đan n&amp;oacute;i. &amp;ldquo;Nếu l&amp;agrave;m như vậy, khi cuộn những sợi tơ n&amp;agrave;y v&amp;agrave;o nhau, xem n&amp;agrave;y, n&amp;oacute; giống như đang th&amp;aacute;o dần những cảm x&amp;uacute;c của con người v&amp;agrave;o trong sợi chỉ n&amp;agrave;y vậy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nhưng m&amp;agrave; mấy sợi tơ n&amp;agrave;y đ&amp;acirc;u c&amp;oacute; n&amp;oacute;i được đ&amp;acirc;u&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Phớt lờ tiếng phản đối của Yotsuba, b&amp;agrave; t&amp;ocirc;i vẫn tiếp tục c&amp;acirc;u chuyện cổ t&amp;iacute;ch về những sợi tơ sợi chỉ n&amp;agrave;y: &amp;ldquo;Lịch sử ng&amp;agrave;n năm&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ba người ch&amp;uacute;ng t&amp;ocirc;i đang cố gắng ho&amp;agrave;n thiện nốt những đường n&amp;eacute;t cuối c&amp;ugrave;ng cho y phục chuẩn bị buổi lễ ch&amp;ugrave;a đ&amp;ecirc;m nay. Đan sợi, c&amp;oacute; lẽ l&amp;agrave; một nghề thủ c&amp;ocirc;ng truyền thống từ xa xưa trong l&amp;agrave;ng. Những sợi chỉ đủ m&amp;agrave;u sắc được đan v&amp;agrave;o nhau th&amp;agrave;nh những sợi lớn hơn, sau đ&amp;oacute;&amp;nbsp; n&amp;oacute; sẽ được dệt th&amp;agrave;nh những tấm lụa rực rỡ để may y phục. N&amp;oacute;i như thế, để l&amp;agrave;m được những tấm lụa đ&amp;oacute;, cũng đ&amp;ograve;i hỏi một sự khổ luyện kh&amp;ocirc;ng hề đơn giản. Ch&amp;iacute;nh v&amp;igrave; thế, b&amp;agrave; l&amp;agrave; người đảm đương phần việc ch&amp;iacute;nh. Việc của Yotsuba l&amp;agrave; li&amp;ecirc;n tục nới lỏng c&amp;aacute;i b&amp;agrave;n tiếp chỉ cho b&amp;agrave; t&amp;ocirc;i c&amp;oacute; thể dệt li&amp;ecirc;n tục.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Lịch sử ng&amp;agrave;n năm của l&amp;agrave;ng ta, được h&amp;igrave;nh th&amp;agrave;nh từ ch&amp;iacute;nh nghề dệt n&amp;agrave;y đấy. Rốt cuộc th&amp;igrave;, ta chẳng hiểu tại sao trường học ng&amp;agrave;y nay lại kh&amp;ocirc;ng dạy về những điều như vậy chứ. C&amp;acirc;u chuyện về con dốc ở l&amp;agrave;ng, đến giờ cũng đ&amp;atilde; được hơn ngh&amp;igrave;n năm rồi c&amp;ograve;n g&amp;igrave;&amp;hellip;&lt;/p&gt;

&lt;p&gt;B&amp;agrave; t&amp;ocirc;i lại bắt đầu những c&amp;acirc;u chuyện xưa cũ rồi đấy. T&amp;ocirc;i nở một nụ cười l&amp;eacute;n l&amp;uacute;t. Từ l&amp;uacute;c c&amp;ograve;n b&amp;eacute; t&amp;yacute; cho tới giờ, cứ mỗi lần bọn ch&amp;uacute;ng t&amp;ocirc;i gi&amp;uacute;p b&amp;agrave; dệt sợi, c&amp;acirc;u chuyện ấy lại cứ được kể m&amp;atilde;i. Đối với b&amp;agrave; t&amp;ocirc;i, th&amp;igrave; kể chuyện về lịch sử ng&amp;ocirc;i l&amp;agrave;ng n&amp;agrave;y dường như l&amp;agrave; một sở th&amp;iacute;ch rất đặc biệt của người.&lt;/p&gt;

&lt;p&gt;Đuốc từ Ngũ Kiển Lang đ&amp;atilde; được thắp l&amp;ecirc;n, tạo th&amp;agrave;nh một v&amp;ograve;ng tr&amp;ograve;n bao quanh ng&amp;ocirc;i đền nhỏ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hỏa thi&amp;ecirc;u cung điện, hỏa thi&amp;ecirc;u văn tự, hỏa thi&amp;ecirc;u ch&amp;uacute;ng sanh, nghĩa tục của n&amp;oacute; l&amp;agrave; như vậy&amp;rdquo;&lt;/p&gt;

&lt;p&gt;B&amp;agrave; vừa n&amp;oacute;i vừa nh&amp;igrave;n ch&amp;uacute;ng t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đại Hỏa của Ngũ Kiển Lang&amp;rdquo;.T&amp;ocirc;i lẩm bẩm tiếp lời.&lt;/p&gt;

&lt;p&gt;B&amp;agrave; t&amp;ocirc;i gật g&amp;ugrave; ra chiều v&amp;ocirc; c&amp;ugrave;ng h&amp;agrave;i l&amp;ograve;ng. &amp;ldquo;Đ&amp;uacute;ng vậy, đ&amp;oacute; l&amp;agrave; t&amp;ecirc;n của trận hỏa hoạn năm ấy.&amp;rdquo; b&amp;agrave; dừng một ch&amp;uacute;t trước sự kinh ngạc của Yotsuba: &amp;ldquo;G&amp;igrave; cơ, t&amp;ecirc;n của trận hỏa hoạn ấy l&amp;agrave; t&amp;ecirc;n của lễ h&amp;ocirc;m nay &amp;aacute;? &amp;ldquo;. Qủa l&amp;agrave; v&amp;igrave; trận hỏa hoạn khủng khiếp ấy m&amp;agrave; giờ đ&amp;acirc;y lịch sử của l&amp;agrave;ng chỉ c&amp;ograve;n c&amp;aacute;i t&amp;ecirc;n l&amp;agrave; c&amp;ograve;n s&amp;oacute;t lại.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cũng may, vẫn c&amp;ograve;n s&amp;oacute;t lại những chứng cứ từ những họa h&amp;igrave;nh trong sắc phục của cổ nh&amp;acirc;n. Mặc d&amp;ugrave; cũng chỉ c&amp;ograve;n s&amp;oacute;t lại một ch&amp;uacute;t &amp;iacute;t như b&amp;acirc;y giờ. Nhưng những g&amp;igrave; c&amp;ograve;n lại đ&amp;oacute; sẽ kh&amp;ocirc;ng thể bị x&amp;oacute;a nh&amp;ograve;a. &amp;Yacute; nghĩa đ&amp;atilde; được khắc s&amp;acirc;u v&amp;agrave;o h&amp;igrave;nh tượng, chắc chắn sẽ được ng&amp;agrave;n đời sau lưu giữ v&amp;agrave; đọc lại&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;B&amp;agrave; vừa kể chuyện, vừa ng&amp;acirc;n nga một kh&amp;uacute;c ca kh&amp;ocirc;ng biết đ&amp;atilde; được truyền lại từ bao giờ. T&amp;ocirc;i vừa đan, vừa lầm rầm h&amp;aacute;t theo như vậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;oacute; l&amp;agrave; nghĩa vụ thi&amp;ecirc;ng li&amp;ecirc;ng của d&amp;ograve;ng họ Miyamizu của ch&amp;uacute;ng ta, phải lưu truyền lại cho thế hệ sau&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;Bỗng nhi&amp;ecirc;n kh&amp;oacute;e mắt b&amp;agrave; t&amp;ocirc;i lộ một vẻ nhu m&amp;igrave; v&amp;agrave; c&amp;oacute; c&amp;aacute;i g&amp;igrave; đ&amp;oacute; man m&amp;aacute;c buồn.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thằng con ngu ngốc ấy, vứt bỏ hết việc c&amp;uacute;ng tế, chỉ v&amp;igrave; chạy theo những chuyện ch&amp;iacute;nh trị tầm thường kia. Ta chẳng biết phải l&amp;agrave;m sao cả&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;B&amp;agrave;&amp;nbsp; tr&amp;uacute;t một hơi giận dữ v&amp;agrave; bất lực. T&amp;ocirc;i cũng khe khẽ thở d&amp;agrave;i. Ng&amp;ocirc;i l&amp;agrave;ng nhỏ b&amp;eacute; n&amp;agrave;y, đ&amp;aacute;ng gh&amp;eacute;t, hay đ&amp;aacute;ng để sống, đi thật xa hay ở lại đ&amp;acirc;y c&amp;ugrave;ng gia đ&amp;igrave;nh, thực sự bản th&amp;acirc;n t&amp;ocirc;i cũng kh&amp;ocirc;ng thể hiểu được m&amp;igrave;nh. N&amp;acirc;ng nhẹ tấm lụa mịn m&amp;agrave;ng lấp l&amp;aacute;nh những m&amp;agrave;u sắc rực rỡ tr&amp;ecirc;n tay, t&amp;ocirc;i bất gi&amp;aacute;c cảm thấy một nỗi buồn nặng trĩu.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Tiếng t&amp;ugrave; lớn vẳng xa từ ph&amp;iacute;a ng&amp;ocirc;i đền, b&amp;aacute;o hiệu đ&amp;atilde; đến giờ lễ thức được bắt đầu. Khu vực đền thờ h&amp;ocirc;m nay, kh&amp;aacute;ch thập phương đổ về như trẩy hội. Tất cả đến để cầu nguyện cho những điều bất hạnh được si&amp;ecirc;u tho&amp;aacute;t, như những người bị giết oan, hay để cho gia đ&amp;igrave;nh được đo&amp;agrave;n tụ khiến nơi n&amp;agrave;y giống như một s&amp;acirc;n khấu của những điều bất hạnh. Với t&amp;ocirc;i cho d&amp;ugrave; đ&amp;oacute; l&amp;agrave; kẻ giết người m&amp;aacute;u lạnh n&amp;agrave;o đang ở dưới cũng chẳng c&amp;oacute; vấn đề g&amp;igrave;. L&amp;uacute;c n&amp;agrave;y t&amp;ocirc;i đang chuẩn bị mặc đồ của một vu nữ. Vẫn như hằng năm, t&amp;ocirc;i sẽ l&amp;agrave; vũ c&amp;ocirc;ng ch&amp;iacute;nh cho nghi lễ của đền Miyamizu. Mọi bất hạnh của tất cả mọi người sẽ được chuyển v&amp;agrave;o hai chị em t&amp;ocirc;i v&amp;agrave; như thế, mọi bất hạnh của những người đến viếng đều được gột tẩy.&lt;/p&gt;

&lt;p&gt;Chị em t&amp;ocirc;i mặc trang phục vu nữa, m&amp;ocirc;i được nhuộm đỏ thẫm v&amp;agrave; khu&amp;ocirc;n mặt được trang điểm kĩ lưỡng, ch&amp;uacute;ng t&amp;ocirc;i bước ra vũ đ&amp;agrave;i dưới tiếng nhạc lễ v&amp;agrave; bắt đầu nhảy theo điệu vũ m&amp;agrave; người b&amp;agrave; ch&amp;uacute;ng t&amp;ocirc;i đ&amp;atilde; truyền thụ lại.&lt;/p&gt;

&lt;p&gt;Bước nhảy của hai người đối lập với nhau, như muốn n&amp;oacute;i rằng bởi sự kiện đ&amp;aacute;m ch&amp;aacute;y ng&amp;agrave;y ấy đ&amp;atilde; khiến nhiều thứ bị mất m&amp;aacute;t. Liền sau đ&amp;oacute;, t&amp;ocirc;i hạ những sợi d&amp;acirc;y đầy m&amp;agrave;u sắc xuống, đưa theo c&amp;aacute;nh tay đang giữ một c&amp;aacute;i lục lạc bằng đồng lớn. &amp;Acirc;m thanh từ c&amp;aacute;i lục lạc, h&amp;ograve;a quyện c&amp;ugrave;ng nền nhạc v&amp;agrave; nhịp nhảy, như thể ch&amp;uacute;ng t&amp;ocirc;i đang bồng bềnh lướt tr&amp;ecirc;n bậc thềm n&amp;agrave;y vậy. L&amp;uacute;c n&amp;atilde;y, tho&amp;aacute;ng qua, t&amp;ocirc;i vừa tr&amp;ocirc;ng thấy b&amp;oacute;ng của Saya-chan. Tuy n&amp;oacute;i c&amp;ocirc; bạn đừng đến, nhưng khi nghĩ đến chuyện c&amp;ocirc; n&amp;agrave;ng đang gửi h&amp;igrave;nh ảnh ch&amp;uacute;ng t&amp;ocirc;i l&amp;ecirc;n mạng x&amp;atilde; hội LINE để cổ vũ, tự nhi&amp;ecirc;n t&amp;ocirc;i cảm thấy b&amp;igrave;nh tĩnh lại rất nhiều.&lt;/p&gt;

&lt;p&gt;N&amp;oacute;i cho đ&amp;uacute;ng ra th&amp;igrave;, thực ra thứ t&amp;ocirc;i cảm thấy kh&amp;oacute; chịu kh&amp;ocirc;ng phải l&amp;agrave; ở điệu vũ n&amp;agrave;y. Cũng chỉ l&amp;agrave; một ch&amp;uacute;t hơi xấu hổ m&amp;agrave; th&amp;ocirc;i. Bởi v&amp;igrave; t&amp;ocirc;i đ&amp;atilde; quen với điệu vũ n&amp;agrave;y từ hồi c&amp;ograve;n b&amp;eacute;. Chẳng qua, c&amp;agrave;ng lớn th&amp;igrave; c&amp;aacute;i sự ngại ng&amp;ugrave;ng đ&amp;oacute; c&amp;agrave;ng trở n&amp;ecirc;n r&amp;otilde; r&amp;agrave;ng hơn. C&amp;aacute;i m&amp;agrave; t&amp;ocirc;i gh&amp;eacute;t l&amp;agrave; phần tiếp theo của buổi nghi lễ n&amp;agrave;y. C&amp;aacute;i m&amp;agrave; bọn chị em t&amp;ocirc;i buộc phải l&amp;agrave;m. C&amp;aacute;i kh&amp;ocirc;ng thể nghĩ được g&amp;igrave; ngo&amp;agrave;i xấu hổ.&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;i trời ạ.&lt;/p&gt;

&lt;p&gt;Kinh khủng qu&amp;aacute;.&lt;/p&gt;

&lt;p&gt;Vừa nghĩ, t&amp;ocirc;i vừa cử động cơ thể, ho&amp;agrave;n th&amp;agrave;nh nốt những bước cuối c&amp;ugrave;ng của điệu vũ phần đầu nghi lễ. &amp;Ocirc;i trời, cuối c&amp;ugrave;ng th&amp;igrave;&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Tiếng nhai nh&amp;oacute;p nh&amp;eacute;p.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i ngậm một miếng cơm trong miệng một c&amp;aacute;ch từ tốn. L&amp;uacute;c n&amp;agrave;y tốt hơn hết l&amp;agrave; kh&amp;ocirc;ng n&amp;ecirc;n nghĩ g&amp;igrave; cả. Mắt t&amp;ocirc;i nhắm thật chặt trong khi nhai, cố gắng kh&amp;ocirc;ng để cơ thể cảm nhận được m&amp;ugrave;i vị m&amp;agrave;u sắc hay bất k&amp;igrave; &amp;acirc;m thanh g&amp;igrave; hết. Ở b&amp;ecirc;n cạnh, Yotsuba cũng đang l&amp;agrave;m điều tương tự vậy. Ph&amp;iacute;a trước mặt nơi ch&amp;uacute;ng t&amp;ocirc;i đang ngay ngắn quỳ, hai chiếc b&amp;aacute;t vu&amp;ocirc;ng bằng gỗ đang được đặt ngay ngắn. Dĩ nhi&amp;ecirc;n, ph&amp;iacute;a trước, c&amp;ocirc;ng ch&amp;uacute;ng, từ người phụ l&amp;atilde;o lẫn trẻ em, đang chăm ch&amp;uacute; nh&amp;igrave;n mọi cử chỉ của ch&amp;uacute;ng t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Tiếng nhai nh&amp;oacute;p nh&amp;eacute;p.&lt;/p&gt;

&lt;p&gt;Th&amp;ocirc;i th&amp;igrave;, cũng đến l&amp;uacute;c phải cho n&amp;oacute; ra rồi.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i với tay lấy c&amp;aacute;i b&amp;aacute;t gỗ, miệng vẫn giữa nguy&amp;ecirc;n như ban đầu, một tay phủ vạt &amp;aacute;o để che đi phần miệng.&lt;/p&gt;

&lt;p&gt;V&amp;agrave;.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i h&amp;aacute; miệng nhả ra đống cơm nhai suốt từ n&amp;atilde;y. Cơm được nghiền n&amp;aacute;t, trộn c&amp;ugrave;ng với nước bọt của t&amp;ocirc;i, tạo th&amp;agrave;nh một thứ dịch m&amp;agrave;u trắng tinh, từ từ tr&amp;agrave;o ra khỏi miệng t&amp;ocirc;i, chảy xuống b&amp;aacute;t gỗ đang được hứng sẵn ph&amp;iacute;a dưới. Trong l&amp;ograve;ng t&amp;ocirc;i đang kh&amp;oacute;c nức nở. L&amp;agrave;m ơn, mọi người, xin đừng nh&amp;igrave;n c&amp;aacute;i cảnh n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;Thứ đ&amp;oacute; sẽ được ủ th&amp;agrave;nh rượu.&lt;/p&gt;

&lt;p&gt;Thứ cơm được nghiền n&amp;aacute;t v&amp;agrave; trộn bởi nước bọt của t&amp;ocirc;i, sẽ dần l&amp;ecirc;n men v&amp;agrave; h&amp;oacute;a th&amp;agrave;nh rượu. Đ&amp;oacute; l&amp;agrave; c&amp;aacute;ch ủ rượu l&amp;acirc;u đời nhất của Nhật Bản. Đ&amp;acirc;y l&amp;agrave; thứ sẽ d&amp;acirc;ng l&amp;ecirc;n những vị thần. Từ ng&amp;agrave;n xưa, kh&amp;ocirc;ng chỉ nơi đ&amp;acirc;y m&amp;agrave; nhiều v&amp;ugrave;ng kh&amp;aacute;c cũng thực hiện nghi thức n&amp;agrave;y. Nhưng ở thế kỉ thứ hai mươi mốt, t&amp;ocirc;i kh&amp;ocirc;ng nghĩ c&amp;ograve;n nơi n&amp;agrave;o tr&amp;ecirc;n tr&amp;aacute;i đất vẫn c&amp;ograve;n tồn tại phong tục n&amp;agrave;y kh&amp;ocirc;ng nữa.&lt;/p&gt;

&lt;p&gt;M&amp;agrave; n&amp;oacute;i cho c&amp;ugrave;ng, nội việc m&amp;uacute;a dưới bộ dạng của một vu nữ cũng đ&amp;atilde; đủ qu&amp;aacute;i đản rồi ấy chứ.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; cho tới khi lấp đầy c&amp;aacute;i b&amp;aacute;t gỗ ấy, hai chị em t&amp;ocirc;i sẽ lặp đi lặp lại c&amp;aacute;i việc nhai cơm trộn nước bọt như vậy. V&amp;agrave; cứ mỗi lần nhổ ra, th&amp;igrave; trong tim t&amp;ocirc;i lại thắt lại như đang kh&amp;oacute;c.&lt;/p&gt;

&lt;p&gt;Bỗng nhi&amp;ecirc;n t&amp;ocirc;i chợt linh cảm thấy một điều g&amp;igrave; bất thường, t&amp;ocirc;i len l&amp;eacute;n ngước nh&amp;igrave;n.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;A &amp;ldquo;&lt;/p&gt;

&lt;p&gt;Giống như c&amp;oacute; một quả bom chuẩn bị nổ ngay trước cửa đền. Tụi học c&amp;ugrave;ng lớp cũng đến xem. Tụi n&amp;oacute; đang n&amp;oacute;i c&amp;aacute;i g&amp;igrave; m&amp;agrave; c&amp;oacute; vẻ th&amp;uacute; vị vậy? Lại c&amp;ograve;n chăm ch&amp;uacute; nh&amp;igrave;n t&amp;ocirc;i nữa chứ. Mặc d&amp;ugrave; khoảng c&amp;aacute;ch đ&amp;oacute; chắc chắn t&amp;ocirc;i kh&amp;ocirc;ng thể nghe được g&amp;igrave; cả, nhưng chẳng hiểu sao những &amp;acirc;m thanh rất r&amp;otilde; r&amp;agrave;ng cứ r&amp;oacute;t v&amp;agrave;o trong tai t&amp;ocirc;i một c&amp;aacute;ch từ tốn.&lt;/p&gt;

&lt;p&gt;Sau khi tốt nghiệp, t&amp;ocirc;i sẽ t&amp;eacute; khỏi nơi n&amp;agrave;y, đến một nơi thật xa.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i lấy hết dũng kh&amp;iacute; để quyết t&amp;acirc;m l&amp;agrave;m như vậy.&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chị kh&amp;ocirc;ng thấy khỏe &amp;agrave;? Bị bạn học nh&amp;igrave;n ch&amp;ograve;ng chọc vậy, c&amp;oacute; g&amp;igrave; m&amp;agrave; chị sốc tới mức ấy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nh&amp;oacute;c t&amp;igrave; chưa dậy th&amp;igrave; như c&amp;ocirc; th&amp;igrave; dĩ nhi&amp;ecirc;n l&amp;agrave; vui vẻ lắm rồi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i quặc lại con b&amp;eacute; Yotsuba l&amp;eacute;m lỉnh. L&amp;uacute;c n&amp;agrave;y, cả hai chị em t&amp;ocirc;i đ&amp;atilde; lui v&amp;agrave;o trong hậu đ&amp;agrave;i, thay bộ v&amp;aacute;y vu nữ bằng &amp;aacute;o thun v&amp;agrave; bước ra ngo&amp;agrave;i lễ đường ph&amp;iacute;a sau. Ch&amp;uacute;ng t&amp;ocirc;i đ&amp;atilde; bỏ lỡ to&amp;agrave;n bộ lễ hội ph&amp;iacute;a dưới l&amp;agrave;ng, b&amp;acirc;y giờ đang tranh thủ phụ gi&amp;uacute;p mọi người một tay dọn dẹp. Thực ra l&amp;agrave; v&amp;agrave;o hầu rượu, g&amp;oacute;p chuyện c&amp;ugrave;ng với mọi người với b&amp;agrave; t&amp;ocirc;i m&amp;agrave; th&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Mitsuha-san bao nhi&amp;ecirc;u tuổi rồi? &amp;Ocirc; đ&amp;atilde; mười bảy rồi cơ &amp;agrave;? &amp;Ocirc;i ch&amp;agrave; ch&amp;agrave;, được một c&amp;ocirc; b&amp;eacute; dễ thương như thế n&amp;agrave;y r&amp;oacute;t rượu, l&amp;atilde;o cũng trẻ lại đi mười tuổi rồi ấy&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thế &amp;ocirc;ng trẻ nốt đi n&amp;agrave;y, uống đi uống đi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Hầu như t&amp;ocirc;i chỉ trả lời một c&amp;aacute;ch lấy lệ. L&amp;uacute;c n&amp;agrave;y, đ&amp;aacute;m trẻ đ&amp;atilde; kiệt sức n&amp;ecirc;n đều về nh&amp;agrave; hết. Th&amp;ocirc;i th&amp;igrave; cũng đ&amp;atilde; đến l&amp;uacute;c giải t&amp;aacute;n rồi. Chỉ c&amp;ograve;n mấy người gi&amp;agrave; ngồi lại trong hậu đ&amp;agrave;i. T&amp;ocirc;i hỏi Yotsuba:&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Yotsuba, em đo&amp;aacute;n xem tuổi trung b&amp;igrave;nh của mấy người&amp;rdquo;&lt;/p&gt;

&lt;p&gt;L&amp;uacute;c n&amp;agrave;y đ&amp;egrave;n đ&amp;oacute;m trong hậu đường đ&amp;atilde; tắt gần hết, kh&amp;ocirc;ng gian tĩnh mịch v&amp;agrave; m&amp;aacute;t mẻ, văng vẳng tiếng c&amp;ocirc;n tr&amp;ugrave;ng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Em kh&amp;ocirc;ng biết, s&amp;aacute;u mươi tuổi ạ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;L&amp;uacute;c n&amp;atilde;y ở bếp chị nhẩm t&amp;iacute;nh thử rồi, bảy mươi t&amp;aacute;m tuổi, bảy mươi t&amp;aacute;m tuổi đ&amp;oacute;!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;v&amp;acirc;ng&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Rồi giả sử đến l&amp;uacute;c ch&amp;uacute;ng ta chết, tầm 91 tuổi chẳng hạn, m&amp;agrave; c&amp;oacute; khi đến 100 tuổi, ch&amp;uacute;ng ta sẽ ở c&amp;aacute;i đền đ&amp;oacute;, đ&amp;oacute;n những người l&amp;igrave;a xa c&amp;otilde;i đời xuống &amp;acirc;m phủ&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;V&amp;acirc;ng&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i chỉ muốn n&amp;oacute;i phứt ra rằng t&amp;ocirc;i muốn đi khỏi nơi n&amp;agrave;y lắm rồi. Nhưng t&amp;ocirc;i kh&amp;ocirc;ng nỡ thấy cảnh c&amp;ocirc; em g&amp;aacute;i bị sốc v&amp;igrave; &amp;yacute; nghĩ t&amp;aacute;o bạo đ&amp;oacute; của b&amp;agrave; chị.Dường như&amp;nbsp; t&amp;ocirc;i kh&amp;ocirc;ng thể truyền được nỗi l&amp;ograve;ng của m&amp;igrave;nh cho c&amp;ocirc; em g&amp;aacute;i đang nghĩ c&amp;aacute;i g&amp;igrave; đ&amp;oacute; kh&amp;aacute;c. T&amp;ocirc;i đ&amp;agrave;nh bỏ cuộc, ngước nh&amp;igrave;n bầu trời đ&amp;ecirc;m xanh thẫm. Bầu trời tr&amp;agrave;n ngập những v&amp;igrave; sao lấp l&amp;aacute;nh chiếu xuống nh&amp;acirc;n gian một c&amp;aacute;ch hờ hững v&amp;ocirc; t&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Vậy l&amp;agrave;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Bước xuống những bậc thang đ&amp;aacute; dẫn lối trở về nh&amp;agrave; từ ng&amp;ocirc;i đền, bỗng nhi&amp;ecirc;n Yotsuba cất tiếng. C&amp;ocirc; b&amp;eacute; lộ ra một vẻ mặt như thể vừa t&amp;igrave;m ra một c&amp;aacute;i b&amp;aacute;nh kem ngon l&amp;agrave;nh ai đ&amp;oacute; giấu đi vậy. Yotsuba n&amp;oacute;i:&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chị n&amp;agrave;y, b&amp;acirc;y giờ chị h&amp;atilde;y l&amp;agrave;m thật nhiều rượu khẩu giảo, để lấy tiền đi Tokyo&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Nhất thời, t&amp;ocirc;i đăm chi&amp;ecirc;u suy nghĩ những lời của Yotsuba.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;ocirc; cũng nghĩ được ra tr&amp;ograve; đấy chứ&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chị chụp ảnh n&amp;agrave;y, hoặc quay video với tựa đề : &amp;ldquo;Vu nữ nh&amp;aacute; rượu&amp;rdquo; rồi đem b&amp;aacute;n chắc cũng b&amp;aacute;n chạy lắm đ&amp;oacute;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Bị một c&amp;ocirc; b&amp;eacute; ch&amp;iacute;n tuổi, vẫn c&amp;ograve;n ng&amp;acirc;y thơ với thế giới n&amp;agrave;y lo lắng d&amp;ugrave;m cho người chị lẽ ra phải lo lắng cho c&amp;ocirc; b&amp;eacute;, tự nhi&amp;ecirc;n t&amp;ocirc;i cảm thấy Yotsuba thật đ&amp;aacute;ng y&amp;ecirc;u. V&amp;agrave; tự nhi&amp;ecirc;n, t&amp;ocirc;i cảm thấy thương c&amp;ocirc; em g&amp;aacute;i b&amp;eacute; bỏng của m&amp;igrave;nh qu&amp;aacute;. C&amp;oacute; khi đ&amp;uacute;ng thật, c&amp;oacute; lẽ t&amp;ocirc;i cũng n&amp;ecirc;n suy nghĩ một c&amp;aacute;ch nghi&amp;ecirc;m t&amp;uacute;c về việc thương mại thương hiệu rượu nước bọt của m&amp;igrave;nh. M&amp;agrave; khoan, c&amp;aacute;i rượu n&amp;agrave;y c&amp;oacute; được đem đi b&amp;aacute;n kh&amp;ocirc;ng nhỉ?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;egrave;, chị, &amp;yacute; tưởng đ&amp;oacute; thế n&amp;agrave;o?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ừm&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ừm, th&amp;igrave;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng được kh&amp;ocirc;ng được, vi phạm luật thuế rượu&amp;rdquo;&lt;/p&gt;

&lt;p&gt;M&amp;agrave; thực ra nếu giải quyết được kh&amp;acirc;u thuế m&amp;aacute; th&amp;igrave; cũng đ&amp;acirc;u c&amp;oacute; g&amp;igrave; đ&amp;acirc;u nhỉ? T&amp;ocirc;i lại tiếp tục đăm chi&amp;ecirc;u nghĩ ngợi. Khi nhận ra th&amp;igrave; t&amp;ocirc;i đ&amp;atilde; đi được một qu&amp;atilde;ng xa rồi.Q&amp;uacute;a nhiều chuyện, c&amp;oacute; thể hay kh&amp;ocirc;ng thể, sự t&amp;igrave;nh, suy tư, tuyệt vọng&amp;hellip; trộn lẫn v&amp;agrave;o với nhau, l&amp;agrave;m ngực t&amp;ocirc;i như muốn nổ tung.&lt;/p&gt;

&lt;p&gt;Nhảy xuống dưới những bậc thang cuối c&amp;ugrave;ng, t&amp;ocirc;i h&amp;eacute;t l&amp;ecirc;n một tiếng, giống như thể tiếng phanh xe đột ngột bị k&amp;eacute;o l&amp;ecirc;n, x&amp;eacute; toạc m&amp;agrave;n đ&amp;ecirc;m tĩnh lặng v&amp;agrave; buồn ngủ, t&amp;ocirc;i la lớn tới nỗi khiến cho cổ họng t&amp;ocirc;i cũng phải đau r&amp;aacute;t.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i ch&amp;aacute;n c&amp;aacute;i l&amp;agrave;ng qu&amp;ecirc; n&amp;agrave;y lắm rồi, t&amp;ocirc;i ch&amp;aacute;n c&amp;aacute;i cuộc đời t&amp;ocirc;i lắm rồi, l&amp;agrave;m ơn nếu c&amp;oacute; kiếp sau h&amp;atilde;y cho t&amp;ocirc;i trở th&amp;agrave;nh một anh đẹp trai n&amp;agrave;o đ&amp;oacute; điiiiiiiiiiiiiiiiiiiii&amp;rdquo;&lt;/p&gt;

&lt;p&gt;N&amp;uacute;i rừng vang vọng lời nguyện cầu của t&amp;ocirc;i cho đến khi &amp;acirc;m thanh trở th&amp;agrave;nh tiếng gi&amp;oacute; l&amp;ugrave;a v&amp;agrave;o mặt hồ phẳng như gương ph&amp;iacute;a dưới l&amp;agrave;ng v&amp;agrave; ngắt lịm&amp;hellip;&lt;/p&gt;

&lt;p&gt;Những lời n&amp;oacute;i chướng tai bột ph&amp;aacute;t vừa n&amp;atilde;y, c&amp;ugrave;ng với những giọt mồ h&amp;ocirc;i lăn tr&amp;ecirc;n khu&amp;ocirc;n mặt của t&amp;ocirc;i nhỏ xuống đất, ph&amp;uacute;t chốc đ&amp;atilde; tan biến v&amp;agrave;o hư v&amp;ocirc;.&lt;/p&gt;

&lt;p&gt;Nhưng cho d&amp;ugrave; vậy.&lt;/p&gt;

&lt;p&gt;Thần linh, nếu như ng&amp;agrave;i c&amp;oacute; thật&amp;hellip;&lt;/p&gt;

&lt;p&gt;Nhưng nếu thần linh, nếu ng&amp;agrave;i c&amp;oacute; thật, v&amp;agrave; c&amp;oacute; thể ban cho t&amp;ocirc;i điều ước, liệu t&amp;ocirc;i sẽ ước điều g&amp;igrave; đ&amp;acirc;y?&lt;/p&gt;
', 1, CAST(0x0000ADE001582C92 AS DateTime), CAST(0x0000ADE001582C92 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (1093, 1088, 7, N'Chương 3: Ngày cứ thế trôi', N'&lt;p&gt;C&amp;oacute; tiếng chu&amp;ocirc;ng điện thoại vang l&amp;ecirc;n. Tiếng chu&amp;ocirc;ng rất đỗi lạ lẫm.&lt;/p&gt;

&lt;p&gt;H&amp;igrave;nh như t&amp;ocirc;i đang trong cơn mộng du th&amp;igrave; phải. Mở mắt nh&amp;eacute;? Nhưng kh&amp;ocirc;ng, thực sự t&amp;ocirc;i vẫn c&amp;ograve;n buồn ngủ lắm. Hay th&amp;ocirc;i ngủ th&amp;ecirc;m một ch&amp;uacute;t nữa nhỉ? Mắt t&amp;ocirc;i vẫn nhắm thật chặt, tay quơ qu&amp;agrave;o cố với lấy chiếc điện thoại ở đ&amp;acirc;u đ&amp;oacute; tr&amp;ecirc;n giường, v&amp;ugrave;i trong đống chăn đệm.&lt;/p&gt;

&lt;p&gt;Ơ?&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cố gắng vươn tay ra xa hơn nữa. Ồn qu&amp;aacute; ồn qu&amp;aacute;, c&amp;aacute;i tiếng chu&amp;ocirc;ng b&amp;aacute;o thức chết tiệt n&amp;agrave;y. T&amp;ocirc;i đ&amp;atilde; vứt điện thoại n&amp;agrave;y ở đ&amp;acirc;u nhỉ?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Ocirc;i đau!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Rầm. Lưng của t&amp;ocirc;i đ&amp;aacute;p một c&amp;aacute;nh dứt kho&amp;aacute;t xuống s&amp;agrave;n nh&amp;agrave;. Bằng một động t&amp;aacute;c cựa người n&amp;agrave;o đ&amp;oacute;, t&amp;ocirc;i đ&amp;atilde; rơi thẳng từ tr&amp;ecirc;n giường xuống m&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; lấy một phản xạ. Đau qu&amp;aacute;, t&amp;ocirc;i r&amp;ecirc;n l&amp;ecirc;n. Bỗng c&amp;oacute; c&amp;aacute;i g&amp;igrave; đ&amp;oacute; k&amp;igrave; lạ lướt qua t&amp;acirc;m tr&amp;iacute;. Tại sao lại l&amp;agrave; giường?&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i buộc l&amp;ograve;ng mở mắt. Nửa th&amp;acirc;n tr&amp;ecirc;n đ&amp;atilde; bắt đầu c&amp;oacute; vẻ nghe lời hơn.&lt;/p&gt;

&lt;p&gt;Ơ k&amp;igrave;a?&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đang ở trong một căn ph&amp;ograve;ng ho&amp;agrave;n to&amp;agrave;n lạ lẫm.&lt;/p&gt;

&lt;p&gt;H&amp;ocirc;m qua t&amp;ocirc;i c&amp;oacute; ngủ lại nh&amp;agrave; người bạn n&amp;agrave;o &amp;agrave;?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chỗ n&amp;agrave;o đ&amp;acirc;y&amp;rdquo;, t&amp;ocirc;i th&amp;igrave; thầm. T&amp;ocirc;i nhận ra thanh quản t&amp;ocirc;i ph&amp;aacute;t ra một giọng c&amp;oacute; vẻ nằng nặng. Một c&amp;aacute;ch phản xạ, t&amp;ocirc;i nhấc tay của m&amp;igrave;nh l&amp;ecirc;n. T&amp;ocirc;i đưa tay sờ c&amp;aacute;i cổ họng c&amp;oacute; c&amp;aacute;i g&amp;igrave; đ&amp;oacute; cưng cứng khang kh&amp;aacute;c so với thường n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ơ&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Tội một lần nữa thử n&amp;oacute;i một c&amp;aacute;i g&amp;igrave; đấy. Vẫn đục đục như bị cảm nặng lắm vậy. T&amp;ocirc;i hướng &amp;aacute;nh nh&amp;igrave;n của m&amp;igrave;nh xuống cơ thể&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; cả&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Chiếc &amp;aacute;o thun mỏng, đi một đường trơn tru v&amp;agrave; ho&amp;agrave;n hảo từ ngực xuống bụng t&amp;ocirc;i một c&amp;aacute;ch thoải m&amp;aacute;i. Ho&amp;agrave;n to&amp;agrave;n chẳng c&amp;oacute; g&amp;igrave; cả.&lt;/p&gt;

&lt;p&gt;Ngực của t&amp;ocirc;i, biến mất.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; tiếp đ&amp;oacute;, ở ph&amp;iacute;a dưới, giữa hai ch&amp;acirc;n của t&amp;ocirc;i, c&amp;oacute; một thứ g&amp;igrave; đ&amp;oacute; kh&amp;ocirc;ng b&amp;igrave;nh thường m&amp;agrave; nếu c&amp;oacute; thể nh&amp;igrave;n xuy&amp;ecirc;n qua được th&amp;igrave;&amp;hellip; Thứ k&amp;igrave; cục đ&amp;oacute;, thậm ch&amp;iacute; c&amp;ograve;n khiến t&amp;ocirc;i c&amp;oacute; cảm gi&amp;aacute;c kinh khủng hơn cả cảm gi&amp;aacute;c kh&amp;oacute; chịu khi kh&amp;ocirc;ng c&amp;ograve;n được che chắn bởi bộ ngực ph&amp;iacute;a trước.&lt;/p&gt;

&lt;p&gt;C&amp;aacute;i n&amp;agrave;y, l&amp;agrave; g&amp;igrave; đ&amp;acirc;y?&lt;/p&gt;

&lt;p&gt;Rất hoang mang, t&amp;ocirc;i đưa tay luồn xuống bộ phận đ&amp;oacute;. To&amp;agrave;n bộ x&amp;uacute;c gi&amp;aacute;c v&amp;agrave; mạch m&amp;aacute;u dường như đang đổ dồn hết v&amp;agrave;o thời khắc đấy.&lt;/p&gt;

&lt;p&gt;C&amp;aacute;i n&amp;agrave;y, c&amp;aacute;i thứ n&amp;agrave;y, chẳng lẽ l&amp;agrave;&amp;hellip;&lt;/p&gt;

&lt;p&gt;[&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;..&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;.]&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Tay t&amp;ocirc;i đ&amp;atilde; chạm phải &amp;ldquo;thứ đ&amp;oacute;&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i gần như ngất lịm đi.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;[ &amp;hellip;]&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Ai đ&amp;acirc;y? Cậu con trai n&amp;agrave;y l&amp;agrave; ai đ&amp;acirc;y?&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đăm đăm nh&amp;igrave;n v&amp;agrave;o khu&amp;ocirc;n mặt chưa từng quen biết, đang phản chiếu trong tấm gương b&amp;ecirc;n trong ph&amp;ograve;ng vệ sinh lạ hoắc. M&amp;aacute;i t&amp;oacute;c của người n&amp;agrave;y được vuốt nếp như thể đang muốn để kiểu đầu m&amp;aacute;i bờm kh&amp;ocirc;ng biết c&amp;oacute; phải v&amp;ocirc; t&amp;igrave;nh hay hữu &amp;yacute;. M&amp;aacute;i t&amp;oacute;c che phủ một phần h&amp;agrave;ng l&amp;ocirc;ng m&amp;agrave;y rậm, l&amp;agrave;m nổi bật cặp mắt to hiền l&amp;agrave;nh v&amp;agrave; dễ gần. Cặp m&amp;ocirc;i mềm mại một c&amp;aacute;ch tự nhi&amp;ecirc;n, dường như chưa từng phải d&amp;ugrave;ng đến kem dưỡng ẩm. Cơ bắp săn chắc v&amp;agrave; hai g&amp;ograve; m&amp;aacute; mảnh mai tr&amp;ocirc;ng c&amp;acirc;n đối tuyệt vời. Hai g&amp;ograve; m&amp;aacute; ấy, như thể được tr&amp;aacute;m bởi một lớp thạch cao trắng. T&amp;ocirc;i thử vỗ thật mạnh v&amp;agrave;o ch&amp;uacute;ng, một cảm gi&amp;aacute;c đau nh&amp;oacute;i chạy qua khắp cơ thể.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i vục mặt xuống l&amp;agrave;n nước lạnh, mắt nhắm chặt. Nhận ra cổ họng m&amp;igrave;nh đang kh&amp;aacute;t bỏng r&amp;aacute;t, t&amp;ocirc;i hứng một &amp;iacute;t nước từ v&amp;ograve;i v&amp;agrave; uống. M&amp;ugrave;i vị kh&amp;ocirc;ng được dễ chịu cho lắm, n&amp;oacute; giống như vị nước của bể bơi vậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Taki, dậy chưa vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đột nhi&amp;ecirc;n c&amp;oacute; tiếng đ&amp;agrave;n &amp;ocirc;ng cất l&amp;ecirc;n từ đằng xa, t&amp;ocirc;i giật m&amp;igrave;nh khẽ la l&amp;ecirc;n một tiếng nhỏ. &amp;ldquo;Taki&amp;rdquo;?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;H&amp;ocirc;m nay l&amp;agrave; đến lượt con nấu cơm đ&amp;uacute;ng kh&amp;ocirc;ng? Ngủ nướng &amp;agrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i nh&amp;igrave;n v&amp;agrave;o căn ph&amp;ograve;ng tr&amp;ocirc;ng c&amp;oacute; vẻ ra d&amp;aacute;ng một nơi gọi l&amp;agrave; ph&amp;ograve;ng kh&amp;aacute;ch, một người đ&amp;agrave;n &amp;ocirc;ng trung ni&amp;ecirc;n đang nh&amp;igrave;n t&amp;ocirc;i như đang c&amp;acirc;n nhắc điều g&amp;igrave; đ&amp;oacute;, &amp;ocirc;ng ta n&amp;oacute;i rồi liếc nh&amp;igrave;n những đĩa thức ăn đang đặt ngay ngắn tr&amp;ecirc;n b&amp;agrave;n.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Con xin lỗi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i trả lời một c&amp;aacute;ch phản xạ như vậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ta đi trước đ&amp;acirc;y nh&amp;eacute;, c&amp;oacute; s&amp;uacute;p miso đấy, nhớ ăn đi đấy nh&amp;eacute;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Dạ, v&amp;acirc;ng&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cho d&amp;ugrave; đi học trễ cũng cố gắng m&amp;agrave; đi học đi nh&amp;eacute;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Người trung ni&amp;ecirc;n vừa n&amp;oacute;i, vừa nhanh ch&amp;oacute;ng sắp xếp b&amp;aacute;t đĩa của m&amp;igrave;nh bỏ v&amp;agrave;o chậu rửa, nhẹ nh&amp;agrave;ng l&amp;aacute;ch qua t&amp;ocirc;i đang đứng như chết tr&amp;acirc;n ở đầu cửa v&amp;agrave; bắt đầu ra h&amp;agrave;nh lang xỏ gi&amp;agrave;y. Rất nhanh ch&amp;oacute;ng, &amp;ocirc;ng mở cửa, bước ra ngo&amp;agrave;i v&amp;agrave; đ&amp;oacute;ng vửa lại.&lt;/p&gt;

&lt;p&gt;C&amp;oacute; tiếng động như thể tiếng của một con chim ưng r&amp;eacute; l&amp;ecirc;n. T&amp;ocirc;i tho&amp;aacute;ng nghe thấy được.&lt;/p&gt;

&lt;p&gt;Nhưng rồi tất cả lại ch&amp;igrave;m v&amp;agrave;o y&amp;ecirc;n lặng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Một giấc mơ k&amp;igrave; cục&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i tự lẩm bẩm trong miệng. T&amp;ocirc;i trở lại ph&amp;ograve;ng của m&amp;igrave;nh, v&amp;agrave; thử một lần nữa nh&amp;igrave;n quanh. Tr&amp;ecirc;n bốn bức tường được d&amp;aacute;n đặc k&amp;iacute;n những cơ man c&amp;aacute;c bức ph&amp;aacute;c thảo nh&amp;agrave; cửa, hay cầu đường. Tr&amp;ecirc;n s&amp;agrave;n nh&amp;agrave; vứt t&amp;aacute;n loạn đầy những cuốn tạp ch&amp;iacute;, giấy vẽ, tr&amp;ocirc;ng kh&amp;ocirc;ng kh&amp;aacute;c một cửa h&amp;agrave;ng b&amp;aacute;n đồ lưu niệm cũ kĩ, m&amp;agrave; nếu so s&amp;aacute;nh với gia đ&amp;igrave;nh t&amp;ocirc;i (thực ra th&amp;igrave; l&amp;agrave; bởi người b&amp;agrave; kh&amp;oacute; t&amp;iacute;nh), b&amp;agrave; sẽ bảo: &amp;ldquo;kh&amp;ocirc;ng thể tin được c&amp;oacute; một chỗ b&amp;agrave;y biện v&amp;ocirc; ph&amp;aacute;p v&amp;ocirc; thi&amp;ecirc;n như thế n&amp;agrave;y&amp;rdquo; vậy.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đo&amp;aacute;n nơi đ&amp;acirc;y l&amp;agrave; một căn chung cư, bởi nh&amp;igrave;n v&amp;agrave;o kh&amp;ocirc;ng gian chật hẹp m&amp;agrave; suy ước như vậy. Mặc d&amp;ugrave;, đ&amp;acirc;y chỉ l&amp;agrave; trong giấc mơ, nhưng t&amp;ocirc;i cảm thấy n&amp;oacute; thực sự sống động như thật.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng ngờ tr&amp;iacute; tưởng tượng của t&amp;ocirc;i lại phong ph&amp;uacute; đến như vậy. Tương lai, hay t&amp;ocirc;i n&amp;ecirc;n đi theo ng&amp;agrave;nh mĩ thuật nhỉ?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ring ring&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Tiếng chu&amp;ocirc;ng điện thoại ở x&amp;oacute; xỉnh n&amp;agrave;o vang l&amp;ecirc;n, rất đ&amp;uacute;ng thời điểm, k&amp;eacute;o t&amp;ocirc;i trở lại thực tế n&amp;agrave;y. T&amp;ocirc;i lo lắng lật tấm chăn nơi tiếng chu&amp;ocirc;ng ph&amp;aacute;t ra v&amp;agrave; nh&amp;igrave;n v&amp;agrave;o m&amp;agrave;n h&amp;igrave;nh đang hiện tin nhắn vừa được gửi đến:&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đừng n&amp;oacute;i l&amp;agrave; đang ở nh&amp;agrave; đấy nh&amp;eacute;? Chổng phao c&amp;ocirc;ng l&amp;ecirc;n m&amp;agrave; chạy đi! &amp;ndash; Tsukasa&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ớ, c&amp;aacute;i g&amp;igrave; vậy, ai l&amp;agrave; Tsukasa?&lt;/p&gt;

&lt;p&gt;M&amp;agrave; cho d&amp;ugrave; như thế n&amp;agrave;o, trước mắt t&amp;ocirc;i cần phải đi tới trường. T&amp;ocirc;i lại nh&amp;igrave;n quanh ph&amp;ograve;ng, v&amp;agrave; dừng mắt b&amp;ecirc;n cửa sổ, nơi treo một bộ đồng phục nam sinh. T&amp;ocirc;i đi tới với tay lấy, v&amp;agrave; dường như cảm nhận được, chuẩn bị c&amp;oacute; một t&amp;igrave;nh huống v&amp;ocirc; c&amp;ugrave;ng hiểm ngh&amp;egrave;o sắp xảy ra.&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;i ch&amp;agrave; ch&amp;agrave;, ch&amp;iacute;nh l&amp;agrave; c&amp;aacute;i chuyện đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i muốn đi vệ sinh.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;[&amp;hellip;.]&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;To&amp;agrave;n th&amp;acirc;n t&amp;ocirc;i run l&amp;ecirc;n một chặp v&amp;agrave; đỏ lựng mặt, cho tới khi xong xu&amp;ocirc;i, t&amp;ocirc;i mới d&amp;aacute;m khe khẽ thở.&lt;/p&gt;

&lt;p&gt;Ra cơ thể của một người con trai l&amp;agrave; như vậy sao?&lt;/p&gt;

&lt;p&gt;Cuối c&amp;ugrave;ng th&amp;igrave; cũng xong được m&amp;agrave;n khốc liệt ấy, mặc d&amp;ugrave; cơ thể vẫn c&amp;ograve;n run lập cập.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i chưa bao giờ tưởng tượng được, để điều hướng được nước tiểu, phải d&amp;ugrave;ng tay để cố định &amp;ldquo;n&amp;oacute;&amp;rdquo; cả. Chưa bao giờ, c&amp;aacute;i vấn đề thải tiện lại trở n&amp;ecirc;n kinh khủng như l&amp;uacute;c n&amp;agrave;y. Trời ơi chết mất, c&amp;oacute; bị đi&amp;ecirc;n kh&amp;ocirc;ng? C&amp;oacute; bị ngu kh&amp;ocirc;ng cơ chứ. Bọn con trai đ&amp;uacute;ng l&amp;agrave; một lũ b&amp;ecirc;nh hoạn, trời đất t&amp;ocirc;i c&amp;ograve;n chưa bao giờ nh&amp;igrave;n thấy &amp;ldquo;n&amp;oacute;&amp;rdquo;. Trời đất, t&amp;ocirc;i vốn l&amp;agrave; một vu nữ m&amp;agrave;!&lt;/p&gt;

&lt;p&gt;Vẫn c&amp;ograve;n b&amp;agrave;ng ho&amp;agrave;ng với những g&amp;igrave; đ&amp;atilde; xảy ra, nước mắt t&amp;ocirc;i tr&amp;agrave;o ra một lần nữa. Vừa kh&amp;oacute;c th&amp;uacute;t th&amp;iacute;t, t&amp;ocirc;i vừa thay đồng phục, mở cửa rời khỏi nh&amp;agrave;.&amp;Aacute;nh s&amp;aacute;ng buổi sớm l&amp;ugrave;a v&amp;agrave;o mắt t&amp;ocirc;i một c&amp;aacute;ch rực rỡ nhất. T&amp;ocirc;i ngước l&amp;ecirc;n nh&amp;igrave;n.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; ngay l&amp;uacute;c đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Mắt t&amp;ocirc;i bị cho&amp;aacute;ng ngợp bởi phong cảnh ph&amp;iacute;a trước.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i dường như qu&amp;ecirc;n mất phải h&amp;iacute;t thở như thế n&amp;agrave;o.&lt;/p&gt;

&lt;p&gt;Nơi t&amp;ocirc;i đang đứng, l&amp;agrave; ở ban c&amp;ocirc;ng của một căn hộ cao tầng. Từ lan can, mở ra một c&amp;ocirc;ng vi&amp;ecirc;n được bọc phủ bởi một m&amp;agrave;u xanh tươi dịu m&amp;aacute;t. Bầu trời trong vắt, tạo n&amp;ecirc;n một bức tranh ho&amp;agrave;n hảo giữa m&amp;agrave;u xanh lục v&amp;agrave; m&amp;agrave;u xanh ngọc b&amp;iacute;ch. Những t&amp;ograve;a nh&amp;agrave; cao tầng nối nhau chạy san s&amp;aacute;t, từng t&amp;ograve;a nh&amp;agrave;, với h&amp;agrave;ng vạn những tấm k&amp;iacute;nh cửa sổ với đủ những m&amp;agrave;u sắc v&amp;agrave; đủ những h&amp;igrave;nh dạng to nhỏ, phản chiếu &amp;aacute;nh s&amp;aacute;ng mặt trời, trở n&amp;ecirc;n rực rỡ như những vi&amp;ecirc;n kim cương. Tất cả lọt v&amp;agrave;o mắt t&amp;ocirc;i, một c&amp;aacute;ch ho&amp;agrave;n hảo v&amp;agrave; diễm lệ nhất m&amp;agrave; t&amp;ocirc;i c&amp;oacute; thể tưởng tượng. Những t&amp;ograve;a cao ốc đ&amp;oacute;, chắc chắn l&amp;agrave; một nơi rất nổi tiếng, m&amp;agrave; với một người chưa từng l&amp;ecirc;n v&amp;ugrave;ng đ&amp;ocirc; hội, cũng c&amp;oacute; một c&amp;aacute;i cảm gi&amp;aacute;c như vậy. Ở những con đường đằng xa, xe cộ trở n&amp;ecirc;n nhỏ t&amp;yacute; hon như những m&amp;oacute;n đồ chơi, đang xếp từng h&amp;agrave;ng d&amp;agrave;i tr&amp;ocirc;i một c&amp;aacute;ch n&amp;aacute;o nhiệt. V&amp;agrave; điều l&amp;agrave;m t&amp;ocirc;i ấn tượng hơn tất cả, đ&amp;oacute; l&amp;agrave; được ngắm nh&amp;igrave;n tận mắt khung cảnh n&amp;agrave;y, vốn t&amp;ocirc;i chỉ được xem tr&amp;ecirc;n ti vi hay phim ảnh. Quang cảnh của th&amp;agrave;nh phố lớn nhất Nhật Bản. T&amp;ocirc;i sung sướng, vừa &amp;ocirc;m ngực vừa cố gắng k&amp;igrave;m n&amp;eacute;n để khỏi h&amp;eacute;t l&amp;ecirc;n th&amp;agrave;nh tiếng.&lt;/p&gt;

&lt;p&gt;Tokyo đấy!&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i x&amp;uacute;c động th&amp;igrave; thầm.&lt;/p&gt;

&lt;p&gt;Thế giới trước mắt t&amp;ocirc;i chưa bao giờ trở n&amp;ecirc;n rực rỡ như l&amp;uacute;c n&amp;agrave;y. T&amp;ocirc;i cố gắng trấn tĩnh điều h&amp;ograve;a hơi thở để kh&amp;ocirc;ng bị ngợp bởi cảm x&amp;uacute;c đang d&amp;acirc;ng l&amp;ecirc;n m&amp;atilde;nh liệt.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y, c&amp;aacute;i n&amp;agrave;y ấy mua ở đ&amp;acirc;u vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;L&amp;aacute;t nữa về gh&amp;eacute; qua chỗ Nishiazabu kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i đang cố gắng đặt chỗ trước cho buổi diễn tiếp theo đ&amp;oacute;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y h&amp;ocirc;m nay trốn c&amp;acirc;u lạc bộ đi xem phim đi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tối nay t&amp;ocirc;i phải thay ca rồi&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;i trời, họ đang n&amp;oacute;i chuyện g&amp;igrave; vậy? Những người n&amp;agrave;y, l&amp;agrave; học sinh của Nhật Bản hiện đại đ&amp;acirc;y sao? Đ&amp;acirc;y gọi l&amp;agrave; &amp;ldquo;tự sướng&amp;rdquo; rồi đăng l&amp;ecirc;n c&amp;aacute;i gọi l&amp;agrave; &amp;ldquo;Facebook&amp;rdquo; đ&amp;acirc;y &amp;agrave;?&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cố gắng n&amp;eacute;p m&amp;igrave;nh v&amp;agrave;o một b&amp;ecirc;n cửa, trong l&amp;uacute;c quan s&amp;aacute;t cẩn thận ph&amp;ograve;ng học để chọn thời điểm tốt m&amp;agrave; bước v&amp;agrave;o. May nhờ c&amp;oacute; định vị GPS ở điện thoại, m&amp;agrave; cuối c&amp;ugrave;ng t&amp;ocirc;i cũng c&amp;oacute; thể m&amp;ograve; được tới ng&amp;ocirc;i trường của người m&amp;agrave; t&amp;ocirc;i đang ở trong th&amp;acirc;n x&amp;aacute;c đang theo học. Mặc d&amp;ugrave; khi tới nơi, chu&amp;ocirc;ng đ&amp;atilde; reo tới giờ nghỉ trưa.&lt;/p&gt;

&lt;p&gt;Điều hấp dẫn hơn cả, ng&amp;ocirc;i trường n&amp;agrave;y, kh&amp;aacute;c xa so với c&amp;aacute;i trường cấp ba qu&amp;ecirc; m&amp;ugrave;a của t&amp;ocirc;i. C&amp;aacute;c lớp học đều được dựng một nửa bởi những tấm k&amp;iacute;nh trong vắt, cửa được sơn m&amp;agrave;u sắc rực rỡ, tr&amp;ocirc;ng tho&amp;aacute;ng qua giống như trong một trung t&amp;acirc;m hội nghị cấp cao thế giới vậy. Hoặc giống như một qu&amp;aacute;n bar được b&amp;agrave;y tr&amp;iacute; rất cầu k&amp;igrave;. Cậu con trai t&amp;ecirc;n &amp;ldquo;Tachibana Taki&amp;rdquo;, c&amp;ugrave;ng tuổi với t&amp;ocirc;i, nhưng đ&amp;atilde; được sống trong một thế giới như thế n&amp;agrave;y sao?&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i loay hoay với quyển sổ tay d&amp;agrave;nh cho học sinh để x&amp;aacute;c nhận một lần nữa t&amp;ecirc;n tuổi của cậu ch&amp;agrave;ng n&amp;agrave;y, liếc nh&amp;igrave;n tấm ảnh ch&amp;acirc;n dung rất ăn ảnh, t&amp;ocirc;i bất gi&amp;aacute;c hơi đỏ mặt.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ta-ki-&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ối&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đột nhi&amp;ecirc;n c&amp;oacute; ai đ&amp;oacute; từ đằng sau qu&amp;agrave;ng lấy vai t&amp;ocirc;i l&amp;agrave;m t&amp;ocirc;i vuột một tiếng la khe khẽ. Một cậu ch&amp;agrave;ng đeo k&amp;iacute;nh nh&amp;igrave;n rất phong c&amp;aacute;ch của một trưởng ph&amp;ograve;ng kinh doanh đang vồ lấy vai của t&amp;ocirc;i, miệng cười toe to&amp;eacute;t. Th&amp;ocirc;i rồi ai đ&amp;acirc;y? Lần đầu ti&amp;ecirc;n trong đời, t&amp;ocirc;i đứng gần một cậu con trai đến như vậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y m&amp;agrave;y đừng n&amp;oacute;i l&amp;agrave; vừa mới tới đấy nh&amp;eacute;, trưa rồi đấy biết kh&amp;ocirc;ng? l&amp;agrave;m c&amp;aacute;i g&amp;igrave; ở đ&amp;acirc;y thế đầu đất? Đi ăn th&amp;ocirc;i&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Vừa n&amp;oacute;i, cậu con trai đeo k&amp;iacute;nh l&amp;ocirc;i t&amp;ocirc;i đi xềnh xệch. N&amp;agrave;y n&amp;agrave;y gượm gượm ch&amp;uacute;t, đừng l&amp;ocirc;i t&amp;ocirc;i như thế chứ!&lt;/p&gt;

&lt;p&gt;&amp;ldquo; N&amp;agrave;y đừng n&amp;oacute;i m&amp;agrave;y lờ tin nhắn của tao nh&amp;eacute;?&amp;rdquo; Cậu ta n&amp;oacute;i bằng một giọng c&amp;oacute; phần hơi sẵng. A, t&amp;ocirc;i bỗng nhi&amp;ecirc;n nhớ lại.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tsu-ka-sa kun, phải kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;aacute;i g&amp;igrave;? Kun th&amp;ecirc;m v&amp;agrave;o đấy?, Tỏ vẻ hối lỗi biết điều với tao &amp;agrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng biết phải tra lời như thế n&amp;agrave;o l&amp;agrave; tốt, t&amp;ocirc;i l&amp;uacute;ng t&amp;uacute;ng v&amp;agrave; bắt đầu n&amp;oacute;i một c&amp;aacute;ch hơi lộn xộn. Cậu con trai t&amp;ecirc;n Tsukasa đ&amp;oacute; thả t&amp;ocirc;i ra nh&amp;igrave;n một c&amp;aacute;ch đầy kh&amp;oacute; hiểu.&lt;/p&gt;

&lt;p&gt;[&amp;hellip;]&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Lạc &amp;aacute;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Cậu trai c&amp;oacute; khu&amp;ocirc;n mặt hơi ngờ nghệch, to con nhưng tr&amp;ocirc;ng tốt bụng v&amp;agrave; hiền l&amp;agrave;nh, hỏi t&amp;ocirc;i với một vẻ mặt kh&amp;ocirc;ng giấu nổi sự ngạc nhi&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;n&amp;agrave;y, &amp;yacute; m&amp;agrave;y bảo l&amp;agrave; m&amp;agrave;y đi lạc đến trường nh&amp;eacute;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Agrave; ừ.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i bắt đầu lựa lời. L&amp;uacute;c n&amp;agrave;y cả ba ch&amp;uacute;ng t&amp;ocirc;i đang ngồi một ng&amp;oacute;c tr&amp;ecirc;n tầng thượng tr&amp;ecirc;n c&amp;ugrave;ng của t&amp;ograve;a nh&amp;agrave;. Mặc d&amp;ugrave; l&amp;uacute;c n&amp;agrave;y đang l&amp;agrave; giờ nghỉ giải lao, nhưng chẳng ai dại dột l&amp;ecirc;n s&amp;acirc;n thượng giữa c&amp;aacute;i nắng chang chang m&amp;ugrave;a h&amp;egrave; cả. Ch&amp;uacute;ng t&amp;ocirc;i thoải m&amp;aacute;i tr&amp;ograve; chuyện m&amp;agrave; kh&amp;ocirc;ng sợ ai l&amp;agrave;m phiền.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;oacute;i sao nhỉ, tớ&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;TỚ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Takagi kun bỗng nhi&amp;ecirc;n ngạc nhi&amp;ecirc;n lặp lại lời tự xưng của t&amp;ocirc;i. Như thể t&amp;ocirc;i đang cố t&amp;igrave;nh thậm xưng vậy. Th&amp;ocirc;i chết rồi, b&amp;acirc;y giờ t&amp;ocirc;i đang l&amp;agrave; &amp;ldquo;Tachibana Taki&amp;rdquo; cơ m&amp;agrave;!&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Agrave; ừ, t&amp;ocirc;i&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;ờ&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;M&amp;igrave;nh&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hả?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tao&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ừ&amp;hellip;&lt;/p&gt;

&lt;p&gt;Cả hai, mặc d&amp;ugrave; vẫn c&amp;ograve;n kinh ngạc, nhưng c&amp;oacute; vẻ cũng đ&amp;atilde; chấp nhận với c&amp;aacute;ch xưng h&amp;ocirc; n&amp;agrave;y. Ra vậy, phải xưng l&amp;agrave; &amp;ldquo;tao&amp;rdquo; &amp;agrave;. Đ&amp;atilde; ghi nhớ!&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tao, tao vui l&amp;eacute;m, Tokyo như một th&amp;agrave;nh phố nhộn nhịp như l&amp;ograve;a đang lễ hội đ&amp;oacute;a&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Ecirc; m&amp;agrave;y n&amp;oacute;i giọng ở đ&amp;acirc;u đấy?&amp;rdquo; Takagi- kun hỏi giật lại.&lt;/p&gt;

&lt;p&gt;C&amp;aacute;i g&amp;igrave;, th&amp;ocirc;i chết rồi, t&amp;ocirc;i đỏ ch&amp;iacute;n mặt.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Taki, cơm đ&amp;acirc;u?&amp;rdquo; &amp;ndash; Tsukasa hỏi.&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;i th&amp;ocirc;i, t&amp;ocirc;i đ&amp;atilde; qu&amp;ecirc;n mang theo rồi.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cố gắng lục t&amp;igrave;m trong cặp s&amp;aacute;ch, bụng bắt đầu hơi s&amp;ocirc;i l&amp;ecirc;n bởi đống s&amp;uacute;p miso s&amp;aacute;ng nay đ&amp;atilde; bị ti&amp;ecirc;u h&amp;oacute;a hết b&amp;eacute;ng rồi. Tsukasa v&amp;agrave; Takagi vừa cười vừa nh&amp;igrave;n nhau như thể &amp;ldquo;thằng n&amp;agrave;y h&amp;ocirc;m nay bị sốt &amp;agrave;&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tsukasa, m&amp;agrave;y c&amp;oacute; g&amp;igrave; kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;oacute; sandwich trứng đ&amp;acirc;y, kẹp với thịt r&amp;aacute;n của m&amp;agrave;y nh&amp;eacute;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Trong t&amp;iacute;ch tắc, m&amp;oacute;n sandwich kẹp trứng v&amp;agrave; thịt r&amp;aacute;n đ&amp;atilde; được ho&amp;agrave;n th&amp;agrave;nh. Hai người d&amp;uacute;i v&amp;agrave;o tay t&amp;ocirc;i miếng b&amp;aacute;nh được l&amp;agrave;m nham nhở. Tự nhi&amp;ecirc;n t&amp;ocirc;i cảm động tới rưng rưng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cảm ơn&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Hai người bạn cười kh&amp;ocirc;ng n&amp;oacute;i g&amp;igrave;. H&amp;oacute;a ra con trai cũng th&amp;ocirc;ng minh ra phết đấy chứ? &amp;Ocirc; n&amp;agrave;y kh&amp;ocirc;ng được kh&amp;ocirc;ng được Mitsuha, m&amp;agrave;y kh&amp;ocirc;ng thể đồng thời th&amp;iacute;ch hai người được.&lt;/p&gt;

&lt;p&gt;M&amp;agrave; thực ra l&amp;uacute;c n&amp;agrave;y kh&amp;ocirc;ng phải l&amp;uacute;c nghĩ tới chuyện đ&amp;oacute;, quan trọng phải hưởng thụ Tokyo đ&amp;atilde; chứ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;M&amp;agrave; n&amp;agrave;y, t&amp;iacute; nữa về c&amp;oacute; đi caf&amp;eacute; ch&amp;uacute;t kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Takagi vừa nhai nhồm nho&amp;agrave;m thức ăn trong mồm vừa n&amp;oacute;i, nh&amp;igrave;n t&amp;ocirc;i một c&amp;aacute;ch ngờ vực.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ồ thế cũng được&amp;rdquo;, Tsukasa đang uống ừng ực chai nước vừa t&amp;igrave;m c&amp;aacute;ch trả lời. T&amp;ocirc;i tho&amp;aacute;ng lay động cơ thể, c&amp;aacute;i g&amp;igrave; cơ, đi đ&amp;acirc;u cơ?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Caf&amp;eacute;, taki, m&amp;agrave;y c&amp;oacute; đi kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;hả?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;L&amp;agrave; qu&amp;aacute;n caf&amp;eacute; ấy&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Hai người nghi&amp;ecirc;ng vai nh&amp;igrave;n t&amp;ocirc;i thật kĩ lưỡng như c&amp;acirc;n nhắc điều g&amp;igrave; đ&amp;oacute;. C&amp;ograve;n t&amp;ocirc;i th&amp;igrave; cực k&amp;igrave; cao hứng, n&amp;oacute;i thật lớn: &amp;ldquo;Caf&amp;eacute; sao, &amp;ocirc;i thật &amp;agrave;???&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đ&amp;acirc;y ch&amp;iacute;nh l&amp;agrave; caf&amp;eacute; thật, kh&amp;ocirc;ng phải l&amp;agrave; qu&amp;aacute;n caf&amp;eacute; ở bến xe bu&amp;yacute;t đ&amp;acirc;u nh&amp;eacute;!&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;[&amp;hellip;.]&lt;/p&gt;

&lt;p&gt;Đ&amp;aacute;m ch&amp;oacute; nhỏ với đủ m&amp;agrave;u sắc v&amp;agrave; đủ chủng loại, được chủ nh&amp;acirc;n của ch&amp;uacute;ng tỉa t&amp;oacute;t tr&amp;ocirc;ng như những c&amp;ocirc; ca sĩ thần tượng, ngồi chễm chệ tr&amp;ecirc;n những chiếc ghế b&amp;agrave;nh như thể ch&amp;uacute;ng cũng thực sự l&amp;agrave; những vị kh&amp;aacute;ch của qu&amp;aacute;n, đang vẫy đu&amp;ocirc;i nh&amp;igrave;n ch&amp;uacute;ng t&amp;ocirc;i bước v&amp;agrave;o. Qu&amp;aacute;n caf&amp;eacute; với những chiếc b&amp;agrave;n gỗ được b&amp;agrave;y tr&amp;iacute; một c&amp;aacute;ch tinh tế, đổ b&amp;oacute;ng xuống nền nh&amp;agrave; bởi &amp;aacute;nh ho&amp;agrave;ng h&amp;ocirc;n chiều t&amp;agrave;n. B&amp;ecirc;n trong qu&amp;aacute;n qu&amp;aacute; nửa l&amp;agrave; kh&amp;aacute;ch ngoại quốc. Nhiều người kh&amp;aacute;ch, chắc tới một phần ba, đeo k&amp;iacute;nh r&amp;acirc;m, số qu&amp;aacute; nửa đội mũ lưỡi trai s&amp;agrave;nh điệu. Cũng c&amp;oacute; người mặc vest, như l&amp;agrave; nh&amp;acirc;n vi&amp;ecirc;n của một c&amp;ocirc;ng ty n&amp;agrave;o đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;i đ&amp;acirc;y l&amp;agrave; chốn n&amp;agrave;o đ&amp;acirc;y? Đ&amp;acirc;y chẳng phải l&amp;agrave; qu&amp;aacute;n caf&amp;eacute; m&amp;agrave; chỉ những người sang chảnh mới v&amp;agrave;o sao?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Trần nh&amp;agrave; được b&amp;agrave;i tr&amp;iacute; tốt qu&amp;aacute; nhỉ&amp;rdquo;, &amp;ldquo;&amp;Ocirc;i quả nhi&amp;ecirc;n đ&amp;acirc;y l&amp;agrave; đồ thủ c&amp;ocirc;ng c&amp;ograve;n g&amp;igrave;&amp;rdquo;. Nh&amp;igrave;n sự trang ho&amp;agrave;ng lộng lẫy của cửa h&amp;agrave;ng, t&amp;ocirc;i thực sự kh&amp;ocirc;ng thể giấu nổi niềm sung sướng với hai người bạn bằng một vẻ phấn kh&amp;iacute;ch một c&amp;aacute;ch th&amp;aacute;i qu&amp;aacute;. Những vị kh&amp;aacute;ch cũng c&amp;oacute; cảm gi&amp;aacute;c vui l&amp;acirc;y với t&amp;ocirc;i l&amp;uacute;c n&amp;agrave;y, họ kh&amp;aacute;o nhau như thể bọn t&amp;ocirc;i đến đ&amp;acirc;y chỉ v&amp;igrave; qu&amp;aacute; h&amp;acirc;m mộ qu&amp;aacute;n caf&amp;eacute; n&amp;agrave;y vậy.&lt;/p&gt;

&lt;p&gt;Đ&amp;acirc;y đ&amp;uacute;ng l&amp;agrave; một sở th&amp;iacute;ch tao nh&amp;atilde;, chẳng phải đ&amp;oacute; l&amp;agrave; sở th&amp;iacute;ch của một học sinh cao trung c&amp;ograve;n g&amp;igrave;. T&amp;ocirc;i gật g&amp;ugrave; như vậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y, gọi đồ được chưa Taki?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Tsukasa-kun chăm ch&amp;uacute; nh&amp;igrave;n t&amp;ocirc;i. Vội v&amp;agrave;ng ngừng việc cố gắng nh&amp;igrave;n mọi ng&amp;oacute;c ng&amp;aacute;ch của qu&amp;aacute;n, t&amp;ocirc;i vồ lấy cuốn thực đơn được trang tr&amp;iacute; bằng rất nhiều những hoa l&amp;aacute; c&amp;agrave;nh sặc sỡ, bắt đầu xem x&amp;eacute;t.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Ocirc;i cha mẹ ơi, c&amp;aacute;i b&amp;aacute;nh n&amp;agrave;y, bằng một th&amp;aacute;ng tiền ăn của tao&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;M&amp;agrave;y l&amp;agrave; người của thời đại n&amp;agrave;o thế&amp;rdquo; Takagi cười cười hỏi?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Agrave; nhỉ&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đau khổ c&amp;acirc;n nhắc, m&amp;agrave; th&amp;ocirc;i, đ&amp;acirc;y l&amp;agrave; mơ m&amp;agrave;. Kệ đi, tiền cũng l&amp;agrave; của cậu Tachibana Taki c&amp;ograve;n g&amp;igrave;. Cứ ăn cho thỏa th&amp;iacute;ch th&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;[&amp;hellip;]&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Qủa l&amp;agrave; một giấc mơ hạnh ph&amp;uacute;c.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i sung sướng kết luận như vậy, sau khi ăn hết một c&amp;aacute;i b&amp;aacute;nh kem cỡ bự v&amp;agrave; được l&amp;agrave;m rất cao cấp, phủ k&amp;iacute;n bởi kem, xo&amp;agrave;i v&amp;agrave; quả việt quất. Chưa bao giờ như b&amp;acirc;y giờ, t&amp;ocirc;i cảm thấy tr&amp;agrave;n trề sự m&amp;atilde;n nguyện đến như thế.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ring ring&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Tiếng chu&amp;ocirc;ng điện thoại lại đột ngột vang l&amp;ecirc;n. C&amp;aacute;i g&amp;igrave; đ&amp;acirc;y, một th&amp;ocirc;ng b&amp;aacute;o nhỏ chạy ngang qua m&amp;agrave;n h&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Th&amp;ocirc;i chết rồi, l&amp;agrave;m thế n&amp;agrave;o b&amp;acirc;y giờ, tao muộn giờ l&amp;agrave;m th&amp;ecirc;m mất rồi. H&amp;igrave;nh như điếm trưởng đang giận lắm.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ơ, ca của m&amp;agrave;y l&amp;agrave; h&amp;ocirc;m nay &amp;agrave;&amp;rdquo; Takagi hỏi, &amp;ldquo;Thế th&amp;igrave; m&amp;agrave;y n&amp;ecirc;n đến nhanh đi&amp;rdquo; Tsukasa tiếp lời.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Agrave; ừ&amp;rdquo;, t&amp;ocirc;i ấp &amp;uacute;ng, l&amp;uacute;ng t&amp;uacute;ng đứng l&amp;ecirc;n, cố gắng lựa lời sao cho hợp l&amp;yacute; nhất.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Sao thế&amp;rdquo;, hai người bạn ng&amp;acirc;y người hỏi.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Th&amp;igrave; l&amp;agrave;, chỗ tao đang l&amp;agrave;m th&amp;ecirc;m ấy, tao qu&amp;ecirc;n địa chỉ rồi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hả???&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;oacute; phần gần như &amp;aacute; khẩu, hai đứa ch&amp;uacute;ng n&amp;oacute; dường như kh&amp;ocirc;ng c&amp;ograve;n lời n&amp;agrave;o với thằng bạn dường như vừa bị x&amp;oacute;a sạch mọi k&amp;iacute; ức.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;[&amp;hellip;..]&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y, b&amp;agrave;n kia vẫn chưa đưa đồ ra được &amp;agrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Taki! Lấy order của b&amp;agrave;n số 20 đi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Taki, c&amp;aacute;i m&amp;oacute;n n&amp;agrave;y t&amp;ocirc;i đ&amp;atilde; bảo l&amp;agrave; hết rồi c&amp;ograve;n g&amp;igrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;oacute; b&amp;agrave;n vẫn chưa đưa h&amp;oacute;a đơn thanh to&amp;aacute;n k&amp;igrave;a&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Taki, m&amp;agrave;y l&amp;agrave;m sao thế, đang vướng mọi người k&amp;igrave;a&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Taki, l&amp;agrave;m ăn cho đ&amp;agrave;ng ho&amp;agrave;ng đi!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;TAKI!!!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Chỗ n&amp;agrave;y dường như l&amp;agrave; một nh&amp;agrave; h&amp;agrave;ng c&amp;oacute; vẻ tương đối sang trọng phong c&amp;aacute;ch &amp;Yacute;. M&amp;agrave; dường như c&amp;aacute;ch b&amp;agrave;i tr&amp;iacute; lộng lẫy tưởng như chỉ c&amp;oacute; ở tr&amp;ecirc;n phim ảnh. Trần nh&amp;agrave; được treo một chiếc đ&amp;egrave;n ch&amp;ugrave;m to, c&amp;oacute; thể xoay v&amp;agrave; tỏa ra một thứ &amp;aacute;nh s&amp;aacute;ng lung linh như ở trong một l&amp;acirc;u đ&amp;agrave;i qu&amp;yacute; tộc. Cậu Tachibana Taki n&amp;agrave;y, mặc một bộ đồ bồi b&amp;agrave;n lịch l&amp;atilde;m, cổ đeo nơ c&amp;aacute;nh bướm, đang l&amp;agrave;m ở vị tr&amp;iacute; dường như l&amp;agrave; bận rộn nhất. L&amp;uacute;c n&amp;agrave;y, t&amp;ocirc;i đang cố gắng chịu đựng sự giận giữ của bếp trưởng, của kh&amp;aacute;ch h&amp;agrave;ng khi l&amp;agrave;m mọi thứ rối tung l&amp;ecirc;n: viết nhầm m&amp;oacute;n kh&amp;aacute;ch gọi, đưa nhầm m&amp;oacute;n cho b&amp;agrave;n kh&amp;aacute;c. M&amp;agrave; n&amp;oacute;i cho c&amp;ugrave;ng, th&amp;igrave; đ&amp;acirc;y l&amp;agrave; lần đầu ti&amp;ecirc;n t&amp;ocirc;i l&amp;agrave;m th&amp;ecirc;m việc như thế n&amp;agrave;y cơ m&amp;agrave;! Thậm ch&amp;iacute; đ&amp;acirc;y l&amp;agrave; lần đầu ti&amp;ecirc;n t&amp;ocirc;i biết thế n&amp;agrave;o l&amp;agrave; l&amp;agrave;m b&amp;aacute;n thời gian ấy chứ! M&amp;agrave; c&amp;aacute;i điều n&amp;agrave;y t&amp;ocirc;i đ&amp;acirc;u c&amp;oacute; muốn mơ như vậy đ&amp;acirc;u cơ chứ! Tất cả l&amp;agrave; tại cậu ta, Tachibana Taki!&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y n&amp;agrave;y, cậu g&amp;igrave; kia ơi&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;oacute; tiếng ai đ&amp;oacute; như đang gọi t&amp;ocirc;i. T&amp;ocirc;i hoang mang quay lại nh&amp;igrave;n (m&amp;agrave; t&amp;ocirc;i kh&amp;ocirc;ng phải l&amp;agrave; cậu nh&amp;eacute;!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; l&amp;agrave; người đ&amp;agrave;n &amp;ocirc;ng mặc một bộ c&amp;aacute;nh di&amp;ecirc;m d&amp;uacute;a, cổ đeo một chiếc v&amp;ograve;ng v&amp;agrave;ng nh&amp;igrave;n rất nổi, tay đeo nhẫn tr&amp;ocirc;ng thực sự rất ngầu. Khu&amp;ocirc;n mặt của hắn lộ vẻ du c&amp;ocirc;n. &amp;Agrave; m&amp;agrave; thực ra c&amp;aacute;i cảm gi&amp;aacute;c n&amp;agrave;y, ở th&amp;agrave;nh phố ngay cạnh t&amp;ocirc;i nếu đi đến nh&amp;agrave; ga đ&amp;oacute;, cũng thỉnh thoảng bắt gặp.&amp;nbsp; Bằng một nụ cười c&amp;oacute; phần hơi gượng &amp;eacute;p, hắn ta cất tiếng:&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;egrave; trong c&amp;aacute;i piza n&amp;agrave;y, c&amp;oacute; c&amp;aacute;i tăm n&amp;egrave;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Dạ?&amp;rdquo;&lt;img alt=&quot;&quot; src=&quot;/public/nguoidung/Images/a66abb5684c45962d887564f8346e8d/images/T%E1%BB%95ng%20h%E1%BB%A3p%20H%C3%ACnh%20n%E1%BB%81n%20your%20name%20cho%20%C4%91i%E1%BB%87n%20tho%E1%BA%A1i%20v%C3%A0%20m%C3%A1y%20t%C3%ADnh.png&quot; style=&quot;height:720px; width:405px&quot; /&gt;&lt;/p&gt;
', 1, CAST(0x0000ADE0015876F3 AS DateTime), CAST(0x0000ADE0015876F3 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2077, 1102, 1034, N'2', N'&lt;p&gt;2&lt;/p&gt;
', 1, CAST(0x0000ADE2015644D6 AS DateTime), CAST(0x0000ADE2015644D6 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2078, 1102, 1034, N'3', N'&lt;p&gt;3&lt;/p&gt;
', 1, CAST(0x0000ADE2015649A1 AS DateTime), CAST(0x0000ADE2015649A1 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2079, 1102, 1034, N'4', N'&lt;p&gt;4&lt;/p&gt;
', 1, CAST(0x0000ADE201564DCC AS DateTime), CAST(0x0000ADE201564DCC AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2080, 1102, 1034, N'5', N'&lt;p&gt;5&lt;/p&gt;
', 1, CAST(0x0000ADE2015663B5 AS DateTime), CAST(0x0000ADE2015663B5 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2082, 1102, 1034, N'Chương 8', N'&lt;p&gt;8&lt;/p&gt;
', 1, CAST(0x0000ADE2016D10FF AS DateTime), CAST(0x0000ADE2016D10FF AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2083, 1102, 1034, N'12', N'&lt;p&gt;12345&lt;/p&gt;
', 1, CAST(0x0000ADE2016FF00F AS DateTime), CAST(0x0000ADE2016FF00F AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2084, 1049, 1039, N'Chương 1:  Gây quỹ 1', N'&lt;p&gt;[Thủ đ&amp;ocirc; Parnam, Vương quốc Elfrieden]&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; l&amp;agrave; th&amp;agrave;nh phố m&amp;agrave; l&amp;acirc;u đ&amp;agrave;i Parnam, nơi cư ngụ của Ho&amp;agrave;ng tộc Elfrieden, tọa lạc. V&amp;ugrave;ng d&amp;acirc;n cư quanh l&amp;acirc;u đ&amp;agrave;i ph&amp;aacute;t triển mạnh mẽ. Những bức tường bao quanh gợi n&amp;ecirc;n h&amp;igrave;nh ảnh một thủ phủ ở Ch&amp;acirc;u &amp;Acirc;u thời trung cổ.&amp;nbsp;Những m&amp;aacute;i nh&amp;agrave; m&amp;agrave;u cam đồng nhất cũng tạo ra diện mạo ph&amp;ugrave; hợp với kh&amp;ocirc;ng kh&amp;iacute; cổ điển của th&amp;agrave;nh phố.&lt;/p&gt;

&lt;p&gt;Mỗi con đường chạy dọc theo c&amp;aacute;c hướng đ&amp;ocirc;ng, t&amp;acirc;y, nam, bắc với l&amp;acirc;u đ&amp;agrave;i Parnam nằm ở trung t&amp;acirc;m, được kết nối với một c&amp;aacute;nh cổng tương ứng. Từng d&amp;ograve;ng xe ngựa c&amp;ugrave;ng những con th&amp;uacute; cưỡi cỡ lớn li&amp;ecirc;n tục ra v&amp;agrave;o tr&amp;ecirc;n c&amp;aacute;c con đường n&amp;agrave;y. Ngo&amp;agrave;i c&amp;aacute;c đường ch&amp;iacute;nh c&amp;ograve;n c&amp;oacute; v&amp;ocirc; số những con đường nhỏ trải đ&amp;aacute;, tỏa ra nhiều hướng từ l&amp;acirc;u đ&amp;agrave;i v&amp;agrave; c&amp;agrave;ng nhiều những con đường kh&amp;aacute;c kết nối ch&amp;uacute;ng lại với nhau, nh&amp;igrave;n từ tr&amp;ecirc;n cao tr&amp;ocirc;ng như một mạng nhện (b&amp;ocirc;ng tuyết) khổng lồ. Hai b&amp;ecirc;n đường l&amp;agrave; những khu mua sắm hay c&amp;aacute;c cửa h&amp;agrave;ng mỹ nghệ nhộn nhịp người ra người v&amp;agrave;o.&lt;/p&gt;

&lt;p&gt;H&amp;ocirc;m nay l&amp;agrave; ng&amp;agrave;y quốc lễ, hơn nữa, n&amp;oacute; c&amp;ograve;n l&amp;agrave; ng&amp;agrave;y lễ mừng vị vua mới đăng quang, khiến cho c&amp;aacute;c khu mua sắm lại c&amp;agrave;ng đ&amp;ocirc;ng đ&amp;uacute;c hơn ng&amp;agrave;y thường. Bởi sự đổi ng&amp;ocirc;i diễn ra qu&amp;aacute; đột ngột m&amp;agrave; đ&amp;atilde; c&amp;oacute; l&amp;uacute;c, khu vực thủ đ&amp;ocirc; ch&amp;igrave;m trong căng thẳng. Nhưng khi tin tức về vị vua mới kế vị l&amp;agrave; Anh h&amp;ugrave;ng được triệu hồi từ thế giới kh&amp;aacute;c; rồi nhường ng&amp;ocirc;i l&amp;agrave; &amp;yacute; nguyện của Cựu ho&amp;agrave;ng v&amp;agrave; vị Anh h&amp;ugrave;ng kia sẽ lấy c&amp;ocirc;ng ch&amp;uacute;a Liecia- suy ra Cựu ho&amp;agrave;ng l&amp;agrave; cha vợ n&amp;ecirc;n sẽ được đối xử tử tế&amp;hellip; được truyền ra th&amp;igrave; d&amp;acirc;n ch&amp;uacute;ng mới y&amp;ecirc;n l&amp;ograve;ng. Nguy&amp;ecirc;n nh&amp;acirc;n ch&amp;iacute;nh cũng v&amp;igrave; Cựu ho&amp;agrave;ng &amp;ldquo;được thần d&amp;acirc;n y&amp;ecirc;u mến&amp;rdquo; trong thời gian &amp;ocirc;ng trị v&amp;igrave; đất nước.&lt;/p&gt;

&lt;p&gt;&amp;ndash;&amp;nbsp;&amp;Agrave;, nếu Bệ hạ b&amp;igrave;nh y&amp;ecirc;n th&amp;igrave; t&amp;ocirc;i thấy cũng ổn th&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ndash;&amp;nbsp;Bệ hạ đ&amp;atilde; phải chịu &amp;aacute;p lực nặng nề từ Đế quốc rồi. T&amp;ocirc;i mừng v&amp;igrave; Người kh&amp;ocirc;ng cần phải g&amp;aacute;nh v&amp;aacute;c th&amp;ecirc;m nữa.&lt;/p&gt;

&lt;p&gt;&amp;ndash;&amp;nbsp;Giờ th&amp;igrave; Người c&amp;oacute; thể thoải m&amp;aacute;i an dưỡng. Tốt qu&amp;aacute; rồi.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; mọi chuyện được đ&amp;oacute;n nhận theo kiểu t&amp;iacute;ch cực như thế đ&amp;oacute;&amp;hellip; C&amp;oacute; vẻ như sự v&amp;ocirc; tư của Đức Vua cũng l&amp;agrave; đặc điểm của to&amp;agrave;n d&amp;acirc;n. C&amp;ograve;n người bị quăng l&amp;ecirc;n ngai v&amp;agrave;ng như Soma cứ đinh ninh rằng &amp;iacute;t nhất sẽ c&amp;oacute; một l&amp;agrave;n s&amp;oacute;ng nổi dậy để phản đối sự đổi ng&amp;ocirc;i bất ngờ kia. Thế nhưng anh cứ thếnhẹ nh&amp;agrave;ng l&amp;ecirc;n ng&amp;ocirc;i. D&amp;ugrave; thế n&amp;agrave;o đi nữa, khung cảnh Parnam h&amp;ocirc;m nay vẫn l&amp;agrave; lo&amp;agrave;i người c&amp;ugrave;ng b&amp;aacute;n nh&amp;acirc;n v&amp;agrave; người l&amp;ugrave;n đi lại như chưa hề c&amp;oacute; bất cứ chuyện g&amp;igrave; xảy ra.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Chiều h&amp;ocirc;m đ&amp;oacute;, một con bạch m&amp;atilde; lướt qua những con đường l&amp;aacute;t đ&amp;aacute; như muốn ph&amp;aacute; tan kh&amp;ocirc;ng kh&amp;iacute; y&amp;ecirc;n b&amp;igrave;nh. Người cưỡi tr&amp;ecirc;n con tuấn m&amp;atilde; đ&amp;oacute; l&amp;agrave; một c&amp;ocirc; g&amp;aacute;i xinh đẹp trong bộ qu&amp;acirc;n phục trắng v&amp;agrave; đỏ như bước ra từ [Hoa hồng Versailles]*. M&amp;aacute;i t&amp;oacute;c đu&amp;ocirc;i ngựa m&amp;agrave;u v&amp;agrave;ng &amp;aacute;nh kim của n&amp;agrave;ng bay bay trong gi&amp;oacute;. N&amp;agrave;ng khoảng chừng 16-17 tuổi, m&amp;agrave;u da trắng trong v&amp;agrave; bộ qu&amp;acirc;n phục b&amp;oacute; s&amp;aacute;t l&amp;agrave;m nổi bật cơ thể c&amp;acirc;n đối của n&amp;agrave;ng.&lt;/p&gt;

&lt;p&gt;[*Hoa hồng Versailles (Versailles no Bara): bộ shoujo kinh điển của thập ni&amp;ecirc;n 80 do nữ t&amp;aacute;c giả Riyoko Ikeda s&amp;aacute;ng t&amp;aacute;c.]&lt;/p&gt;

&lt;p&gt;Chỉ h&amp;igrave;nh d&amp;aacute;ng n&amp;agrave;ng cưỡi tr&amp;ecirc;n lưng bạch m&amp;atilde; th&amp;ocirc;i đ&amp;atilde; vẽ n&amp;ecirc;n một bức tranh tuyệt đẹp rồi. Nh&amp;igrave;n thấy n&amp;agrave;ng, người qua đường lần lượt thốt ra những tiếng k&amp;ecirc;u ngưỡng mộ c&amp;ugrave;ng những lời ch&amp;uacute;c tụng khi họ nhận ra n&amp;agrave;ng ch&amp;iacute;nh l&amp;agrave; &amp;ldquo;c&amp;ocirc;ng ch&amp;uacute;a&amp;rdquo; của đất nước n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;&amp;ndash;&amp;nbsp;C&amp;ocirc;ng ch&amp;uacute;a! Ch&amp;uacute;c mừng n&amp;agrave;ng đ&amp;atilde; đ&amp;iacute;nh ước.&lt;/p&gt;

&lt;p&gt;&amp;ndash; Ch&amp;uacute;c người hạnh ph&amp;uacute;c!&lt;/p&gt;

&lt;p&gt;Họ đưa ra những lời ch&amp;uacute;c nồng nhiệt m&amp;agrave; kh&amp;ocirc;ng hề hay biết g&amp;igrave; về cảm x&amp;uacute;c thực sự của n&amp;agrave;ng. D&amp;ugrave; sao th&amp;igrave; l&amp;uacute;c n&amp;agrave;y n&amp;agrave;ng cũng kh&amp;ocirc;ng thể nghe được những lời ch&amp;uacute;c của họ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cha, mẹ, hai người phải b&amp;igrave;nh y&amp;ecirc;n nh&amp;eacute;&amp;hellip; Con đang đến đ&amp;acirc;y.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;N&amp;agrave;ng, Liecia Elfrieden, th&amp;igrave; thầm trong tuyệt vọng.&lt;/p&gt;

&lt;p&gt;***&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cha! Thế&amp;nbsp;n&amp;agrave;y l&amp;agrave; thế n&amp;agrave;o?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ngự ph&amp;ograve;ng. Một căn ph&amp;ograve;ng lớn đến mức một chiếc giường cỡ King-size* vẫn c&amp;ograve;n nhỏ b&amp;eacute; so với n&amp;oacute;, mỗi một m&amp;oacute;n đồ nội thất trong ph&amp;ograve;ng đều được chế t&amp;aacute;c tinh xảo. Theo lẽ thường, căn ph&amp;ograve;ng n&amp;agrave;y l&amp;agrave; ph&amp;ograve;ng ri&amp;ecirc;ng của Vua c&amp;ugrave;ng Ho&amp;agrave;ng hậu v&amp;agrave; sau lễ đăng quang đ&amp;aacute;ng ra n&amp;oacute; phải thuộc về Soma. Nhưng anh vốn ch&amp;aacute;n gh&amp;eacute;t qu&amp;aacute; tr&amp;igrave;nh thu dọn phiền phức n&amp;ecirc;n đ&amp;atilde; cho ph&amp;eacute;p Cựu ho&amp;agrave;ng c&amp;ugrave;ng Cựu hậu tiếp tục sử dụng n&amp;oacute;. Tiện thể, Soma vẫn chưa c&amp;oacute; ph&amp;ograve;ng ri&amp;ecirc;ng. L&amp;yacute; do l&amp;agrave;&amp;nbsp;&lt;em&gt;bởi l&amp;uacute;c n&amp;agrave;y t&amp;ocirc;i chưa cần&lt;/em&gt;.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Khung cảnh m&amp;agrave; một Liecia thở kh&amp;ocirc;ng ra hơi đang nh&amp;igrave;n thấy khi n&amp;agrave;ng mở toang hai c&amp;aacute;nh cửa lớn l&amp;agrave; cha mẹ m&amp;igrave;nh nh&amp;agrave;n rỗi đang thưởng thức buổi tr&amp;agrave; chiều b&amp;ecirc;n ban c&amp;ocirc;ng. Một người cầm b&amp;aacute;nh kẹp kem: &amp;ldquo;N&amp;agrave;o, aaaa-&amp;rdquo;; c&amp;ograve;n người kia &amp;ldquo;Aaaaa&amp;rdquo;*. Liecia ngồi thụp xuống, rồi bật dậy tiến về ph&amp;iacute;a cha n&amp;agrave;ng với đ&amp;ocirc;i mắt bốc hỏa.&lt;/p&gt;

&lt;p&gt;[*TN: Cặp đ&amp;ocirc;i hồi xu&amp;acirc;n :3~ Ph&amp;iacute; c&amp;ocirc;ng Liecia hụt hơi chạy về]&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Con g&amp;aacute;i cha, chạy một mạch về từ chuyến tuần tra khu vực khi con nghe tin cha bị tiếm ng&amp;ocirc;i! C&amp;ograve;n cha mẹ sao c&amp;oacute; thể v&amp;ocirc; tư &amp;ldquo;N&amp;agrave;o, aaaa đi ~&amp;rdquo; như thế được!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Hiện tại, ngo&amp;agrave;i tước hiệu C&amp;ocirc;ng ch&amp;uacute;a (vị h&amp;ocirc;n th&amp;ecirc; của Vua hiện tại, sau khi vị n&amp;agrave;y được truyền ng&amp;ocirc;i), n&amp;agrave;ng đ&amp;atilde; tốt nghiệp học viện qu&amp;acirc;n sự với danh hiệu Sĩ quan. Vị tr&amp;iacute; x&amp;atilde; hội của n&amp;agrave;ng kh&amp;ocirc;ng cao lắm nhưng nhờ xuất th&amp;acirc;n cao m&amp;agrave; n&amp;agrave;ng thường được lệnh đi đến c&amp;aacute;c đơn vị đồn tr&amp;uacute; để k&amp;ecirc;u gọi ủng hộ v&amp;agrave; l&amp;agrave;m những chuyện tương tự. N&amp;agrave;ng đang thực hiện một nhiệm vụ như vậy nhưng tin tức cha n&amp;agrave;ng đột ngột nhường ng&amp;ocirc;i khiến n&amp;agrave;ng vội v&amp;atilde; quay về.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng phải ta bị tiếm ng&amp;ocirc;i m&amp;agrave; ch&amp;iacute;nh ta tự nhường ng&amp;ocirc;i cho người đ&amp;oacute;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Con kh&amp;ocirc;ng quan t&amp;acirc;m cha c&amp;oacute; tự nguyện hay kh&amp;ocirc;ng! M&amp;agrave; l&amp;agrave; l&amp;yacute; do cha đột ngột từ bỏ vương vị!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ta đ&amp;atilde; n&amp;oacute;i chuyện với người đ&amp;oacute; v&amp;agrave; ta tin rằng đất nước n&amp;agrave;y cần anh ta. Đ&amp;acirc;y l&amp;agrave; quyết định của ta với tư c&amp;aacute;ch l&amp;agrave; người trị v&amp;igrave; đất nước. Kh&amp;ocirc;ng kẻ n&amp;agrave;o c&amp;oacute; quyền chống đối.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Khoảnh khắc n&amp;oacute;i ra điều ấy, tr&amp;ocirc;ng &amp;ocirc;ng rất c&amp;oacute; phong phạm của người g&amp;aacute;nh v&amp;aacute;c cả đất nước, khiến Liecia kh&amp;ocirc;ng biết c&amp;oacute; n&amp;ecirc;n tiếp tục chủ đề n&amp;agrave;y hay kh&amp;ocirc;ng.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ừm&amp;hellip; nhưng, đến cả chuyện h&amp;ocirc;n sự của con m&amp;agrave; cha cũng tự &amp;yacute; quyết định&amp;hellip;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Con c&amp;oacute; thể thương lượng c&amp;ugrave;ng&amp;nbsp;người đ&amp;oacute;. H&amp;ocirc;n ước vốn l&amp;agrave; do ch&amp;uacute;ng ta buộc ng&amp;agrave;i ấy chấp thuận, nếu con kh&amp;ocirc;ng th&amp;iacute;ch th&amp;igrave; Soma-dono sẽ kh&amp;ocirc;ng &amp;eacute;p buộc con đ&amp;acirc;u.&amp;rdquo;&amp;nbsp;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Mẹeeee!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Liecia quay sang cầu cứu mẹ m&amp;igrave;nh&amp;nbsp;nhưng Cựu hậu chỉ mỉm cười m&amp;agrave; n&amp;oacute;i:&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Con cứ gặp Soma-dono trước đ&amp;atilde;. Đ&amp;acirc;y l&amp;agrave; chuyện cả đời, con n&amp;ecirc;n tự quyết định l&amp;agrave; hơn. Ch&amp;uacute;ng ta sẽ chấp nhận &amp;yacute; nguyện của con.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;H&amp;oacute;a ra đ&amp;acirc;y gọi l&amp;agrave;&amp;nbsp;&lt;em&gt;kh&amp;ocirc;ng biết b&amp;aacute;m v&amp;agrave;o đ&lt;/em&gt;&lt;em&gt;&amp;acirc;u&lt;/em&gt;. Vai n&amp;agrave;ng trĩu xuống.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;***&lt;/p&gt;

&lt;p&gt;Liecia rảo bước qua l&amp;acirc;u đ&amp;agrave;i. N&amp;agrave;ng rời khỏi đ&amp;acirc;y đ&amp;atilde; nhiều tuần v&amp;igrave; chuyến tuần tra khu vực. N&amp;agrave;ng đ&amp;atilde; tự hỏi t&amp;igrave;nh h&amp;igrave;nh ở đ&amp;acirc;y ra sao khi n&amp;agrave;ng vắng mặt, n&amp;agrave;ng chỉ kh&amp;ocirc;ng ngờ tất cả mọi người trong l&amp;acirc;u đ&amp;agrave;i đều chạy khắp nơi. Binh l&amp;iacute;nh, thị vệ, nội quan&amp;hellip; đến cả c&amp;aacute;c vị trong nội c&amp;aacute;c cũng đang chạy qua chạy lại. C&amp;aacute;i cảnh vị bộ trưởng bụng phệ mồ h&amp;ocirc;i đầy tr&amp;aacute;n, miệng thở &amp;ldquo;hồng hộc&amp;rdquo; chạy qua phi l&amp;yacute; đến mức khiến n&amp;agrave;ng chết lặng tại chỗ.&lt;/p&gt;

&lt;p&gt;Chuyện n&amp;agrave;y chưa từng xảy ra. Kh&amp;ocirc;ng kh&amp;iacute; trong l&amp;acirc;u đ&amp;agrave;i nh&amp;agrave;n rỗi đến mức bạn sẽ nghĩ rằng thời gian ở đ&amp;acirc;y tr&amp;ocirc;i chậm hơn. Thị vệ c&amp;ugrave;ng c&amp;aacute;c vị trong nội c&amp;aacute;c từ tốn bước đi, kh&amp;ocirc;ng gian tĩnh mịch đến mức c&amp;oacute; thể nghe được tiếng những người l&amp;iacute;nh đang luyện tập ở s&amp;acirc;n trong từ bất cứ hướng n&amp;agrave;o trong l&amp;acirc;u đ&amp;agrave;i. L&amp;yacute; do Liecia xin học tại trường qu&amp;acirc;n sự chẳng phải v&amp;igrave; n&amp;agrave;ng kh&amp;ocirc;ng chịu nổi c&amp;aacute;i kh&amp;ocirc;ng kh&amp;iacute; đ&amp;oacute; sao?&lt;/p&gt;

&lt;p&gt;Nhưng giờ h&amp;atilde;y nh&amp;igrave;n xem.Đi đến bất cứ đ&amp;acirc;u, n&amp;agrave;ng vẫn nghe được tiếng bước ch&amp;acirc;n của ai đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ta muốn hỏi ngươi chuyện n&amp;agrave;y.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;A, th&amp;igrave; ra l&amp;agrave; C&amp;ocirc;ng ch&amp;uacute;a. Thần gi&amp;uacute;p được g&amp;igrave; cho người ạ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Agrave;, kh&amp;ocirc;ng&amp;hellip; C&amp;aacute;c ngươi bận rộn nhỉ, c&amp;oacute; chuyện g&amp;igrave; vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Dạ kh&amp;ocirc;ng. Kh&amp;ocirc;ng c&amp;oacute; chuyện g&amp;igrave; đ&amp;acirc;u ạ.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thật ư? Sao ta thấy c&amp;oacute; vẻ như c&amp;aacute;c ngươi rất bận th&amp;igrave; phải&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;V&amp;acirc;ng. A, c&amp;oacute; lẽ đ&amp;oacute; l&amp;agrave; ảnh hưởng của T&amp;acirc;n vương. Cứ nh&amp;igrave;n c&amp;aacute;i c&amp;aacute;ch bệ hạ l&amp;agrave;m việc khiến ch&amp;uacute;ng thần kh&amp;ocirc;ng d&amp;aacute;m&amp;nbsp;để cho bệ hạ tự m&amp;igrave;nh l&amp;agrave;m hết mọi việc. Bản th&amp;acirc;n thần cũng cảm thấy kh&amp;ocirc;ng n&amp;ecirc;n chậm trễ nữa&amp;hellip; &amp;Agrave;, thần c&amp;ograve;n đang l&amp;agrave;m việc, xin ph&amp;eacute;p C&amp;ocirc;ng ch&amp;uacute;a.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;V-vậy sao? Gắng l&amp;ecirc;n nh&amp;eacute;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Nh&amp;igrave;n theo người cung nữ nhanh ch&amp;oacute;ng rời đi, Liecia hoang mang. T&amp;acirc;n vương l&amp;agrave;m việc ra sao m&amp;agrave; đến cả người cung nữ cũng vội v&amp;agrave;ng như vậy? Vị h&amp;ocirc;n phu của m&amp;igrave;nh rốt cuộc l&amp;agrave; người thế n&amp;agrave;o? Liecia kh&amp;ocirc;ng biết phải nghĩ g&amp;igrave; nữa.&lt;/p&gt;

&lt;p&gt;Ph&amp;ograve;ng nghị sự. Khi Liecia mở cửa ra, thứ đầu ti&amp;ecirc;n đập v&amp;agrave;o mắt n&amp;agrave;ng l&amp;agrave; một n&amp;uacute;i giấy tờ. T&amp;agrave;i liệu chất th&amp;agrave;nh đống ngất ngưởng, tr&amp;agrave;n xuống từ b&amp;agrave;n l&amp;agrave;m việc vốn lớn đến mức hai người trưởng th&amp;agrave;nh nằm l&amp;ecirc;n cũng vừa.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng những thế, quanh đ&amp;oacute; l&amp;agrave; rất nhiều nội quan ngồi sau những chiếc b&amp;agrave;n d&amp;agrave;i đang cố gắng chiến đấu với đống giấy tờ cũng lớn kh&amp;ocirc;ng k&amp;eacute;m.&lt;/p&gt;

&lt;p&gt;Khi Liecia chết lặng lần thứ n, giọng n&amp;oacute;i của một người thanh ni&amp;ecirc;n vang l&amp;ecirc;n sau n&amp;uacute;i giấy tờ.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y, c&amp;aacute;i người vừa bước v&amp;agrave;o kia.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;.Ế? Chuyện g&amp;igrave;!?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;N&amp;agrave;ng ph&amp;aacute;t ra tiếng k&amp;ecirc;u kỳ lạ khi vừa ho&amp;agrave;n hồn nhưng người kia c&amp;oacute; vẻ kh&amp;ocirc;ng để &amp;yacute;.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;ocirc; kia, c&amp;ocirc; c&amp;oacute; biết đọc kh&amp;ocirc;ng? C&amp;oacute; biết l&amp;agrave;m t&amp;iacute;nh kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ-đừng coi thường ta! Ta được gi&amp;aacute;o dục tốt nha!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tốt. Đến đ&amp;acirc;y l&amp;agrave;m gi&amp;uacute;p ta.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Gi&amp;uacute;p ngươi!? Ngươi nghĩ ngươi l&amp;agrave;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đừng nghĩ nhiều, h&amp;atilde;y gi&amp;uacute;p ta. Đ&amp;acirc;y l&amp;agrave; &amp;lsquo;Th&amp;aacute;nh chỉ&amp;rsquo;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Vừa n&amp;oacute;i, người đ&amp;oacute; vừa đứng dậy, để lộ khu&amp;ocirc;n mặt sau n&amp;uacute;i giấy tờ.&lt;/p&gt;

&lt;p&gt;Mỗi con đường chạy dọc theo c&amp;aacute;c hướng đ&amp;ocirc;ng, t&amp;acirc;y, nam, bắc với l&amp;acirc;u đ&amp;agrave;i Parnam nằm ở trung t&amp;acirc;m, được kết nối với một c&amp;aacute;nh cổng tương ứng. Từng d&amp;ograve;ng xe ngựa c&amp;ugrave;ng những con th&amp;uacute; cưỡi cỡ lớn li&amp;ecirc;n tục ra v&amp;agrave;o tr&amp;ecirc;n c&amp;aacute;c con đường n&amp;agrave;y. Ngo&amp;agrave;i c&amp;aacute;c đường ch&amp;iacute;nh c&amp;ograve;n c&amp;oacute; v&amp;ocirc; số những con đường nhỏ trải đ&amp;aacute;, tỏa ra nhiều hướng từ l&amp;acirc;u đ&amp;agrave;i v&amp;agrave; c&amp;agrave;ng nhiều những con đường kh&amp;aacute;c kết nối ch&amp;uacute;ng lại với nhau, nh&amp;igrave;n từ tr&amp;ecirc;n cao tr&amp;ocirc;ng như một mạng nhện (b&amp;ocirc;ng tuyết) khổng lồ. Hai b&amp;ecirc;n đường l&amp;agrave; những khu mua sắm hay c&amp;aacute;c cửa h&amp;agrave;ng mỹ nghệ nhộn nhịp người ra người v&amp;agrave;o.&lt;/p&gt;

&lt;p&gt;H&amp;ocirc;m nay l&amp;agrave; ng&amp;agrave;y quốc lễ, hơn nữa, n&amp;oacute; c&amp;ograve;n l&amp;agrave; ng&amp;agrave;y lễ mừng vị vua mới đăng quang, khiến cho c&amp;aacute;c khu mua sắm lại c&amp;agrave;ng đ&amp;ocirc;ng đ&amp;uacute;c hơn ng&amp;agrave;y thường. Bởi sự đổi ng&amp;ocirc;i diễn ra qu&amp;aacute; đột ngột m&amp;agrave; đ&amp;atilde; c&amp;oacute; l&amp;uacute;c, khu vực thủ đ&amp;ocirc; ch&amp;igrave;m trong căng thẳng. Nhưng khi tin tức về vị vua mới kế vị l&amp;agrave; Anh h&amp;ugrave;ng được triệu hồi từ thế giới kh&amp;aacute;c; rồi nhường ng&amp;ocirc;i l&amp;agrave; &amp;yacute; nguyện của Cựu ho&amp;agrave;ng v&amp;agrave; vị Anh h&amp;ugrave;ng kia sẽ lấy c&amp;ocirc;ng ch&amp;uacute;a Liecia- suy ra Cựu ho&amp;agrave;ng l&amp;agrave; cha vợ n&amp;ecirc;n sẽ được đối xử tử tế&amp;hellip; được truyền ra th&amp;igrave; d&amp;acirc;n ch&amp;uacute;ng mới y&amp;ecirc;n l&amp;ograve;ng. Nguy&amp;ecirc;n nh&amp;acirc;n ch&amp;iacute;nh cũng v&amp;igrave; Cựu ho&amp;agrave;ng &amp;ldquo;được thần d&amp;acirc;n y&amp;ecirc;u mến&amp;rdquo; trong thời gian &amp;ocirc;ng trị v&amp;igrave; đất nước.&lt;/p&gt;

&lt;p&gt;&amp;ndash;&amp;nbsp;&amp;Agrave;, nếu Bệ hạ b&amp;igrave;nh y&amp;ecirc;n th&amp;igrave; t&amp;ocirc;i thấy cũng ổn th&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ndash;&amp;nbsp;Bệ hạ đ&amp;atilde; phải chịu &amp;aacute;p lực nặng nề từ Đế quốc rồi. T&amp;ocirc;i mừng v&amp;igrave; Người kh&amp;ocirc;ng cần phải g&amp;aacute;nh v&amp;aacute;c th&amp;ecirc;m nữa.&lt;/p&gt;

&lt;p&gt;&amp;ndash;&amp;nbsp;Giờ th&amp;igrave; Người c&amp;oacute; thể thoải m&amp;aacute;i an dưỡng. Tốt qu&amp;aacute; rồi.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; mọi chuyện được đ&amp;oacute;n nhận theo kiểu t&amp;iacute;ch cực như thế đ&amp;oacute;&amp;hellip; C&amp;oacute; vẻ như sự v&amp;ocirc; tư của Đức Vua cũng l&amp;agrave; đặc điểm của to&amp;agrave;n d&amp;acirc;n. C&amp;ograve;n người bị quăng l&amp;ecirc;n ngai v&amp;agrave;ng như Soma cứ đinh ninh rằng &amp;iacute;t nhất sẽ c&amp;oacute; một l&amp;agrave;n s&amp;oacute;ng nổi dậy để phản đối sự đổi ng&amp;ocirc;i bất ngờ kia. Thế nhưng anh cứ thếnhẹ nh&amp;agrave;ng l&amp;ecirc;n ng&amp;ocirc;i. D&amp;ugrave; thế n&amp;agrave;o đi nữa, khung cảnh Parnam h&amp;ocirc;m nay vẫn l&amp;agrave; lo&amp;agrave;i người c&amp;ugrave;ng b&amp;aacute;n nh&amp;acirc;n v&amp;agrave; người l&amp;ugrave;n đi lại như chưa hề c&amp;oacute; bất cứ chuyện g&amp;igrave; xảy ra.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Chiều h&amp;ocirc;m đ&amp;oacute;, một con bạch m&amp;atilde; lướt qua những con đường l&amp;aacute;t đ&amp;aacute; như muốn ph&amp;aacute; tan kh&amp;ocirc;ng kh&amp;iacute; y&amp;ecirc;n b&amp;igrave;nh. Người cưỡi tr&amp;ecirc;n con tuấn m&amp;atilde; đ&amp;oacute; l&amp;agrave; một c&amp;ocirc; g&amp;aacute;i xinh đẹp trong bộ qu&amp;acirc;n phục trắng v&amp;agrave; đỏ như bước ra từ [Hoa hồng Versailles]*. M&amp;aacute;i t&amp;oacute;c đu&amp;ocirc;i ngựa m&amp;agrave;u v&amp;agrave;ng &amp;aacute;nh kim của n&amp;agrave;ng bay bay trong gi&amp;oacute;. N&amp;agrave;ng khoảng chừng 16-17 tuổi, m&amp;agrave;u da trắng trong v&amp;agrave; bộ qu&amp;acirc;n phục b&amp;oacute; s&amp;aacute;t l&amp;agrave;m nổi bật cơ thể c&amp;acirc;n đối của n&amp;agrave;ng.&lt;/p&gt;

&lt;p&gt;[*Hoa hồng Versailles (Versailles no Bara): bộ shoujo kinh điển của thập ni&amp;ecirc;n 80 do nữ t&amp;aacute;c giả Riyoko Ikeda s&amp;aacute;ng t&amp;aacute;c.]&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Chỉ h&amp;igrave;nh d&amp;aacute;ng n&amp;agrave;ng cưỡi tr&amp;ecirc;n lưng bạch m&amp;atilde; th&amp;ocirc;i đ&amp;atilde; vẽ n&amp;ecirc;n một bức tranh tuyệt đẹp rồi. Nh&amp;igrave;n thấy n&amp;agrave;ng, người qua đường lần lượt thốt ra những tiếng k&amp;ecirc;u ngưỡng mộ c&amp;ugrave;ng những lời ch&amp;uacute;c tụng khi họ nhận ra n&amp;agrave;ng ch&amp;iacute;nh l&amp;agrave; &amp;ldquo;c&amp;ocirc;ng ch&amp;uacute;a&amp;rdquo; của đất nước n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;&amp;ndash;&amp;nbsp;C&amp;ocirc;ng ch&amp;uacute;a! Ch&amp;uacute;c mừng n&amp;agrave;ng đ&amp;atilde; đ&amp;iacute;nh ước.&lt;/p&gt;

&lt;p&gt;&amp;ndash; Ch&amp;uacute;c người hạnh ph&amp;uacute;c!&lt;/p&gt;

&lt;p&gt;Họ đưa ra những lời ch&amp;uacute;c nồng nhiệt m&amp;agrave; kh&amp;ocirc;ng hề hay biết g&amp;igrave; về cảm x&amp;uacute;c thực sự của n&amp;agrave;ng. D&amp;ugrave; sao th&amp;igrave; l&amp;uacute;c n&amp;agrave;y n&amp;agrave;ng cũng kh&amp;ocirc;ng thể nghe được những lời ch&amp;uacute;c của họ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cha, mẹ, hai người phải b&amp;igrave;nh y&amp;ecirc;n nh&amp;eacute;&amp;hellip; Con đang đến đ&amp;acirc;y.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;N&amp;agrave;ng, Liecia Elfrieden, th&amp;igrave; thầm trong tuyệt vọng.&lt;/p&gt;

&lt;p&gt;***&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cha! Thế&amp;nbsp;n&amp;agrave;y l&amp;agrave; thế n&amp;agrave;o?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ngự ph&amp;ograve;ng. Một căn ph&amp;ograve;ng lớn đến mức một chiếc giường cỡ King-size* vẫn c&amp;ograve;n nhỏ b&amp;eacute; so với n&amp;oacute;, mỗi một m&amp;oacute;n đồ nội thất trong ph&amp;ograve;ng đều được chế t&amp;aacute;c tinh xảo. Theo lẽ thường, căn ph&amp;ograve;ng n&amp;agrave;y l&amp;agrave; ph&amp;ograve;ng ri&amp;ecirc;ng của Vua c&amp;ugrave;ng Ho&amp;agrave;ng hậu v&amp;agrave; sau lễ đăng quang đ&amp;aacute;ng ra n&amp;oacute; phải thuộc về Soma. Nhưng anh vốn ch&amp;aacute;n gh&amp;eacute;t qu&amp;aacute; tr&amp;igrave;nh thu dọn phiền phức n&amp;ecirc;n đ&amp;atilde; cho ph&amp;eacute;p Cựu ho&amp;agrave;ng c&amp;ugrave;ng Cựu hậu tiếp tục sử dụng n&amp;oacute;. Tiện thể, Soma vẫn chưa c&amp;oacute; ph&amp;ograve;ng ri&amp;ecirc;ng. L&amp;yacute; do l&amp;agrave;&amp;nbsp;&lt;em&gt;bởi l&amp;uacute;c n&amp;agrave;y t&amp;ocirc;i chưa cần&lt;/em&gt;.&lt;/p&gt;

&lt;p&gt;[*King-size:&amp;nbsp;&lt;a href=&quot;https://s-media-cache-ak0.pinimg.com/736x/46/98/e1/4698e16ce8a935755909c2fd4bb2897b.jpg&quot; rel=&quot;nofollow external noopener noreferrer sponsored&quot; target=&quot;_blank&quot; title=&quot;&quot;&gt;Giường cỡ lớn nhất, hai người nằm&lt;/a&gt;.]&lt;/p&gt;

&lt;p&gt;Khung cảnh m&amp;agrave; một Liecia thở kh&amp;ocirc;ng ra hơi đang nh&amp;igrave;n thấy khi n&amp;agrave;ng mở toang hai c&amp;aacute;nh cửa lớn l&amp;agrave; cha mẹ m&amp;igrave;nh nh&amp;agrave;n rỗi đang thưởng thức buổi tr&amp;agrave; chiều b&amp;ecirc;n ban c&amp;ocirc;ng. Một người cầm b&amp;aacute;nh kẹp kem: &amp;ldquo;N&amp;agrave;o, aaaa-&amp;rdquo;; c&amp;ograve;n người kia &amp;ldquo;Aaaaa&amp;rdquo;*. Liecia ngồi thụp xuống, rồi bật dậy tiến về ph&amp;iacute;a cha n&amp;agrave;ng với đ&amp;ocirc;i mắt bốc hỏa.&lt;/p&gt;

&lt;p&gt;[*TN: Cặp đ&amp;ocirc;i hồi xu&amp;acirc;n :3~ Ph&amp;iacute; c&amp;ocirc;ng Liecia hụt hơi chạy về]&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Con g&amp;aacute;i cha, chạy một mạch về từ chuyến tuần tra khu vực khi con nghe tin cha bị tiếm ng&amp;ocirc;i! C&amp;ograve;n cha mẹ sao c&amp;oacute; thể v&amp;ocirc; tư &amp;ldquo;N&amp;agrave;o, aaaa đi ~&amp;rdquo; như thế được!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Hiện tại, ngo&amp;agrave;i tước hiệu C&amp;ocirc;ng ch&amp;uacute;a (vị h&amp;ocirc;n th&amp;ecirc; của Vua hiện tại, sau khi vị n&amp;agrave;y được truyền ng&amp;ocirc;i), n&amp;agrave;ng đ&amp;atilde; tốt nghiệp học viện qu&amp;acirc;n sự với danh hiệu Sĩ quan. Vị tr&amp;iacute; x&amp;atilde; hội của n&amp;agrave;ng kh&amp;ocirc;ng cao lắm nhưng nhờ xuất th&amp;acirc;n cao m&amp;agrave; n&amp;agrave;ng thường được lệnh đi đến c&amp;aacute;c đơn vị đồn tr&amp;uacute; để k&amp;ecirc;u gọi ủng hộ v&amp;agrave; l&amp;agrave;m những chuyện tương tự. N&amp;agrave;ng đang thực hiện một nhiệm vụ như vậy nhưng tin tức cha n&amp;agrave;ng đột ngột nhường ng&amp;ocirc;i khiến n&amp;agrave;ng vội v&amp;atilde; quay về.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng phải ta bị tiếm ng&amp;ocirc;i m&amp;agrave; ch&amp;iacute;nh ta tự nhường ng&amp;ocirc;i cho người đ&amp;oacute;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Con kh&amp;ocirc;ng quan t&amp;acirc;m cha c&amp;oacute; tự nguyện hay kh&amp;ocirc;ng! M&amp;agrave; l&amp;agrave; l&amp;yacute; do cha đột ngột từ bỏ vương vị!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ta đ&amp;atilde; n&amp;oacute;i chuyện với người đ&amp;oacute; v&amp;agrave; ta tin rằng đất nước n&amp;agrave;y cần anh ta. Đ&amp;acirc;y l&amp;agrave; quyết định của ta với tư c&amp;aacute;ch l&amp;agrave; người trị v&amp;igrave; đất nước. Kh&amp;ocirc;ng kẻ n&amp;agrave;o c&amp;oacute; quyền chống đối.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Khoảnh khắc n&amp;oacute;i ra điều ấy, tr&amp;ocirc;ng &amp;ocirc;ng rất c&amp;oacute; phong phạm của người g&amp;aacute;nh v&amp;aacute;c cả đất nước, khiến Liecia kh&amp;ocirc;ng biết c&amp;oacute; n&amp;ecirc;n tiếp tục chủ đề n&amp;agrave;y hay kh&amp;ocirc;ng.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ừm&amp;hellip; nhưng, đến cả chuyện h&amp;ocirc;n sự của con m&amp;agrave; cha cũng tự &amp;yacute; quyết định&amp;hellip;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Con c&amp;oacute; thể thương lượng c&amp;ugrave;ng&amp;nbsp;người đ&amp;oacute;. H&amp;ocirc;n ước vốn l&amp;agrave; do ch&amp;uacute;ng ta buộc ng&amp;agrave;i ấy chấp thuận, nếu con kh&amp;ocirc;ng th&amp;iacute;ch th&amp;igrave; Soma-dono sẽ kh&amp;ocirc;ng &amp;eacute;p buộc con đ&amp;acirc;u.&amp;rdquo;&amp;nbsp;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Mẹeeee!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Liecia quay sang cầu cứu mẹ m&amp;igrave;nh&amp;nbsp;nhưng Cựu hậu chỉ mỉm cười m&amp;agrave; n&amp;oacute;i:&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Con cứ gặp Soma-dono trước đ&amp;atilde;. Đ&amp;acirc;y l&amp;agrave; chuyện cả đời, con n&amp;ecirc;n tự quyết định l&amp;agrave; hơn. Ch&amp;uacute;ng ta sẽ chấp nhận &amp;yacute; nguyện của con.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;H&amp;oacute;a ra đ&amp;acirc;y gọi l&amp;agrave;&amp;nbsp;&lt;em&gt;kh&amp;ocirc;ng biết b&amp;aacute;m v&amp;agrave;o đ&lt;/em&gt;&lt;em&gt;&amp;acirc;u&lt;/em&gt;. Vai n&amp;agrave;ng trĩu xuống.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;***&lt;/p&gt;

&lt;p&gt;Liecia rảo bước qua l&amp;acirc;u đ&amp;agrave;i. N&amp;agrave;ng rời khỏi đ&amp;acirc;y đ&amp;atilde; nhiều tuần v&amp;igrave; chuyến tuần tra khu vực. N&amp;agrave;ng đ&amp;atilde; tự hỏi t&amp;igrave;nh h&amp;igrave;nh ở đ&amp;acirc;y ra sao khi n&amp;agrave;ng vắng mặt, n&amp;agrave;ng chỉ kh&amp;ocirc;ng ngờ tất cả mọi người trong l&amp;acirc;u đ&amp;agrave;i đều chạy khắp nơi. Binh l&amp;iacute;nh, thị vệ, nội quan&amp;hellip; đến cả c&amp;aacute;c vị trong nội c&amp;aacute;c cũng đang chạy qua chạy lại. C&amp;aacute;i cảnh vị bộ trưởng bụng phệ mồ h&amp;ocirc;i đầy tr&amp;aacute;n, miệng thở &amp;ldquo;hồng hộc&amp;rdquo; chạy qua phi l&amp;yacute; đến mức khiến n&amp;agrave;ng chết lặng tại chỗ.&lt;/p&gt;

&lt;p&gt;Chuyện n&amp;agrave;y chưa từng xảy ra. Kh&amp;ocirc;ng kh&amp;iacute; trong l&amp;acirc;u đ&amp;agrave;i nh&amp;agrave;n rỗi đến mức bạn sẽ nghĩ rằng thời gian ở đ&amp;acirc;y tr&amp;ocirc;i chậm hơn. Thị vệ c&amp;ugrave;ng c&amp;aacute;c vị trong nội c&amp;aacute;c từ tốn bước đi, kh&amp;ocirc;ng gian tĩnh mịch đến mức c&amp;oacute; thể nghe được tiếng những người l&amp;iacute;nh đang luyện tập ở s&amp;acirc;n trong từ bất cứ hướng n&amp;agrave;o trong l&amp;acirc;u đ&amp;agrave;i. L&amp;yacute; do Liecia xin học tại trường qu&amp;acirc;n sự chẳng phải v&amp;igrave; n&amp;agrave;ng kh&amp;ocirc;ng chịu nổi c&amp;aacute;i kh&amp;ocirc;ng kh&amp;iacute; đ&amp;oacute; sao?&lt;/p&gt;

&lt;p&gt;Nhưng giờ h&amp;atilde;y nh&amp;igrave;n xem.Đi đến bất cứ đ&amp;acirc;u, n&amp;agrave;ng vẫn nghe được tiếng bước ch&amp;acirc;n của ai đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ta muốn hỏi ngươi chuyện n&amp;agrave;y.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;A, th&amp;igrave; ra l&amp;agrave; C&amp;ocirc;ng ch&amp;uacute;a. Thần gi&amp;uacute;p được g&amp;igrave; cho người ạ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Agrave;, kh&amp;ocirc;ng&amp;hellip; C&amp;aacute;c ngươi bận rộn nhỉ, c&amp;oacute; chuyện g&amp;igrave; vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Dạ kh&amp;ocirc;ng. Kh&amp;ocirc;ng c&amp;oacute; chuyện g&amp;igrave; đ&amp;acirc;u ạ.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thật ư? Sao ta thấy c&amp;oacute; vẻ như c&amp;aacute;c ngươi rất bận th&amp;igrave; phải&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;V&amp;acirc;ng. A, c&amp;oacute; lẽ đ&amp;oacute; l&amp;agrave; ảnh hưởng của T&amp;acirc;n vương. Cứ nh&amp;igrave;n c&amp;aacute;i c&amp;aacute;ch bệ hạ l&amp;agrave;m việc khiến ch&amp;uacute;ng thần kh&amp;ocirc;ng d&amp;aacute;m&amp;nbsp;để cho bệ hạ tự m&amp;igrave;nh l&amp;agrave;m hết mọi việc. Bản th&amp;acirc;n thần cũng cảm thấy kh&amp;ocirc;ng n&amp;ecirc;n chậm trễ nữa&amp;hellip; &amp;Agrave;, thần c&amp;ograve;n đang l&amp;agrave;m việc, xin ph&amp;eacute;p C&amp;ocirc;ng ch&amp;uacute;a.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;V-vậy sao? Gắng l&amp;ecirc;n nh&amp;eacute;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Nh&amp;igrave;n theo người cung nữ nhanh ch&amp;oacute;ng rời đi, Liecia hoang mang. T&amp;acirc;n vương l&amp;agrave;m việc ra sao m&amp;agrave; đến cả người cung nữ cũng vội v&amp;agrave;ng như vậy? Vị h&amp;ocirc;n phu của m&amp;igrave;nh rốt cuộc l&amp;agrave; người thế n&amp;agrave;o? Liecia kh&amp;ocirc;ng biết phải nghĩ g&amp;igrave; nữa.&lt;/p&gt;

&lt;p&gt;Ph&amp;ograve;ng nghị sự. Khi Liecia mở cửa ra, thứ đầu ti&amp;ecirc;n đập v&amp;agrave;o mắt n&amp;agrave;ng l&amp;agrave; một n&amp;uacute;i giấy tờ. T&amp;agrave;i liệu chất th&amp;agrave;nh đống ngất ngưởng, tr&amp;agrave;n xuống từ b&amp;agrave;n l&amp;agrave;m việc vốn lớn đến mức hai người trưởng th&amp;agrave;nh nằm l&amp;ecirc;n cũng vừa.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng những thế, quanh đ&amp;oacute; l&amp;agrave; rất nhiều nội quan ngồi sau những chiếc b&amp;agrave;n d&amp;agrave;i đang cố gắng chiến đấu với đống giấy tờ cũng lớn kh&amp;ocirc;ng k&amp;eacute;m.&lt;/p&gt;

&lt;p&gt;Khi Liecia chết lặng lần thứ n, giọng n&amp;oacute;i của một người thanh ni&amp;ecirc;n vang l&amp;ecirc;n sau n&amp;uacute;i giấy tờ.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y, c&amp;aacute;i người vừa bước v&amp;agrave;o kia.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;.Ế? Chuyện g&amp;igrave;!?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;N&amp;agrave;ng ph&amp;aacute;t ra tiếng k&amp;ecirc;u kỳ lạ khi vừa ho&amp;agrave;n hồn nhưng người kia c&amp;oacute; vẻ kh&amp;ocirc;ng để &amp;yacute;.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;ocirc; kia, c&amp;ocirc; c&amp;oacute; biết đọc kh&amp;ocirc;ng? C&amp;oacute; biết l&amp;agrave;m t&amp;iacute;nh kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ-đừng coi thường ta! Ta được gi&amp;aacute;o dục tốt nha!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tốt. Đến đ&amp;acirc;y l&amp;agrave;m gi&amp;uacute;p ta.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Gi&amp;uacute;p ngươi!? Ngươi nghĩ ngươi l&amp;agrave;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đừng nghĩ nhiều, h&amp;atilde;y gi&amp;uacute;p ta. Đ&amp;acirc;y l&amp;agrave; &amp;lsquo;Th&amp;aacute;nh chỉ&amp;rsquo;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Vừa n&amp;oacute;i, người đ&amp;oacute; vừa đứng dậy, để lộ khu&amp;ocirc;n mặt sau n&amp;uacute;i giấy tờ.&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;Genou Vol1 - Illu (6)&quot; src=&quot;http://valvrareteam.com/wp-content/uploads/2016/08/Genou-Vol1-Illu-6.jpg&quot; style=&quot;height:679px; width:482px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; l&amp;agrave; cuộc gặp đầu ti&amp;ecirc;n của Soma v&amp;agrave; Liecia, cặp đ&amp;ocirc;i&amp;nbsp;vừa đ&amp;iacute;nh h&amp;ocirc;n v&amp;agrave;i ng&amp;agrave;y trước.&lt;/p&gt;

&lt;p&gt;Sau n&amp;agrave;y khi Liecia hồi tưởng về ấn tượng đầu ti&amp;ecirc;n, n&amp;agrave;ng nghĩ về &amp;ldquo;một thanh ni&amp;ecirc;n c&amp;oacute; cặp mắt mệt mỏi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;***&lt;/p&gt;

&lt;p&gt;Trong c&amp;aacute;c c&amp;acirc;u chuyện về những người h&amp;ugrave;ng được triệu hồi đến thế giới kh&amp;aacute;c, c&amp;oacute; rất nhiều trường hợp họ được ban tặng năng lực đặc biệt khi được gọi ra. Hầu hết l&amp;agrave; năng lực để một đấu một ng&amp;agrave;n hoặc năng lực l&amp;uacute;c đầu c&amp;oacute; vẻ v&amp;ocirc; dụng nhưng thực ra đủ mạnh để chinh phục cả thế giới, ch&amp;iacute;nh l&amp;agrave; loại sức mạnh &amp;ldquo;Nghịch thi&amp;ecirc;n&amp;rdquo; trong truyền thuyết.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đ&amp;atilde; nghĩ, đ&amp;aacute;ng ra&amp;nbsp;&lt;em&gt;t&amp;ocirc;i n&amp;ecirc;n c&amp;oacute; năng lực g&amp;igrave; đ&amp;oacute; chứ&lt;/em&gt;&amp;nbsp;v&amp;agrave; đ&amp;uacute;ng l&amp;agrave; t&amp;ocirc;i c&amp;oacute; thiệt. Năng lực đầu ti&amp;ecirc;n l&amp;agrave; [Đa &amp;Yacute; Nghĩ Đồng Thời]. Giờ đ&amp;acirc;y t&amp;ocirc;i c&amp;oacute; thể c&amp;ugrave;ng một l&amp;uacute;c nghĩ về nhiều việc. Khi đang họp về vấn đề A, t&amp;ocirc;i c&amp;oacute; thể nghĩ về vấn đề B trong đầu. T&amp;ocirc;i cảm thấy ngay l&amp;uacute;c n&amp;agrave;y m&amp;igrave;nh c&amp;oacute; thể thắng tr&amp;ograve; Shoutoku Taishi một đấu mười.*&lt;/p&gt;

&lt;p&gt;[*Shoutoku Taishi:&amp;nbsp;&lt;a href=&quot;https://vi.wikipedia.org/wiki/Th%C3%A1nh_%C4%90%E1%BB%A9c_Th%C3%A1i_t%E1%BB%AD&quot; rel=&quot;nofollow external noopener noreferrer sponsored&quot; target=&quot;_blank&quot;&gt;Th&amp;aacute;nh Đức Th&amp;aacute;i tử. Tương truyền, &amp;ocirc;ng c&amp;oacute; thể tr&amp;ograve; chuyện với 10 người c&amp;ugrave;ng l&amp;uacute;c.&amp;nbsp;&lt;/a&gt;]&amp;nbsp;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Năng lực c&amp;ograve;n lại l&amp;agrave; [Ngoại cảm Yếu]. T&amp;ocirc;i c&amp;oacute; thể n&amp;acirc;ng được một vật nặng 300g m&amp;agrave; kh&amp;ocirc;ng cần chạm v&amp;agrave;o vật đ&amp;oacute; bất kể trọng lực. Vật c&amp;agrave;ng nhẹ th&amp;igrave; c&amp;agrave;ng dễ điều khiển; th&amp;ecirc;m v&amp;agrave;o đ&amp;oacute;, d&amp;ugrave;ng với [&amp;Yacute; nghĩ Đồng thời], t&amp;ocirc;i c&amp;oacute; thể di chuyển nhiều vật c&amp;ugrave;ng một l&amp;uacute;c. Ngo&amp;agrave;i ra c&amp;ograve;n c&amp;oacute; phần bonus, cũng kh&amp;aacute; tuyệt khi t&amp;ocirc;i c&amp;oacute; thể nh&amp;igrave;n được từ b&amp;ecirc;n ngo&amp;agrave;i tầm nh&amp;igrave;n của bản th&amp;acirc;n.&lt;/p&gt;

&lt;p&gt;C&amp;ograve;n để n&amp;oacute;i về việc khai th&amp;aacute;c hết hai loại năng lực n&amp;agrave;y, ch&amp;iacute;nh l&amp;agrave;&amp;nbsp;&lt;em&gt;xử l&amp;yacute; giấy tờ nhanh gấp ba lần tốc độ th&amp;ocirc;ng thường&lt;/em&gt;.&lt;/p&gt;

&lt;p&gt;Vừa xem qua cả ba t&amp;agrave;i liệu c&amp;ugrave;ng l&amp;uacute;c, t&amp;ocirc;i vừa điều khiển hai c&amp;acirc;y b&amp;uacute;t bằng năng lực ngoại cảm yếu. Chưa hết,&amp;nbsp;d&amp;ugrave;ng cả&amp;nbsp;tay phải, t&amp;ocirc;i điều khiển ba c&amp;acirc;y b&amp;uacute;t để k&amp;yacute; từng loại giấy tờ. Phải, c&amp;ocirc;ng việc đang tr&amp;ocirc;i chảy. Thật ra, nếu kh&amp;ocirc;ng c&amp;oacute; mấy năng lực n&amp;agrave;y chắc t&amp;ocirc;i đ&amp;atilde; bị ch&amp;ocirc;n sống dưới n&amp;uacute;i giấy tờ rồi.&lt;br /&gt;
&amp;hellip;&amp;hellip;&amp;hellip;.V&amp;acirc;ng, t&amp;ocirc;i biết bạn muốn n&amp;oacute;i g&amp;igrave;. Mấy loại năng lực ấy chả c&amp;oacute; g&amp;igrave; l&amp;agrave; &amp;ldquo;Nghịch thi&amp;ecirc;n&amp;rdquo; hết. Nếu n&amp;oacute;i theo kiểu của một c&amp;aacute;i doujinshi n&amp;agrave;o đ&amp;oacute;, [đ&amp;acirc;y l&amp;agrave; loại năng lực chỉ&amp;nbsp;ph&amp;ugrave; hợp với c&amp;ocirc;ng việc b&amp;agrave;n giấy]. V&amp;acirc;ng, đ&amp;aacute;ng vứt đi.&amp;nbsp;Mặc d&amp;ugrave; b&amp;acirc;y giờ th&amp;igrave; n&amp;oacute; rất hữu dụng đấy nhưng nghĩ lại l&amp;yacute; do t&amp;ocirc;i được triệu hồi l&amp;agrave; để [Chiến đấu với Quỷ Vương], bạn chỉ c&amp;oacute; thể thốt l&amp;ecirc;n rằng &amp;ldquo;Sao thếđược!?&amp;rdquo; Kh&amp;ocirc;ng c&amp;oacute; được&amp;nbsp;ph&amp;eacute;p thuật đủ mạnh để chiến đấu với mười ng&amp;agrave;n kẻ địch, th&amp;igrave; t&amp;ocirc;i th&amp;agrave; đổi lấy một loại kiếm thuật &amp;iacute;t ra c&amp;oacute; thể gi&amp;uacute;p t&amp;ocirc;i tự vệ.&lt;/p&gt;

&lt;p&gt;Trở lại vấn đề ch&amp;iacute;nh, khi t&amp;ocirc;i đang sử dụng&amp;nbsp;năng lực để chiến đấu với n&amp;uacute;i giấy tờ, c&amp;aacute;nh cửa vững chắc bị đ&amp;aacute; tung bởi một c&amp;ocirc; g&amp;aacute;i trong bộ v&amp;aacute;y qu&amp;acirc;n phục. C&amp;ocirc; ấy c&amp;oacute; khu&amp;ocirc;n mặt với những đường n&amp;eacute;t rất đẹp, l&amp;agrave;n da trắng trong v&amp;agrave; m&amp;aacute;i t&amp;oacute;c v&amp;agrave;ng &amp;aacute;nh kim tu&amp;ocirc;n d&amp;agrave;i. C&amp;ocirc; ấy đẹp đến mức nếu được gặp c&amp;ocirc; ấy trong thời b&amp;igrave;nh, chắc chắn t&amp;ocirc;i sẽ bị m&amp;ecirc; hoặc. Nhưng với người đ&amp;atilde; thức trắng 3 đ&amp;ecirc;m, t&amp;ocirc;i kh&amp;ocirc;ng c&amp;ograve;n nh&amp;igrave;n&amp;nbsp;c&amp;ocirc; ấy như người đẹp m&amp;agrave; chỉ đơn thuần l&amp;agrave; &amp;lsquo;lao động mới&amp;rsquo; m&amp;agrave; th&amp;ocirc;i. T&amp;ocirc;i gần như &amp;eacute;p buộc c&amp;ocirc; ấy ngồi kế b&amp;ecirc;n v&amp;agrave; đẩy 2 chồng giấy tờ cho c&amp;ocirc;.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;So s&amp;aacute;nh hai loại t&amp;agrave;i liệu n&amp;agrave;y v&amp;agrave; nếu c&amp;ocirc; thấy số liệu kh&amp;ocirc;ng tr&amp;ugrave;ng khớp hoặc số hạng mục kh&amp;aacute;c nhau, th&amp;igrave; đ&amp;aacute;nh dấu &amp;nbsp;v&amp;agrave;o.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ơ, g&amp;igrave; cơ? Thể loại c&amp;ocirc;ng việc g&amp;igrave; đ&amp;acirc;y?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;ocirc; n&amp;oacute;i g&amp;igrave; vậy&amp;hellip;.? Ch&amp;uacute;ng ta đang khai quật kho b&amp;aacute;u được ch&amp;ocirc;n giấu đấy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i t&amp;ugrave;y &amp;yacute; n&amp;oacute;i, c&amp;ograve;n c&amp;ocirc; g&amp;aacute;i trong qu&amp;acirc;n phục th&amp;igrave; ngơ ng&amp;aacute;c.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kho b&amp;aacute;u được ch&amp;ocirc;n giấu?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hay ch&amp;iacute;nh x&amp;aacute;c hơn, [Khoản chi kh&amp;ocirc;ng được c&amp;ocirc;ng khai]. Một b&amp;ecirc;n l&amp;agrave; [Trưng thu Ng&amp;acirc;n s&amp;aacute;ch] v&amp;agrave; b&amp;ecirc;n c&amp;ograve;n lại l&amp;agrave; [B&amp;aacute;o c&amp;aacute;o Thu chi]. Ngay cả khi số lượng được y&amp;ecirc;u cầu khớp với số đ&amp;atilde; chi, nếu c&amp;oacute; nhiều khoản chi hơn dự t&amp;iacute;nh th&amp;igrave; chắc hẳn ch&amp;uacute;ng l&amp;agrave; những khoản đầu tư được dựng l&amp;ecirc;n để tận chi ng&amp;acirc;n s&amp;aacute;ch hoặc c&amp;oacute; lẽ l&amp;agrave; d&amp;ugrave;ng khoản đầu tư l&amp;agrave;m vỏ bọc để tham nhũng. Ch&amp;uacute;ng ta đặt dấu đ&amp;atilde; kiểm tra l&amp;ecirc;n tất cả v&amp;agrave; nếu c&amp;oacute; bất kỳ sự gian lận n&amp;agrave;o, ch&amp;uacute;ng ta sẽ bắt địa phương li&amp;ecirc;n quan phải chi trả phần thua lỗ. Nếu ph&amp;aacute;t hiện một c&amp;aacute; nh&amp;acirc;n biển thủ c&amp;ocirc;ng quỹ, ch&amp;uacute;ng ta sẽ bắt hắn ho&amp;agrave;n trả v&amp;agrave; nếu kh&amp;ocirc;ng đủ khả năng, ta sẽ bắt giữ hắn v&amp;agrave; tịch thu t&amp;agrave;i sản.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;H, hiểu rồi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ấy ngoan ngo&amp;atilde;n l&amp;agrave;m theo lời t&amp;ocirc;i bảo c&amp;oacute; lẽ v&amp;igrave; e ngại th&amp;aacute;i độ của một người vừa thức cả đ&amp;ecirc;m. Cứ thế, sau khoảng 2 giờ y&amp;ecirc;n lặng l&amp;agrave;m việc cạnh t&amp;ocirc;i, c&amp;ocirc; g&amp;aacute;i trong bộ v&amp;aacute;y qu&amp;acirc;n phục đột nhi&amp;ecirc;n bắt chuyện m&amp;agrave; kh&amp;ocirc;ng hề ngừng việc đ&amp;aacute;nh dấu t&amp;agrave;i liệu.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;egrave;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;.Sao vậy? Nếu mệt th&amp;igrave; c&amp;ocirc; cứ nghỉ đi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng phải thế&amp;hellip; T&amp;ocirc;i chưa n&amp;oacute;i với anh t&amp;ecirc;n của t&amp;ocirc;i. T&amp;ocirc;i l&amp;agrave; Liecia Elfrieden, con g&amp;aacute;i của Cựu Ho&amp;agrave;ng Alberto Elfrieden.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;V&amp;agrave;o khoảnh khắc c&amp;ocirc; ấy n&amp;oacute;i điều đ&amp;oacute;, 3 c&amp;acirc;y b&amp;uacute;t t&amp;ocirc;i đang điều khiển ngừng lại. T&amp;ocirc;i mở to mắt nh&amp;igrave;n chằm chằm v&amp;agrave;o c&amp;ocirc; g&amp;aacute;i tự xưng l&amp;agrave; Liecia.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;Vậy ra c&amp;ocirc; l&amp;agrave; c&amp;ocirc;ng ch&amp;uacute;a?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tr&amp;ocirc;ng t&amp;ocirc;i kh&amp;ocirc;ng giống &amp;agrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Th&amp;igrave;, c&amp;ocirc; đang mặc qu&amp;acirc;n phục m&amp;agrave;. Nhưng&amp;hellip;ừ th&amp;igrave;, cũng c&amp;oacute; n&amp;eacute;t giống đấy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;N&amp;oacute;i đến mới thấy, c&amp;ocirc; ấy rất c&amp;oacute; phong th&amp;aacute;i,&amp;nbsp;khiến t&amp;ocirc;i nhận ra d&amp;aacute;ng vẻ cao qu&amp;yacute; của c&amp;ocirc; ấy.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i l&amp;agrave; &amp;hellip; Souma Kazuya. L&amp;uacute;c n&amp;agrave;y t&amp;ocirc;i tạm thời&amp;nbsp;l&amp;agrave; Vua đương nhiệm.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Liecia quay mặt về ph&amp;iacute;a t&amp;ocirc;i. Ch&amp;uacute;ng t&amp;ocirc;i nh&amp;igrave;n thật s&amp;acirc;u v&amp;agrave;o mắt nhau. Kh&amp;ocirc;ng như kẻ vừa bị&amp;nbsp;giật m&amp;igrave;nh l&amp;agrave; t&amp;ocirc;i, đ&amp;ocirc;i đồng tử m&amp;agrave;u ho&amp;agrave;ng kim của c&amp;ocirc; ấy dường như đang đ&amp;aacute;nh gi&amp;aacute; t&amp;ocirc;i. Sau khi nh&amp;igrave;n chằm chằm một l&amp;uacute;c, cuối c&amp;ugrave;ng Liecia l&amp;ecirc;n tiếng.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i kh&amp;ocirc;ng c&amp;ograve;n l&amp;agrave; c&amp;ocirc;ng ch&amp;uacute;a nữa rồi. V&amp;igrave; anh đ&amp;atilde; chiếm đoạt ngai v&amp;agrave;ng n&amp;ecirc;n địa vị của t&amp;ocirc;i c&amp;oacute; đ&amp;ocirc;i ch&amp;uacute;t kh&amp;oacute; xử.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chiếm đoạt&amp;hellip;? C&amp;ocirc; biết đấy, ch&amp;iacute;nh cha c&amp;ocirc; mới l&amp;agrave; người quăng t&amp;ocirc;i l&amp;ecirc;n ngai! Cho d&amp;ugrave; t&amp;ocirc;i chỉ muốn sống một cuộc đời an nh&amp;agrave;n&amp;hellip; Tại sao t&amp;ocirc;i phải g&amp;aacute;nh v&amp;aacute;c trọng tr&amp;aacute;ch nặng nề n&amp;agrave;y cơ chứ.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;.Đ&amp;atilde; c&amp;oacute; chuyện g&amp;igrave; xảy ra? T&amp;ocirc;i biết anh l&amp;agrave; Anh h&amp;ugrave;ng được triệu hồi, nhưng tại sao lại đột nhi&amp;ecirc;n biến th&amp;agrave;nh trao lại ng&amp;ocirc;i b&amp;aacute;u vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i cũng muốn biết lắm chứ. Tất cả những g&amp;igrave; t&amp;ocirc;i muốn chỉ l&amp;agrave; an to&amp;agrave;n cho bản th&amp;acirc;n&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Khi được triệu hồi đến thế giới n&amp;agrave;y, t&amp;ocirc;i su&amp;yacute;t nữa&amp;nbsp;bị đẩy qua cho Đế quốc. Nh&amp;agrave; vua dường như kh&amp;ocirc;ng qu&amp;aacute; thiết tha với chuyện ấy nhưng &amp;ocirc;ng ta cũng chẳng c&amp;ograve;n kế hoạch đặc biệt n&amp;agrave;o. Nếu Đế quốc lại tiếp tục đưa ra một lời k&amp;ecirc;u gọi &amp;eacute;p buộc, &amp;ocirc;ng chẳng thể l&amp;agrave;m g&amp;igrave; kh&amp;aacute;c ngo&amp;agrave;i gửi t&amp;ocirc;i đi. &amp;nbsp;Để rồi nếu t&amp;ocirc;i thực sự phải đến Đế quốc, d&amp;ugrave; số phận t&amp;ocirc;i c&amp;oacute; rẽ sang hướng n&amp;agrave;o th&amp;igrave; cũng chẳng c&amp;oacute; tương lai tươi s&amp;aacute;ng d&amp;agrave;nh cho t&amp;ocirc;i. Để tự vệ, t&amp;ocirc;i cần phải khiến họ lựa chọn&amp;nbsp;&lt;em&gt;kh&amp;ocirc;ng gửi Anh h&amp;ugrave;ng đi&lt;/em&gt;.&lt;/p&gt;

&lt;p&gt;Kế hoạch t&amp;ocirc;i đề xuất l&amp;ecirc;n Nh&amp;agrave; vua l&amp;agrave; c&amp;acirc;u k&amp;eacute;o thời gian bằng c&amp;aacute;ch &amp;ldquo;chi trả tiền trợ chiến&amp;rdquo; v&amp;agrave; sử dụng khoảng thời gian đ&amp;oacute; để th&amp;uacute;c đẩy một &amp;ldquo;ch&amp;iacute;nh s&amp;aacute;ch nước gi&amp;agrave;u qu&amp;acirc;n mạnh&amp;rdquo;. V&amp;igrave; họ n&amp;oacute;i rằng &amp;ldquo;nếu kh&amp;ocirc;ng thể chi trả th&amp;igrave; cứ gửi Anh h&amp;ugrave;ng đi&amp;rdquo;, ch&amp;uacute;ng t&amp;ocirc;i c&amp;oacute; thể trả tiền&amp;nbsp;v&amp;agrave; tho&amp;aacute;t khỏi cục nợ ấy. Rồi họ sẽ mất đi c&amp;aacute;i cớ&amp;nbsp;để can thiệp v&amp;agrave;o. Đ&amp;oacute; l&amp;agrave; một lời đe dọa nhưng kh&amp;ocirc;ng hề nghi&amp;ecirc;m t&amp;uacute;c, t&amp;ocirc;i cho rằng Đế quốc trọng danh dự của m&amp;igrave;nh hơn v&amp;agrave; sẽ kh&amp;ocirc;ng l&amp;agrave;m kh&amp;oacute; đất nước n&amp;agrave;y nữa.&lt;/p&gt;

&lt;p&gt;Bằng&amp;nbsp;khoảng thời gian c&amp;oacute; được nhờ c&amp;aacute;ch đ&amp;oacute;, ch&amp;uacute;ng t&amp;ocirc;i sẽ triển khai &amp;ldquo;ch&amp;iacute;nh s&amp;aacute;ch nước gi&amp;agrave;u qu&amp;acirc;n mạnh&amp;rdquo; v&amp;agrave; x&amp;acirc;y dựng một đất nước kh&amp;ocirc;ng chịu khuất phục d&amp;ugrave; cho Đế quốc c&amp;oacute; đe dọa ch&amp;uacute;ng t&amp;ocirc;i lần nữa.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Tất nhi&amp;ecirc;n, hai người đ&amp;acirc;u dễ bị thuyết phục. &amp;ldquo;Đất nước n&amp;agrave;y kh&amp;ocirc;ng c&amp;oacute; ng&amp;acirc;n quỹ để chi trả tiền trợ chiến&amp;rdquo;, họ n&amp;oacute;i. Nhưng với số t&amp;agrave;i liệu đ&amp;atilde; kiểm tra, t&amp;ocirc;i cho họ thấy rằng, chỉ cần&amp;nbsp;thanh l&amp;yacute; v&amp;agrave;i cơ sở của ch&amp;iacute;nh phủ, thắt chặt chi ti&amp;ecirc;u c&amp;ocirc;ng quỹ v&amp;agrave; b&amp;agrave;n giao lại một số &amp;ldquo;t&amp;agrave;i sản ri&amp;ecirc;ng của Nh&amp;agrave; vua&amp;rdquo; l&amp;agrave; ho&amp;agrave;n to&amp;agrave;n c&amp;oacute; khả năng thanh to&amp;aacute;n. T&amp;ocirc;i đ&amp;atilde;&amp;nbsp;theo học ng&amp;agrave;nh&amp;nbsp;cử nh&amp;acirc;n kinh tế x&amp;atilde; hội với mơ ước trở th&amp;agrave;nh một nh&amp;acirc;n vi&amp;ecirc;n c&amp;ocirc;ng vụ. Những vấn đề n&amp;agrave;y ho&amp;agrave;n to&amp;agrave;n nằm trong chuy&amp;ecirc;n m&amp;ocirc;n của t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Nh&amp;agrave; vua kh&amp;ocirc;ng y&amp;ecirc;n l&amp;ograve;ng&amp;nbsp;về bản kế hoạch nhưng Thủ tướng Markus dường như rất h&amp;aacute;o hức. &amp;Ocirc;ng ấy c&amp;oacute; vẻ đ&amp;atilde; đ&amp;aacute;nh gi&amp;aacute; rằng cải c&amp;aacute;ch nền kinh tế sẽ đem lại lợi &amp;iacute;ch cao hơn cho đất nước thay v&amp;igrave; đẩy Anh h&amp;ugrave;ng đi để duy tr&amp;igrave; trạng th&amp;aacute;i hiện tại. T&amp;ocirc;i thấy nhẹ nh&amp;otilde;m trước sự nhiệt t&amp;igrave;nh&amp;nbsp;của Thủ tướng. Với tư c&amp;aacute;ch người đề xuất &amp;yacute; kiến, chắc t&amp;ocirc;i sẽ phải l&amp;agrave;m một v&amp;agrave;i c&amp;ocirc;ng việc g&amp;igrave; đ&amp;oacute;, c&amp;oacute; lẽ ở cương vị một nh&amp;acirc;n vi&amp;ecirc;n t&amp;agrave;i ch&amp;iacute;nh, gi&amp;uacute;p đỡ c&amp;ocirc;ng cuộc cải c&amp;aacute;ch&amp;hellip;..ấy l&amp;agrave; t&amp;ocirc;i nghĩ vậy.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nhưng rồi họ đưa t&amp;ocirc;i l&amp;ecirc;n l&amp;agrave;m Vua.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Agrave;, ừm&amp;hellip; , t&amp;ocirc;i &amp;agrave;, mong anh th&amp;ocirc;ng cảm?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;ocirc; kh&amp;ocirc;ng cần xin lỗi đ&amp;acirc;u. Thực ra c&amp;ocirc; cũng l&amp;agrave; nạn nh&amp;acirc;n đấy, đột nhi&amp;ecirc;n được th&amp;ocirc;ng b&amp;aacute;o m&amp;igrave;nh c&amp;oacute; một vị h&amp;ocirc;n phu.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Phải, đ&amp;uacute;ng thế&amp;hellip; chờ đ&amp;atilde;, hử? Kh&amp;ocirc;ng biết trong hai ta ai ở địa vị cao hơn vậy? T&amp;ocirc;i kh&amp;ocirc;ng n&amp;oacute;i chuyện với anh bằng&amp;nbsp;k&amp;iacute;nh ngữ c&amp;oacute; ổn kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Một b&amp;ecirc;n ta c&amp;oacute; nguy&amp;ecirc;n thường d&amp;acirc;n, Nh&amp;agrave; vua đương nhiệm. B&amp;ecirc;n kia ta c&amp;oacute; Cựu C&amp;ocirc;ng ch&amp;uacute;a, ứng vi&amp;ecirc;n Ho&amp;agrave;ng hậu hiện tại.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;.T&amp;ocirc;i nghĩ c&amp;ocirc; cứ n&amp;oacute;i chuyện b&amp;igrave;nh thường th&amp;ocirc;i.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;.. V&amp;acirc;ng.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;ograve;n nữa, đừng bận t&amp;acirc;m về h&amp;ocirc;n ước nh&amp;eacute;. T&amp;ocirc;i chỉ giữ ngai v&amp;agrave;ng v&amp;agrave;o l&amp;uacute;c n&amp;agrave;y th&amp;ocirc;i. C&amp;oacute; thể t&amp;ocirc;i sẽ nhường lại ng&amp;ocirc;i Vua sau v&amp;agrave;i năm nữa.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ơ, tại sao!?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ngay từ đầu, t&amp;ocirc;i đ&amp;atilde; kh&amp;ocirc;ng c&amp;oacute; &amp;yacute; định l&amp;agrave;m việc kh&amp;aacute;c ngo&amp;agrave;i kiếm đủ [trợ ph&amp;iacute;] để &amp;nbsp;t&amp;ocirc;i kh&amp;ocirc;ng bị đẩy sang Đế quốc. Giờ th&amp;igrave; ngai v&amp;agrave;ng đ&amp;atilde; được trao cho t&amp;ocirc;i, &amp;iacute;t nhất t&amp;ocirc;i sẽ l&amp;agrave;m cho nền kinh tế đi đ&amp;uacute;ng hướng c&amp;ograve;n sau n&amp;agrave;y người d&amp;acirc;n sẽ lựa chọn hướng đi kế tiếp. Tất nhi&amp;ecirc;n, h&amp;ocirc;n ước bị hủy cũng chẳng sao cả.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Liecia mở to mắt nh&amp;igrave;n chằm chằm v&amp;agrave;o Soma, người vừa n&amp;oacute;i ra&amp;nbsp;những lời ấy.&lt;/p&gt;

&lt;p&gt;(Kh&amp;ocirc;ng, kh&amp;ocirc;ng n&amp;oacute;i th&amp;igrave; dễ nhưng anh ta c&amp;oacute; hiểu việc đ&amp;oacute; kh&amp;oacute; thực hiện&amp;nbsp;đến nhường n&amp;agrave;o kh&amp;ocirc;ng).&lt;/p&gt;

&lt;p&gt;Ngay cả Liecia bị &amp;aacute;m ảnh với qu&amp;acirc;n sự v&amp;agrave; kh&amp;ocirc;ng th&amp;ocirc;ng thạo việc trị quốc cũng hiểu được t&amp;igrave;nh h&amp;igrave;nh của đất nước. N&amp;oacute; đang đứng b&amp;ecirc;n bờ vực bị [Chiếu b&amp;iacute;]. Đầu ti&amp;ecirc;n l&amp;agrave; thiếu thốn lương thực, rồi đến suy tho&amp;aacute;i kinh tế, d&amp;ograve;ng người tị nạn đổ về v&amp;igrave; cuộc x&amp;acirc;m lăng của Quỷ Vương; đến &amp;aacute;p lực từ Đế quốc Grand Chaos&amp;nbsp;&amp;hellip; Tất cả đều những vấn nạn&amp;nbsp;cần giải quyết. T&amp;oacute;m lại, d&amp;ugrave; Cựu ho&amp;agrave;ng c&amp;oacute; tiếp tục trị v&amp;igrave; th&amp;igrave; n&amp;oacute; cũng sẽ chỉ duy tr&amp;igrave;&amp;nbsp;th&amp;ecirc;m v&amp;agrave;i năm nữa m&amp;agrave; th&amp;ocirc;i. Quả nhi&amp;ecirc;n l&amp;agrave; cựu học vi&amp;ecirc;n&amp;nbsp;học viện qu&amp;acirc;n sự, Liecia c&amp;oacute; thể điềm tĩnh nh&amp;igrave;n nhận t&amp;igrave;nh h&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;V&amp;igrave; thế c&amp;ocirc; cũng hiểu phần n&amp;agrave;o h&amp;agrave;nh động lập tức nhường ng&amp;ocirc;i cho người m&amp;agrave; cha c&amp;ocirc; cảm thấy xuất sắc hơn m&amp;igrave;nh. Nhưng sau đ&amp;oacute;, liệu anh ta c&amp;oacute; l&amp;agrave;m nổi c&amp;aacute;i việc&amp;nbsp;&amp;lsquo;&lt;em&gt;đưa nền kinh tế đi đ&amp;uacute;ng hướng&lt;/em&gt;&amp;rsquo; n&amp;agrave;y kh&amp;ocirc;ng? Cứ cho l&amp;agrave; c&amp;oacute; đi, vậy người d&amp;acirc;n sẽ để cho&lt;em&gt;&amp;nbsp;Vị vua đạt được chiến c&amp;ocirc;ng ấy&lt;/em&gt;&amp;nbsp;cứ thế từ bỏ ngai v&amp;agrave;ng ư?&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;.Vậy l&amp;agrave;, anh nghĩ m&amp;igrave;nh c&amp;oacute; thể kiếm đủ trợ ph&amp;iacute; sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hm? &amp;Agrave;, t&amp;ocirc;i đ&amp;atilde; kiếm đủ trợ ph&amp;iacute; cho Đế quốc rồi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;&amp;hellip;&amp;hellip;..Ơ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hiện giờ t&amp;ocirc;i đang huy động vốn để tiến h&amp;agrave;nh cải c&amp;aacute;ch. Thực l&amp;ograve;ng m&amp;agrave; n&amp;oacute;i, khoản n&amp;agrave;y c&amp;ograve;n lớn hơn cả trợ ph&amp;iacute;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Khoan&amp;hellip;. từ từ c&amp;aacute;i đ&amp;atilde;! Anh ta n&amp;oacute;i&amp;nbsp;&lt;em&gt;kiếm đủ rồi&lt;/em&gt;? Số tiền m&amp;agrave; Đế quốc y&amp;ecirc;u cầu được cho l&amp;agrave; ngang ngửa 1/3 ng&amp;acirc;n s&amp;aacute;ch h&amp;agrave;ng năm của cả nước đấy. N&amp;oacute; cũng c&amp;oacute; thể bằng tổng ng&amp;acirc;n s&amp;aacute;ch h&amp;agrave;ng năm của một nước nhỏ v&amp;agrave; anh ta n&amp;oacute;i rằng m&amp;igrave;nh đ&amp;atilde; c&amp;oacute; số tiền ấy trong tay?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Anh kiếm đ&amp;acirc;u ra số&amp;hellip;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i đ&amp;atilde; b&amp;aacute;n đi khoảng một phần ba số b&amp;aacute;u vật trong bảo khố.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Bảo khố&amp;hellip;.? Kho b&amp;aacute;u Quốc gia sao!?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Anh ta d&amp;aacute;m b&amp;aacute;n cả Kho b&amp;aacute;u Quốc gia &amp;aacute;!? Anh ta đang nghĩ c&amp;aacute;i qu&amp;aacute;i g&amp;igrave; vậy!&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i chất vấn Soma, c&amp;aacute;i người b&amp;aacute;n kho b&amp;aacute;u m&amp;agrave; như b&amp;aacute;n c&amp;aacute;&amp;nbsp;ở chợ.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kho b&amp;aacute;u Quốc gia l&amp;agrave; t&amp;agrave;i sản chung của cả đất nước đấy anh biết kh&amp;ocirc;ng! Tự &amp;yacute; b&amp;aacute;n th&amp;aacute;o n&amp;oacute; đi l&amp;agrave; h&amp;agrave;nh vi phản quốc!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N, n&amp;egrave;, b&amp;igrave;nh tĩnh lại n&amp;agrave;o. C&amp;ocirc; n&amp;oacute;i rằng đ&amp;oacute; l&amp;agrave; t&amp;agrave;i sản chung của đất nước vậy th&amp;igrave; chẳng phải b&amp;aacute;n n&amp;oacute; đi v&amp;igrave; lợi &amp;iacute;ch của to&amp;agrave;n bộ quốc gia l&amp;agrave; điều đ&amp;aacute;ng hoan ngh&amp;ecirc;nh sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;uacute;ng, nhưng&amp;hellip;. Trong số đ&amp;oacute; c&amp;oacute; những vật mang gi&amp;aacute; trị văn h&amp;oacute;a v&amp;agrave; lịch sử.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ah- T&amp;ocirc;i đ&amp;atilde; loại những vật đ&amp;oacute; ra rồi. Những thứ t&amp;ocirc;i đ&amp;atilde; b&amp;aacute;n l&amp;agrave; t&amp;agrave;i sản hữu h&amp;igrave;nh như đ&amp;aacute; qu&amp;yacute; v&amp;agrave; trang sức.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Soma lục t&amp;igrave;m v&amp;agrave; đưa ra một quyển catal&amp;ocirc; tự chế liệt k&amp;ecirc; những vật c&amp;oacute; trong Kho b&amp;aacute;u Quốc gia từ đống t&amp;agrave;i liệu.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i đ&amp;atilde; chia Kho b&amp;aacute;u Quốc gia th&amp;agrave;nh [Nh&amp;oacute;m A: vật mang gi&amp;aacute; trị văn h&amp;oacute;a], [Nh&amp;oacute;m B: vật kh&amp;ocirc;ng mang gi&amp;aacute; trị văn h&amp;oacute;a nhưng c&amp;oacute; gi&amp;aacute; trị vật chất] v&amp;agrave; [Nh&amp;oacute;m C: số c&amp;ograve;n lại], v&amp;agrave; mới chỉ b&amp;aacute;n đi Nh&amp;oacute;m B. Thay v&amp;igrave; b&amp;aacute;n đi, sẽ tốt hơn nếu thường xuy&amp;ecirc;n trưng b&amp;agrave;y Nh&amp;oacute;m A tại triển l&amp;atilde;m hoặc viện bảo t&amp;agrave;ng để c&amp;oacute; nguồn thu ngoại tệ d&amp;agrave;i hạn.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cũng c&amp;oacute; l&amp;yacute;,&amp;nbsp;vậy c&amp;ograve;n&amp;hellip; Nh&amp;oacute;m C?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Vật phẩm ph&amp;eacute;p thuật, s&amp;aacute;ch thần ch&amp;uacute; v&amp;agrave; c&amp;aacute;c thứ kh&amp;aacute;c. Thực ra t&amp;ocirc;i kh&amp;ocirc;ng biết phải l&amp;agrave;m g&amp;igrave; với ch&amp;uacute;ng. C&amp;oacute; thể coi ch&amp;uacute;ng l&amp;agrave; vũ kh&amp;iacute;. V&amp;igrave; thế m&amp;agrave; t&amp;ocirc;i kh&amp;ocirc;ng thể b&amp;aacute;n đi hoặc trưng b&amp;agrave;y ch&amp;uacute;ng được. Mặc d&amp;ugrave; [Bộ trang bị của Anh h&amp;ugrave;ng] c&amp;oacute; vẻ sẽ b&amp;aacute;n được gi&amp;aacute;&amp;nbsp;đấy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;L&amp;agrave;m ơn đừng nghĩ tới chuyện đ&amp;oacute;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Anh vẫn l&amp;agrave; Anh h&amp;ugrave;ng cơ m&amp;agrave;, d&amp;ugrave; chỉ trong tho&amp;aacute;ng chốc&amp;hellip; A, nhưng giờ th&amp;igrave; anh l&amp;agrave; Vua rồi.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nhưng nếu sở hữu số tiền như thế, chẳng phải ch&amp;uacute;ng ta n&amp;ecirc;n sử dụng n&amp;oacute; để tự vũ trang, chuẩn bị chống lại Đế quốc sao? Tại học viện t&amp;ocirc;i được dạy rằng [Th&amp;agrave; đặt cược 1000 y&amp;ecirc;n v&amp;agrave;o quốc ph&amp;ograve;ng c&amp;ograve;n hơn cống nạp 1 rin*].&amp;rdquo;&lt;/p&gt;

&lt;p&gt;[*TN: 1 rin = 1/1000 yen. V&amp;agrave; nước n&amp;agrave;y d&amp;ugrave;ng đồng y&amp;ecirc;n wow]&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i hiểu c&amp;ocirc; muốn n&amp;oacute;i g&amp;igrave;. Để t&amp;ocirc;i tặng c&amp;ocirc; một c&amp;acirc;u tục ngữ ngắn hơn nh&amp;eacute;. [Thời gian l&amp;agrave; v&amp;agrave;ng bạc]. Hiệu quả của việc&amp;nbsp; đem&amp;nbsp;chiến ph&amp;iacute; l&amp;agrave;m vật hy sinh l&amp;agrave; ta c&amp;oacute; thể kiếm th&amp;ecirc;m cho đất nước n&amp;agrave;y ch&amp;uacute;t &amp;lsquo;Thời gian&amp;rsquo; cực kỳ cần thiết.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;aacute;ch n&amp;oacute;i của anh h&amp;igrave;nh như c&amp;oacute; vấn đề?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đừng bận t&amp;acirc;m về n&amp;oacute;. T&amp;oacute;m lại,&amp;nbsp;d&amp;ugrave; ch&amp;uacute;ng ta c&amp;oacute; tăng cường vũ trang cũng chẳng c&amp;oacute; nghĩa l&amp;yacute; g&amp;igrave; nếu ta kh&amp;ocirc;ng giải quyết được c&amp;aacute;c vấn đề&amp;nbsp;trong nội bộ đất nước. Chừng n&amp;agrave;o vấn đề lương thực v&amp;agrave; người tị nạn c&amp;ograve;n chưa được giải quyết, ch&amp;uacute;ng ta sẽ tiếp tục mất đi sự ủng hộ của nh&amp;acirc;n d&amp;acirc;n. Nếu điều đ&amp;oacute; xảy ra, ch&amp;uacute;ng ta sẽ trở th&amp;agrave;nh một nước yếu đến mức Đế quốc chỉ cần ch&amp;acirc;m th&amp;ecirc;m ch&amp;uacute;t dầu l&amp;agrave; một cuộc khởi nghĩa sẽ thực sự b&amp;ugrave;ng nổ.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng thể n&amp;agrave;o&amp;hellip;. Nh&amp;acirc;n d&amp;acirc;n phải nhận ra Đế quốc l&amp;agrave; mối đe dọa cỡ n&amp;agrave;o chứ.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;oacute; chỉ l&amp;agrave;&amp;nbsp;l&amp;yacute; tưởng. [Bần c&amp;ugrave;ng sinh đạo tặc]. Rốt cuộc, bụng rỗng th&amp;igrave; để &amp;yacute; đến đạo đức hay l&amp;ograve;ng y&amp;ecirc;u nước l&amp;agrave;m g&amp;igrave;. Kh&amp;ocirc;ng c&amp;oacute; chỗ để luồn l&amp;aacute;ch, họ sẽ chẳng thể nghĩ cho người kh&amp;aacute;c đ&amp;acirc;u.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;***&lt;/p&gt;

&lt;p&gt;&amp;Aacute;nh mắt Soma qu&amp;aacute; lạnh lẽo&amp;nbsp;khi n&amp;oacute;i ra điều đ&amp;oacute;.&amp;nbsp;Một quan điểm thực tế đến phũ ph&amp;agrave;ng. T&amp;ocirc;i nghĩ n&amp;oacute; rất đ&amp;uacute;ng trọng t&amp;acirc;m. Chỉ l&amp;agrave;&amp;hellip; t&amp;ocirc;i kh&amp;ocirc;ng biết nữa.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Vậy giờ ta n&amp;ecirc;n trở lại với c&amp;ocirc;ng việc chứ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cảm thấy ngực m&amp;igrave;nh như thắt lại bởi &amp;aacute;nh mắt của anh ấy.&lt;/p&gt;

&lt;p&gt;***&lt;/p&gt;

&lt;p&gt;Ch&amp;uacute;ng t&amp;ocirc;i tiếp tục th&amp;ecirc;m một ng&amp;agrave;y nữa v&amp;agrave; cuối c&amp;ugrave;ng cũng thu được một khoản tiền nhất định. Mặc d&amp;ugrave; n&amp;oacute; kh&amp;ocirc;ng khiến ch&amp;uacute;ng t&amp;ocirc;i sung t&amp;uacute;c hơn nhưng c&amp;oacute; thể coi đ&amp;oacute; l&amp;agrave; nguồn vốn để đẩy mạnh cải c&amp;aacute;ch. Huy động được chừng n&amp;agrave;y ng&amp;acirc;n s&amp;aacute;ch chỉ từ l&amp;atilde;nh thổ m&amp;agrave; Ho&amp;agrave;ng gia trực tiếp kiểm so&amp;aacute;t m&amp;agrave; kh&amp;ocirc;ng cần đụng đến &amp;lsquo;Ba vị C&amp;ocirc;ng Tước&amp;rsquo; đ&amp;atilde; l&amp;agrave; rất đ&amp;aacute;ng khen rồi&lt;/p&gt;

&lt;p&gt;Quanh ph&amp;ograve;ng chỉ c&amp;ograve;n x&amp;aacute;c sống nằm la liệt. Mấy vị nội quan c&amp;oacute; những người ngủ gục mặt xuống b&amp;agrave;n v&amp;agrave; cũng c&amp;oacute; những người ngửa mặt tựa v&amp;agrave;o lưng ghế ngủ kh&amp;ograve;. C&amp;ograve;n t&amp;ocirc;i, t&amp;ocirc;i cũng đ&amp;atilde; thức trắng 4 đ&amp;ecirc;m rồi, nhưng bằng c&amp;aacute;ch chia &amp;yacute; thức m&amp;igrave;nh l&amp;agrave;m ba nhờ sử dụng &amp;yacute; nghĩ đồng thời, t&amp;ocirc;i c&amp;oacute; thể để ch&amp;uacute;ng thay phi&amp;ecirc;n nhau nghỉ ngơi n&amp;ecirc;n t&amp;ocirc;i kh&amp;ocirc;ng cảm thấy mệt mỏi về tinh thần (nhưng thể lực kiệt quệ khiến t&amp;ocirc;i kh&amp;ocirc;ng muốn sử dụng thường xuy&amp;ecirc;n).&lt;/p&gt;

&lt;p&gt;Trong l&amp;uacute;c đ&amp;oacute;, Liecia nằm ngủ tr&amp;ecirc;n ghế sofa tại Ph&amp;ograve;ng nghị sự. T&amp;ocirc;i lặng lẽ lại gần v&amp;agrave; ngồi tr&amp;ecirc;n tay vịn của chiếc ghế sofa, ngắm nh&amp;igrave;m Liecia đang say ngủ. Thế m&amp;agrave; c&amp;ocirc; ấy cũng gi&amp;uacute;p t&amp;ocirc;i l&amp;agrave;m việc đến tận gần s&amp;aacute;ng. Chắc hẳn c&amp;ocirc; ấy c&amp;oacute; rất nhiều điều cần n&amp;oacute;i sau khi đột ngột xuất hiện một vị h&amp;ocirc;n phu nhưng t&amp;ocirc;i phải cảm ơn c&amp;ocirc; ấy v&amp;igrave; đ&amp;atilde; hợp t&amp;aacute;c l&amp;agrave;m việc c&amp;ugrave;ng t&amp;ocirc;i sau tất cả. T&amp;ocirc;i vuốt nhẹ m&amp;aacute;i đầu của Liecia. M&amp;aacute;i t&amp;oacute;c mềm mượt của c&amp;ocirc; ấy lướt nhẹ giữa qua c&amp;aacute;c ng&amp;oacute;n tay &amp;nbsp;t&amp;ocirc;i. C&amp;oacute; lẽ t&amp;ocirc;i n&amp;ecirc;n đỗ lỗi cho cảm gi&amp;aacute;c nhẹ nh&amp;otilde;m sau khi l&amp;agrave;m việc trong một thời gia n qu&amp;aacute; d&amp;agrave;i. Một h&amp;agrave;nh động kh&amp;aacute; xấu hổ&amp;nbsp;nếu l&amp;agrave;m l&amp;uacute;c tỉnh t&amp;aacute;o.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Mu-&amp;hellip;&amp;hellip;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Liecia r&amp;ecirc;n khe khẽ v&amp;agrave; t&amp;ocirc;i bỏ tay khỏi m&amp;aacute;i t&amp;oacute;c c&amp;ocirc; ấy. L&amp;aacute;t sau, Liecia mở mắt v&amp;agrave; đột ngột bật dậy. C&amp;ocirc; ấy vẫn c&amp;ograve;n ng&amp;aacute;i ngủ, ng&amp;acirc;y ra nh&amp;igrave;n khắp xung quanh. T&amp;ocirc;i tủm tỉm cười gọi c&amp;ocirc; ấy.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ch&amp;agrave;o buổi s&amp;aacute;ng Liecia.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ah, ch&amp;agrave;o buổi s&amp;aacute;ng&amp;hellip;.hử? T&amp;ocirc;i ngủ qu&amp;ecirc;n mất&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;ocirc;ng việc đ&amp;atilde; xong rồi. C&amp;ocirc; muốn ngủ th&amp;ecirc;m ch&amp;uacute;t nữa kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ah, kh&amp;ocirc;ng. T&amp;ocirc;i ổn m&amp;agrave;. Thay v&amp;igrave; lo cho t&amp;ocirc;i, anh sao rồi Soma? Anh chưa hề chợp mắt t&amp;yacute; n&amp;agrave;o phải kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Dường như c&amp;ocirc; ấy đ&amp;atilde; ho&amp;agrave;n to&amp;agrave;n tỉnh t&amp;aacute;o v&amp;agrave; t&amp;ocirc;i thực l&amp;ograve;ng rất hạnh ph&amp;uacute;c v&amp;igrave; c&amp;ocirc; ấy đ&amp;atilde; lo lắng cho t&amp;ocirc;i. T&amp;ocirc;i đứng dậy khỏi tay vịn v&amp;agrave; vươi vai thật rộng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i đ&amp;atilde; định sẽ thoải m&amp;aacute;i nghỉ ngơi sau vụ n&amp;agrave;y, nhưng&amp;hellip; ồ, đ&amp;uacute;ng rồi. C&amp;ocirc; đi c&amp;ugrave;ng t&amp;ocirc;i một l&amp;aacute;t chứ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hử? Đến đ&amp;acirc;u vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Dạo chơi trước khi l&amp;ecirc;n giường.&amp;rdquo;&lt;/p&gt;
', 1, CAST(0x0000ADE4016CE270 AS DateTime), CAST(0x0000ADE4016CE270 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2085, 1049, 1039, N'Chương 2:  Gây quỹ 2', N'&lt;p&gt;&lt;strong&gt;*Trans : Koru, VampireKingW | Edit: Koru (t&amp;ocirc;n trọng người dịch)&lt;/strong&gt;&lt;/p&gt;

&lt;p&gt;B&amp;igrave;nh minh vừa h&amp;eacute;, hai người ch&amp;uacute;ng t&amp;ocirc;i, Liecia v&amp;agrave; t&amp;ocirc;i, đ&amp;atilde; ngồi tr&amp;ecirc;n lưng ngựa. Vừa h&amp;iacute;t thở kh&amp;ocirc;ng kh&amp;iacute; c&amp;ograve;n đọng hơi sương, Celine, ch&amp;uacute; ngựa ưa th&amp;iacute;ch của Liecia vừa phi nước đại, kh&amp;ocirc;ng hề để &amp;yacute; đến sức nặng của hai người tr&amp;ecirc;n lưng n&amp;oacute;. Ch&amp;uacute;ng t&amp;ocirc;i tựa như hai người đang cưỡi tr&amp;ecirc;n xe m&amp;aacute;y, chỉ c&amp;oacute; điều Liecia mới l&amp;agrave; người cầm cương c&amp;ograve;n kẻ ( đ&amp;aacute;ng thương) đang &amp;ocirc;m chặt lấy v&amp;ograve;ng eo con kiến của n&amp;agrave;ng lại l&amp;agrave; t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo; &amp;Ocirc;i, n&amp;agrave;y, đừng &amp;ocirc;m chặt thế chứ.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo; Kh&amp;ocirc;ng, ờ th&amp;igrave;, đ&amp;aacute;ng sợ lắm.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo; Sao anh h&amp;egrave;n qu&amp;aacute; vậy. Thường th&amp;igrave; đ&amp;agrave;n &amp;ocirc;ng mới l&amp;agrave; người cầm cương chứ.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo; Đ&amp;agrave;nh chịu, đ&amp;acirc;y l&amp;agrave; lần đầu ti&amp;ecirc;n t&amp;ocirc;i cưỡi ngựa m&amp;agrave;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Một người Nhật hiện đại, sinh ra v&amp;agrave; lớn l&amp;ecirc;n ở Tokyo cũng chẳng c&amp;oacute; bao nhi&amp;ecirc;u cơ hội để cưỡi ngựa. C&amp;ugrave;ng lắm l&amp;agrave; cưỡi tr&amp;ecirc;n lưng ngựa l&amp;ugrave;n c&amp;oacute; người dắt trong sở th&amp;uacute; như hồi t&amp;ocirc;i c&amp;ograve;n nhỏ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo; N&amp;agrave;y anh, bất kỳ người trưởng th&amp;agrave;nh n&amp;agrave;o ở đất nước n&amp;agrave;y, d&amp;ugrave; l&amp;agrave; n&amp;ocirc;ng d&amp;acirc;n hay qu&amp;yacute; tộc đều cũng đều biết cưỡi ngựa đấy nh&amp;eacute;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo; Thật kh&amp;ocirc;ng may, ở nước t&amp;ocirc;i c&amp;oacute; nhiều loại phương tiện tiện lợi hơn.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo; Nhưng phương tiện giao th&amp;ocirc;ng chủ yếu ở đ&amp;acirc;y l&amp;agrave; ngựa. Từ giờ anh sẽ sống ở đ&amp;acirc;y th&amp;igrave; tại sao anh kh&amp;ocirc;ng tập l&amp;agrave;m quen với ch&amp;uacute;ng.&amp;rdquo; &amp;ldquo;&amp;hellip;&amp;hellip; L&amp;uacute;c n&amp;agrave;o t&amp;ocirc;i rảnh đ&amp;atilde;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo; T&amp;ugrave;y anh th&amp;ocirc;i&amp;hellip;. M&amp;agrave; mấy loại phương tiện của nước anh c&amp;oacute; vẻ th&amp;uacute; vị nhỉ.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ừm. C&amp;oacute; loại h&amp;igrave;nh hộp, gắn b&amp;aacute;nh xe chở được rất nhiều người mỗi chuyến&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Vừa tr&amp;ograve; chuyện ch&amp;uacute;ng t&amp;ocirc;i vừa phi nước đại. L&amp;uacute;c n&amp;agrave;y l&amp;agrave; khoảng 6 giờ s&amp;aacute;ng. Đ&amp;atilde; sắp đến giờ l&amp;agrave;m việc. Vẫn chưa c&amp;oacute; cửa h&amp;agrave;ng n&amp;agrave;o mở cửa tr&amp;ecirc;n phố mua sắm v&amp;agrave; đ&amp;acirc;y đ&amp;oacute; chỉ l&amp;aacute;c đ&amp;aacute;c v&amp;agrave;i người qua đường. Rời khỏi khu vực th&amp;agrave;nh thị, ch&amp;uacute;ng t&amp;ocirc;i cuối c&amp;ugrave;ng cũng đến được bức tường bao quanh th&amp;agrave;nh phố. Ch&amp;uacute;ng t&amp;ocirc;i n&amp;oacute;i chuyện với l&amp;iacute;nh g&amp;aacute;c v&amp;agrave; ra ngo&amp;agrave;i th&amp;agrave;nh bằng cổng phụ b&amp;ecirc;n cạnh c&amp;aacute;nh cổng ch&amp;iacute;nh (cổng ch&amp;iacute;nh mở l&amp;uacute;c 7 giờ s&amp;aacute;ng) chỉ tồn tại trong những bộ phim giả tưởng của nước ngo&amp;agrave;i.&lt;/p&gt;

&lt;p&gt;Lần n&amp;agrave;y Liecia l&amp;agrave; người thuyết phục họ.Một vị vua mới l&amp;ecirc;n ng&amp;ocirc;i kh&amp;ocirc;ng thể ra ngo&amp;agrave;i m&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; người bảo vệ. Đ&amp;oacute; l&amp;agrave; l&amp;yacute; do sỹ quan Liecia viện một c&amp;aacute;i l&amp;yacute; do kiểu như &amp;ldquo;T&amp;ocirc;i đang chấp h&amp;agrave;nh mệnh lệnh của Nh&amp;agrave; vua&amp;rdquo; để giải quyết vấn đề. Sau th&amp;agrave;nh c&amp;ocirc;ng qua cửa, Liecia nhăn nh&amp;oacute;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;L&amp;agrave; mệnh lệnh của đức vua đ&amp;oacute;. T&amp;ocirc;i biết giải th&amp;iacute;ch ra sao với cấp tr&amp;ecirc;n đ&amp;acirc;y&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i &amp;acirc;m thầm lờ c&amp;ocirc; ấy đi. Rồi sau một l&amp;uacute;c sau, ch&amp;uacute;ng t&amp;ocirc;i cuối c&amp;ugrave;ng cũng đến được nơi cần đến.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;.Dừng lại n&amp;agrave;o.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i y&amp;ecirc;u cầu Liecia xuống ngựa. C&amp;ocirc; ấy nh&amp;igrave;n t&amp;ocirc;i bằng &amp;aacute;nh mắt nghi ngờ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Anh muốn tới đ&amp;acirc;y? Nhưng ngo&amp;agrave;i đồng ruộng ra th&amp;igrave; ở đ&amp;acirc;y c&amp;oacute; g&amp;igrave; đ&amp;aacute;ng xem đ&amp;acirc;u chứ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đ&amp;uacute;ng như lời Liecia, quanh ch&amp;uacute;ng t&amp;ocirc;i chẳng c&amp;oacute; g&amp;igrave; kh&amp;aacute;c ngo&amp;agrave;i những c&amp;aacute;nh đồng xanh mướt. Những c&amp;aacute;nh đồng xanh trải d&amp;agrave;i ng&amp;uacute;t tầm mắt vẫn c&amp;ograve;n đọng hơi sương. Nơi n&amp;agrave;y&amp;hellip;.kh&amp;ocirc;ng sai, ch&amp;iacute;nh l&amp;agrave; nơi n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i muốn cho c&amp;ocirc; nh&amp;igrave;n thấy cảnh n&amp;agrave;y.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;aacute;nh đồng? Ừm, t&amp;ocirc;i thấy ch&amp;uacute;ng cũng đẹp, vẫn c&amp;ograve;n đọng hơi sương n&amp;agrave;y&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đẹp ư&amp;hellip;. Ch&amp;iacute;nh v&amp;igrave; vẻ đẹp n&amp;agrave;y m&amp;agrave; nh&amp;acirc;n d&amp;acirc;n đang chết đ&amp;oacute;i đấy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Sa&amp;hellip;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Mắt Liecia mở to v&amp;igrave; bất ngờ. T&amp;ocirc;i nhếch m&amp;eacute;p cười.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nh&amp;igrave;n kỹ đi. Những c&amp;aacute;nh đồng&amp;nbsp;&lt;em&gt;kh&amp;ocirc;ng thể ăn được&lt;/em&gt;&amp;nbsp;l&amp;agrave; nguy&amp;ecirc;n nh&amp;acirc;n g&amp;acirc;y ra vấn đề lương thực cho đất nước n&amp;agrave;y.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;***&lt;/p&gt;

&lt;p&gt;Những c&amp;aacute;nh đồng kh&amp;ocirc;ng thể ăn được. Đ&amp;oacute; l&amp;agrave; từ Soma d&amp;ugrave;ng để chỉ những c&amp;aacute;nh đồng trải d&amp;agrave;i trước mặt ch&amp;uacute;ng t&amp;ocirc;i với nụ cười chế nhạo.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;. &amp;yacute; anh l&amp;agrave; g&amp;igrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ch&amp;iacute;nh l&amp;agrave; &amp;yacute; đ&amp;oacute;. Trải d&amp;agrave;i trước mắt ch&amp;uacute;ng ta, tất cả đều l&amp;agrave; &amp;ldquo;b&amp;ocirc;ng&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;B&amp;ocirc;ng&amp;hellip; A! Th&amp;igrave; ra kh&amp;ocirc;ng ắn được l&amp;agrave; &amp;yacute; n&amp;agrave;y.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;B&amp;ocirc;ng l&amp;agrave; nguy&amp;ecirc;n liệu th&amp;ocirc; d&amp;ugrave;ng để sản xuất sợi b&amp;ocirc;ng. Tất nhi&amp;ecirc;n l&amp;agrave; kh&amp;ocirc;ng d&amp;ugrave;ng để ăn. Soma ngồi xuống rồi chống khủy tay l&amp;ecirc;n đầu gối.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;oacute;m lại, sự mở rộng của c&amp;aacute;c c&amp;aacute;nh đồng như thế n&amp;agrave;y l&amp;agrave; nguy&amp;ecirc;n nh&amp;acirc;n g&amp;acirc;y ra vấn đề lương thực hiện nay.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;.Hả?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;oacute; phải anh ta vừa thản nhi&amp;ecirc;n nhắc một vấn đề v&amp;ocirc; c&amp;ugrave;ng nghi&amp;ecirc;m trọng kh&amp;ocirc;ng nhỉ? Vấn đề lương thực &amp;aacute;? Kh&amp;ocirc;ng th&amp;egrave;m để &amp;yacute; đến vẻ mặt mất hờn của t&amp;ocirc;i, Soma n&amp;oacute;i tiếp.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i t&amp;igrave;m ra vấn đề n&amp;agrave;y khi đang ph&amp;acirc;n loại t&amp;agrave;i liệu. Cũng v&amp;igrave; sự b&amp;agrave;nh trướng của L&amp;atilde;nh địa Quỷ n&amp;ecirc;n nhu cầu cho nhu yếu phẩm như quần &amp;aacute;o đ&amp;atilde; tăng l&amp;ecirc;n. Một c&amp;aacute;ch tự nhi&amp;ecirc;n, nhu cầu cho nguy&amp;ecirc;n liệu th&amp;ocirc;, b&amp;ocirc;ng, cũng tăng theo. Khi b&amp;ocirc;ng l&amp;ecirc;n gi&amp;aacute;, người ta chỉ c&amp;oacute; thể b&amp;aacute;n những g&amp;igrave; m&amp;igrave;nh đ&amp;atilde; sản xuất ra n&amp;ecirc;n người n&amp;ocirc;ng d&amp;acirc;n đ&amp;atilde; ngừng việc canh t&amp;aacute;c c&amp;acirc;y lương thực m&amp;agrave; họ vẫn trồng v&amp;agrave; c&amp;ugrave;ng l&amp;uacute;c chuyển sang trồng b&amp;ocirc;ng. Ch&amp;uacute;ng l&amp;agrave; những [c&amp;acirc;y c&amp;ocirc;ng nghiệp], kh&amp;ocirc;ng thể l&amp;agrave;m thực phẩm m&amp;agrave; chỉ c&amp;oacute; mục đ&amp;iacute;ch thương mại. Tuy vậy, việc người n&amp;ocirc;ng d&amp;acirc;n đột ngột chuyển sang tập trung canh t&amp;aacute;c c&amp;acirc;y c&amp;ocirc;ng nghiệp đang khiến nguồn cung lương thực cho đất nước n&amp;agrave;y sụt giảm dần.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i kh&amp;ocirc;ng hề biết điều đ&amp;oacute;. Kh&amp;ocirc;ng, t&amp;ocirc;i chưa bao giờ nghĩ đến n&amp;oacute; ấy chứ. Khi băn khoăn về nguy&amp;ecirc;n nh&amp;acirc;n g&amp;acirc;y n&amp;ecirc;n vấn đề lương thực của đất nước m&amp;igrave;nh, t&amp;ocirc;i đ&amp;atilde; &amp;iacute;ch kỷ nghĩ rằng c&amp;oacute; thể do thi&amp;ecirc;n tai, hoặc c&amp;oacute; lẽ do đất đai vốn kh&amp;ocirc;ng hề m&amp;agrave;u mỡ. Mặc d&amp;ugrave; nguy&amp;ecirc;n nh&amp;acirc;n r&amp;otilde; r&amp;agrave;ng như vậy nhưng t&amp;ocirc;i đ&amp;atilde; sinh sống tại đ&amp;acirc;y trong hơn 10 năm m&amp;agrave; kh&amp;ocirc;ng hề nhận ra. C&amp;ograve;n Souma mới chỉ được triệu hồi c&amp;aacute;ch đ&amp;acirc;y v&amp;agrave;i ng&amp;agrave;y lại nắm bắt được vấn đề đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Th&amp;ecirc;m v&amp;agrave;o đ&amp;oacute;, sự suy tho&amp;aacute;i của đất nước n&amp;agrave;y cũng c&amp;oacute; nguy&amp;ecirc;n nh&amp;acirc;n tương tự. V&amp;igrave; nguồn cung lương thực thấp, ch&amp;uacute;ng ta kh&amp;ocirc;ng c&amp;ograve;n lựa chọn n&amp;agrave;o kh&amp;aacute;c ngo&amp;agrave;i việc nhập khẩu từ c&amp;aacute;c quốc gia kh&amp;aacute;c, nhưng nhập khẩu sẽ gồm cả cước vận chuyển n&amp;ecirc;n gi&amp;aacute; cả lương thực đột nhi&amp;ecirc;n nhảy vọt. Mặc d&amp;ugrave; &amp;aacute;p lực sẽ đ&amp;egrave; nặng l&amp;ecirc;n kinh tế của một gia đ&amp;igrave;nh nhưng họ cũng chỉ c&amp;oacute; thể trừ bớt chi ph&amp;iacute; lương thực đến chừng ấy th&amp;ocirc;i. Sau c&amp;ugrave;ng th&amp;igrave;, nếu kh&amp;ocirc;ng ăn, họ sẽ chết, n&amp;ecirc;n tất nhi&amp;ecirc;n thứ bị cắt giảm sẽ l&amp;agrave; tạp phẩm v&amp;agrave; những m&amp;oacute;n đồ xa hoa. Việc mua sắm d&amp;egrave; dặt n&amp;agrave;y ch&amp;iacute;nh l&amp;agrave; nguy&amp;ecirc;n nh&amp;acirc;n g&amp;acirc;y n&amp;ecirc;n suy tho&amp;aacute;i.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đang chứng kiến điều g&amp;igrave; thế n&amp;agrave;y? Nếu t&amp;ocirc;i chỉ l&amp;agrave; một thường d&amp;acirc;n, t&amp;ocirc;i sẽ đ&amp;aacute;p lại rằng &amp;lsquo;gieo nh&amp;acirc;n n&amp;agrave;o gặt quả nấy&amp;rsquo; v&amp;agrave; chấm hết.&lt;/p&gt;

&lt;p&gt;Nhưng t&amp;ocirc;i đường đường l&amp;agrave; một c&amp;ocirc;ng ch&amp;uacute;a. Bề tr&amp;ecirc;n thiếu hiểu biết kh&amp;aacute;c n&amp;agrave;o &amp;aacute;n tử cho những kẻ thuộc cấp.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i&amp;hellip; thật kh&amp;ocirc;ng xứng đ&amp;aacute;ng l&amp;agrave;m ho&amp;agrave;ng th&amp;acirc;n.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i ngồi gục xuống tại chỗ đầy nặng nề v&amp;igrave; sức lực kiệt quệ đến tột c&amp;ugrave;ng.&lt;/p&gt;

&lt;p&gt;Chưa một lần n&amp;agrave;o trong cuộc đời m&amp;igrave;nh t&amp;ocirc;i cảm nhận được sự bất lực như những g&amp;igrave; đang hiện hữu trong th&amp;acirc;m t&amp;acirc;m v&amp;agrave;o h&amp;ocirc;m nay. Chứng kiến t&amp;ocirc;i l&amp;acirc;m v&amp;agrave;o t&amp;igrave;nh trạng như vậy, Soma khẽ r&amp;ecirc;n &amp;ldquo;ah&amp;rdquo;, &amp;ldquo;uh&amp;rdquo; v&amp;agrave; rồi vỗ nhẹ tay l&amp;ecirc;n đầu t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đừng nhụt ch&amp;iacute; thế chứ. Ch&amp;uacute;ng ta vẫn c&amp;oacute; thể ho&amp;agrave;n th&amp;agrave;nh kịp thời m&amp;agrave;. T&amp;ocirc;i đ&amp;atilde; nắm chắc nguồn vốn. Với số tiền n&amp;agrave;y, trước hết h&amp;atilde;y c&amp;ugrave;ng tiến h&amp;agrave;nh cải c&amp;aacute;ch n&amp;ocirc;ng nghiệp.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip; Anh định l&amp;agrave;m g&amp;igrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Giới hạn canh t&amp;aacute;c c&amp;acirc;y c&amp;ocirc;ng nghiệp, t&amp;aacute;i trồng trọt những c&amp;aacute;nh đồng lương thực, n&amp;acirc;ng cao nguồn cung thực phẩm. Nh&amp;agrave; nước sẽ hỗ trợ chuyển đổi với tiền trợ cấp. Trước hết ta sẽ trồng đậu n&amp;agrave;nh v&amp;igrave; n&amp;oacute; mang lại rất nhiều lợi &amp;iacute;ch v&amp;agrave; khoai t&amp;acirc;y do kh&amp;ocirc;ng lo mất m&amp;ugrave;a, v&amp;agrave; cuối c&amp;ugrave;ng sẽ th&amp;ecirc;m v&amp;agrave;o c&amp;aacute;nh đồng l&amp;uacute;a. Sau đ&amp;oacute;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Soma n&amp;oacute;i về những cải c&amp;aacute;ch n&amp;ocirc;ng nghiệp to&amp;agrave;n diện của m&amp;igrave;nh. C&amp;oacute; rất nhiều từ ngữ m&amp;agrave; t&amp;ocirc;i chẳng hiểu g&amp;igrave;, như gạo v&amp;agrave; l&amp;uacute;a, nhưng khu&amp;ocirc;n mặt anh ấy tr&amp;ocirc;ng rạng rỡ hẳn l&amp;ecirc;n. T&amp;ocirc;i nghĩ m&amp;igrave;nh đ&amp;atilde; hiểu v&amp;igrave; sao phụ ho&amp;agrave;ng trao lại ngai v&amp;agrave;ng. Anh ấy ch&amp;iacute;nh l&amp;agrave; người m&amp;agrave; đất nước n&amp;agrave;y cần nhất v&amp;agrave;o thời điểm hiện tại. Ch&amp;uacute;ng t&amp;ocirc;i cần phải r&amp;agrave;ng buộc anh ấy với đất nước n&amp;agrave;y d&amp;ugrave; c&amp;aacute;i gi&amp;aacute; phải trả l&amp;agrave; g&amp;igrave; đi chăng nữa&amp;hellip; H&amp;ocirc;n ước với t&amp;ocirc;i c&amp;oacute; lẽ l&amp;agrave; một trong những mối r&amp;agrave;ng buộc đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;(&amp;hellip;. Đ&amp;acirc;y chắc chắn kh&amp;ocirc;ng phải l&amp;uacute;c để n&amp;oacute;i rằng cuộc h&amp;ocirc;n nh&amp;acirc;n bị quyết định theo c&amp;aacute;ch đầy độc đo&amp;aacute;n của t&amp;ocirc;i lại kh&amp;ocirc;ng hề tức cười ch&amp;uacute;t n&amp;agrave;o.)&lt;/p&gt;

&lt;p&gt;Soma n&amp;oacute;i rằng anh ấy sẽ nhường lại ngai v&amp;agrave;ng một khi đ&amp;atilde; đặt nền kinh tế của đất nước đi đ&amp;uacute;ng hướng, nhưng t&amp;ocirc;i sẽ kh&amp;ocirc;ng đời n&amp;agrave;o chấp nhận chuyện ấy cả. Để vuột mất một nh&amp;acirc;n t&amp;agrave;i hiếm c&amp;oacute; khỏi dịch vụ ch&amp;iacute;nh phủ l&amp;agrave; thất bại của d&amp;acirc;n tộc. T&amp;ocirc;i cần đảm bảo chắc chắn chuyện ấy kh&amp;ocirc;ng xảy ra d&amp;ugrave; c&amp;oacute; chuyện g&amp;igrave; xảy ra đi chăng nữa.&lt;/p&gt;

&lt;p&gt;(Kh&amp;ocirc;ng biết liệu m&amp;igrave;nh c&amp;oacute; thể tạo n&amp;ecirc;n một &amp;lsquo;sự đ&amp;atilde; rồi&amp;rsquo; v&amp;agrave; bắt anh ấy &amp;lsquo;chịu tr&amp;aacute;ch nhiệm&amp;rsquo; kh&amp;ocirc;ng nhỉ&amp;hellip; Chờ đ&amp;atilde;! S, sự đ&amp;atilde; rồi&amp;hellip; nghĩa l&amp;agrave;&amp;hellip; ấy ấy, phải kh&amp;ocirc;ng&amp;hellip;?)&lt;/p&gt;

&lt;p&gt;Khu&amp;ocirc;n mặt t&amp;ocirc;i đột nhi&amp;ecirc;n đỏ bừng v&amp;igrave; &amp;lsquo;khung cảnh&amp;rsquo; xuất hiện trong t&amp;acirc;m tr&amp;iacute;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;oacute; l&amp;agrave; l&amp;yacute; do tại sao khu vực miền n&amp;uacute;i&amp;hellip; N&amp;egrave; Liecia, c&amp;ocirc; c&amp;oacute; lắng nghe kh&amp;ocirc;ng vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;V&amp;acirc;ng! T, t&amp;ocirc;i đang nghe đ&amp;acirc;y.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;? Kh&amp;ocirc;ng hiểu sao nhưng mặt c&amp;ocirc; c&amp;oacute; vẻ đỏ vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Do &amp;aacute;nh nắng ban mai th&amp;ocirc;i! Đừng lo, cứ n&amp;oacute;i tiếp đi!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;???&amp;rdquo;&lt;/p&gt;

&lt;p&gt;M&amp;aacute; t&amp;ocirc;i n&amp;oacute;ng bừng. T&amp;ocirc;i nghĩ m&amp;igrave;nh sẽ chết v&amp;igrave; ngượng mất. Những điều Soma n&amp;oacute;i sau đ&amp;oacute; chẳng hề lọt đến tai t&amp;ocirc;i ch&amp;uacute;t n&amp;agrave;o hết.&lt;/p&gt;

&lt;p&gt;****&lt;/p&gt;

&lt;p&gt;[Ph&amp;aacute;c thảo Nh&amp;acirc;n vật: Liecia Elfrieden]&lt;/p&gt;

&lt;p&gt;Con g&amp;aacute;i của vị Vua thứ 13 tại Elfrieden, Alberto Elfrieden. C&amp;ocirc; ấy th&amp;agrave;nh th&amp;acirc;n với người sau n&amp;agrave;y sẽ trở th&amp;agrave;nh Soma E Elfrieden. Kh&amp;ocirc;ng chỉ giữ tước hiệu c&amp;ocirc;ng ch&amp;uacute;a, c&amp;ocirc; ấy cũng đ&amp;atilde; tốt nghiệp một học viện qu&amp;acirc;n sự v&amp;agrave; l&amp;agrave; một th&amp;agrave;nh vi&amp;ecirc;n trong qu&amp;acirc;n đội ho&amp;agrave;ng gia, v&amp;agrave; với tư c&amp;aacute;ch đ&amp;oacute;, c&amp;ocirc; ấy t&amp;iacute;ch cực đ&amp;oacute;ng vai tr&amp;ograve; cầu nối giữa Soma v&amp;agrave; Qu&amp;acirc;n đội. C&amp;ocirc; ấy cũng thể hiện sự th&amp;aacute;o v&amp;aacute;t vượt trội hơn cha m&amp;igrave;nh về những c&amp;ocirc;ng việc ch&amp;iacute;nh phủ, đến mức về sau n&amp;agrave;y, c&amp;oacute; những nghi&amp;ecirc;n cứu cho rằng c&amp;ocirc; ấy kh&amp;ocirc;ng c&amp;ugrave;ng huyết thống với nh&amp;agrave; Vua. C&amp;ocirc; ấy lu&amp;ocirc;n lu&amp;ocirc;n ở b&amp;ecirc;n Soma trong suốt cuộc đời đầy biến động của cậu, hỗ trợ cậu từ sau c&amp;aacute;nh g&amp;agrave;, v&amp;agrave; trở th&amp;agrave;nh một h&amp;igrave;nh mẫu tuyệt vời cho một Người vợ Tốt v&amp;agrave; B&amp;agrave; mẹ Th&amp;ocirc;ng th&amp;aacute;i.&lt;/p&gt;
', 1, CAST(0x0000ADE4016E26BD AS DateTime), CAST(0x0000ADE4016E26BD AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2086, 1049, 1039, N'Chương 3: Hãy bắt đầu nào!!!', N'&lt;p&gt;&lt;strong&gt;Trans: VampireKingW&lt;/strong&gt;&lt;/p&gt;

&lt;p&gt;Cấu tr&amp;uacute;c c&amp;ocirc;ng nghệ của thế giới n&amp;agrave;y qu&amp;aacute; loạn. V&amp;iacute; dụ nh&amp;eacute;, ở Tr&amp;aacute;i đất, khoa học v&amp;agrave; c&amp;ocirc;ng nghệ tiến bộ theo từng bước &amp;ldquo;Sức người &amp;rarr; Cối xay nước/gi&amp;oacute; &amp;rarr; Đầu m&amp;aacute;y hơi nước &amp;rarr; Động cơ đốt trong&amp;rdquo;. Khi bạn nghĩ &amp;ldquo;M&amp;igrave;nh muốn tự do bay lượn tr&amp;ecirc;n bầu trời ♪&amp;rdquo;, bạn phải hiểu được nguy&amp;ecirc;n l&amp;yacute; của động lực n&amp;acirc;ng v&amp;agrave; x&amp;acirc;y dựng một hệ thống đẩy để chế tạo một chiếc m&amp;aacute;y bay, v&amp;agrave; bạn phải nắm vững học thuyết về l&amp;yacute; do tại sao cần phải đốt ch&amp;aacute;y nhi&amp;ecirc;n liệu để khiến hệ thống đẩy hoạt động. Ở Tr&amp;aacute;i đất, c&amp;ocirc;ng nghệ mới lu&amp;ocirc;n được x&amp;acirc;y dựng tr&amp;ecirc;n nền tảng của những c&amp;ocirc;ng nghệ thấp hơn.&lt;/p&gt;

&lt;p&gt;Tuy nhi&amp;ecirc;n, thế giới n&amp;agrave;y c&amp;oacute; ph&amp;eacute;p thuật v&amp;agrave; ma th&amp;uacute;. Nếu bạn n&amp;oacute;i &amp;ldquo;M&amp;igrave;nh muốn tự do bay lượn tr&amp;ecirc;n bầu trời&amp;rdquo;, bạn sẽ nhận được &amp;ldquo;Của bạn đ&amp;acirc;y! Rồng bay!&amp;rdquo;&amp;sup1;. Nh&amp;acirc;n d&amp;acirc;n tại đất nước n&amp;agrave;y bay lượn tr&amp;ecirc;n bầu trời m&amp;agrave; ho&amp;agrave;n to&amp;agrave;n bỏ qua thuốc s&amp;uacute;ng v&amp;agrave; động cơ đốt trong. Nếu họ thực sự muốn vậy, thậm ch&amp;iacute; họ c&amp;oacute; thể khiến lửa, nước hoặc chớp xuất hiện với ph&amp;eacute;p thuật v&amp;agrave; tồn tại một khoảng m&amp;ecirc;nh m&amp;ocirc;ng giữa điều họ c&amp;oacute; thể v&amp;agrave; kh&amp;ocirc;ng thể l&amp;agrave;m được.&lt;/p&gt;

&lt;p&gt;&amp;sup1;&amp;laquo;TN: Li&amp;ecirc;n hệ tới b&amp;agrave;i h&amp;aacute;t mở đầu anime Doraemon với c&amp;acirc;u: M&amp;igrave;nh muốn tự do bay lượn tr&amp;ecirc;n bầu trời /Của bạn đ&amp;acirc;y! Chong ch&amp;oacute;ng tre!&amp;raquo;&lt;/p&gt;

&lt;p&gt;Họ c&amp;oacute; những thứ tương tự như xe tải nhưng kh&amp;ocirc;ng c&amp;oacute; động cơ đốt trong m&amp;agrave; được k&amp;eacute;o bởi những ma th&amp;uacute; to lớn. Họ c&amp;oacute; t&amp;agrave;u chiến bằng th&amp;eacute;p với những con hải long khổng lồ k&amp;eacute;o đi.&lt;/p&gt;

&lt;p&gt;Họ kh&amp;ocirc;ng c&amp;oacute; điện nhưng buổi tối ở đất nước n&amp;agrave;y rất s&amp;aacute;ng. Đ&amp;egrave;n đường được thắp bởi lo&amp;agrave;i r&amp;ecirc;u ph&amp;aacute;t quang lưu giữ &amp;aacute;nh s&amp;aacute;ng v&amp;agrave;o ban ng&amp;agrave;y v&amp;agrave; soi rọi v&amp;agrave;o ban đ&amp;ecirc;m. Họ kh&amp;ocirc;ng c&amp;oacute; gas, v&amp;agrave; nấu ăn với củi, đ&amp;aacute;y l&amp;ograve; v&amp;agrave; hỏa ph&amp;aacute;p (hoặc c&amp;ocirc;ng cụ ph&amp;eacute;p thuật).&lt;/p&gt;

&lt;p&gt;Họ kh&amp;ocirc;ng c&amp;oacute; ống nước, nhưng thiết lập những giếng nước xuy&amp;ecirc;n suốt th&amp;agrave;nh phố được ban tặng v&amp;ograve;ng tr&amp;ograve;n thủy ph&amp;aacute;p để lấy nước từ l&amp;ograve;ng đất.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;hellip; Mọi việc diễn ra như vậy đấy. Đất nước n&amp;agrave;y c&amp;oacute; thể l&amp;agrave;m rất nhiều thứ với quyền năng ph&amp;eacute;p thuật, ngay cả khi thiếu đi khoa học. Tr&amp;aacute;i lại, nếu bỏ đi ph&amp;eacute;p thuật v&amp;agrave; ma th&amp;uacute;, đất nước n&amp;agrave;y chỉ c&amp;oacute; tr&amp;igrave;nh độ văn h&amp;oacute;a thấp. Nếu n&amp;oacute;i theo lịch sử của thế giới ch&amp;uacute;ng ta, c&amp;oacute; lẽ họ đang ở đ&amp;ecirc;m đen của thời kỳ cận đại v&amp;agrave; giờ khắc cuối c&amp;ugrave;ng của thời Trung Cổ. Chế độ phong kiến vẫn c&amp;ograve;n tồn tại v&amp;agrave; cuộc C&amp;aacute;ch mạng C&amp;ocirc;ng nghiệp vẫn c&amp;ograve;n xa lắm. V&amp;igrave; thế chắc chắn c&amp;oacute; một thứ g&amp;igrave; đ&amp;oacute; m&amp;agrave; t&amp;ocirc;i, với tư c&amp;aacute;ch một người đến từ tương lai 5 thế kỷ sau cuộc C&amp;aacute;ch mạng C&amp;ocirc;ng nghiệp, biết rằng c&amp;oacute; thể biến th&amp;agrave;nh của cải. T&amp;ocirc;i đang nghĩ như vậy đấy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ch&amp;uacute;ng ta sẽ tiến h&amp;agrave;nh cải c&amp;aacute;ch n&amp;ocirc;ng nghiệp nhưng kh&amp;ocirc;ng thể ho&amp;agrave;n th&amp;agrave;nh trong ng&amp;agrave;y một ng&amp;agrave;y hai được. V&amp;igrave; vậy trong l&amp;uacute;c ấy t&amp;ocirc;i quyết định sẽ tăng gia gi&amp;aacute; trị nhập khẩu từ nước ngo&amp;agrave;i để đối ph&amp;oacute; với vấn đề lương thực.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Soma ngồi đối diện với t&amp;ocirc;i quanh chiếc b&amp;agrave;n d&amp;agrave;i rộng n&amp;oacute;i như vậy v&amp;agrave; cắn ngập răng v&amp;agrave;o chiếc b&amp;aacute;nh mỳ nướng. Một giỏ b&amp;aacute;nh mỳ nướng, trứng b&amp;aacute;c, chorizo&amp;sup2; v&amp;agrave; đĩa salad cho hai người được b&amp;agrave;y l&amp;ecirc;n tr&amp;ecirc;n b&amp;agrave;n. Hiện tại l&amp;agrave; giờ điểm t&amp;acirc;m.&lt;/p&gt;

&lt;p&gt;&amp;sup2;&amp;laquo;TN: x&amp;uacute;c x&amp;iacute;ch heo&amp;raquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nhưng anh n&amp;oacute;i rằng nhập khẩu sẽ g&amp;acirc;y n&amp;ecirc;n cản trở cho việc mua v&amp;igrave; tốn ph&amp;iacute; vận chuyển m&amp;agrave;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Yup. V&amp;igrave; vậy trong thời điểm hiện tại, đất nước sẽ mua ch&amp;uacute;ng v&amp;agrave; b&amp;aacute;n với gi&amp;aacute; địa phương. Sẽ xảy ra thiếu hụt thuế quan nhưng ch&amp;uacute;ng ta phải vượt qua n&amp;oacute; th&amp;ocirc;i v&amp;igrave; t&amp;igrave;nh h&amp;igrave;nh khẩn cấp hiện thời. T&amp;ocirc;i muốn thu nhập th&amp;ocirc;ng qua xuất khẩu để b&amp;ugrave; đắp lại nhưng ch&amp;uacute;ng ta phải t&amp;igrave;m thứ kh&amp;aacute;c thay thế cho nguồn thu lớn nhất, len b&amp;ocirc;ng.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;aacute; kh&amp;oacute; xử nhỉ, huh&amp;hellip; Th&amp;ocirc;i, chuyện đ&amp;oacute; n&amp;oacute;i sau&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i nhắc đến một chuyện m&amp;agrave; m&amp;igrave;nh đ&amp;atilde; mong muốn b&amp;igrave;nh luận từ l&amp;uacute;c trước.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thế qu&amp;aacute;i n&amp;agrave;o m&amp;agrave; Nh&amp;agrave; vua lại thưởng thức điểm t&amp;acirc;m tại c&amp;aacute;i nơi kiểu n&amp;agrave;y vậy!?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đ&amp;acirc;y l&amp;agrave; ph&amp;ograve;ng ăn lớn của l&amp;acirc;u đ&amp;agrave;i. Hơn nữa lại l&amp;agrave; ph&amp;ograve;ng ăn tập thể m&amp;agrave; binh l&amp;iacute;nh sống b&amp;ecirc;n trong v&amp;agrave; c&amp;aacute;c thị thần sử dụng, ngo&amp;agrave;i ra, Soma v&amp;agrave; t&amp;ocirc;i hiện giờ đang thưởng thức Bữa S&amp;aacute;ng A. Một vị vua của đất nước h&amp;ograve;a lẫn với binh l&amp;iacute;nh v&amp;agrave; ăn những m&amp;oacute;n d&amp;agrave;nh cho họ. Thiếu đứng đắn cũng n&amp;ecirc;n c&amp;oacute; giới hạn th&amp;ocirc;i chứ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Aacute;nh mắt t&amp;ograve; m&amp;ograve; của binh l&amp;iacute;nh v&amp;agrave; nội quan l&amp;agrave;m t&amp;ocirc;i đau l&amp;ograve;ng qu&amp;aacute;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đừng bận t&amp;acirc;m về họ. T&amp;ocirc;i đang thực hiện cắt giảm trong l&amp;acirc;u đ&amp;agrave;i. Ch&amp;uacute;ng ra kh&amp;ocirc;ng thể l&amp;atilde;ng ph&amp;iacute; tiền v&amp;agrave;o thực phẩm được.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Anh kh&amp;ocirc;ng nghĩ rằng tằn tiện sẽ g&amp;acirc;y hại cho nền kinh tế sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;oacute; l&amp;agrave; nếu như c&amp;ocirc; t&amp;iacute;ch trữ những thứ đ&amp;atilde; chắt b&amp;oacute;p. Nếu sử dụng đ&amp;uacute;ng đắn ng&amp;acirc;n quỹ d&amp;agrave;nh dụm được th&amp;igrave; nền kinh tế sẽ chuyển m&amp;igrave;nh.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nhưng d&amp;ugrave; thế n&amp;agrave;o th&amp;igrave; anh cũng kh&amp;ocirc;ng cần phải ăn ngo&amp;agrave;i n&amp;agrave;y đ&amp;acirc;u.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thế ra c&amp;ocirc; muốn ăn bữa s&amp;aacute;ng n&amp;agrave;y tại c&amp;aacute;i b&amp;agrave;n to tướng ấy sao? Ở đ&amp;oacute; mang đến cảm gi&amp;aacute;c trống trải, kh&amp;ocirc;ng &amp;agrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Th&amp;igrave; c&amp;oacute; thể anh đ&amp;uacute;ng nhưng&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Nhưng t&amp;ocirc;i vẫn gặp vấn đề với việc ăn tại đ&amp;acirc;y nơi mọi người đều nh&amp;igrave;n thấy.&lt;/p&gt;

&lt;p&gt;D&amp;ugrave; t&amp;ocirc;i đ&amp;atilde; quen với n&amp;oacute; tại học viện nhưng b&amp;acirc;y giờ Soma l&amp;agrave; h&amp;ocirc;n phu của t&amp;ocirc;i n&amp;ecirc;n ho&amp;agrave;n cảnh n&amp;agrave;y c&amp;oacute; cảm gi&amp;aacute;c giống như ch&amp;uacute;ng t&amp;ocirc;i đang c&amp;ocirc;ng khai hẹn gặp vậy. L&amp;agrave;m sao m&amp;agrave; t&amp;ocirc;i c&amp;oacute; thể b&amp;igrave;nh tĩnh được chứ?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Haah&amp;hellip; nhưng nếu anh cắt giảm ph&amp;iacute; lương thực th&amp;igrave; anh n&amp;ecirc;n n&amp;oacute;i với phụ ho&amp;agrave;ng v&amp;agrave; mẫu hậu. Cặp đ&amp;ocirc;i ấy đang thưởng thức giờ uống tr&amp;agrave; tuyệt vời với m&amp;oacute;n b&amp;aacute;nh kem đấy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ah-, ổn th&amp;ocirc;i m&amp;agrave;. Ch&amp;uacute;ng đều l&amp;agrave; [qu&amp;agrave;] từ người d&amp;acirc;n th&amp;agrave;nh phố.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Qu&amp;agrave; ư?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;H&amp;oacute;a ra nh&amp;acirc;n d&amp;acirc;n của ch&amp;uacute;ng ta c&amp;oacute; đủ khả năng chi trả cho những thứ như vậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ch&amp;uacute;ng đến từ những chủ hiệu lớn v&amp;agrave; cửa h&amp;agrave;ng thuộc sở hữu của c&amp;aacute;c l&amp;atilde;nh ch&amp;uacute;a c&amp;oacute; thế lực. Tại đất nước n&amp;agrave;y, c&amp;aacute;i m&amp;aacute;c [Nguồn cung Ho&amp;agrave;ng gia] mang uy t&amp;iacute;n lớn. Họ gửi ch&amp;uacute;ng qua kh&amp;aacute; thường xuy&amp;ecirc;n đấy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đừng c&amp;oacute; n&amp;oacute;i đất nước n&amp;agrave;y chứ! Giờ anh l&amp;agrave; vua của n&amp;oacute; rồi!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Loại đồ ăn n&amp;agrave;y rất ngọt nhưng kh&amp;oacute; m&amp;agrave; dự trữ tốt được. T&amp;ocirc;i kh&amp;ocirc;ng th&amp;iacute;ch đồ ngọt nhiều đến vậy nhưng thực phẩm vẫn l&amp;agrave; thực phẩm n&amp;ecirc;n t&amp;ocirc;i đưa ch&amp;uacute;ng cho cặp đ&amp;ocirc;i ho&amp;agrave;ng gia thời trước c&amp;ugrave;ng với những hầu g&amp;aacute;i v&amp;agrave; nhờ họ ghi lại cảm tưởng v&amp;agrave; những người được đ&amp;aacute;nh gi&amp;aacute; cao sẽ đạt được danh hiệu [Nguồn cung Ho&amp;agrave;ng gia]. Kh&amp;ocirc;ng ngờ họ nổi tiếng vậy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;H&amp;oacute;a ra đ&amp;oacute; l&amp;agrave; l&amp;yacute; do &amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Dạo gần đ&amp;acirc;y những hầu g&amp;aacute;i cứ l&amp;agrave;m ầm l&amp;ecirc;n về &amp;ldquo;c&amp;oacute; g&amp;igrave; đ&amp;oacute; kh&amp;ocirc;ng ổn với mặt trận trọng lượng&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;Cũng c&amp;oacute; c&amp;aacute;c b&amp;aacute;o c&amp;aacute;o rằng những hầu g&amp;aacute;i đang tham gia b&amp;agrave;i tập luyện của binh l&amp;iacute;nh. Ch&amp;uacute;ng t&amp;ocirc;i biết l&amp;yacute; do nhưng kh&amp;ocirc;ng thể ngăn cản, c&amp;oacute; lẽ t&amp;acirc;m hồn nữ t&amp;iacute;nh của họ đang g&amp;agrave;o th&amp;eacute;t đấy. T&amp;ocirc;i cũng cần phải cẩn trọng nữa. Khi t&amp;ocirc;i tự thề điều đ&amp;oacute; trong th&amp;acirc;m t&amp;acirc;m, Soma l&amp;agrave;m một vẻ mặt hơi ch&amp;uacute;t xa c&amp;aacute;ch.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C, c&amp;oacute; chuyện g&amp;igrave; sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Agrave; kh&amp;ocirc;ng&amp;hellip; Nếu t&amp;igrave;nh h&amp;igrave;nh chi ph&amp;iacute; thực phẩm của ch&amp;uacute;ng ta trở n&amp;ecirc;n hiểm ngh&amp;egrave;o hơn, c&amp;oacute; khả năng ch&amp;uacute;ng ta sẽ phải ăn m&amp;oacute;n b&amp;aacute;nh k&amp;iacute;nh tặng cả ba bữa đấy&amp;hellip;Hahaha&amp;hellip;[nếu kh&amp;ocirc;ng c&amp;oacute; b&amp;aacute;nh mỳ th&amp;igrave; để họ ăn b&amp;aacute;nh ngọt vậy], t&amp;ocirc;i nghĩ thế.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Người d&amp;acirc;n kh&amp;ocirc;ng thấu hiểu được t&amp;igrave;nh h&amp;igrave;nh hiện tại sẽ nổi dậy đấy&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Wow, hai người tr&amp;ocirc;ng như đang vui vẻ lắm nhỉ.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Hai người ch&amp;uacute;ng t&amp;ocirc;i quay đầu lại v&amp;agrave; thấy một người đ&amp;agrave;n &amp;ocirc;ng trẻ tuổi mang bộ gi&amp;aacute;p Hiệp sỹ Ho&amp;agrave;ng gia được kh&amp;iacute;a cạnh (kh&amp;ocirc;ng c&amp;oacute; mũ) đứng ở đ&amp;oacute;. Anh ta cao v&amp;agrave; c&amp;oacute; v&amp;oacute;c người kh&amp;aacute; rắn chắc, kết hợp với m&amp;aacute;i t&amp;oacute;c thẳng v&amp;agrave;ng hoe tạo n&amp;ecirc;n một khu&amp;ocirc;n mặt duy&amp;ecirc;n d&amp;aacute;ng m&amp;agrave; nữ giới sẽ m&amp;ecirc; say.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ra l&amp;agrave; Ludwin-dono sao.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;atilde; l&amp;acirc;u kh&amp;ocirc;ng gặp, thưa c&amp;ocirc;ng ch&amp;uacute;a. M&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; lẽ b&amp;acirc;y giờ t&amp;ocirc;i n&amp;ecirc;n n&amp;oacute;i Ho&amp;agrave;ng hậu mới phải.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ah, um&amp;hellip; Mặc d&amp;ugrave; hiện tại th&amp;igrave; ta kh&amp;ocirc;ng l&amp;agrave; c&amp;aacute;i n&amp;agrave;o cả.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Soma nh&amp;igrave;n ch&amp;uacute;ng t&amp;ocirc;i n&amp;oacute;i chuyện, vẻ mặt của anh ấy như muốn n&amp;oacute;i &amp;ldquo;Ai vậy?&amp;rdquo;, n&amp;ecirc;n t&amp;ocirc;i ch&amp;iacute;nh thức giới thiệu anh ta.&lt;/p&gt;

&lt;p&gt;Ludwi Arks.&lt;/p&gt;

&lt;p&gt;Mặc d&amp;ugrave; tuổi đời chưa đến 30 nhưng anh ta đủ nổi bật để được giao ph&amp;oacute; l&amp;atilde;nh đạo đội Hiệp sỹ Ho&amp;agrave;ng gia Elfrieden. Đội trưởng Hiệp sỹ Ho&amp;agrave;ng gia l&amp;agrave; một vị tr&amp;iacute; trọng yếu mang nhiệm vụ bảo vệ thủ đ&amp;ocirc; Parnam v&amp;agrave; L&amp;acirc;u đ&amp;agrave;i Parnam trong thời b&amp;igrave;nh, nhưng khi khẩn cấp họ cũng được giao ph&amp;oacute; l&amp;atilde;nh đạo lực lượng vũ trang dưới sự chỉ đạo trực tiếp từ Nh&amp;agrave; vua, [Vệ binh Ho&amp;agrave;ng gia].&lt;/p&gt;

&lt;p&gt;Nh&amp;acirc;n đ&amp;acirc;y, [Tam Tước] l&amp;agrave; ba gia tộc c&amp;ocirc;ng tước l&amp;atilde;nh đạo Lục qu&amp;acirc;n, Hải qu&amp;acirc;n v&amp;agrave; Kh&amp;ocirc;ng qu&amp;acirc;n của đất nước n&amp;agrave;y. Dưới đ&amp;acirc;y l&amp;agrave; Tam Tước hiện tại.&lt;/p&gt;

&lt;p&gt;Thống so&amp;aacute;i Lục qu&amp;acirc;n&amp;nbsp;Ho&amp;agrave;ng gia Elfrieden, C&amp;ocirc;ng tước Georg Carmine. Một người h&amp;oacute;a th&amp;uacute; nh&amp;acirc;n sư. &amp;Ocirc;ng ta gieo rắc kinh ho&amp;agrave;ng cho kẻ th&amp;ugrave; của m&amp;igrave;nh với những mệnh lệnh như ngọn lửa m&amp;atilde;nh liệt.&lt;/p&gt;

&lt;p&gt;Đ&amp;ocirc; đốc Hải qu&amp;acirc;n Ho&amp;agrave;ng gia Elfrieden, Nữ C&amp;ocirc;ng tước Ecksel Walter. Một mizuchi&amp;sup3; với d&amp;ograve;ng tộc hải tặc. Một qu&amp;yacute; c&amp;ocirc; quả cảm am tường cả thủy chiến lẫn ch&amp;iacute;nh trị.&lt;/p&gt;

&lt;p&gt;&amp;sup3; &amp;laquo;TN: Hải Long&amp;raquo;&lt;/p&gt;

&lt;p&gt;Thống chế Kh&amp;ocirc;ng Qu&amp;acirc;n Ho&amp;agrave;ng gia Elfrieden, C&amp;ocirc;ng tước Castor Vargas. Một long nh&amp;acirc;n (nửa rồng nửa người). V&amp;igrave; tinh t&amp;uacute; của Lực lượng Vũ trang Ho&amp;agrave;ng gia, một Long Kỵ sỹ chế ngự bầu trời.&lt;/p&gt;

&lt;p&gt;Mỗi người trong số họ được ban tặng l&amp;atilde;nh thổ (l&amp;atilde;nh địa c&amp;ocirc;ng tước) trong vương quốc v&amp;agrave; được ph&amp;eacute;p tự trị để đổi lấy lời thệ ước trung th&amp;agrave;nh với vương quốc của gia tộc họ. Trong thời kỳ sau khi vương quốc mới th&amp;agrave;nh lập, chế độ n&amp;agrave;y được &amp;aacute;p dụng để giảm thiểu những x&amp;iacute;ch m&amp;iacute;ch ở vương quốc do những tộc kh&amp;aacute;c nhau g&amp;acirc;y dựng n&amp;ecirc;n n&amp;agrave;y khi họ tập hợp lại với nhau, nhưng chế độ vẫn tồn tại ngay cả tại thời điểm họ chung sống h&amp;ograve;a b&amp;igrave;nh hiện nay. Đổi lấy phần l&amp;atilde;nh thổ, họ đ&amp;aacute;nh cược t&amp;iacute;nh mạng của to&amp;agrave;n bộ gia tộc m&amp;igrave;nh để bảo vệ tổ quốc th&amp;acirc;n y&amp;ecirc;u.&lt;/p&gt;

&lt;p&gt;Tuy nhi&amp;ecirc;n, Tam Tước hiện tại lưu giữ qu&amp;acirc;n đội của họ v&amp;agrave; y&amp;ecirc;n vị trong từng l&amp;atilde;nh địa. Tam Tước b&amp;agrave;y tỏ niềm t&amp;ocirc;n k&amp;iacute;nh với đời vua trước, n&amp;oacute;i c&amp;aacute;ch kh&amp;aacute;c l&amp;agrave; Phụ ho&amp;agrave;ng, nhưng vẫn chưa c&amp;ocirc;ng nhận Soma l&amp;agrave; Vua v&amp;igrave; với họ anh ấy như một kẻ cướp ng&amp;ocirc;i. Điều n&amp;agrave;y đ&amp;atilde; trở th&amp;agrave;nh một mối phiền muộn thực sự cho Soma. L&amp;atilde;nh địa của Tam Tước tổng cộng đ&amp;atilde; chiếm 1/3 đất nước v&amp;agrave; nếu họ kh&amp;ocirc;ng hợp t&amp;aacute;c th&amp;igrave; những cải c&amp;aacute;ch m&amp;agrave; Soma đang theo đuổi sẽ kh&amp;oacute; l&amp;ograve;ng đạt được.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đ&amp;atilde; gửi kh&amp;ocirc;ng biết bao nhi&amp;ecirc;u bức thư đến C&amp;ocirc;ng tước Carmine, người cấp tr&amp;ecirc;n trực tiếp đ&amp;atilde; quan t&amp;acirc;m đến t&amp;ocirc;i như ch&amp;iacute;nh con g&amp;aacute;i của m&amp;igrave;nh, để gặp mặt v&amp;agrave; đối thoại với Soma, nhưng &amp;ocirc;ng ấy chỉ đ&amp;aacute;p lại với một d&amp;ograve;ng duy nhất, &amp;ldquo;Ta vẫn kh&amp;ocirc;ng thể tin tưởng hắn&amp;rdquo;. &amp;Ocirc;ng ấy linh hoạt trong chiến thuật nhưng lại rất cứng đầu. T&amp;ocirc;i chắc chắn rằng &amp;ocirc;ng ấy đang đợi Soma đến diện kiến m&amp;igrave;nh v&amp;agrave; c&amp;uacute;i đầu cầu xin sự hợp t&amp;aacute;c. &amp;Ocirc;ng ấy muốn mọi chuyện được ho&amp;agrave;n th&amp;agrave;nh đ&amp;agrave;ng ho&amp;agrave;ng như thế đấy. Nữ c&amp;ocirc;ng tước Walter v&amp;agrave; C&amp;ocirc;ng tước Vargas chắc cũng tương tự th&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Nhưng c&amp;oacute; lẽ như thế qu&amp;aacute; ng&amp;acirc;y thơ rồi.&lt;/p&gt;

&lt;p&gt;Soma đang mất dần ki&amp;ecirc;n nhẫn với tiến độ chậm chạp của những cải c&amp;aacute;ch.&lt;/p&gt;

&lt;p&gt;Nếu Tam Tước quay lưng lại với anh ấy, chắc chắn anh ấy sẽ nghĩ đến việc quay lưng lại với họ.&lt;/p&gt;

&lt;p&gt;Mỗi điều ấy th&amp;ocirc;i th&amp;igrave; Soma c&amp;oacute; thừa ki&amp;ecirc;n định để thực hiện. Bụng t&amp;ocirc;i quặn thắt khi nghĩ về chuyện ấy.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng biết suy nghĩ của t&amp;ocirc;i, Soma bắt tay với Ludwin.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i l&amp;agrave; Souma Kazuya. Hiện giờ t&amp;ocirc;i l&amp;agrave; Vua.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;V&amp;acirc;ng thưa vị Vua Anh h&amp;ugrave;ng. T&amp;ocirc;i l&amp;agrave; Đội trưởng Hiệp sỹ Ho&amp;agrave;ng gia Ludwin Arks. Những quan chức đ&amp;atilde; đồn thổi kh&amp;aacute; nhiều về c&amp;aacute;ch l&amp;agrave;m việc của người đấy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Vậy th&amp;igrave; khi n&amp;agrave;o anh bắt gặp họ t&amp;aacute;n nhảm lần nữa, bảo họ [l&amp;agrave;m việc đi] nh&amp;eacute;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hahaha, đ&amp;atilde; r&amp;otilde;. Ah, t&amp;ocirc;i c&amp;oacute; thể thưởng thức bữa s&amp;aacute;ng c&amp;ugrave;ng người chứ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thực sự th&amp;igrave; t&amp;ocirc;i kh&amp;ocirc;ng phiền đ&amp;acirc;u. Hơn nữa, ngo&amp;agrave;i những dịp trọng đại anh c&amp;oacute; thể kh&amp;ocirc;ng cần giữ lễ đ&amp;acirc;u.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Được th&amp;ocirc;i.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ludwin-dono lấy chiếc khay đựng bữa s&amp;aacute;ng của m&amp;igrave;nh v&amp;agrave; ngồi kế b&amp;ecirc;n t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Vậy, về những cải c&amp;aacute;ch của cậu. Tiến h&amp;agrave;nh thế n&amp;agrave;o rồi?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng su&amp;ocirc;n sẻ lắm&amp;hellip;Đặc biệt l&amp;agrave; vấn đề nh&amp;acirc;n lực t&amp;agrave;i năng.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Soma c&amp;agrave;u nh&amp;agrave;u khi cắn miếng b&amp;aacute;nh mỳ nướng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hiện tại t&amp;ocirc;i chỉ tiếp nhận c&amp;aacute;c cố vấn của Nh&amp;agrave; vua trước đ&amp;acirc;y th&amp;ocirc;i. C&amp;oacute; nghĩa l&amp;agrave; những người đ&amp;atilde; để cho đất nước sa s&amp;uacute;t đến mức độ n&amp;agrave;y. Tất cả mọi người ngo&amp;agrave;i Thủ tướng ra đều v&amp;ocirc; dụng cả.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đất nước n&amp;agrave;y l&amp;agrave; nền qu&amp;acirc;n chủ tuyệt đối của Nh&amp;agrave; vua. Ch&amp;iacute;nh phủ phản &amp;aacute;nh đậm n&amp;eacute;t mong muốn của Nh&amp;agrave; vua.&lt;/p&gt;

&lt;p&gt;C&amp;oacute; một Quốc hội nơi c&amp;ocirc;ng d&amp;acirc;n hưởng quyền bầu cử, nhưng lại l&amp;agrave; nơi họ quyết định về c&amp;aacute;c dự luật v&amp;agrave; điều lệ để đề xuất l&amp;ecirc;n Nh&amp;agrave; vua, v&amp;agrave; bất cứ dự luật hay điều lệ n&amp;agrave;o được chọn lựa đều được tr&amp;igrave;nh đến Nh&amp;agrave; vua qua lời n&amp;oacute;i của Thủ tướng. Chấp nhận hay kh&amp;ocirc;ng phụ thuộc ho&amp;agrave;n to&amp;agrave;n v&amp;agrave;o Nh&amp;agrave; vua. M&amp;agrave; nghĩ lại th&amp;igrave;, nếu Nh&amp;agrave; vua thực thi m&amp;agrave; kh&amp;ocirc;ng nghĩ đến thần d&amp;acirc;n, d&amp;ugrave; đ&amp;uacute;ng hay kh&amp;ocirc;ng, cũng sẽ mất l&amp;ograve;ng d&amp;acirc;n v&amp;agrave; bị hạ bệ bởi sự can thiệp của Tam Tước những người nắm giữ qu&amp;acirc;n đội.&lt;/p&gt;

&lt;p&gt;V&amp;igrave; vậy nếu Nh&amp;agrave; vua muốn thử nghiệm một s&amp;aacute;ch lược ch&amp;iacute;nh trị, &amp;ocirc;ng ta c&amp;oacute; thể tập hợp những th&amp;agrave;nh vi&amp;ecirc;n hội đồng độc lập ngo&amp;agrave;i Thủ tướng. Giống như một [Nội c&amp;aacute;c] tại c&amp;aacute;c ch&amp;iacute;nh quyền d&amp;acirc;n chủ. Nh&amp;agrave; vua sẽ mở một hội nghị với những th&amp;agrave;nh vi&amp;ecirc;n hội đồng của m&amp;igrave;nh v&amp;agrave; đ&amp;aacute;nh gi&amp;aacute; một s&amp;aacute;ch lược ch&amp;iacute;nh trị c&amp;oacute; hữu dụng hay kh&amp;ocirc;ng. Lựa chọn nh&amp;acirc;n lực ho&amp;agrave;n to&amp;agrave;n l&amp;agrave; đặc quyền của Nh&amp;agrave; vua. &amp;Ocirc;ng ta c&amp;oacute; thể k&amp;ecirc;u gọi bất cứ ai v&amp;agrave; bất kể số người. Tất nhi&amp;ecirc;n nếu như c&amp;oacute; qu&amp;aacute; nhiều người bất t&amp;agrave;i được bổ nhiệm th&amp;igrave; sẽ dẫn đến những tranh c&amp;atilde;i li&amp;ecirc;n mi&amp;ecirc;n v&amp;agrave; &amp;ocirc;ng ta sẽ mất đi sự t&amp;iacute;n nhiệm của nh&amp;acirc;n d&amp;acirc;n.&lt;/p&gt;

&lt;p&gt;Th&amp;ocirc;ng thường, trước khi một người leo l&amp;ecirc;n ngai v&amp;agrave;ng (ở đất nước n&amp;agrave;y sẽ l&amp;agrave; ho&amp;agrave;ng tử), người đ&amp;oacute; n&amp;ecirc;n tập hợp những người sẽ trở th&amp;agrave;nh qu&amp;acirc;n sư cho m&amp;igrave;nh, nhưng Soma chưa hề l&amp;agrave;m điều như vậy v&amp;igrave; được tấn phong qu&amp;aacute; đột ngột.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ngay cả Markus cũng đ&amp;atilde; qua thời ho&amp;agrave;ng kim của m&amp;igrave;nh. T&amp;ocirc;i muốn một cận thần thuộc kiểu người sẽ kiểm tra những g&amp;igrave; t&amp;ocirc;i muốn kiểm tra v&amp;agrave; c&amp;atilde;i lại khi t&amp;ocirc;i muốn c&amp;atilde;i nhau.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i biết, đ&amp;uacute;ng vậy. Những người l&amp;atilde;nh đạo muốn thuộc cấp xuất sắc l&amp;agrave; lẽ dĩ nhi&amp;ecirc;n th&amp;ocirc;i.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Anh cũng vậy sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Yeah. Hầu hết những người tốt nghiệp học viện qu&amp;acirc;n sự đều mong muốn gia nhập Đội qu&amp;acirc;n Tam Tước. Sau c&amp;ugrave;ng th&amp;igrave; Vệ binh Ho&amp;agrave;ng gia l&amp;agrave; vệ binh thủ đ&amp;ocirc; m&amp;agrave;. N&amp;oacute; cũng kh&amp;ocirc;ng qu&amp;aacute; nổi tiếng đ&amp;uacute;ng chứ, c&amp;ocirc;ng ch&amp;uacute;a.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ừm&amp;hellip; đ&amp;uacute;ng vậy. Hầu hết những đồng m&amp;ocirc;n của ta cũng đ&amp;atilde; đến với Đội qu&amp;acirc;n Tam Tước.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cũng l&amp;agrave; một th&amp;agrave;nh vi&amp;ecirc;n trong qu&amp;acirc;n đội, nhưng với tư c&amp;aacute;ch một ho&amp;agrave;ng th&amp;acirc;n, t&amp;ocirc;i kh&amp;ocirc;ng c&amp;ograve;n c&amp;aacute;ch n&amp;agrave;o kh&amp;aacute;c ngo&amp;agrave;i gia nhập Vệ binh Ho&amp;agrave;ng gia với nhiệm vụ bảo vệ ho&amp;agrave;ng tộc.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thế n&amp;ecirc;n khi điều ấy xảy ra, Vệ binh Ho&amp;agrave;ng gia hiện tại gồm đầy những người thừa th&amp;atilde;i hoặc thất bại. Thậm ch&amp;iacute; trong số đ&amp;oacute; c&amp;ograve;n c&amp;oacute; những nh&amp;agrave; khoa học đi&amp;ecirc;n bị t&amp;aacute;ch ra từ bộ phận ph&amp;aacute;t triển vũ kh&amp;iacute;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ooh, t&amp;ocirc;i rất muốn được gặp họ đấy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Nh&amp;igrave;n thấy Soma đầy hứng th&amp;uacute;, Ludwin mỉm cười chua ch&amp;aacute;t v&amp;agrave; n&amp;oacute;i, &amp;ldquo;Lần tới t&amp;ocirc;i sẽ giới thiệu cậu nh&amp;eacute;&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;Ch&amp;uacute;ng t&amp;ocirc;i rảnh rỗi bu&amp;ocirc;n chuyện trong một l&amp;uacute;c rồi chia tay với Ludwin-dono. Khi về đến ph&amp;ograve;ng m&amp;igrave;nh t&amp;ocirc;i sẽ thử gửi cho C&amp;ocirc;ng tước Carmine một bức thư kh&amp;aacute;c, t&amp;ocirc;i nghĩ vậy.&lt;/p&gt;

&lt;p&gt;Đ&amp;uacute;ng như t&amp;ocirc;i nghĩ, chi&amp;ecirc;u mộ nh&amp;acirc;n t&amp;agrave;i l&amp;agrave; một nhiệm vụ bức thiết.&lt;/p&gt;

&lt;p&gt;C&amp;oacute; lẽ v&amp;igrave; t&amp;ocirc;i đ&amp;atilde; lạm dụng khả năng của m&amp;igrave;nh nhưng cấp độ kỹ năng của t&amp;ocirc;i được n&amp;acirc;ng cao v&amp;agrave; t&amp;ocirc;i đủ năng lực để l&amp;agrave;m c&amp;ocirc;ng việc của hơn một người (cơ bản l&amp;agrave; c&amp;ocirc;ng việc của 4 người) nhưng cuối c&amp;ugrave;ng th&amp;igrave; chỉ c&amp;oacute; th&amp;ecirc;m mỗi m&amp;igrave;nh t&amp;ocirc;i th&amp;ocirc;i. (Ch&amp;uacute;ng) t&amp;ocirc;i kh&amp;ocirc;ng biết những g&amp;igrave; m&amp;igrave;nh kh&amp;ocirc;ng biết, v&amp;agrave; (ch&amp;uacute;ng) t&amp;ocirc;i kh&amp;ocirc;ng sở hữu những khả năng m&amp;igrave;nh kh&amp;ocirc;ng sở hữu. T&amp;ocirc;i cần những người biết điều t&amp;ocirc;i kh&amp;ocirc;ng biết v&amp;agrave; c&amp;oacute; thể l&amp;agrave;m điều t&amp;ocirc;i kh&amp;ocirc;ng thể. T&amp;ocirc;i muốn những người như vậy đến chết đi được.&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; l&amp;agrave; l&amp;yacute; do tại sao t&amp;ocirc;i quyết định chi&amp;ecirc;u mộ nh&amp;acirc;n t&amp;agrave;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i đang nghĩ đến việc sử dụng Đ&amp;agrave;i Ph&amp;aacute;t thanh Ho&amp;agrave;ng gia.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i cũng nghĩ rằng như vậy sẽ l&amp;agrave;m mọi chuyện nhanh ch&amp;oacute;ng hơn&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đ&amp;agrave;i Ph&amp;aacute;t thanh Ho&amp;agrave;ng gia l&amp;agrave; một thiết bị truyền giọng n&amp;oacute;i của Nh&amp;agrave; vua đi khắp cả nước.&lt;/p&gt;

&lt;p&gt;Một khối cầu đường k&amp;iacute;nh 2m tr&amp;ocirc;i nổi giữa một căn ph&amp;ograve;ng trong l&amp;acirc;u đ&amp;agrave;i được gọi l&amp;agrave; [Ph&amp;ograve;ng Ph&amp;aacute;t thanh Ho&amp;agrave;ng gia]. Khối cầu ấy l&amp;agrave; một vật phẩm được nạp đầy ph&amp;eacute;p thuật của phong tinh linh, nữ phong thần v&amp;agrave; thủy tinh linh, nữ thủy thần, gi&amp;uacute;p truyền giọng n&amp;oacute;i của Nh&amp;agrave; vua đi khắp đất nước. Tại những th&amp;agrave;nh phố đ&amp;atilde; thiết lập m&amp;ocirc;i trường nhận, n&amp;oacute; thậm ch&amp;iacute; c&amp;oacute; thể hiện l&amp;ecirc;n h&amp;igrave;nh ảnh của Nh&amp;agrave; vua.&lt;/p&gt;

&lt;p&gt;Liecia kh&amp;ocirc;ng phản đối việc sử dụng n&amp;oacute; nhưng c&amp;ocirc; ấy nghi&amp;ecirc;ng đầu ngờ vực.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nhưng nghĩ lại th&amp;igrave;, đ&amp;acirc;y l&amp;agrave; lần đầu ti&amp;ecirc;n c&amp;oacute; một người từng sử dụng Đ&amp;agrave;i Ph&amp;aacute;t thanh Ho&amp;agrave;ng gia để chi&amp;ecirc;u mộ nh&amp;acirc;n lực đấy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thế mọi người thường l&amp;agrave;m như thế n&amp;agrave;o vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Sử dụng mối quan hệ c&amp;aacute; nh&amp;acirc;n để tuyển mộ hoặc d&amp;ugrave;ng những người đ&amp;atilde; qua b&amp;agrave;i thi viết.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chẳng phải thế th&amp;igrave; hơi thi&amp;ecirc;n vị sao? D&amp;acirc;n tr&amp;iacute; ở đất nước n&amp;agrave;y tốt đến đ&amp;acirc;u?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Một nửa nh&amp;acirc;n d&amp;acirc;n biết đọc. 3 trong số 10 người biết viết.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Vậy chẳng phải sẽ v&amp;ocirc; dụng sao? Chỉ 3 trong 10 người c&amp;oacute; thể l&amp;agrave;m b&amp;agrave;i thi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nhưng đ&amp;oacute; l&amp;agrave; mức trung b&amp;igrave;nh của to&amp;agrave;n cầu m&amp;agrave;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;H&amp;oacute;a ra đ&amp;acirc;y l&amp;agrave; điều xảy ra nếu thiếu đi gi&amp;aacute;o dục phổ cập. T&amp;ocirc;i cũng n&amp;ecirc;n nhanh ch&amp;oacute;ng giải quyết vấn đề n&amp;agrave;y&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Bất kỳ ai cũng biết đọc v&amp;agrave; viết nếu được đi học. C&amp;ocirc; nghĩ rằng t&amp;ocirc;i sẽ chi&amp;ecirc;u mộ nh&amp;acirc;n lực dựa tr&amp;ecirc;n đ&amp;aacute;nh gi&amp;aacute; rằng họ c&amp;oacute; tiền đi học hay kh&amp;ocirc;ng sao? 70% d&amp;acirc;n số! Đất nước n&amp;agrave;y định bỏ qua bao nhi&amp;ecirc;u nh&amp;acirc;n t&amp;agrave;i tiềm t&amp;agrave;ng đ&amp;acirc;y?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;.T&amp;ocirc;i kh&amp;ocirc;ng thể trả lời điều đ&amp;oacute; được.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Liecia n&amp;oacute;i v&amp;agrave; cảm thấy ngượng ng&amp;ugrave;ng. N&amp;oacute;i với mỗi c&amp;ocirc; ấy th&amp;igrave; chẳng c&amp;oacute; &amp;iacute;ch g&amp;igrave; cả.&lt;/p&gt;

&lt;p&gt;Chắc chắn đất nước n&amp;agrave;y cần thay đổi từ tận gốc rễ rồi.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thế sao? Anh định sẽ đưa ra điều kiện g&amp;igrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i đ&amp;atilde; nghĩ ra điều m&amp;igrave;nh sẽ n&amp;oacute;i rồi. Thực sự th&amp;igrave; t&amp;ocirc;i định mượn lời của một vị anh h&amp;ugrave;ng m&amp;agrave; m&amp;igrave;nh ngưỡng mộ.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Anh h&amp;ugrave;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Yeah, gian h&amp;ugrave;ng thời loạn⁵&amp;rdquo;&lt;/p&gt;

&lt;p&gt;⁵ &amp;laquo;TN: T&amp;agrave;o Th&amp;aacute;o&amp;raquo;&lt;/p&gt;

&lt;p&gt;[Nếu c&amp;oacute; t&amp;agrave;i năng bạn sẽ c&amp;oacute; đất dụng v&amp;otilde;!]&lt;/p&gt;

&lt;p&gt;Được cường h&amp;oacute;a với ph&amp;eacute;p thuật của nữ phong thần, giọng n&amp;oacute;i của Soma vang vọng khắp thủ đ&amp;ocirc;, c&amp;aacute;c th&amp;agrave;nh phố, thị trấn v&amp;agrave; l&amp;agrave;ng mạc.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng chỉ vậy, tại thủ đ&amp;ocirc; c&amp;ugrave;ng c&amp;aacute;c th&amp;agrave;nh phố v&amp;agrave; thị trấn lớn, h&amp;igrave;nh ảnh của Soma được chiếu l&amp;ecirc;n. Điều n&amp;agrave;y c&amp;oacute; được nhờ ph&amp;eacute;p thuật của nữ thủy thần nạp đầy trong [Đ&amp;agrave;i Ph&amp;aacute;t thanh Ho&amp;agrave;ng gia]. Sương m&amp;ugrave; được ph&amp;acirc;n t&amp;aacute;n trong kh&amp;ocirc;ng kh&amp;iacute; nhờ sử dụng những thiết bị lắp đặt tại mỗi th&amp;agrave;nh phố v&amp;agrave; ở đ&amp;oacute; khung cảnh trong [Ph&amp;ograve;ng Ph&amp;aacute;t thanh Ho&amp;agrave;ng gia] được m&amp;ocirc; phỏng dựa tr&amp;ecirc;n hiện tượng kh&amp;uacute;c xạ. N&amp;oacute;i theo ng&amp;ocirc;n ngữ hiện đại,từ địa điểm ghi thực, dữ liệu h&amp;igrave;nh ảnh được tiếp nhậnv&amp;agrave; ph&amp;oacute;ng l&amp;ecirc;n một m&amp;agrave;n ảnh tr&amp;ecirc;n trời trong thời gian thực, hoặc c&amp;aacute;i g&amp;igrave; đ&amp;oacute; tương tự vậy.&lt;/p&gt;

&lt;p&gt;H&amp;igrave;nh ảnh kh&amp;aacute; th&amp;ocirc; nhưng được diện kiến t&amp;acirc;n vương đ&amp;atilde; khuấy động nh&amp;acirc;n d&amp;acirc;n. V&amp;agrave;i người bối rối v&amp;igrave; thấy cậu c&amp;ograve;n trẻ tuổi, với v&amp;agrave;i người kh&amp;aacute;c th&amp;igrave; do vẻ ngo&amp;agrave;i b&amp;igrave;nh thường của cậu. Mặc d&amp;ugrave; Soma cũng c&amp;oacute; lỗi khi bỏ qua trang phục trịnh trọng, n&amp;oacute;i rằng đ&amp;oacute; l&amp;agrave; điều phiền to&amp;aacute;i v&amp;agrave; đội duy nhất chiếc vương miện m&amp;agrave; th&amp;ocirc;i. Họ chỉ cảm thấy nhẹ nh&amp;otilde;m khi thấy cảnh tượng Liecia đầymạnh mẽ đứng cạnh b&amp;ecirc;n cậu ta.&lt;/p&gt;

&lt;p&gt;Họ đ&amp;atilde; nghe n&amp;oacute;i rằng nguy&amp;ecirc;n vương kh&amp;ocirc;ng bị chiếm ng&amp;ocirc;i bằng vũ lực, nhưng họ vẫn kh&amp;ocirc;ng thể an t&amp;acirc;m đến tận khi họ tận mắt chứng kiến cậu ấy. Vẻ đẹp lộng lẫy của Liecia được nh&amp;acirc;n d&amp;acirc;n đặc biệt mến mộ. Trong l&amp;uacute;c đ&amp;oacute;, Soma tiếp tục lời n&amp;oacute;i của m&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;[Hỡi thần d&amp;acirc;n, quốc gia n&amp;agrave;y đang b&amp;ecirc;n bờ vực khủng hoảng chưa từng c&amp;oacute;!Vấn đề lương thực trầm trọng, d&amp;ograve;ng người tị nạn bị cướp đất đai bởi Quỷ Vương&amp;hellip; Đ&amp;acirc;y đều l&amp;agrave; những căn bệnh nguy hại đang g&amp;acirc;y họa cho đất nước n&amp;agrave;y! V&amp;agrave; chưa phải tất cả đ&amp;acirc;u! Quốc gia lớn nhất tại lục địa, Đế quốc Đại Hỗn mang đang n&amp;acirc;ng tầm ảnh hưởng, &amp;aacute;p đặt thuế trợ chiến l&amp;ecirc;n những nước kh&amp;aacute;c, g&amp;acirc;y sức &amp;eacute;p l&amp;ecirc;n nền kinh tế của họ. V&amp;agrave; kh&amp;ocirc;ng chỉ Đế quốc đ&amp;acirc;u, những cường quốc đang nh&amp;acirc;n cơ hội n&amp;agrave;y để nuốt chửng c&amp;aacute;c nước nhỏ hơn, một quốc gia thiếu sức mạnh muốn tồn tại được th&amp;igrave; phải m&amp;agrave;i sắc nanh vuốt của m&amp;igrave;nh.][Nguy&amp;ecirc;n vương nhận thấy rằng năng lực của bản th&amp;acirc;n kh&amp;ocirc;ng đủ v&amp;agrave; đ&amp;atilde; giao ph&amp;oacute; lại chuyện quốc gia đại sự cho kẻ h&amp;egrave;n mọn n&amp;agrave;y. Nhận ra điều m&amp;igrave;nh kh&amp;ocirc;ng thể l&amp;agrave;m v&amp;agrave; giao ph&amp;oacute; lại cho những người c&amp;oacute; thể, thấu hiểu được điều n&amp;agrave;y chẳng phải ng&amp;agrave;i ấy l&amp;agrave; một bậc t&amp;agrave;i tr&amp;iacute; sao? Nguy&amp;ecirc;n vương&amp;nbsp;thực sự xứng đ&amp;aacute;ng được xưng tụng l&amp;agrave; một hiền vương trong thời đại h&amp;ograve;a b&amp;igrave;nh.]&lt;/p&gt;

&lt;p&gt;Liecia trong gi&amp;acirc;y l&amp;aacute;t n&amp;eacute;m cho cậu một &amp;aacute;nh mắt lạnh l&amp;ugrave;ng như muốn n&amp;oacute;i &amp;ldquo;Anh thực sự kh&amp;ocirc;ng c&amp;oacute; &amp;yacute; đ&amp;oacute; đ&amp;acirc;u, phải chứ&amp;hellip;?&amp;rdquo;, nhưng chẳng c&amp;oacute; một ai để &amp;yacute; cả.&lt;/p&gt;

&lt;p&gt;[Nhưng đ&amp;acirc;y l&amp;agrave; thời kỳ biến động v&amp;agrave; thời kỳ biến động kh&amp;ocirc;ng cần một th&amp;aacute;nh vương m&amp;agrave; một vị vua gần gũi với nh&amp;acirc;n d&amp;acirc;n, một kẻ sống s&amp;oacute;t ngoan cường! Kh&amp;ocirc;ng phải một nh&amp;agrave; l&amp;atilde;nh đạo tr&amp;ecirc;n mức trung b&amp;igrave;nh ở mọi lĩnh vực m&amp;agrave; l&amp;agrave; một người kh&amp;ocirc;ng từ bỏ sinh tồn, một người đứng tr&amp;ecirc;n tất cả ở điểm n&amp;agrave;y, v&amp;igrave; an nguy của gia đ&amp;igrave;nh v&amp;agrave; sự bảo hộ t&amp;agrave;i sản của c&amp;aacute;c bạn đều phụ thuộc v&amp;agrave;o th&amp;agrave;nh quả của người đ&amp;oacute;! V&amp;igrave; thế nguy&amp;ecirc;n vương đ&amp;atilde; giao ph&amp;oacute; đất nước n&amp;agrave;y lại cho t&amp;ocirc;i! Sự bền bỉ. Chỉ ri&amp;ecirc;ng mặt n&amp;agrave;y t&amp;ocirc;i đ&amp;atilde; vượt xa nguy&amp;ecirc;n vương rồi!][Hiện tại, t&amp;ocirc;i đang tiến h&amp;agrave;nh rất nhiều cải c&amp;aacute;ch! Nhưng tồn tại một sự thiếu hụt nh&amp;acirc;n t&amp;agrave;i qu&amp;aacute; lớn để l&amp;agrave;m được điều đ&amp;oacute;. V&amp;igrave; thế, ngay b&amp;acirc;y giờ, t&amp;ocirc;i đang chi&amp;ecirc;u mộ nh&amp;acirc;n t&amp;agrave;i!][T&amp;ocirc;i sẽ n&amp;oacute;i lại một lần nữa! Hỡi thần d&amp;acirc;n,nếu c&amp;oacute; t&amp;agrave;i năng bạn sẽ c&amp;oacute; đất dụng v&amp;otilde;! Thời đại hỗn mang n&amp;agrave;y kh&amp;ocirc;ng cần những người tốt hơn kẻ kh&amp;aacute;c về mặt bằng chung m&amp;agrave; l&amp;agrave; những người đỉnh hơn phần c&amp;ograve;n lại về một điểm ri&amp;ecirc;ng biệt. T&amp;ocirc;i sẽ kh&amp;ocirc;ng đ&amp;aacute;nh gi&amp;aacute; t&amp;agrave;i năng đ&amp;oacute; l&amp;agrave; g&amp;igrave;. T&amp;ocirc;i cũng sẽ kh&amp;ocirc;ng đ&amp;aacute;nh gi&amp;aacute; bất cứ điều g&amp;igrave; kh&amp;aacute;c ngo&amp;agrave;i t&amp;agrave;i năng đ&amp;oacute;. Nếu bản th&amp;acirc;n mang niềm ki&amp;ecirc;u h&amp;atilde;nh rằng &amp;ldquo;Ta kh&amp;ocirc;ng thua bất kỳ ai về mặt n&amp;agrave;y đ&amp;acirc;u&amp;rdquo;, th&amp;igrave; h&amp;atilde;y đến đứng trước t&amp;ocirc;i đ&amp;acirc;y.][Học vấn, tuổi t&amp;aacute;c, địa vị x&amp;atilde; hội, d&amp;ograve;ng d&amp;otilde;i, bộ tộc hoặc giới t&amp;iacute;nh g&amp;igrave; đều kh&amp;ocirc;ng quan trọng! C&amp;oacute; đọc hay viết được hay kh&amp;ocirc;ng, c&amp;oacute; thể t&amp;iacute;nh to&amp;aacute;n được hay kh&amp;ocirc;ng, k&amp;iacute;ch thước khối t&amp;agrave;i sản như thế n&amp;agrave;o, sức khỏe c&amp;oacute; tốt hay kh&amp;ocirc;ng, khu&amp;ocirc;n mặt hay h&amp;igrave;nh d&amp;aacute;ng xấu hay đẹp, c&amp;oacute; sẹo tr&amp;ecirc;n ống quyển hay kh&amp;ocirc;ng, chẳng c&amp;oacute; thứ g&amp;igrave; quan trọng hết! Chỉ ri&amp;ecirc;ng điểm n&amp;agrave;y m&amp;igrave;nh vượt xa kẻ kh&amp;aacute;c, chỉ ri&amp;ecirc;ng điểm n&amp;agrave;y m&amp;igrave;nh kh&amp;ocirc;ng bị ai trong đất nước n&amp;agrave;y đ&amp;aacute;nh bại. Nếu bất kỳ ai mang &amp;yacute; nghĩ đ&amp;oacute; th&amp;igrave; h&amp;atilde;y diện kiến trước t&amp;ocirc;i đ&amp;acirc;y! Nếu t&amp;ocirc;i thấy bạn hữu &amp;iacute;ch cho đất nước, bạn sẽ ngập tr&amp;agrave;n trong niềm biết ơn của t&amp;ocirc;i v&amp;agrave; t&amp;ocirc;i sẽ đ&amp;oacute;n ch&amp;agrave;o bạn v&amp;agrave;o triều đ&amp;igrave;nh!]&lt;/p&gt;

&lt;p&gt;B&amp;agrave;i diễn văn đầy s&amp;ocirc;i sục của vị t&amp;acirc;n vương l&amp;agrave;m &amp;aacute;nh mắt của nh&amp;acirc;n d&amp;acirc;n rạng ngời. Họ vừa lắng nghe lời n&amp;oacute;i tha thiết của cậu vừa vắt &amp;oacute;c suy nghĩ xem họ sở hữu t&amp;agrave;i năng g&amp;igrave; vượt xa người kh&amp;aacute;c. Tuy nhi&amp;ecirc;n, c&amp;ugrave;ng một l&amp;uacute;c, họ nghĩ rằng d&amp;ugrave; m&amp;igrave;nh c&amp;oacute; thể ph&amp;aacute;t hiện điều m&amp;agrave; bản th&amp;acirc;n l&amp;agrave;m tốt hơn người kh&amp;aacute;c, nếu n&amp;oacute; chẳng phục vụ chomục đ&amp;iacute;ch n&amp;agrave;o th&amp;igrave; cũng v&amp;ocirc; dụng m&amp;agrave; th&amp;ocirc;i. Cảm gi&amp;aacute;c đ&amp;oacute;, gần như một sự cam chịu, l&amp;agrave; bức tường cuối c&amp;ugrave;ng k&amp;igrave;m h&amp;atilde;m sự hứng khởi m&amp;agrave; b&amp;agrave;i diễn văn s&amp;ocirc;i sục đ&amp;oacute; mang lại.&lt;/p&gt;

&lt;p&gt;Nh&amp;agrave; vua n&amp;oacute;i rằng cậu ấy muốn những người c&amp;oacute; khả năng giải quyết những vấn đề của đất nước. Họ kh&amp;ocirc;ng nghĩ rằng t&amp;agrave;i năng m&amp;igrave;nh sở hữu sẽ mang lại lợi &amp;iacute;ch cho vương quốc.&lt;/p&gt;

&lt;p&gt;[T&amp;ocirc;i chắc chắn một v&amp;agrave;i người trong số c&amp;aacute;c bạn do dự kh&amp;ocirc;ng biết liệu rằng t&amp;agrave;i năng của m&amp;igrave;nh c&amp;oacute; hữu dụng hay kh&amp;ocirc;ng!]&lt;/p&gt;

&lt;p&gt;Như thể thấu hiểu sự lưỡng lự của nh&amp;acirc;n d&amp;acirc;n, Soma n&amp;oacute;i.&lt;/p&gt;

&lt;p&gt;[Nhưng đ&amp;oacute; kh&amp;ocirc;ng thuộc quyền quyết định của c&amp;aacute;c bạn! T&amp;agrave;i năng đ&amp;oacute; c&amp;oacute; cần thiết cho đất nước hay kh&amp;ocirc;ng l&amp;agrave; do t&amp;ocirc;i, Soma Kazuya, đưa ra quyết định! D&amp;ugrave; mọi người gọi t&amp;agrave;i năng đ&amp;oacute; l&amp;agrave; v&amp;ocirc; &amp;iacute;ch cũng chẳng quan trọng! T&amp;ocirc;i l&amp;agrave; người đưa ra đ&amp;aacute;nh gi&amp;aacute;! N&amp;ecirc;n đừng ngại ngần chi! H&amp;atilde;y diện kiến t&amp;ocirc;i v&amp;agrave; cho t&amp;ocirc;i thấy những g&amp;igrave; bạn c&amp;oacute;!]&lt;/p&gt;

&lt;p&gt;Rồi như thể trấn tĩnh lại, Soma lấy hơi.&lt;/p&gt;

&lt;p&gt;[Nếu vẫn do dự, h&amp;atilde;y l&amp;agrave;m thế n&amp;agrave;y đi. Nếu t&amp;agrave;i năng đ&amp;oacute; kh&amp;ocirc;ng ai s&amp;aacute;nh bằng tại vương quốc n&amp;agrave;y, t&amp;ocirc;i sẽ ban bố &amp;ldquo;Dấu ấn V&amp;ocirc; song&amp;rdquo; nh&amp;acirc;n danh Quốc vương của Elfrieden v&amp;agrave; c&amp;aacute;c bạn sẽ nhận được tặng phẩm bằng tiền mặt. Hỡi thần d&amp;acirc;n, chừng đ&amp;oacute; chưa đủ khiến c&amp;aacute;c ngươi phấn kh&amp;iacute;ch hay sao!]&lt;/p&gt;

&lt;p&gt;H&amp;igrave;nh ảnh Soma được chiếu l&amp;ecirc;n đang giơ cao nắm đấm. V&amp;agrave;o khoảnh khắc đ&amp;oacute;, tiếng reo h&amp;ograve; nổi l&amp;ecirc;n từ khắp c&amp;aacute;c thị trấn tr&amp;ecirc;n đất nước. Đ&amp;oacute; l&amp;agrave; gi&amp;acirc;y ph&amp;uacute;t bức tường trong tr&amp;aacute;i tim của nh&amp;acirc;n d&amp;acirc;n vỡ tung.&lt;/p&gt;

&lt;p&gt;Thủ đ&amp;ocirc; cũng kh&amp;ocirc;ng hề kh&amp;aacute;c biệt.&lt;/p&gt;

&lt;p&gt;[Oooh&amp;hellip; Từ đ&amp;acirc;y t&amp;ocirc;i c&amp;oacute; thể nghe thấy tiếng reo h&amp;ograve; tại l&amp;acirc;u đ&amp;agrave;i trấn. Nhiệt huyết của mọi người thật tuyệt vời.]&lt;/p&gt;

&lt;p&gt;Giọng n&amp;oacute;i của Soma vỡ &amp;ograve;a v&amp;agrave; Liecia đứng cạnh cậu đang lo lắng nhưng kh&amp;ocirc;ng ai nhận ra cả.&lt;/p&gt;

&lt;p&gt;[Ngo&amp;agrave;i ra, t&amp;ocirc;i kh&amp;ocirc;ng phiền nếu c&amp;aacute;c bạn tự ứng cử hoặc tiến cử người kh&amp;aacute;c. Nếu bạn giới thiệu kẻ kh&amp;aacute;c, người đưa ra đề xuất sẽ nhận được 3/10 phần thưởng. H&amp;atilde;y l&amp;ocirc;i k&amp;eacute;o những người ẩn dật v&amp;agrave;o thời đại đất nước khủng hoảng n&amp;agrave;y. Kh&amp;ocirc;ng chỉ thế, với những t&amp;agrave;i năng tranh đấu như &amp;ldquo;kiếm thuật&amp;rdquo; hoặc &amp;ldquo;ca h&amp;aacute;t&amp;rdquo;, t&amp;ocirc;i sẽ để mọi người so t&amp;agrave;i với nhau trước đ&amp;oacute; v&amp;agrave; lựa chọn một đại diện, n&amp;ecirc;n h&amp;atilde;y chuẩn bị sẵn s&amp;agrave;ng cho điều đ&amp;oacute; đi. Được rồi&amp;hellip; giờ t&amp;ocirc;i đ&amp;atilde; n&amp;oacute;i xong những điều m&amp;igrave;nh muốn.]&lt;/p&gt;

&lt;p&gt;Rồi Soma, trong Đ&amp;agrave;i Ph&amp;aacute;t thanh Ho&amp;agrave;ng gia kết th&amp;uacute;c với những lời n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;[Vậy, hỡi tất cả những nh&amp;acirc;n t&amp;agrave;i, t&amp;ocirc;i sẽ chờ ở thủ đ&amp;ocirc; Parnam để được bắt tay với c&amp;aacute;c bạn]&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;acirc;u cuối l&amp;agrave; sao đấy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sau khi buổi ph&amp;aacute;t thanh kết th&amp;uacute;c, Liecia trừng mắt với t&amp;ocirc;i, t&amp;ocirc;i đ&amp;aacute;p lại với một nụ cười v&amp;agrave; n&amp;oacute;i, &amp;ldquo;Chỉ l&amp;agrave; thuận theo chiều gi&amp;oacute; th&amp;ocirc;i.&amp;rdquo; Giờ th&amp;igrave; nh&amp;acirc;n d&amp;acirc;n sẽ phản ứng ra sao đ&amp;acirc;y? Liệu nh&amp;acirc;n t&amp;agrave;i t&amp;ocirc;i hằng mong muốn c&amp;oacute; xuất hiện kh&amp;ocirc;ng?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thật tuyệt nếu c&amp;oacute; nhiều người xuất hiện.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;.Phải đấy.&amp;rdquo;&lt;/p&gt;
', 1, CAST(0x0000ADE4016E7380 AS DateTime), CAST(0x0000ADE4016E7380 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2087, 1080, 1039, N'Chương 1: Khởi đầu', N'&lt;p&gt;T&amp;ocirc;i đang chạy&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đang chạy bằng tất cả sức lực để tho&amp;aacute;t khỏi m&amp;oacute;ng vuốt của con qu&amp;aacute;i th&amp;uacute;.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i tập trung hết sức để chạy thoát, với tr&amp;aacute;i tim tr&amp;agrave;n ngập sự sợ h&amp;atilde;i.&lt;/p&gt;

&lt;p&gt;B&amp;ecirc;n tr&amp;ecirc;n cầu thang. Nhảy qua s&amp;acirc;n. Đ&amp;ocirc;i khi sử dụng ph&amp;eacute;p thuật để b&amp;aacute;m v&amp;agrave;o n&amp;oacute;c nh&amp;agrave;. Đ&amp;ocirc;i khi lại rơi xuống đ&amp;acirc;́t.&lt;/p&gt;

&lt;p&gt;[Mi đ&amp;acirc;u rồi hả?!]&lt;/p&gt;

&lt;p&gt;Kẻ đ&amp;oacute; đang gầm l&amp;ecirc;n 1 tiếng rồi đuổi theo t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Bất kể t&amp;ocirc;i c&amp;oacute; chạy đi đến đ&amp;acirc;u.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i kh&amp;aacute; tự tin v&amp;agrave;o sức bền của t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;D&amp;ugrave; sao th&amp;igrave; t&amp;ocirc;i đ&amp;atilde; t&amp;acirc;̣p chạy khi t&amp;ocirc;i c&amp;ograve;n mới 2 3 tuổi, luyện tập với kiếm.&lt;/p&gt;

&lt;p&gt;Nhưng ch&amp;uacute;t tự tin n&amp;agrave;y đ&amp;atilde; sớm bị ph&amp;aacute; tan rồi.&lt;/p&gt;

&lt;p&gt;Kẻ đ&amp;oacute;, đang chế nhạo mọi cố gắng của t&amp;ocirc;i, đuổi theo t&amp;ocirc;i m&amp;agrave; ứ cần thở lấy một hơi, với m&amp;aacute;i t&amp;oacute;c đỏ tung bay trong l&amp;agrave;n gi&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Trong từ đi&amp;ecirc;̉n của kẻ đ&amp;oacute; kh&amp;ocirc;ng c&amp;oacute; khái niệm gọi là &amp;ldquo;bỏ cuộc&amp;rdquo;. Bất kể t&amp;ocirc;i chạy bao xa, chỉ nghỉ trong 1 khoảnh khắc th&amp;ocirc;i, sẽ l&amp;agrave; l&amp;uacute;c m&amp;agrave; kẻ đ&amp;oacute; r&amp;uacute;t ngắn khoảng c&amp;aacute;ch từng ch&amp;uacute;t một.&lt;/p&gt;

&lt;p&gt;[Haaa&amp;hellip;&amp;hellip;. Haaa&amp;hellip;&amp;hellip;]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i bắt đầu hết hơi rồi.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i kh&amp;ocirc;ng thể tiếp tục chạy được nữa. T&amp;ocirc;i kh&amp;ocirc;ng thể chạy trốn được.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i sẽ ẩn n&amp;aacute;u. Chỉ c&amp;ograve;n c&amp;aacute;ch đ&amp;oacute; th&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;[Ực&amp;hellip;.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i h&amp;ograve;a m&amp;igrave;nh v&amp;agrave;o b&amp;oacute;ng của cầu thang, nấp ở khu vực c&amp;oacute; thể quan s&amp;aacute;t được khu thực vật, nơi m&amp;agrave; t&amp;ocirc;i c&amp;oacute; thể nghe thấy con qu&amp;aacute;i th&amp;uacute; đang gầm l&amp;ecirc;n từ giữa l&amp;acirc;u đ&amp;agrave;i.&lt;/p&gt;

&lt;p&gt;[Ta sẽ kh&amp;ocirc;ng bỏ qua cho ngươi!]&lt;/p&gt;

&lt;p&gt;Tiếng gầm đ&amp;oacute; khiến đ&amp;ocirc;i ch&amp;acirc;n t&amp;ocirc;i run rẩy.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i l&amp;agrave; Rudeus Greyrat. 7 tuổi.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i c&amp;oacute; m&amp;aacute;i t&amp;oacute;c m&amp;agrave;u tr&amp;agrave; xanh tươi s&amp;aacute;ng. T&amp;ocirc;i l&amp;agrave; một Bishounen (Trai trẻ đẹp) khỏe mạnh, v&amp;agrave; từng l&amp;agrave; 1 t&amp;ecirc;n NEET 34 tuổi.&lt;/p&gt;

&lt;p&gt;Bởi v&amp;igrave; t&amp;ocirc;i kh&amp;ocirc;ng đến lễ tang của bố mẹ t&amp;ocirc;i m&amp;agrave; t&amp;ocirc;i đ&amp;atilde; bị đuổi ra khỏi nh&amp;agrave; bởi gia đ&amp;igrave;nh họ h&amp;agrave;ng, t&amp;ocirc;i đ&amp;atilde; bị t&amp;ocirc;ng chết bởi 1 chiếc xe tải. Nhưng nhờ c&amp;aacute;i tr&amp;ograve; đ&amp;ugrave;a t&amp;ecirc;̣ hại của định mệnh, mà t&amp;ocirc;i đ&amp;atilde; giữ lại được k&amp;yacute; ức của mình v&amp;agrave; đầu thai thành một đứa trẻ sơ sinh.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đ&amp;atilde; lu&amp;ocirc;n suy nghĩ về kiếp trước của t&amp;ocirc;i khi c&amp;ograve;n l&amp;agrave; một con người tệ hại, v&amp;agrave; trong 7 năm qua, t&amp;ocirc;i đ&amp;atilde; n&amp;ocirc;̃ lực chăm chỉ để sống hết m&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;Học c&amp;aacute;ch n&amp;oacute;i v&amp;agrave; viết, học ph&amp;eacute;p thuật, luyện kiếm thuật, thiết lập mối quan hệ tốt với bố mẹ mới của t&amp;ocirc;i, v&amp;agrave; lại c&amp;ograve;n được gặp gỡ một người bạn dễ thương t&amp;ecirc;n Sylphy. Để c&amp;oacute; thể đi học c&amp;ugrave;ng với Sylphy, t&amp;ocirc;i phải tu&amp;acirc;n thủ y&amp;ecirc;u cầu của c&amp;ocirc;ng việc, gi&amp;uacute;p t&amp;ocirc;i c&amp;oacute; đủ tiền trang trải học ph&amp;iacute; cho 2 người, t&amp;ocirc;i đ&amp;atilde; tới Th&amp;agrave;nh Roa.&lt;/p&gt;

&lt;p&gt;Nếu t&amp;ocirc;i làm tròn c&amp;ocirc;ng việc dạy ti&amp;ecirc;̉u thư, b&amp;ecirc;n thu&amp;ecirc; t&amp;ocirc;i sẽ lo chuy&amp;ecirc;̣n đóng học ph&amp;iacute; ở trường &amp;mdash;&amp;mdash;&amp;mdash;&amp;ndash; Mặc d&amp;ugrave; chuyện lẽ ra phải l&amp;agrave; như thế.&lt;/p&gt;

&lt;p&gt;[Ra khỏi nơi ngươi trốn ngay! Ta sẽ khi&amp;ecirc;́n ngươi ra bã!]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i nh&amp;igrave;n ra ngo&amp;agrave;i từ khu vực quan s&amp;aacute;t, v&amp;agrave; r&amp;ugrave;ng m&amp;igrave;nh từ tiếng ồn của con qu&amp;aacute;i th&amp;uacute;.&lt;/p&gt;

&lt;p&gt;Run rẩy trước hiện th&amp;acirc;n của sự tàn ác trong h&amp;igrave;nh h&amp;agrave;i một c&amp;ocirc; g&amp;aacute;i trẻ.&lt;/p&gt;

&lt;p&gt;&amp;mdash;&amp;mdash; Tại sao chuyện lại trở th&amp;agrave;nh thế n&amp;agrave;y?&lt;/p&gt;

&lt;p&gt;H&amp;atilde;y quay lại thời điểm 1 giờ trước đ&amp;oacute;.&lt;/p&gt;
', 1, CAST(0x0000ADE4016F5DF3 AS DateTime), CAST(0x0000ADE4016F5DF3 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2088, 1080, 1039, N'Chương 2: Cô gái trẻ hung dữ', N'&lt;p&gt;Ph&amp;acirc;̀n 1:&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Khi ch&amp;uacute;ng t&amp;ocirc;i đến Roa, th&amp;igrave; đ&amp;atilde; chiều rồi.&lt;/p&gt;

&lt;p&gt;Khoảng c&amp;aacute;ch từ l&amp;agrave;ng Buina đến Roa l&amp;agrave; khoảng 1 ng&amp;agrave;y đường tr&amp;ecirc;n xe ngựa.&lt;/p&gt;

&lt;p&gt;Nếu ta t&amp;iacute;nh thời gian cụ th&amp;ecirc;̉, th&amp;igrave; l&amp;agrave; khoảng 6 đến 7 giờ. Ta c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; xa nhưng nếu n&amp;oacute;i l&amp;agrave; gần th&amp;igrave; lại kh&amp;ocirc;ng đ&amp;uacute;ng.&lt;/p&gt;

&lt;p&gt;Th&amp;agrave;nh phố Roa quả đ&amp;uacute;ng l&amp;agrave; một trong số những th&amp;agrave;nh phố lớn nhất quanh đ&amp;acirc;y, quả l&amp;agrave; một nơi nhộn nhịp.&lt;/p&gt;

&lt;p&gt;Điều đầu ti&amp;ecirc;n t&amp;ocirc;i thấy l&amp;agrave; những bức tường.&lt;/p&gt;

&lt;p&gt;Ch&amp;uacute;ng bao quanh thành phố khoảng 7 đến 8 m&amp;eacute;t cao v&amp;agrave; tr&amp;ocirc;ng rất vững chắc.&lt;/p&gt;

&lt;p&gt;Xung quanh cổng th&amp;agrave;nh phố, giao th&amp;ocirc;ng ở đ&amp;acirc;y chảy bất tận, v&amp;agrave; một khi ch&amp;uacute;ng t&amp;ocirc;i v&amp;agrave;o trong, t&amp;ocirc;i thấy ngay tất cả c&amp;aacute;c loại h&amp;agrave;ng b&amp;aacute;n rong.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; ngay nơi t&amp;ocirc;i vừa v&amp;agrave;o, c&amp;oacute; một h&amp;agrave;ng c&amp;aacute;c nh&amp;agrave; trọ v&amp;agrave; chuồng ngựa.&lt;/p&gt;

&lt;p&gt;Người d&amp;acirc;n đang h&amp;ograve;a lẫn c&amp;ugrave;ng với c&amp;aacute;c thương gia, c&amp;oacute; cả người mặc gi&amp;aacute;p đi qua, to&amp;agrave;n bộ nơi đ&amp;acirc;y tr&amp;ocirc;ng giống như một thế giới fantasy từ một cuốn truyện nào đó.&lt;/p&gt;

&lt;p&gt;C&amp;oacute; một v&amp;agrave;i người mang theo những chi&amp;ecirc;́c h&amp;agrave;nh l&amp;yacute; lớn đang ngồi ngay tại một khu vực như thể l&amp;agrave; họ đang chờ thứ g&amp;igrave; đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;C&amp;oacute; thể l&amp;agrave; g&amp;igrave; đ&amp;acirc;y?&lt;/p&gt;

&lt;p&gt;[Ghyslaine, c&amp;ocirc; biết đấy l&amp;agrave; g&amp;igrave; kh&amp;ocirc;ng?]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i hỏi người ngồi đối diện t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;C&amp;oacute; đ&amp;ocirc;i tai th&amp;uacute; v&amp;agrave; một c&amp;aacute;i đu&amp;ocirc;i, v&amp;agrave; mặc bộ quần &amp;aacute;o da rất l&amp;agrave; thiếu vải với l&amp;agrave;n da m&amp;agrave;u n&amp;acirc;u của chocolate, l&amp;agrave; một ch&amp;agrave;ng trai to lớn với cơ bắp &amp;mdash;&amp;ndash; Kh&amp;ocirc;ng, đ&amp;oacute; l&amp;agrave; một nữ kiếm sĩ.&lt;/p&gt;

&lt;p&gt;Ghyslaine Dedorudia.&lt;/p&gt;

&lt;p&gt;Đứng thứ 3 trong trường phái Kiếm-Thần, một nữ kiếm sĩ giàu kinh nghi&amp;ecirc;̣m sở hữu danh hiệu Kiếm-Vương, đ&amp;atilde; chấp nhận dạy t&amp;ocirc;i kiếm thuật ở nơi m&amp;agrave; t&amp;ocirc;i đang tới.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ấy l&amp;agrave; gi&amp;aacute;o vi&amp;ecirc;n thứ hai của t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;[&amp;hellip;&amp;hellip;. Nh&amp;oacute;c]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ấy biểu lộ vẻ tức tối trước c&amp;acirc;u hỏi của t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;[Cậu dám coi ta l&amp;agrave; đứa ngốc &amp;agrave;?]&lt;/p&gt;

&lt;p&gt;Ghyslaine trừng mắt nh&amp;igrave;n t&amp;ocirc;i dữ dội, khi&amp;ecirc;́n t&amp;ocirc;i sợ hãi.&lt;/p&gt;

&lt;p&gt;[Kh&amp;ocirc;ng ạ. Ch&amp;aacute;u chỉ. Ch&amp;aacute;u kh&amp;ocirc;ng biết đ&amp;oacute; l&amp;agrave; g&amp;igrave;, n&amp;ecirc;n ch&amp;aacute;u muốn hỏi&amp;hellip;&amp;hellip;]&lt;/p&gt;

&lt;p&gt;[&amp;Agrave;, xin lỗi. H&amp;oacute;a ra &amp;yacute; cậu l&amp;agrave; vậy.]&lt;/p&gt;

&lt;p&gt;Thấy t&amp;ocirc;i gần đổ lệ, Ghyslaine nhanh ch&amp;oacute;ng trả lời.&lt;/p&gt;

&lt;p&gt;[Đ&amp;oacute; l&amp;agrave; khu vực đợi cho những xe chở c&amp;ocirc;ng cộng. Đ&amp;ecirc;̉ đi từ th&amp;agrave;nh phố n&amp;agrave;y đến th&amp;agrave;nh phố kh&amp;aacute;c ta sẽ c&amp;acirc;̀n nơi đó, khi cậu trả tiền cho l&amp;aacute;i xe, cậu c&amp;oacute; thể sử dụng dịch vụ.]&lt;/p&gt;

&lt;p&gt;Ghyslaine chỉ v&amp;agrave;o từng cửa h&amp;agrave;ng một, n&amp;oacute;i với t&amp;ocirc;i rằng đ&amp;oacute; l&amp;agrave; cửa h&amp;agrave;ng vũ kh&amp;iacute;, đ&amp;oacute; l&amp;agrave; qu&amp;aacute;n rượu, v&amp;agrave; đằng kia l&amp;agrave; một v&amp;agrave;i hiệp hội thương mại. Ơ chờ đ&amp;atilde;, cửa h&amp;agrave;ng kia tr&amp;ocirc;ng khả nghi qu&amp;aacute;.&lt;/p&gt;

&lt;p&gt;Mặc dù b&amp;ecirc;̀ ngoài tr&amp;ocirc;ng khá đáng sợ, nhưng c&amp;ocirc; ấy lại rất th&amp;acirc;n thiện.&lt;/p&gt;

&lt;p&gt;Ch&amp;uacute;ng t&amp;ocirc;i rẽ v&amp;agrave;o một g&amp;oacute;c, b&amp;acirc;̀u kh&amp;ocirc;ng khí thay đổi.&lt;/p&gt;

&lt;p&gt;Sau khi đi qua nhiều cửa h&amp;agrave;ng phục vụ cho c&amp;aacute;c nh&amp;agrave; phi&amp;ecirc;u lưu, trong khi đang ng&amp;ocirc;̀i trong chi&amp;ecirc;́c xe ngựa, ch&amp;uacute;ng t&amp;ocirc;i có th&amp;ecirc;̉ thấy nhiều cửa h&amp;agrave;ng d&amp;acirc;n cư.&lt;/p&gt;

&lt;p&gt;Chắc phải c&amp;oacute; người tr&amp;uacute; ngụ ở s&amp;acirc;u trong hẻm.&lt;/p&gt;

&lt;p&gt;Tr&amp;ocirc;ng như ch&amp;ocirc;̃ này được x&amp;acirc;y có chủ đích.&lt;/p&gt;

&lt;p&gt;Nếu c&amp;oacute; kẻ th&amp;ugrave; ở g&amp;acirc;̀n, những người s&amp;ocirc;́ng ở sẽ ph&amp;ograve;ng thủ, trong khi c&amp;aacute;c c&amp;ocirc;ng d&amp;acirc;n bỏ trốn v&amp;agrave;o trung t&amp;acirc;m của th&amp;agrave;nh phố, hoặc bỏ trốn theo hướng ngược lại&lt;/p&gt;

&lt;p&gt;Với cái b&amp;ocirc;́ cục n&amp;agrave;y, khi c&amp;agrave;ng đi vào s&amp;acirc;u, c&amp;aacute;c con ngựa tr&amp;ocirc;ng c&amp;agrave;ng to lớn hơn, cả c&amp;aacute;c cửa h&amp;agrave;ng cũng cao hơn hẳn.&lt;/p&gt;

&lt;p&gt;C&amp;agrave;ng đ&amp;ecirc;́n g&amp;acirc;̀n trung t&amp;acirc;m, c&amp;agrave;ng c&amp;oacute; nhiều người gi&amp;agrave;u hơn.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; rồi, ngay trung t&amp;acirc;m của th&amp;agrave;nh phố, l&amp;agrave; một c&amp;ocirc;ng tr&amp;igrave;nh cao nhất.&lt;/p&gt;

&lt;p&gt;[Đ&amp;oacute; l&amp;agrave; dinh thự của lãnh chúa.]&lt;/p&gt;

&lt;p&gt;[Tr&amp;ocirc;ng n&amp;oacute; giống như một l&amp;acirc;u đ&amp;agrave;i hơn là dinh thự.]&lt;/p&gt;

&lt;p&gt;[Vì nơi đ&amp;acirc;y là m&amp;ocirc;̣t thành ph&amp;ocirc;́ ki&amp;ecirc;n c&amp;ocirc;́.]&lt;/p&gt;

&lt;p&gt;Người ta n&amp;oacute;i rằng 400 năm trước, nơi n&amp;agrave;y đ&amp;atilde; từng l&amp;agrave; tuyến ph&amp;ograve;ng thủ cuối c&amp;ugrave;ng trong cu&amp;ocirc;̣c chi&amp;ecirc;́n ch&amp;ocirc;́ng lại quỷ t&amp;ocirc;̣c. L&amp;agrave; một th&amp;agrave;nh phố có một lịch sử l&amp;acirc;u d&amp;agrave;i.&lt;/p&gt;

&lt;p&gt;Do đó, l&amp;acirc;u đài nằm ở trung t&amp;acirc;m.&lt;/p&gt;

&lt;p&gt;Hình như là v&amp;acirc;̣y.&lt;/p&gt;

&lt;p&gt;Nhưng chỉ duy nhất một phần của lịch sử l&amp;agrave; thật, c&amp;aacute;c qu&amp;yacute; tộc ở vương đ&amp;ocirc; xem đ&amp;acirc;y l&amp;agrave; nơi cho các nh&amp;agrave; phi&amp;ecirc;u lưu cấp thấp cư trú.&lt;/p&gt;

&lt;p&gt;[Đã đ&amp;ecirc;́n t&amp;acirc;̣n đ&amp;acirc;y r&amp;ocirc;̀i thì chắc hẳn địa vị qu&amp;yacute; tộc của vị ti&amp;ecirc;̉u thư cháu sắp dạy kh&amp;aacute; l&amp;agrave; cao nhỉ.]&lt;/p&gt;

&lt;p&gt;[Cũng kh&amp;ocirc;ng hẳn l&amp;agrave; vậy.]&lt;/p&gt;

&lt;p&gt;Ghyslaine lắc đầu.&lt;/p&gt;

&lt;p&gt;Nhưng vì dinh thự của người chủ đang ngay trước mắt t&amp;ocirc;i, dựa tr&amp;ecirc;n kết luận trước đ&amp;oacute;, thì hẳn những người đang s&amp;ocirc;́ng ở quanh đ&amp;acirc;y là các quý t&amp;ocirc;̣c thượng c&amp;acirc;́p cả.&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;. hoặc c&amp;oacute; thể l&amp;agrave; kh&amp;ocirc;ng. khu vực n&amp;agrave;y nằm ở g&amp;acirc;̀n bi&amp;ecirc;n giới, thứ hạng quý t&amp;ocirc;̣c có lẽ cũng kh&amp;ocirc;ng phải là cao.&lt;/p&gt;

&lt;p&gt;[Ế?]&lt;/p&gt;

&lt;p&gt;Khi t&amp;ocirc;i c&amp;ograve;n đang mải nghĩ, l&amp;aacute;i xe đ&amp;atilde; ch&amp;agrave;o người gác c&amp;ocirc;̉ng ở trước cổng dinh thự.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; đi v&amp;agrave;o b&amp;ecirc;n trong.&lt;/p&gt;

&lt;p&gt;[V&amp;acirc;̣y người cháu sắp dạy l&amp;agrave; con g&amp;aacute;i của l&amp;atilde;nh ch&amp;uacute;a?]&lt;/p&gt;

&lt;p&gt;[Kh&amp;ocirc;ng.]&lt;/p&gt;

&lt;p&gt;[Kh&amp;ocirc;ng phải sao?]&lt;/p&gt;

&lt;p&gt;[Cũng gần như vậy.]&lt;/p&gt;

&lt;p&gt;C&amp;oacute; ẩn &amp;yacute; g&amp;igrave; sao? T&amp;ocirc;i kh&amp;ocirc;ng thể hiểu được&amp;hellip;.&lt;/p&gt;

&lt;p&gt;Chi&amp;ecirc;́c xe ngựa đã dừng lại.&lt;/p&gt;

&lt;p&gt;Ph&amp;acirc;̀n 2:&lt;/p&gt;

&lt;p&gt;Khi ch&amp;uacute;ng t&amp;ocirc;i v&amp;agrave;o dinh thự, ch&amp;uacute;ng t&amp;ocirc;i đ&amp;atilde; được đưa đến một căn ph&amp;ograve;ng tr&amp;ocirc;ng giống như l&amp;agrave; ph&amp;ograve;ng ti&amp;ecirc;́p kh&amp;aacute;ch.&lt;/p&gt;

&lt;p&gt;Vị quản gia chỉ về ph&amp;iacute;a hai c&amp;aacute;i ghế s&amp;ocirc; fa.&lt;/p&gt;

&lt;p&gt;Đ&amp;acirc;y l&amp;agrave; lần đầu ti&amp;ecirc;n t&amp;ocirc;i đi phỏng vấn.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i sẽ phải ăn nói cẩn thận.&lt;/p&gt;

&lt;p&gt;[Xin h&amp;atilde;y ngồi chỗ đ&amp;oacute;.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i nghe theo lệnh v&amp;agrave; ngồi xuống, Ghyslaine bắt đ&amp;acirc;̀u rời m&amp;agrave; kh&amp;ocirc;ng n&amp;oacute;i một lời n&amp;agrave;o v&amp;agrave; đứng ở một g&amp;oacute;c ph&amp;ograve;ng.&lt;/p&gt;

&lt;p&gt;Nơi m&amp;agrave; c&amp;oacute; thể thấy to&amp;agrave;n bộ khu vực.&lt;/p&gt;

&lt;p&gt;Nếu như chuyện n&amp;agrave;y xảy ra ở kiếp trước, t&amp;ocirc;i sẽ nghĩ đ&amp;oacute; l&amp;agrave; chuunibyou.&lt;/p&gt;

&lt;p&gt;[Cậu chủ đang tới. Xin h&amp;atilde;y chờ một l&amp;aacute;t.]&lt;/p&gt;

&lt;p&gt;Quản gia r&amp;oacute;t một thứ chất lỏng giống như l&amp;agrave; tr&amp;agrave; đỏ v&amp;agrave;o một t&amp;aacute;ch tr&amp;agrave; rất cao cấp, v&amp;agrave; chờ ở cửa v&amp;agrave;o.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i uống thứ chất lỏng nghi ng&amp;uacute;t kh&amp;oacute;i đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng tệ. Mặc d&amp;ugrave; t&amp;ocirc;i kh&amp;ocirc;ng biết thử chất lượng của tr&amp;agrave; đỏ, chắc phải rất đắt.&lt;/p&gt;

&lt;p&gt;Từ ban đầu, đ&amp;atilde; kh&amp;ocirc;ng c&amp;oacute; thức uống nào được chuẩn bị cho Ghyslaine. C&amp;oacute; vẻ như t&amp;ocirc;i l&amp;agrave; vị kh&amp;aacute;ch duy nhất.&lt;/p&gt;

&lt;p&gt;[N&amp;oacute; đ&amp;acirc;u rồi!]&lt;/p&gt;

&lt;p&gt;Khi c&amp;ograve;n đang nghĩ ngợi, t&amp;ocirc;i b&amp;ocirc;̃ng nghe th&amp;acirc;́y một ti&amp;ecirc;́ng quát lớn v&amp;agrave; tiếng bước ch&amp;acirc;n giận dữ.&lt;/p&gt;

&lt;p&gt;[N&amp;oacute; ở đ&amp;acirc;y hả?]&lt;/p&gt;

&lt;p&gt;Một người đ&amp;agrave;n &amp;ocirc;ng tr&amp;ocirc;ng rất mạnh mẽ th&amp;ocirc; lỗ đi v&amp;agrave;o căn ph&amp;ograve;ng.&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;ng ta c&amp;oacute; vẻ khoảng 50 tuổi, t&amp;oacute;c đen n&amp;acirc;u lẫn với một ch&amp;uacute;t t&amp;oacute;c bạc, nhưng tr&amp;ocirc;ng &amp;ocirc;ng ta c&amp;oacute; vẻ như đang ở trong trạng th&amp;aacute;i kh&amp;aacute; l&amp;agrave; tốt.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đặt t&amp;aacute;ch xuống v&amp;agrave; đứng dậy, uốn phần lưng tạo th&amp;agrave;nh một g&amp;oacute;c 90 độ.&lt;/p&gt;

&lt;p&gt;[Rất h&amp;acirc;n hạnh được gặp ng&amp;agrave;i, t&amp;ecirc;n ch&amp;aacute;u l&amp;agrave; Rudeus Greyrat.]&lt;/p&gt;

&lt;p&gt;Người đ&amp;agrave;n &amp;ocirc;ng khịt mũi tỏ vẻ kh&amp;ocirc;ng h&amp;agrave;i l&amp;ograve;ng.&lt;/p&gt;

&lt;p&gt;[Hừm, ngươi c&amp;ograve;n kh&amp;ocirc;ng biết c&amp;aacute;ch ch&amp;agrave;o!]&lt;/p&gt;

&lt;p&gt;[&amp;Ocirc;ng chủ, Rudeus-dono chưa từng rời khỏi l&amp;agrave;ng Buina. Cậu ấy vẫn c&amp;ograve;n trẻ v&amp;agrave; chưa c&amp;oacute; thời gian để học ph&amp;eacute;p lịch sự. Xin ngài h&amp;atilde;y bỏ qua cho sự khiếm nh&amp;atilde; đ&amp;oacute;&amp;hellip;&amp;hellip;..]&lt;/p&gt;

&lt;p&gt;[C&amp;acirc;m mi&amp;ecirc;̣ng.]&lt;/p&gt;

&lt;p&gt;Quản gia kh&amp;ocirc;ng n&amp;oacute;i g&amp;igrave; nữa sau khi &amp;ocirc;ng ta bị qu&amp;aacute;t.&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;ng chủ n&amp;agrave;y c&amp;oacute; vẻ như l&amp;agrave; người thu&amp;ecirc; t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;ng ta tr&amp;ocirc;ng như l&amp;agrave; đang rất tức giận. Như thể l&amp;agrave; t&amp;ocirc;i c&amp;ograve;n thiếu sót ở điểm n&amp;agrave;o đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Mặc d&amp;ugrave; t&amp;ocirc;i muốn ch&amp;agrave;o cẩn thận, c&amp;oacute; vẻ như ph&amp;eacute;p lịch sự của qu&amp;yacute; tộc đ&amp;atilde; th&amp;agrave;nh một luật lệ.&lt;/p&gt;

&lt;p&gt;[Hừm, Paul c&amp;ograve;n kh&amp;ocirc;ng biết dạy nghi thức chào hỏi cho con trai n&amp;oacute;!]&lt;/p&gt;

&lt;p&gt;[Ch&amp;aacute;u nghe n&amp;oacute;i l&amp;agrave; bố r&amp;acirc;́t gh&amp;eacute;t c&amp;aacute;c quy tắc cứng nhắc, v&amp;agrave; do vậy m&amp;agrave; &amp;ocirc;ng ấy đã kh&amp;ocirc;ng mu&amp;ocirc;́n dạy cho ch&amp;aacute;u.]&lt;/p&gt;

&lt;p&gt;[C&amp;atilde;i ngay được lu&amp;ocirc;n! Ngươi quả giống hệt thằng Paul.]&lt;/p&gt;

&lt;p&gt;[Bố ch&amp;aacute;u lúc nào cũng cãi lại sao?]&lt;/p&gt;

&lt;p&gt;[Ngươi thử đoán xem. Mỗi lần n&amp;oacute; mở miệng l&amp;agrave; lại 1 lời giải th&amp;iacute;ch. Nếu n&amp;oacute; l&amp;agrave;m ướt giường, n&amp;oacute; ki&amp;ecirc;́m cớ. Nếu n&amp;oacute; đánh nhau, n&amp;oacute; ki&amp;ecirc;́m cớ. Nếu n&amp;oacute; lười biếng học, n&amp;oacute; cũng ki&amp;ecirc;́m cớ lu&amp;ocirc;n.]&lt;/p&gt;

&lt;p&gt;Hiểu rồi. Thì ra là v&amp;acirc;̣y.&lt;/p&gt;

&lt;p&gt;[Nếu ngươi muốn học điều g&amp;igrave; đ&amp;oacute;, &amp;iacute;t nhất cũng phải bi&amp;ecirc;́t phép tắc! Ngươi thậm ch&amp;iacute; còn kh&amp;ocirc;ng cố gắng n&amp;ecirc;n chuyện mới th&amp;agrave;nh ra như thế n&amp;agrave;y đ&amp;acirc;y!]&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Nhưng &amp;ocirc;ng ta n&amp;oacute;i kh&amp;ocirc;ng c&amp;oacute; sai v&amp;agrave; kh&amp;ocirc;ng phải kh&amp;ocirc;ng có nguy&amp;ecirc;n do.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i mới chỉ học ph&amp;eacute;p thuật v&amp;agrave; kiếm thuật, v&amp;agrave; t&amp;ocirc;i chưa bao giờ được học thứ g&amp;igrave; đ&amp;oacute; mới mẻ.&lt;/p&gt;

&lt;p&gt;Tầm nh&amp;igrave;n của t&amp;ocirc;i xem ra v&amp;acirc;̃n còn qu&amp;aacute; hạn hẹp.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i phải suy ngẫm một c&amp;aacute;ch nghi&amp;ecirc;m chỉnh.&lt;/p&gt;

&lt;p&gt;[Ng&amp;agrave;i n&amp;oacute;i đ&amp;uacute;ng ạ. Tất cả chuyện n&amp;agrave;y đều l&amp;agrave; do ch&amp;aacute;u. Ch&amp;aacute;u thực l&amp;ograve;ng xin lỗi.]&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;ng chủ dậm ch&amp;acirc;n xuống nền nh&amp;agrave; khi t&amp;ocirc;i c&amp;uacute;i đầu xuống.&lt;/p&gt;

&lt;p&gt;[Nhưng c&amp;oacute; vẻ l&amp;agrave; ngươi kh&amp;ocirc;ng đi ki&amp;ecirc;́m cớ, v&amp;agrave; c&amp;oacute; cố gắng ch&amp;agrave;o cho đúng cách! Ta sẽ cho ph&amp;eacute;p ngươi ở lại l&amp;acirc;u đ&amp;agrave;i n&amp;agrave;y!]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i kh&amp;ocirc;ng hiểu chuyện g&amp;igrave; đang xảy ra nữa, nhưng c&amp;oacute; vẻ như l&amp;agrave; t&amp;ocirc;i đ&amp;atilde; được tha thứ.&lt;/p&gt;

&lt;p&gt;Sau khi &amp;ocirc;ng chủ th&amp;ocirc;́t ra những lời n&amp;agrave;y, &amp;ocirc;ng ta quay người m&amp;ocirc;̣t cách mạnh mẽ v&amp;agrave; rời đi như một cơn b&amp;atilde;o tố.&lt;/p&gt;

&lt;p&gt;[Người đ&amp;oacute; l&amp;agrave; ai v&amp;acirc;̣y ạ?]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i nh&amp;igrave;n về quản gia v&amp;agrave; hỏi.&lt;/p&gt;

&lt;p&gt;[L&amp;atilde;nh ch&amp;uacute;a của Fedoa. Ng&amp;agrave;i Sauros Boreas Greyrat. &amp;Ocirc;ng ấy l&amp;agrave; ch&amp;uacute; của Paul.]&lt;/p&gt;

&lt;p&gt;Vậy ra &amp;ocirc;ng ta l&amp;agrave; một l&amp;atilde;nh ch&amp;uacute;a.&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;ng ta c&amp;oacute; hơi hống h&amp;aacute;ch. T&amp;ocirc;i th&amp;acirc;́y lo về c&amp;aacute;ch &amp;ocirc;ng ta cai trị. M&amp;agrave;, c&amp;oacute; nhiều nh&amp;agrave; phi&amp;ecirc;u lưu ở đ&amp;acirc;y, vậy n&amp;ecirc;n nếu &amp;ocirc;ng ta kh&amp;ocirc;ng tỏ ra oai nghi&amp;ecirc;m, &amp;ocirc;ng ta sẽ kh&amp;ocirc;ng thể thực hi&amp;ecirc;̣n đúng đắn nhi&amp;ecirc;̣m vụ của một l&amp;atilde;nh ch&amp;uacute;a.&lt;/p&gt;

&lt;p&gt;Hử? Greyrat, Ch&amp;uacute;&amp;hellip;&amp;hellip;?&lt;/p&gt;

&lt;p&gt;[C&amp;oacute; nghĩa &amp;ocirc;ng ta l&amp;agrave; &amp;ocirc;ng ch&amp;uacute; của cháu sao?]&lt;/p&gt;

&lt;p&gt;[Phải.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đ&amp;atilde; đo&amp;aacute;n được rằng Paul đ&amp;atilde; sử dụng c&amp;aacute;i mối quan hệ m&amp;agrave; cậu ta đ&amp;atilde; từ bỏ.&lt;/p&gt;

&lt;p&gt;Nhưng nghĩ lại th&amp;igrave;, gia t&amp;ocirc;̣c cũ của cậu ta từng thu&amp;ocirc;̣c một trong số c&amp;aacute;c qu&amp;yacute; tộc thượng c&amp;acirc;́p.&lt;/p&gt;

&lt;p&gt;[Sao vậy Thomas, sao c&amp;aacute;nh cửa lại mở toang thế n&amp;agrave;y?]&lt;/p&gt;

&lt;p&gt;Một người kh&amp;aacute;c bước v&amp;agrave;o căn ph&amp;ograve;ng từ ph&amp;iacute;a b&amp;ecirc;n kia c&amp;aacute;nh cửa.&lt;/p&gt;

&lt;p&gt;[Nhưng cha ta tr&amp;ocirc;ng c&amp;oacute; vẻ kh&amp;aacute; l&amp;agrave; vui. Chuyện g&amp;igrave; vừa xảy ra vậy?]&lt;/p&gt;

&lt;p&gt;Một người đ&amp;agrave;n &amp;ocirc;ng với một th&amp;acirc;n h&amp;igrave;nh mảnh mai v&amp;agrave; m&amp;aacute;i t&amp;oacute;c m&amp;agrave;u xanh tr&amp;agrave;.&lt;/p&gt;

&lt;p&gt;Dựa v&amp;agrave;o vi&amp;ecirc;̣c c&amp;acirc;̣u ta gọi &amp;ocirc;ng ta là cha, chắc đó l&amp;agrave; anh em họ của Paul.&lt;/p&gt;

&lt;p&gt;[Cậu chủ, T&amp;ocirc;i rất xin lỗi. &amp;Ocirc;ng chủ vừa mới gặp ng&amp;agrave;i Rudeus v&amp;agrave; c&amp;oacute; vẻ như&amp;nbsp; c&amp;acirc;̣u &amp;acirc;́y đã làm &amp;ocirc;ng chủ cảm th&amp;acirc;́y hài lòng.]&lt;/p&gt;

&lt;p&gt;[H&amp;ocirc;, một đứa trẻ l&amp;agrave;m Cha ta phải để &amp;yacute; sao&amp;hellip;&amp;hellip; &amp;Ocirc;ng ấy có nhìn l&amp;acirc;̀m người kh&amp;ocirc;ng? Hừmm.]&lt;/p&gt;

&lt;p&gt;Cậu ta n&amp;oacute;i v&amp;acirc;̣y trong khi đang tiến tới c&amp;aacute;i ghế sofa đối diện t&amp;ocirc;i v&amp;agrave; ngồi xuống.&lt;/p&gt;

&lt;p&gt;&amp;Agrave;, phải rồi, m&amp;igrave;nh phải nhanh ch&amp;oacute;ng ch&amp;agrave;o cậu ta.&lt;/p&gt;

&lt;p&gt;[Rất h&amp;acirc;n hạnh được gặp ng&amp;agrave;i, t&amp;ecirc;n ch&amp;aacute;u l&amp;agrave; Rudeus Greyrat.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i c&amp;uacute;i đầu xuống gần giống với tư thế c&amp;uacute;i ch&amp;agrave;o t&amp;ocirc;i l&amp;agrave;m trước đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;[&amp;Agrave;, t&amp;ecirc;n ta l&amp;agrave; Philip Boreas Greyrat. Khi qu&amp;yacute; tộc ch&amp;agrave;o, họ sẽ đặt tay phải của họ l&amp;ecirc;n trước ngực v&amp;agrave; c&amp;uacute;i đầu xuống nhẹ nh&amp;agrave;ng. Từ c&amp;aacute;ch m&amp;agrave; ch&amp;aacute;u ch&amp;agrave;o th&amp;igrave; chắc l&amp;agrave; ch&amp;aacute;u đ&amp;atilde; bị mắng.]&lt;/p&gt;

&lt;p&gt;[L&amp;agrave; như vầy sao?]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i bắt chước h&amp;agrave;nh động của Philip v&amp;agrave; ngẩng đầu l&amp;ecirc;n một ch&amp;uacute;t.&lt;/p&gt;

&lt;p&gt;[L&amp;agrave; như vậy đ&amp;oacute;, nhưng c&amp;aacute;ch ch&amp;aacute;u ch&amp;agrave;o cũng kh&amp;ocirc;ng tệ lắm đ&amp;acirc;u. Nếu một người thợ r&amp;egrave;n c&amp;uacute;i ch&amp;agrave;o cha ta như thế th&amp;ocirc;i, &amp;ocirc;ng ấy sẽ rất vui mừng đ&amp;oacute;. Ngồi xuống n&amp;agrave;o.]&lt;/p&gt;

&lt;p&gt;Philip ngồi phịch xuống.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i theo cậu ta m&amp;agrave; cũng ngồi xuống lu&amp;ocirc;n.&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;. Buổi phỏng vấn đ&amp;atilde; bắt đầu rồi sao?&lt;/p&gt;

&lt;p&gt;[Ch&amp;aacute;u hiểu được những g&amp;igrave;?]&lt;/p&gt;

&lt;p&gt;[Bố ch&amp;aacute;u n&amp;oacute;i l&amp;agrave; nếu ch&amp;aacute;u dạy c&amp;ocirc; chủ ở đ&amp;acirc;y 5 năm, ch&amp;aacute;u sẽ được hỗ trợ tiền học ph&amp;iacute; để đi học ở trường Đại học Ph&amp;eacute;p thuật.]&lt;/p&gt;

&lt;p&gt;[Như thế th&amp;ocirc;i sao?]&lt;/p&gt;

&lt;p&gt;[V&amp;acirc;ng.]&lt;/p&gt;

&lt;p&gt;[Ta hiểu rồi&amp;hellip;&amp;hellip;]&lt;/p&gt;

&lt;p&gt;Philips đặt tay v&amp;agrave;o cằm, như thể đang nghĩ g&amp;igrave; đ&amp;oacute;, mắt cậu ta nh&amp;igrave;n v&amp;agrave;o c&amp;aacute;i b&amp;agrave;n.&lt;/p&gt;

&lt;p&gt;[Ch&amp;aacute;u th&amp;iacute;ch con g&amp;aacute;i kh&amp;ocirc;ng?]&lt;/p&gt;

&lt;p&gt;[Kh&amp;ocirc;ng đến mức như Cha ch&amp;aacute;u đ&amp;acirc;u ạ.]&lt;/p&gt;

&lt;p&gt;[Vậy sao? Được rồi. Ch&amp;aacute;u đ&amp;atilde; đỗ.]&lt;/p&gt;

&lt;p&gt;Ủa?&lt;/p&gt;

&lt;p&gt;Như thế c&amp;oacute; qu&amp;aacute; v&amp;ocirc;̣i kh&amp;ocirc;ng?&lt;/p&gt;

&lt;p&gt;[Đến b&amp;acirc;y giờ, con b&amp;eacute; nhà ta mới chỉ qu&amp;yacute; mến 2 người, Edena gi&amp;aacute;o vi&amp;ecirc;n dạy phép tắc, v&amp;agrave; Ghyslaine gi&amp;aacute;o vi&amp;ecirc;n dạy kiếm thuật. Trước đ&amp;oacute;, 5 người đ&amp;atilde; bị sa thải. Một trong số họ c&amp;oacute; một người đ&amp;agrave;n &amp;ocirc;ng thậm ch&amp;iacute; đ&amp;atilde; từng dạy học ở cung điện ho&amp;agrave;ng gia.]&lt;/p&gt;

&lt;p&gt;Ngay cả nếu người đ&amp;agrave;n &amp;ocirc;ng đ&amp;oacute; dạy ở cung điện ho&amp;agrave;ng gia, c&amp;aacute;ch &amp;ocirc;ng ta dạy c&amp;oacute; thể kh&amp;ocirc;ng phù hợp với c&amp;ocirc; chủ, t&amp;ocirc;i nói th&amp;acirc;̀m trong bụng v&amp;acirc;̣y.&lt;/p&gt;

&lt;p&gt;[&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;. Điều n&amp;agrave;y c&amp;oacute; li&amp;ecirc;n quan g&amp;igrave; đến việc th&amp;iacute;ch con g&amp;aacute;i kh&amp;ocirc;ng ạ?]&lt;/p&gt;

&lt;p&gt;[Kh&amp;ocirc;ng hề. Bởi v&amp;igrave; Paul l&amp;agrave; một người sẽ l&amp;agrave;m mọi c&amp;aacute;ch để tiếp cận một c&amp;ocirc; g&amp;aacute;i dễ thương, ta đã tự hỏi kh&amp;ocirc;ng biết l&amp;agrave; ch&amp;aacute;u c&amp;oacute; gi&amp;ocirc;́ng v&amp;acirc;̣y kh&amp;ocirc;ng.]&lt;/p&gt;

&lt;p&gt;Philip nh&amp;uacute;n vai.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i mới l&amp;agrave; người phải nh&amp;uacute;n vai đ&amp;acirc;́y. Cậu đi coi t&amp;ocirc;i cùng m&amp;ocirc;̣t giu&amp;ocirc;̣c với cậu ta.&lt;/p&gt;

&lt;p&gt;[Thẳng thắn m&amp;agrave; n&amp;oacute;i, ta chẳng mong chờ g&amp;igrave; ở ch&amp;aacute;u đ&amp;acirc;u. Bởi v&amp;igrave; ch&amp;aacute;u l&amp;agrave; con trai của Paul, n&amp;ecirc;n ta muốn cho ch&amp;aacute;u thử vi&amp;ecirc;̣c mà th&amp;ocirc;i.]&lt;/p&gt;

&lt;p&gt;[&amp;Acirc;́y. Như thế hơi thẳng thắn quá đấy ạ.]&lt;/p&gt;

&lt;p&gt;[Sao vậy? Ch&amp;aacute;u kh&amp;ocirc;ng tự tin sao?]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i thật sự kh&amp;ocirc;ng có tự tin cho lắm.&lt;/p&gt;

&lt;p&gt;Nhưng kể cả nếu t&amp;ocirc;i kh&amp;ocirc;ng c&amp;oacute;, t&amp;ocirc;i kh&amp;ocirc;ng thể n&amp;oacute;i r&amp;otilde; ra trong bầu kh&amp;ocirc;ng kh&amp;iacute; như thế n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;[Ch&amp;aacute;u cũng kh&amp;ocirc;ng r&amp;otilde; cho đến khi gặp được c&amp;ocirc; ấy&amp;hellip;&amp;hellip;]&lt;/p&gt;

&lt;p&gt;Nếu t&amp;ocirc;i thất bại ở c&amp;ocirc;ng việc n&amp;agrave;y v&amp;agrave; phải t&amp;igrave;m c&amp;ocirc;ng việc kh&amp;aacute;c, T&amp;ocirc;i sẽ bị Paul cười nhạo mất. Bị ch&amp;ecirc; đùa rằng l&amp;agrave; t&amp;ocirc;i vẫn chỉ l&amp;agrave; một đứa trẻ hay đại kh&amp;aacute;i l&amp;agrave; như thế.&lt;/p&gt;

&lt;p&gt;Đ&amp;ugrave;a t&amp;ocirc;i đấy ư?&lt;/p&gt;

&lt;p&gt;Sao t&amp;ocirc;i c&amp;oacute; thể bị cười nhạo bởi một t&amp;ecirc;n c&amp;ograve;n trẻ hơn cả t&amp;ocirc;i?&lt;/p&gt;

&lt;p&gt;Hừ~&amp;hellip;&lt;/p&gt;

&lt;p&gt;[Nếu thực tế kh&amp;ocirc;ng c&amp;oacute; c&amp;aacute;ch n&amp;agrave;o kh&amp;aacute;c&amp;hellip;.., th&amp;igrave; h&amp;atilde;y thử đ&amp;oacute;ng kịch xem.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i sẽ d&amp;ugrave;ng kiến thức kiếp trước.&lt;/p&gt;

&lt;p&gt;Một phương ph&amp;aacute;p để thuần h&amp;oacute;a c&amp;ocirc; chủ.&lt;/p&gt;

&lt;p&gt;[Đ&amp;oacute;ng kịch ư. Thực hiện n&amp;oacute; như thế n&amp;agrave;o?]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i m&amp;ocirc; tả kỹ càng.&lt;/p&gt;

&lt;p&gt;[Khi ch&amp;aacute;u đi c&amp;ugrave;ng với c&amp;ocirc; chủ, ch&amp;uacute;ng ch&amp;aacute;u sẽ bị bắt c&amp;oacute;c bởi một nh&amp;oacute;m người xấu. Ch&amp;aacute;u sẽ d&amp;ugrave;ng ng&amp;ocirc;n ngữ, to&amp;aacute;n học v&amp;agrave; ph&amp;eacute;p thuật để trốn tho&amp;aacute;t với c&amp;ocirc; chủ, v&amp;agrave; trở về l&amp;acirc;u đ&amp;agrave;i bằng khả năng của ch&amp;uacute;ng ch&amp;aacute;u.]&lt;/p&gt;

&lt;p&gt;Sau khi lắng nghe lời của t&amp;ocirc;i, Philip y&amp;ecirc;n lặng một l&amp;uacute;c, nhưng rồi nhanh ch&amp;oacute;ng thấu hiểu &amp;acirc;m mưu này v&amp;agrave; gật đầu.&lt;/p&gt;

&lt;p&gt;[N&amp;oacute;i c&amp;aacute;ch kh&amp;aacute;c, ch&amp;aacute;u muốn con b&amp;eacute; chủ động học h&amp;agrave;nh. Th&amp;uacute; vị đấy. Nhưng chuy&amp;ecirc;̣n sẽ di&amp;ecirc;̃n ra thuận lợi chứ?]&lt;/p&gt;

&lt;p&gt;[Ch&amp;aacute;u nghĩ như thế còn tốt hơn l&amp;agrave; để người lớn dạy dỗ c&amp;ocirc; ấy.]&lt;/p&gt;

&lt;p&gt;Một &amp;acirc;m mưu thường xảy ra ở trong anime v&amp;agrave; manga.&lt;/p&gt;

&lt;p&gt;Sau khi chứng kiến hoặc sống s&amp;oacute;t qua một sự cố, một đứa trẻ vốn gh&amp;eacute;t s&amp;aacute;ch sẽ hiểu được tầm quan trọng của học h&amp;agrave;nh.&lt;/p&gt;

&lt;p&gt;Kể cả khi đ&amp;acirc;y cũng chỉ l&amp;agrave; tự bi&amp;ecirc;n tự diễn.&lt;/p&gt;

&lt;p&gt;[Paul đ&amp;atilde; dạy ch&amp;aacute;u như vậy &amp;agrave;, bất cứ điều g&amp;igrave; ch&amp;aacute;u n&amp;oacute;i, c&amp;oacute; phải đ&amp;oacute; l&amp;agrave; c&amp;aacute;ch để cháu khi&amp;ecirc;́n c&amp;aacute;c c&amp;ocirc; b&amp;eacute; g&amp;aacute;i phải nhảy trong l&amp;ograve;ng b&amp;agrave;n tay của ch&amp;aacute;u?]&lt;/p&gt;

&lt;p&gt;[Kh&amp;ocirc;ng phải đ&amp;acirc;u. Kể cả khi Bố ch&amp;aacute;u kh&amp;ocirc;ng l&amp;agrave;m vậy, thì bố ch&amp;aacute;u v&amp;ocirc;́n rất nổi tiếng mà.]&lt;/p&gt;

&lt;p&gt;[Popu&amp;hellip;&amp;hellip;. Pffff&amp;hellip;..]&lt;/p&gt;

&lt;p&gt;Philip phụt cười lớn.&lt;/p&gt;

&lt;p&gt;[Quả đ&amp;uacute;ng l&amp;agrave; vậy. Cậu ta th&amp;acirc;̣t sự có duy&amp;ecirc;n với c&amp;aacute;c c&amp;ocirc; g&amp;aacute;i. Kể cả nếu cậu ta c&amp;oacute; đứng nguy&amp;ecirc;n một chỗ, sẽ c&amp;oacute; một c&amp;ocirc; g&amp;aacute;i nào đó đến gần cậu ta.]&lt;/p&gt;

&lt;p&gt;[Bất cứ ai m&amp;agrave; Bố ch&amp;aacute;u biết c&amp;oacute; vẻ như đều bị chinh phục cả. Ghyslaine cũng l&amp;agrave; một trong số những c&amp;ocirc; g&amp;aacute;i đ&amp;oacute;.]&lt;/p&gt;

&lt;p&gt;[A. Thật l&amp;agrave; đ&amp;aacute;ng phải ghen tỵ.]&lt;/p&gt;

&lt;p&gt;[Ch&amp;aacute;u lo kh&amp;ocirc;ng biết bố ch&amp;aacute;u sẽ động tới bạn của ch&amp;aacute;u ở l&amp;agrave;ng Buina kh&amp;ocirc;ng đ&amp;acirc;y.]&lt;/p&gt;

&lt;p&gt;Sau khi n&amp;oacute;i ra, t&amp;ocirc;i bắt đầu cảm thấy lo lắng.&lt;/p&gt;

&lt;p&gt;5 năm sau, c&amp;ocirc; ấy sẽ lớn l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;Khi t&amp;ocirc;i trở về, Sylphy kh&amp;eacute;o sẽ trở th&amp;agrave;nh mẹ k&amp;ecirc;́ của t&amp;ocirc;i. &amp;Ocirc;i ch&amp;uacute;a ơi.&lt;/p&gt;

&lt;p&gt;[Ch&amp;aacute;u kh&amp;ocirc;ng cần phải lo. Paul chỉ hứng th&amp;uacute; với những c&amp;ocirc; g&amp;aacute;i &amp;ldquo;lớn&amp;rdquo; th&amp;ocirc;i.]&lt;/p&gt;

&lt;p&gt;Philip nh&amp;igrave;n về ph&amp;iacute;a Ghyslaine đang đứng ở g&amp;oacute;c ph&amp;ograve;ng khi cậu ta n&amp;oacute;i vậy.&lt;/p&gt;

&lt;p&gt;[Ch&amp;aacute;u, ch&amp;aacute;u hiểu rồi.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i nh&amp;igrave;n về ph&amp;iacute;a Ghyslaine. C&amp;ocirc; ấy to lớn thật.&lt;/p&gt;

&lt;p&gt;Zenith v&amp;agrave; Lilia cũng lớn.&lt;/p&gt;

&lt;p&gt;&amp;Yacute; cậu lớn l&amp;agrave; g&amp;igrave; vậy?&lt;/p&gt;

&lt;p&gt;&amp;Agrave; phải, l&amp;agrave; bộ ngực.&lt;/p&gt;

&lt;p&gt;[Trong 5 năm, sẽ ổn th&amp;ocirc;i. Một người Elf lai. Kể cả sau nhi&amp;ecirc;̀u năm, họ cũng kh&amp;ocirc;ng lớn nhanh đ&amp;acirc;u. M&amp;agrave;, ta cũng kh&amp;ocirc;ng nghĩ Paul sẽ bệnh hoạn đến mức đó.]&lt;/p&gt;

&lt;p&gt;Vậy sao?&lt;/p&gt;

&lt;p&gt;Cậu ta h&amp;oacute;a ra c&amp;oacute; biết Sylphy l&amp;agrave; một người Elf.&lt;/p&gt;

&lt;p&gt;Vậy th&amp;igrave;, để ph&amp;ograve;ng ngừa, t&amp;ocirc;i sẽ coi như l&amp;agrave; mọi thứ xảy ra ở l&amp;agrave;ng Buina, đ&amp;atilde; được c&amp;acirc;̣u ta điều tra kỹ lưỡng rồi.&lt;/p&gt;

&lt;p&gt;[Ta cũng sẽ hỏi lại như vầy, &amp;ldquo;Ch&amp;aacute;u sẽ cố dụ dỗ con g&amp;aacute;i ta chứ?&amp;rdquo;]&lt;/p&gt;

&lt;p&gt;[Ng&amp;agrave;i lo g&amp;igrave; từ một đứa trẻ 7 tuổi n&amp;agrave;y chứ?]&lt;/p&gt;

&lt;p&gt;Hơi th&amp;ocirc; lỗ đấy. T&amp;ocirc;i sẽ kh&amp;ocirc;ng l&amp;agrave;m g&amp;igrave; đ&amp;acirc;u m&amp;agrave;. Nhiều khả năng, c&amp;ocirc; ấy sẽ tự phải lòng t&amp;ocirc;i th&amp;ocirc;i. (T&amp;ocirc;i sẽ hướng d&amp;acirc;̃n c&amp;ocirc; ấy đ&amp;ecirc;́n trái tim của t&amp;ocirc;i)&lt;/p&gt;

&lt;p&gt;[Nhưng dựa v&amp;agrave;o l&amp;aacute; thư của Paul, c&amp;oacute; vẻ như l&amp;agrave; ch&amp;aacute;u đ&amp;atilde; d&amp;agrave;nh thời gian chơi b&amp;ecirc;n cạnh c&amp;ocirc; b&amp;eacute; ấy qu&amp;aacute; nhiều, v&amp;agrave; cậu ta đã phải bắt ch&amp;aacute;u rời xa. Mặc d&amp;ugrave; ta nghĩ cậu ta chỉ đ&amp;ugrave;a th&amp;ocirc;i, nhưng sau khi nghe kế hoạch của ch&amp;aacute;u, ta đã tin đó kh&amp;ocirc;ng phải là đùa.]&lt;/p&gt;

&lt;p&gt;[Ch&amp;aacute;u chỉ l&amp;agrave; bạn với Sylphy th&amp;ocirc;i m&amp;agrave;.]&lt;/p&gt;

&lt;p&gt;V&amp;agrave; t&amp;ocirc;i muốn nu&amp;ocirc;i nấng người bạn duy nhất của t&amp;ocirc;i để trở th&amp;agrave;nh c&amp;ocirc; g&amp;aacute;i ngoan ngo&amp;atilde;n của ri&amp;ecirc;ng m&amp;igrave;nh t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;mdash;&amp;mdash;&amp;mdash;- Kể cả có ép bu&amp;ocirc;̣c, t&amp;ocirc;i sẽ kh&amp;ocirc;ng bao giờ n&amp;oacute;i chuy&amp;ecirc;̣n này ra đ&amp;acirc;u.&lt;/p&gt;

&lt;p&gt;Điều đ&amp;oacute; kh&amp;ocirc;ng cần phải n&amp;oacute;i ra, kh&amp;ocirc;ng phải n&amp;oacute;i ra l&amp;agrave;m g&amp;igrave;.&lt;/p&gt;

&lt;p&gt;[Ừm, được rồi. Cứ tiếp tục n&amp;oacute;i chuy&amp;ecirc;̣n th&amp;ecirc;́ này th&amp;igrave; cũng chẳng c&amp;oacute; &amp;iacute;ch g&amp;igrave;. Ta sẽ để ch&amp;aacute;u gặp con g&amp;aacute;i ta. Thomas, dẫn con b&amp;eacute; đến đ&amp;acirc;y!]&lt;/p&gt;

&lt;p&gt;Philip đứng l&amp;ecirc;n khi cậu ta n&amp;oacute;i xong.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; như vậy, c&amp;ocirc; ấy v&amp;agrave; t&amp;ocirc;i gặp nhau.&lt;/p&gt;

&lt;p&gt;&amp;mdash; Con b&amp;eacute; n&amp;agrave;y tr&amp;ocirc;ng thật cao ngạo.&lt;/p&gt;

&lt;p&gt;Lần đầu ti&amp;ecirc;n t&amp;ocirc;i thấy c&amp;ocirc; b&amp;eacute; này, t&amp;ocirc;i ph&amp;aacute;n vậy lu&amp;ocirc;n.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ấy lớn hơn t&amp;ocirc;i 2 tuổi. G&amp;oacute;c mắt c&amp;ocirc; ấy cao, cùng m&amp;aacute;i t&amp;oacute;c gợn s&amp;oacute;ng.&lt;/p&gt;

&lt;p&gt;T&amp;oacute;c c&amp;ocirc; ấy m&amp;agrave;u đỏ thắm. Tr&amp;ocirc;ng như l&amp;agrave; m&amp;agrave;u đỏ thuần khiết được t&amp;ocirc; v&amp;agrave;o vậy.&lt;/p&gt;

&lt;p&gt;2 từ th&amp;ocirc;i, quá n&amp;ocirc;̉.&lt;/p&gt;

&lt;p&gt;C&amp;oacute; khi c&amp;ocirc; b&amp;eacute; sau n&amp;agrave;y sẽ trở n&amp;ecirc;n xinh xắn, khi&amp;ecirc;́n nhiều g&amp;atilde; đ&amp;agrave;n &amp;ocirc;ng phải nghĩ [l&amp;agrave;m sao m&amp;agrave; m&amp;igrave;n cưa đ&amp;ocirc;̉ c&amp;ocirc; ta được chứ].&lt;/p&gt;

&lt;p&gt;C&amp;oacute; thể ai c&amp;oacute; m&amp;aacute;u M c&amp;oacute; thể&amp;hellip;&amp;hellip; Kh&amp;ocirc;ng. Sao c&amp;oacute; thể được.&lt;/p&gt;

&lt;p&gt;Nhìn đi nhìn lại thì, c&amp;ocirc; ấy tr&amp;ocirc;ng kh&amp;aacute; l&amp;agrave; nguy hiểm.&lt;/p&gt;

&lt;p&gt;Mỗi tế b&amp;agrave;o trong cơ thể t&amp;ocirc;i đang muốn h&amp;eacute;t với t&amp;ocirc;i rằng kh&amp;ocirc;ng được lại gần c&amp;ocirc; ấy.&lt;/p&gt;

&lt;p&gt;[Rất h&amp;acirc;n hạnh được gặp c&amp;ocirc; chủ. T&amp;ecirc;n t&amp;ocirc;i l&amp;agrave; Rudeus Greyrat.]&lt;/p&gt;

&lt;p&gt;Nhưng, dù th&amp;ecirc;́ nào đi nữa, t&amp;ocirc;i kh&amp;ocirc;ng thể bỏ chạy được.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i sẽ v&amp;acirc;̣n dụng những thứ mà t&amp;ocirc;i đ&amp;atilde; học được từ trước tới giờ.&lt;/p&gt;

&lt;p&gt;[Hừmm!]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; b&amp;eacute; kh&amp;igrave; mũi giống theo c&amp;aacute;ch m&amp;agrave; &amp;ocirc;ng c&amp;ocirc; b&amp;eacute; đ&amp;atilde; l&amp;agrave;m ngay lần đầu ti&amp;ecirc;n mới gặp.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; b&amp;eacute; đứng với cả 2 ch&amp;acirc;n đ&amp;atilde; trồng xuống đất, nh&amp;igrave;n t&amp;ocirc;i với th&amp;aacute;i độ của một bề tr&amp;ecirc;n. Nh&amp;igrave;n từ tr&amp;ecirc;n cao xuống.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; b&amp;eacute; cao hơn t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; b&amp;eacute; biểu lộ một th&amp;aacute;i độ kh&amp;ocirc;ng h&amp;agrave;i l&amp;ograve;ng sau khi thấy t&amp;ocirc;i, v&amp;agrave; n&amp;oacute;i:&lt;/p&gt;

&lt;p&gt;[C&amp;aacute;i g&amp;igrave; thế n&amp;agrave;y? Tr&amp;ocirc;ng ngươi c&amp;ograve;n nhỏ tu&amp;ocirc;̉i hơn cả ta!? Sao mọi người lại để cho một đứa như thế n&amp;agrave;y dạy ta chứ!?]&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;i chà. Phẩm gi&amp;aacute; c&amp;ocirc; b&amp;eacute; cao qu&amp;aacute; đi.&lt;/p&gt;

&lt;p&gt;Nhưng t&amp;ocirc;i kh&amp;ocirc;ng thể ch&amp;ugrave;n bước được.&lt;/p&gt;

&lt;p&gt;[T&amp;ocirc;i nghĩ tuổi t&amp;aacute;c kh&amp;ocirc;ng quan trọng đến việc dạy học.]&lt;/p&gt;

&lt;p&gt;[Ngươi n&amp;oacute;i c&amp;aacute;i g&amp;igrave; cơ!? Ngươi d&amp;aacute;m c&amp;atilde;i lại ta sao!?]&lt;/p&gt;

&lt;p&gt;Giọng c&amp;ocirc; b&amp;eacute; kh&amp;aacute; l&amp;agrave; to. M&amp;agrave;ng nhĩ t&amp;ocirc;i như muốn r&amp;aacute;ch ra.&lt;/p&gt;

&lt;p&gt;[Chỉ l&amp;agrave; c&amp;oacute; thể c&amp;oacute; những điều c&amp;ocirc; chủ kh&amp;ocirc;ng l&amp;agrave;m được nhưng t&amp;ocirc;i thì c&amp;oacute; thể l&amp;agrave;m được]&lt;/p&gt;

&lt;p&gt;N&amp;oacute;i những lời đ&amp;oacute; xong, T&amp;oacute;c c&amp;ocirc; chủ bỗng tr&amp;ocirc;ng như l&amp;agrave; duỗi thẳng ra.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i chưa bao giờ thấy tức giận c&amp;oacute; thể biểu hiện được ra b&amp;ecirc;n ngo&amp;agrave;i như thế n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;Thật l&amp;agrave; đ&amp;aacute;ng sợ quá.&lt;/p&gt;

&lt;p&gt;Ư. &amp;ocirc;i cha. Tại sao t&amp;ocirc;i phải sợ một đứa trẻ chưa đến 10 tuổi?&lt;/p&gt;

&lt;p&gt;[G&amp;igrave; cơ? Ngươi qu&amp;aacute; ki&amp;ecirc;u căng rồi đấy nhá. Ngươi c&amp;oacute; biết ta l&amp;agrave; ai kh&amp;ocirc;ng hả?]&lt;/p&gt;

&lt;p&gt;[C&amp;ocirc; l&amp;agrave; chị họ của t&amp;ocirc;i.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i giấu đi nỗi sợ h&amp;atilde;i, v&amp;agrave; trả lời lại.&lt;/p&gt;

&lt;p&gt;[Họ h&amp;agrave;ng&amp;hellip;..? Đ&amp;oacute; l&amp;agrave; c&amp;aacute;i g&amp;igrave;?]&lt;/p&gt;

&lt;p&gt;[Con g&amp;aacute;i của anh em họ của bố t&amp;ocirc;i. C&amp;oacute; thể n&amp;oacute;i c&amp;ocirc; l&amp;agrave; cháu g&amp;aacute;i &amp;ocirc;ng họ của t&amp;ocirc;i.]&lt;/p&gt;

&lt;p&gt;[Lảm nhảm linh tinh cái gì đấy!]&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng đ&amp;uacute;ng sao?&lt;/p&gt;

&lt;p&gt;Ừm, có lẽ dùng t&amp;ecirc;n đ&amp;ecirc;̉ lý giải sẽ tốt hơn.&lt;/p&gt;

&lt;p&gt;[C&amp;ocirc; đ&amp;atilde; nghe qua c&amp;aacute;i t&amp;ecirc;n Paul bao giờ chưa?]&lt;/p&gt;

&lt;p&gt;[L&amp;agrave;m sao m&amp;agrave; ta đ&amp;atilde; từng nghe qua c&amp;aacute;i t&amp;ecirc;n đ&amp;oacute; được!?]&amp;nbsp;&lt;/p&gt;

&lt;p&gt;[Vậy sao?]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cảm thấy ngạc nhi&amp;ecirc;n là c&amp;ocirc; b&amp;eacute; kh&amp;ocirc;ng biết c&amp;aacute;i t&amp;ecirc;n đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;D&amp;ugrave; sao th&amp;igrave;, t&amp;ocirc;i vẫn sẽ ti&amp;ecirc;́p chuy&amp;ecirc;̣n với c&amp;ocirc; ấy.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i phải tiếp tục phản đáp. Thần chinh phục từng n&amp;oacute;i rằng như vậy.&lt;/p&gt;

&lt;p&gt;Trong khi t&amp;ocirc;i còn đang mải nghĩ thì ngay khoảnh khắc sau đó.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ giơ tay l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;Bốp!&lt;/p&gt;

&lt;p&gt;[&amp;hellip;&amp;hellip;&amp;hellip;.Ế?]&lt;/p&gt;

&lt;p&gt;Đột ngột qu&amp;aacute;.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ bỗng t&amp;aacute;t t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Đầu &amp;oacute;c t&amp;ocirc;i rối bời, v&amp;agrave; t&amp;ocirc;i hỏi c&amp;ocirc; b&amp;eacute;.&lt;/p&gt;

&lt;p&gt;[Sao c&amp;ocirc; lại đ&amp;aacute;nh t&amp;ocirc;i?]&lt;/p&gt;

&lt;p&gt;[Bởi v&amp;igrave; ngươi qu&amp;aacute; ki&amp;ecirc;u căng khi ngươi c&amp;ograve;n nhỏ tu&amp;ocirc;̉i hơn cả ta!]&lt;/p&gt;

&lt;p&gt;[&amp;Ocirc;, t&amp;ocirc;i hiểu rồi.]&lt;/p&gt;

&lt;p&gt;Chỗ m&amp;aacute; bị t&amp;aacute;t đỏ ửng l&amp;ecirc;n rồi.&lt;/p&gt;

&lt;p&gt;Thật l&amp;agrave; đau&amp;hellip;..&lt;/p&gt;

&lt;p&gt;H&amp;igrave;nh ảnh thứ 2 hiện l&amp;ecirc;n trong đầu. Bạo lực.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i thật sự kh&amp;ocirc;ng c&amp;oacute; lựa chọn n&amp;agrave;o kh&amp;aacute;c.&lt;/p&gt;

&lt;p&gt;[Vậy th&amp;igrave;, t&amp;ocirc;i sẽ t&amp;aacute;t lại.]&lt;/p&gt;

&lt;p&gt;[Hả!?]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i kh&amp;ocirc;ng chờ đợi c&amp;ocirc; ấy trả lời v&amp;agrave; t&amp;aacute;t thẳng lại lu&amp;ocirc;n.&lt;/p&gt;

&lt;p&gt;Bọp!&lt;/p&gt;

&lt;p&gt;Tiếng ph&amp;aacute;t ra k&amp;igrave; lạ thật.&lt;/p&gt;

&lt;p&gt;Chắc l&amp;agrave; do t&amp;ocirc;i kh&amp;ocirc;ng hay đi t&amp;aacute;t người. Hừm, kh&amp;ocirc;ng sao. Chắc chắn l&amp;agrave; đau đấy.&lt;/p&gt;

&lt;p&gt;[Khi c&amp;ocirc; t&amp;aacute;t người khác, c&amp;ocirc; có th&amp;acirc;́y đau như v&amp;acirc;̀y kh&amp;ocirc;ng.]&lt;/p&gt;

&lt;p&gt;B&amp;acirc;y giờ c&amp;ocirc; đ&amp;atilde; hiểu chưa hả&amp;mdash;&amp;mdash;? Khi t&amp;ocirc;i n&amp;oacute;i vậy, t&amp;ocirc;i đ&amp;atilde; thấy c&amp;ocirc; chủ giơ nắm đấm l&amp;ecirc;n trong cơn thịnh n&amp;ocirc;̣.&lt;/p&gt;

&lt;p&gt;Hệt như một cu&amp;ocirc;̀ng th&amp;acirc;̀n.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng chờ t&amp;ocirc;i nghĩ ngợi gì, c&amp;ocirc; b&amp;eacute; li&amp;ecirc;̀n x&amp;ocirc;ng l&amp;ecirc;n đ&amp;aacute;nh t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i ng&amp;atilde; về ph&amp;iacute;a sau, c&amp;ocirc; ta tiếp tục với 1 c&amp;uacute; cước.&lt;/p&gt;

&lt;p&gt;Cả cơ thể t&amp;ocirc;i ng&amp;atilde; về ph&amp;iacute;a sau, cơn đau ảnh hưởng đến t&amp;acirc;̣n ngực t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Khoảnh khắc tiếp theo, c&amp;ocirc; ta ng&amp;ocirc;̀i l&amp;ecirc;n ngực t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Tay t&amp;ocirc;i đ&amp;atilde; bị kh&amp;oacute;a lại bởi đ&amp;ocirc;i bàn ch&amp;acirc;n của c&amp;ocirc; ta.&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;i trời? T&amp;ocirc;i kh&amp;ocirc;ng thể di chuyển được?&lt;/p&gt;

&lt;p&gt;[Chờ đ&amp;atilde;, n&amp;egrave;.]&lt;/p&gt;

&lt;p&gt;Giọng n&amp;oacute;i vụng về của t&amp;ocirc;i bị bao phủ bởi tiếng gầm của sự giận dữ.&lt;/p&gt;

&lt;p&gt;[Ngươi d&amp;aacute;m đ&amp;aacute;nh ta hả! Ngươi sẽ phải hối hận vì dám đánh cả ta!]&lt;/p&gt;

&lt;p&gt;C&amp;uacute; đấm đó bay thẳng v&amp;agrave;o mặt t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;[Ui, Uiii, d, dừng lại, ế, kh&amp;ocirc;ng, dừng lại đi.]&lt;/p&gt;

&lt;p&gt;Sau c&amp;uacute; đấm thứ 5, t&amp;ocirc;i d&amp;ugrave;ng ph&amp;eacute;p để trốn tho&amp;aacute;t khỏi c&amp;ocirc; ta.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i giữ cho đ&amp;ocirc;i ch&amp;acirc;n c&amp;ograve;n đang run rẩy v&amp;agrave; đứng dậy, Giơ tay l&amp;ecirc;n để chuẩn bị d&amp;ugrave;ng ph&amp;eacute;p đẩy l&amp;ugrave;i c&amp;ocirc; ta lại.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i d&amp;ugrave;ng ph&amp;eacute;p hệ phong bắn s&amp;oacute;ng xung k&amp;iacute;ch v&amp;agrave;o mặt c&amp;ocirc; chủ kia.&lt;/p&gt;

&lt;p&gt;[&amp;hellip;&amp;hellip;Ta, kh&amp;ocirc;ng thể bỏ qua cho ngươi được.]&lt;/p&gt;

&lt;p&gt;Dù đã nh&amp;acirc;̣n phải đòn t&amp;acirc;́n c&amp;ocirc;ng trúng đ&amp;acirc;̀u, nhưng c&amp;ocirc; ta kh&amp;ocirc;ng dừng lại ch&amp;uacute;t n&amp;agrave;o, v&amp;agrave; cứ th&amp;ecirc;́ tiếp tục chạy như một con qu&amp;aacute;i vật.&lt;/p&gt;

&lt;p&gt;Sau khi thấy vẻ mặt đ&amp;oacute;, t&amp;ocirc;i nhận ra rằng t&amp;ocirc;i đ&amp;atilde; phạm sai l&amp;acirc;̀m nghi&amp;ecirc;m trọng.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i nhanh ch&amp;oacute;ng chạy tho&amp;aacute;t với bộ dạng còn đang chao đảo.&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; kh&amp;ocirc;ng phải l&amp;agrave; cái c&amp;ocirc; chủ ki&amp;ecirc;u căng nữa.&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; giống như l&amp;agrave; nh&amp;acirc;n vật ch&amp;iacute;nh trong một manga phạm ph&amp;aacute;p.&lt;/p&gt;

&lt;p&gt;Mặc dù t&amp;ocirc;i c&amp;oacute; thể d&amp;ugrave;ng ph&amp;eacute;p thuật để tấn c&amp;ocirc;ng c&amp;ocirc; ta đến bất tỉnh.&lt;/p&gt;

&lt;p&gt;Nhưng c&amp;ocirc; ta sẽ kh&amp;ocirc;ng nghe t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; khi m&amp;agrave; tỉnh dậy, sẽ l&amp;agrave; l&amp;uacute;c c&amp;ocirc; ta t&amp;igrave;m t&amp;ocirc;i để trả th&amp;ugrave;.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i c&amp;oacute; thể thử d&amp;ugrave;ng ph&amp;eacute;p thuật để đ&amp;acirc;̉y lui c&amp;ocirc; ta mỗi lần.&lt;/p&gt;

&lt;p&gt;Nhưng t&amp;ocirc;i dám chắc c&amp;ocirc; ta sẽ kh&amp;ocirc;ng tho&amp;aacute;i lui.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; c&amp;ocirc; ta kh&amp;aacute;c với những nh&amp;acirc;n vật ch&amp;iacute;nh. Bất kể mọi tr&amp;ograve; h&amp;egrave;n hạ n&amp;agrave;o, c&amp;ocirc; ta sẽ sẵn sàng dùng chúng.&lt;/p&gt;

&lt;p&gt;Như l&amp;agrave; n&amp;eacute;m một chiếc b&amp;igrave;nh từ tầng hai xuống, hay l&amp;agrave; ẩn trong một g&amp;oacute;c khuất rồi d&amp;ugrave;ng thanh kiếm gỗ để ch&amp;eacute;m t&amp;ocirc;i&amp;hellip;..&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ta sẽ d&amp;ugrave;ng mọi thứ c&amp;ocirc; ấy c&amp;oacute;, v&amp;agrave; trả th&amp;ugrave; lại gấp 10 lần.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; c&amp;ocirc; ta sẽ kh&amp;ocirc;ng tỏ ra chút khoan dung.&lt;/p&gt;

&lt;p&gt;Đ&amp;acirc;y kh&amp;ocirc;ng phải l&amp;agrave; đ&amp;ugrave;a nữa. T&amp;ocirc;i kh&amp;ocirc;ng thể d&amp;ugrave;ng ph&amp;eacute;p hồi phục nếu như t&amp;ocirc;i kh&amp;ocirc;ng thể ni&amp;ecirc;̣m c&amp;acirc;u thần ch&amp;uacute;.&lt;/p&gt;

&lt;p&gt;N&amp;ecirc;́u cu&amp;ocirc;̣c chi&amp;ecirc;́n kh&amp;ocirc;ng kết th&amp;uacute;c, c&amp;ocirc; ta sẽ kh&amp;ocirc;ng nghe lời t&amp;ocirc;i n&amp;oacute;i.&lt;/p&gt;

&lt;p&gt;Sử dụng vũ lực để đánh bại c&amp;ocirc; ta.&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; kh&amp;ocirc;ng phải l&amp;agrave; lựa chọn đ&amp;uacute;ng.&lt;/p&gt;

&lt;p&gt;Th&amp;ecirc;̉ nào c&amp;ocirc; ta sẽ lại ngựa quen đường cũ.&lt;/p&gt;

&lt;p&gt;R&amp;ocirc;́t cu&amp;ocirc;̣c th&amp;igrave;, C&amp;ocirc; chủ đó đã th&amp;acirc;́m mệt rồi bỏ cuộc v&amp;agrave; quay về ph&amp;ograve;ng ngủ của mình.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ta kh&amp;ocirc;ng t&amp;igrave;m thấy t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Nhưng c&amp;ocirc; ta gần như là t&amp;igrave;m thấy t&amp;ocirc;i rồi. Khi quỷ t&amp;oacute;c đỏ đ&amp;oacute; đi qua trước mắt t&amp;ocirc;i, t&amp;ocirc;i kh&amp;ocirc;ng thể nhận ra được l&amp;agrave; t&amp;ocirc;i c&amp;ograve;n sống. T&amp;ocirc;i chưa bao giờ nghĩ l&amp;agrave; t&amp;ocirc;i c&amp;oacute; thể trải nghiệm cảm gi&amp;aacute;c của một nh&amp;acirc;n vật ch&amp;iacute;nh trong một bộ phim kinh dị.&lt;/p&gt;

&lt;p&gt;Khi t&amp;ocirc;i trở về ch&amp;ocirc;̃ Philip trong khi đang mệt mỏi, cậu ta cười kh&amp;uacute;c kh&amp;iacute;ch.&lt;/p&gt;

&lt;p&gt;[Thế n&amp;agrave;o rồi?]&amp;nbsp;&lt;/p&gt;

&lt;p&gt;[Kh&amp;ocirc;ng c&amp;oacute; hiệu quả ạ.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i gần như sắp kh&amp;oacute;c khi trả lời lại.&lt;/p&gt;

&lt;p&gt;Khi t&amp;ocirc;i bị đ&amp;aacute;nh, t&amp;ocirc;i đ&amp;atilde; nghĩ đ&amp;ecirc;́n chuy&amp;ecirc;̣n t&amp;ocirc;i sẽ bị giết. Khi t&amp;ocirc;i bỏ chạy, t&amp;ocirc;i g&amp;acirc;̀n như mu&amp;ocirc;́n kh&amp;oacute;c.&lt;/p&gt;

&lt;p&gt;Đã l&amp;acirc;u r&amp;ocirc;̀i t&amp;ocirc;i chưa từng được trải qua cái trải nghi&amp;ecirc;̣m t&amp;ocirc;̀i t&amp;ecirc;̣ này, v&amp;agrave; khi t&amp;ocirc;i nghĩ về t&amp;ocirc;i đ&amp;atilde; từng nhớ, cũng đ&amp;atilde; l&amp;acirc;u rồi, c&amp;oacute; nghĩa l&amp;agrave; t&amp;ocirc;i đ&amp;atilde; từng trải qua chuy&amp;ecirc;̣n tương tự như thế n&amp;agrave;y trước kia.&lt;/p&gt;

&lt;p&gt;Cơ m&amp;agrave;. Đ&amp;acirc;y cũng chưa phải l&amp;agrave; tổn thương t&amp;acirc;m l&amp;yacute;.&lt;/p&gt;

&lt;p&gt;[Vậy, ch&amp;aacute;u mu&amp;ocirc;́n bỏ cuộc chưa?]&lt;/p&gt;

&lt;p&gt;[Ch&amp;aacute;u sẽ kh&amp;ocirc;ng bỏ cuộc]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i chưa xong vi&amp;ecirc;̣c đ&amp;acirc;u.&lt;/p&gt;

&lt;p&gt;Nếu t&amp;ocirc;i bỏ cuộc sớm, c&amp;oacute; nghĩa l&amp;agrave; t&amp;ocirc;i đã bị đ&amp;aacute;nh đ&amp;acirc;̣p mà kh&amp;ocirc;ng thu được k&amp;ecirc;́t quả gì sao?&lt;/p&gt;

&lt;p&gt;[Ch&amp;aacute;u mu&amp;ocirc;́n ng&amp;agrave;i làm những vi&amp;ecirc;̣c này giúp cháu.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i nói th&amp;acirc;̀m với Philip.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cần phải cho con qu&amp;aacute;i th&amp;uacute; đ&amp;oacute; biết khủng bố thực sự l&amp;agrave; như thế n&amp;agrave;o.&lt;/p&gt;

&lt;p&gt;[Ta hiểu rồi. Thomas, đi chuẩn bị đi.]&lt;/p&gt;

&lt;p&gt;Philip hướng dẫn &amp;ocirc;ng quản gia, người vừa rời căn ph&amp;ograve;ng.&lt;/p&gt;

&lt;p&gt;[Nhưng về chủ đề đ&amp;oacute;. Cái &amp;yacute; tưởng m&amp;agrave; ch&amp;aacute;u nghĩ ra được cũng kh&amp;aacute; l&amp;agrave; th&amp;uacute; vị đấy.]&lt;/p&gt;

&lt;p&gt;[Vậy sao.?]&lt;/p&gt;

&lt;p&gt;[Ừ. Ch&amp;aacute;u l&amp;agrave; gia sư duy nhất c&amp;oacute; thể nghĩ ra được kế hoạch quy m&amp;ocirc; lớn như thế n&amp;agrave;y.]&lt;/p&gt;

&lt;p&gt;[&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;. Ng&amp;agrave;i nghĩ c&amp;oacute; hiệu quả kh&amp;ocirc;ng?]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cảm thấy hơi kh&amp;oacute; chịu.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i c&amp;oacute; thể giải quyết c&amp;ocirc; chủ n&amp;agrave;y chỉ với trò gạt đơn giản n&amp;agrave;y kh&amp;ocirc;ng?&lt;/p&gt;

&lt;p&gt;Philip nh&amp;uacute;n vai.&lt;/p&gt;

&lt;p&gt;[Đ&amp;oacute; c&amp;ograve;n t&amp;ugrave;y thuộc v&amp;agrave;o nỗ lực của ch&amp;aacute;u.]&lt;/p&gt;

&lt;p&gt;Cậu ta ho&amp;agrave;n to&amp;agrave;n đ&amp;uacute;ng.&lt;/p&gt;

&lt;p&gt;Và như vậy, kế hoạch đ&amp;atilde; được triển khai.&lt;/p&gt;

&lt;p&gt;Ph&amp;acirc;̀n 3:&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i bước v&amp;agrave;o căn ph&amp;ograve;ng đ&amp;atilde; được chu&amp;acirc;̉n bị cho t&amp;ocirc;i ở, v&amp;agrave; c&amp;oacute; vẻ như nơi này có đầy đủ các loại h&amp;agrave;ng cao c&amp;acirc;́p. Một chiếc giường lớn, thiết kế nội thất phức tạp, Khung cửa sổ đẹp v&amp;agrave; cái gi&amp;aacute; s&amp;aacute;ch hiện đại.&lt;/p&gt;

&lt;p&gt;Nếu t&amp;ocirc;i c&amp;oacute; coka v&amp;agrave; một chiếc m&amp;aacute;y t&amp;iacute;nh b&amp;agrave;n, t&amp;ocirc;i c&amp;oacute; thể sống ở đ&amp;acirc;y hạnh ph&amp;uacute;c cả đời làm NEET.&lt;/p&gt;

&lt;p&gt;Một căn ph&amp;ograve;ng r&amp;acirc;́t được.&lt;/p&gt;

&lt;p&gt;C&amp;oacute; lẽ nếu t&amp;ocirc;i c&amp;oacute; t&amp;ecirc;n Greyrat, t&amp;ocirc;i sẽ được d&amp;ugrave;ng căn ph&amp;ograve;ng đặc biệt cho t&amp;ocirc;i để ở thay v&amp;igrave; căn ph&amp;ograve;ng cho người hầu.&lt;/p&gt;

&lt;p&gt;N&amp;oacute;i về người hầu. T&amp;ocirc;i kh&amp;ocirc;ng biết tại sao c&amp;oacute; nhiều c&amp;ocirc; hầu nữ người th&amp;uacute; ở đ&amp;acirc;y.&lt;/p&gt;

&lt;p&gt;Ở đất nước n&amp;agrave;y, t&amp;ocirc;i nghe n&amp;oacute;i l&amp;agrave; quỷ tộc bị ph&amp;acirc;n biệt đối xử. Tộc người th&amp;uacute; l&amp;agrave; ngoại lệ sao?&lt;/p&gt;

&lt;p&gt;[Haa&amp;hellip;&amp;hellip;. Paul khốn kiếp. Cậu thật sự đ&amp;atilde; gửi t&amp;ocirc;i đến c&amp;aacute;i ch&amp;ocirc;́n địa ngục quỷ qu&amp;aacute;i n&amp;agrave;y.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i ngồi l&amp;ecirc;n giường bằng chút sức c&amp;ograve;n lại trong người, v&amp;agrave; t&amp;ocirc;i đưa tay l&amp;ecirc;n ch&amp;ocirc;̃ tr&amp;ecirc;n đầu đang đau &amp;acirc;m ỉ.&lt;/p&gt;

&lt;p&gt;Nơi m&amp;agrave; t&amp;ocirc;i bị đ&amp;aacute;nh đỏ ửng l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i lẩm bẩm d&amp;ugrave;ng thần ch&amp;uacute; h&amp;ocirc;̀i phục để chữa l&amp;agrave;nh chỗ bị thương.&lt;/p&gt;

&lt;p&gt;[Nhưng, so s&amp;aacute;nh với kiếp trước, thế n&amp;agrave;y vẫn c&amp;ograve;n ổn chán.]&lt;/p&gt;

&lt;p&gt;C&amp;ugrave;ng giống l&amp;agrave; đều bị đuổi ra khỏi nh&amp;agrave;, nhưng lần n&amp;agrave;y th&amp;igrave; kh&amp;aacute;c, t&amp;ocirc;i kh&amp;ocirc;ng cần phải lang thang ngo&amp;agrave;i đường phố. Ho&amp;agrave;n to&amp;agrave;n kh&amp;aacute;c biệt.&lt;/p&gt;

&lt;p&gt;Paul đ&amp;atilde; sắp xếp cho t&amp;ocirc;i có m&amp;ocirc;̣t cuộc sống đ&amp;acirc;̀y đủ. Một c&amp;ocirc;ng việc v&amp;agrave; một nơi đ&amp;ecirc;̉ ở. Lại c&amp;ograve;n có cả tiền bỏ t&amp;uacute;i nữa. Quả thực c&amp;acirc;̣u ta đã c&amp;acirc;̉n th&amp;acirc;̣n quan t&amp;acirc;m đ&amp;ecirc;́n t&amp;ocirc;i. Nếu mà anh em t&amp;ocirc;i c&amp;oacute; thể l&amp;agrave;m những vi&amp;ecirc;̣c như v&amp;acirc;̀y ở kiếp trước, c&amp;oacute; thể t&amp;ocirc;i đ&amp;atilde; cố gắng hơn.&lt;/p&gt;

&lt;p&gt;Gi&amp;uacute;p t&amp;ocirc;i t&amp;igrave;m được một c&amp;ocirc;ng việc, cung cấp nơi cho t&amp;ocirc;i ở, v&amp;agrave; c&amp;acirc;̉n th&amp;acirc;̣n chăm sóc cho t&amp;ocirc;i&amp;hellip;&amp;hellip;&amp;hellip;&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng, như thế vẫn chưa đủ.&lt;/p&gt;

&lt;p&gt;Một t&amp;ecirc;n NEET 34 tuổi kh&amp;ocirc;ng c&amp;oacute; kinh nghiệm l&amp;agrave;m việc. Họ kh&amp;ocirc;ng c&amp;oacute; c&amp;aacute;ch n&amp;agrave;o kh&amp;aacute;c ngo&amp;agrave;i việc bỏ rơi t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Th&amp;ecirc;m nữa nếu họ tự nhi&amp;ecirc;n l&amp;agrave;m như vậy, t&amp;ocirc;i c&amp;oacute; thể sẽ tr&amp;uacute;t giận l&amp;ecirc;n họ. T&amp;ocirc;i chắc chắn sẽ kh&amp;ocirc;ng muốn phải l&amp;agrave;m việc.&lt;/p&gt;

&lt;p&gt;K&amp;eacute;o t&amp;ocirc;i ra khỏi t&amp;igrave;nh y&amp;ecirc;u của t&amp;ocirc;i (C&amp;aacute;i m&amp;aacute;y t&amp;iacute;nh), t&amp;ocirc;i c&amp;oacute; thể đi tự tử lu&amp;ocirc;n.&lt;/p&gt;

&lt;p&gt;B&amp;acirc;y giờ vi&amp;ecirc;̣c duy nh&amp;acirc;́t mà t&amp;ocirc;i phải làm đó là đi làm.&lt;/p&gt;

&lt;p&gt;Được nh&amp;acirc;̣n vi&amp;ecirc;̣c, v&amp;agrave; x&amp;aacute;c định l&amp;agrave; sẽ kiếm nhi&amp;ecirc;̀u tiền. Đ&amp;oacute; l&amp;agrave; mục ti&amp;ecirc;u hiện giờ.&lt;/p&gt;

&lt;p&gt;Mặc dù t&amp;ocirc;i đã bị ép phải đi làm, nhưng thời đi&amp;ecirc;̉m mà c&amp;acirc;̣u ta chọn cũng kh&amp;ocirc;ng t&amp;ocirc;̀i. C&amp;oacute; thể t&amp;ocirc;i đã tr&amp;aacute;ch lầm Paul. Nhưng thứ đó thì sao? Cái thứ quái vật hung bạo mất tr&amp;iacute; đó. Đ&amp;acirc;y l&amp;agrave; lần đầu ti&amp;ecirc;n trong 40 năm cu&amp;ocirc;̣c đời t&amp;ocirc;i được chứng ki&amp;ecirc;́n cái thứ đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng thể d&amp;ugrave;ng 2 k&amp;yacute; tự Kanji để diễn tả được. Đ&amp;oacute; chính l&amp;agrave; hiện th&amp;acirc;n của sự hung bạo.&lt;/p&gt;

&lt;p&gt;Giống như l&amp;agrave; &amp;acirc;́m nước đang s&amp;ocirc;i sùng sục v&amp;acirc;̣y.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ta g&amp;acirc;̀n như l&amp;agrave;m t&amp;ocirc;i bị chấn thương t&amp;acirc;m l&amp;yacute;. C&amp;oacute; thể n&amp;oacute;i l&amp;agrave; t&amp;ocirc;i gần như sắp đái d&amp;acirc;̀m ra quần.&lt;/p&gt;

&lt;p&gt;[Mình nghĩ dù có làm th&amp;ecirc;́ nào đi chăng nữa, thì c&amp;ocirc; ta cũng đi&amp;ecirc;n l&amp;ecirc;n.]&lt;/p&gt;

&lt;p&gt;C&amp;oacute; vẻ như l&amp;agrave; c&amp;ocirc; ta sẽ coi t&amp;ocirc;i l&amp;agrave; [Kẻ th&amp;ugrave;] v&amp;agrave; sẽ nổi đi&amp;ecirc;n l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;Trong mắt của c&amp;ocirc; chủ, t&amp;ocirc;i được coi l&amp;agrave; một mục ti&amp;ecirc;u.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i sẽ bị băm vằm ra l&amp;agrave;m 4 mảnh m&amp;acirc;́t.&lt;/p&gt;

&lt;p&gt;[&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;.. C&amp;ocirc; ta bị đuổi khỏi trường cũng chả lạ.]&lt;/p&gt;

&lt;p&gt;Dựa vào c&amp;aacute;ch m&amp;agrave; c&amp;ocirc; ta tấn c&amp;ocirc;ng người khác, thì c&amp;oacute; thể coi c&amp;ocirc; ta đã quá quen với vi&amp;ecirc;̣c này.&lt;/p&gt;

&lt;p&gt;Cái cách đ&amp;aacute;nh gục người ta. cho d&amp;ugrave; đối phương c&amp;oacute; thể hay kh&amp;ocirc;ng thể trả đũa, c&amp;ocirc; ta sẽ ti&amp;ecirc;́p tục đ&amp;aacute;nh họ kh&amp;ocirc;ng chút do dự.&lt;/p&gt;

&lt;p&gt;Mặc dù mới chỉ 9 tu&amp;ocirc;̉i, nhưng cái cách mà c&amp;ocirc; ta khi&amp;ecirc;́n người khác phải cảm th&amp;acirc;́y b&amp;acirc;́t lực đúng là đã thành thục từ l&amp;acirc;u.&lt;/p&gt;

&lt;p&gt;Liệu t&amp;ocirc;i c&amp;oacute; thể dạy người như c&amp;ocirc; ta được kh&amp;ocirc;ng.&lt;/p&gt;

&lt;p&gt;Philip v&amp;agrave; t&amp;ocirc;i đ&amp;atilde; thảo luận.&lt;/p&gt;

&lt;p&gt;Sẽ để c&amp;ocirc; ta bị bắt c&amp;oacute;c v&amp;agrave; phải trải nghiệm sự bất lực.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; rồi, t&amp;ocirc;i sẽ giải cứu c&amp;ocirc; ta. C&amp;ocirc; ta sẽ k&amp;iacute;nh trọng t&amp;ocirc;i, v&amp;agrave; ngoan ngo&amp;atilde;n nghe t&amp;ocirc;i chỉ dạy.&lt;/p&gt;

&lt;p&gt;Kế hoạch mặc dù nghe c&amp;oacute; vẻ đơn giản, nhưng t&amp;ocirc;i biết thực hi&amp;ecirc;̣n qu&amp;aacute; tr&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;Nếu c&amp;ocirc; ta kh&amp;ocirc;ng l&amp;agrave;m điều gì đó ngo&amp;agrave;i dự t&amp;iacute;nh. Th&amp;igrave; qu&amp;aacute; tr&amp;igrave;nh sẽ diễn ra m&amp;ocirc;̣t cách trơn tru.&lt;/p&gt;

&lt;p&gt;Nhưng liệu k&amp;ecirc;́ hoạch sẽ di&amp;ecirc;̃n ra trơn tru?&lt;/p&gt;

&lt;p&gt;C&amp;aacute;i cấp độ của sự hung bạo đ&amp;oacute; vượt ra ngo&amp;agrave;i tr&amp;iacute; tưởng tượng của t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Sử dụng tất cả sức lực c&amp;ocirc; ta đang c&amp;oacute; để gầm l&amp;ecirc;n v&amp;agrave; la lớn. R&amp;ocirc;̀i ngoạm l&amp;acirc;́y con mồ, v&amp;agrave; x&amp;eacute; gọn th&amp;agrave;nh từng mảnh.&lt;/p&gt;

&lt;p&gt;Một sự hung bạo tuy&amp;ecirc;̣t đ&amp;ocirc;́i với quyết t&amp;acirc;m chiến thắng trong đ&amp;acirc;̀u.&lt;/p&gt;

&lt;p&gt;Nếu c&amp;ocirc; ta bị bắt c&amp;oacute;c, liệu c&amp;ocirc; ta có nh&amp;acirc;̣n thức được sự nghi&amp;ecirc;m trọng?&lt;/p&gt;

&lt;p&gt;Nếu t&amp;ocirc;i giải cứu c&amp;ocirc; ta, liệu c&amp;ocirc; ta sẽ coi chuy&amp;ecirc;̣n giải cứu là vi&amp;ecirc;̣c đương nhi&amp;ecirc;n mà t&amp;ocirc;i phải làm v&amp;agrave; n&amp;oacute;i rằng [Sao kh&amp;ocirc;ng tới cứu ta sớm hơn, đồ r&amp;aacute;c rưởi.]?&lt;/p&gt;

&lt;p&gt;C&amp;oacute; khả năng l&amp;agrave; vậy.&lt;/p&gt;

&lt;p&gt;C&amp;oacute; khả năng l&amp;agrave; vậy nếu đ&amp;oacute; l&amp;agrave; c&amp;ocirc; chủ.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ta sẽ l&amp;agrave;m điều g&amp;igrave; đ&amp;oacute; ngo&amp;agrave;i dự kiến, n&amp;ecirc;n t&amp;ocirc;i sẽ phải nghĩ ra giải ph&amp;aacute;p cho tất cả mọi khả năng. T&amp;ocirc;i phải th&amp;acirc;̣t quyết t&amp;acirc;m.&lt;/p&gt;

&lt;p&gt;D&amp;ugrave; thế n&amp;agrave;o đi nữa, kh&amp;ocirc;ng thể để thất bại được.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i phải li&amp;ecirc;n tục giữ cái tư tưởng này.&lt;/p&gt;

&lt;p&gt;Cứ chỉ vi&amp;ecirc;̣c làm đúng như k&amp;ecirc;́ hoạch đã vạch ra từ đ&amp;acirc;̀u.&lt;/p&gt;

&lt;p&gt;Nhưng khi t&amp;ocirc;i nghĩ ngợi th&amp;ecirc;m, suy nghĩ của t&amp;ocirc;i lại bắt đ&amp;acirc;̀u ch&amp;igrave;m trong một vũng lầy.&lt;/p&gt;

&lt;p&gt;[Ch&amp;uacute;a ơi. Xin h&amp;atilde;y ch&amp;uacute;c cho con th&amp;agrave;nh c&amp;ocirc;ng&amp;hellip;&amp;hellip;]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i chỉ c&amp;oacute; thể cầu nguyện.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i kh&amp;ocirc;ng h&amp;ecirc;̀ tin th&amp;acirc;̀n thánh chút nào.&lt;/p&gt;

&lt;p&gt;Nhưng, như nhiều người Nhật Bản từng làm, khi c&amp;oacute; điều g&amp;igrave; xảy ra họ sẽ tr&amp;ocirc;ng chờ được chúa phù h&amp;ocirc;̣.&lt;/p&gt;

&lt;p&gt;C&amp;acirc;̀u nguy&amp;ecirc;̣n bằng những c&amp;acirc;u như l&amp;agrave;, &amp;ldquo;H&amp;atilde;y gi&amp;uacute;p con th&amp;agrave;nh c&amp;ocirc;ng&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;Khi t&amp;ocirc;i nhận ra rằng b&amp;aacute;u vật thần th&amp;aacute;nh, (Quần l&amp;oacute;t) đ&amp;atilde; bị bỏ lại ở căn ph&amp;ograve;ng cũ của t&amp;ocirc;i, t&amp;ocirc;i đã bật kh&amp;oacute;c.&lt;/p&gt;

&lt;p&gt;Nữ thần của t&amp;ocirc;i (Roxy) kh&amp;ocirc;ng ở đ&amp;acirc;y.&lt;/p&gt;

&lt;p&gt;&lt;strong&gt;&amp;ndash;T&amp;igrave;nh trạng&amp;ndash;&lt;/strong&gt;&lt;/p&gt;

&lt;p&gt;T&amp;ecirc;n： C&amp;ocirc; chủ&lt;/p&gt;

&lt;p&gt;Nghề nghiệp: Ch&amp;aacute;u g&amp;aacute;i của l&amp;atilde;nh ch&amp;uacute;a v&amp;ugrave;ng Fedoa&lt;/p&gt;

&lt;p&gt;T&amp;iacute;nh c&amp;aacute;ch： Hung dữ&lt;/p&gt;

&lt;p&gt;Khi n&amp;oacute;i chuyện với c&amp;ocirc; ấy: Kh&amp;ocirc;ng nghe&lt;/p&gt;

&lt;p&gt;Ng&amp;ocirc;n ngữ： Chỉ c&amp;oacute; thể viết được t&amp;ecirc;n c&amp;ocirc; ấy&lt;/p&gt;

&lt;p&gt;To&amp;aacute;n học: Chỉ một con số&lt;/p&gt;

&lt;p&gt;Ph&amp;eacute;p thuật： Kh&amp;ocirc;ng c&amp;oacute; một t&amp;yacute; g&amp;igrave;&lt;/p&gt;

&lt;p&gt;Kiếm thuật： Hạng sơ cấp trong trường phái Kiếm-Thần&lt;/p&gt;

&lt;p&gt;Phép tắc x&amp;atilde; giao: Kiểu ch&amp;agrave;o hỏi của nh&amp;agrave; Boreas&lt;/p&gt;

&lt;p&gt;Những người c&amp;ocirc; ấy th&amp;iacute;ch： &amp;Ocirc;ng nội, Ghyslaine&lt;/p&gt;
', 1, CAST(0x0000ADE4016F96CA AS DateTime), CAST(0x0000ADE4016F96CA AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2090, 1080, 1039, N'Chương 3: Tự biên tự diễn ', N'&lt;p&gt;Khi t&amp;ocirc;i tỉnh dậy, t&amp;ocirc;i thấy m&amp;igrave;nh đang nằm trong căn nh&amp;agrave; kho nhỏ v&amp;agrave; bẩn thỉu.&lt;/p&gt;

&lt;p&gt;&amp;Aacute;nh s&amp;aacute;ng mặt trời chiếu xuống qua c&amp;aacute;i cửa sổ c&amp;oacute; những thanh sắt chắn dọc.&lt;/p&gt;

&lt;p&gt;Cả cơ thể t&amp;ocirc;i thấy đau nhức, v&amp;agrave; sau khi t&amp;ocirc;i đ&amp;atilde; bảo đảm được rằng mình kh&amp;ocirc;ng bị g&amp;atilde;y xương, t&amp;ocirc;i bắt đầu thi triển ph&amp;eacute;p Chữa trị bằng c&amp;acirc;u thần ch&amp;uacute; với giọng nhỏ khẽ.&lt;/p&gt;

&lt;p&gt;Tay t&amp;ocirc;i đang bị tr&amp;oacute;i sau lưng, nhưng chỉ thế n&amp;agrave;y vẫn chưa đủ đ&amp;ecirc;̉ g&amp;acirc;y kh&amp;oacute; d&amp;ecirc;̃ cho t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;[Được rồi.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đ&amp;atilde; ho&amp;agrave;n to&amp;agrave;n được chữa trị, quần &amp;aacute;o t&amp;ocirc;i kh&amp;ocirc;ng bị r&amp;aacute;ch.&lt;/p&gt;

&lt;p&gt;Rất tốt. K&amp;ecirc;́ hoạch đang di&amp;ecirc;̃n ra rất thuận lợi.&lt;/p&gt;

&lt;p&gt;Kế hoạch thuyết phục c&amp;ocirc; chủ l&amp;agrave; như thế n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;1) Đầu ti&amp;ecirc;n. Đi c&amp;ugrave;ng với c&amp;ocirc; chủ đến cửa h&amp;agrave;ng quần &amp;aacute;o.&lt;/p&gt;

&lt;p&gt;2) Bởi v&amp;igrave; c&amp;ocirc; chủ rất bướng bỉnh, c&amp;ocirc; ấy sẽ muốn chạy ra khỏi cửa h&amp;agrave;ng.&lt;/p&gt;

&lt;p&gt;3) Thường th&amp;igrave; Ghyslaine sẽ đi theo c&amp;ocirc; chủ như l&amp;agrave; vệ sĩ của c&amp;ocirc; ấy, nhưng b&amp;ocirc;̃ng c&amp;ocirc; ấy sẽ kh&amp;ocirc;ng để &amp;yacute; đến c&amp;ocirc; chủ bởi sự『t&amp;igrave;nh cờ』.&lt;/p&gt;

&lt;p&gt;4) Ngay cả khi t&amp;ocirc;i đang theo sau c&amp;ocirc; ấy, đối với c&amp;ocirc; ấy, thì t&amp;ocirc;i chỉ l&amp;agrave; một thằng oắt con yếu hơn cả mình v&amp;agrave; nằm y&amp;ecirc;n chịu tr&amp;acirc;n sau khi g&amp;acirc;y sự với mình, th&amp;ecirc;́ n&amp;ecirc;n C&amp;ocirc; chủ sẽ kh&amp;ocirc;ng để &amp;yacute; tới t&amp;ocirc;i ch&amp;uacute;t n&amp;agrave;o.&lt;/p&gt;

&lt;p&gt;5) T&amp;ocirc;i sẽ được coi l&amp;agrave; tùy tùng của c&amp;ocirc; ấy, v&amp;agrave; đi c&amp;ugrave;ng C&amp;ocirc; chủ qua các khu vực. Rồi dần dần đi đến một nơi hẻo l&amp;aacute;nh ở trong th&amp;agrave;nh phố (C&amp;ocirc; ấy c&amp;oacute; vẻ th&amp;iacute;ch l&amp;agrave;m nh&amp;agrave; phi&amp;ecirc;u lưu).&lt;/p&gt;

&lt;p&gt;6) Lúc n&amp;agrave;y đ&amp;acirc;y, đám người xấu do nh&amp;agrave; Greyrat sắp xếp sẽ xuất hiện.&lt;/p&gt;

&lt;p&gt;7) Chúng sẽ dễ d&amp;agrave;ng đ&amp;aacute;nh bại C&amp;ocirc; chủ v&amp;agrave; t&amp;ocirc;i. Rồi bắt c&amp;oacute;c v&amp;agrave; mang ch&amp;uacute;ng t&amp;ocirc;i đến th&amp;agrave;nh phố l&amp;aacute;ng giềng, v&amp;agrave; nh&amp;ocirc;́t ch&amp;uacute;ng t&amp;ocirc;i lại.&lt;/p&gt;

&lt;p&gt;8) T&amp;ocirc;i sẽ sử dụng ph&amp;eacute;p thuật v&amp;agrave; chạy trốn khỏi nơi đó.&lt;/p&gt;

&lt;p&gt;9) Sau đó nhận ra rằng đ&amp;acirc;y l&amp;agrave; th&amp;agrave;nh phố kh&amp;aacute;c.&lt;/p&gt;

&lt;p&gt;10) Sử dụng tiền giấu trong quần l&amp;oacute;t của minhf, v&amp;agrave; đ&amp;oacute;n một chi&amp;ecirc;́c xe ngựa trở về.&lt;/p&gt;

&lt;p&gt;11) Dạy C&amp;ocirc; chủ khi tr&amp;ecirc;n đường về nh&amp;agrave;.&lt;/p&gt;

&lt;p&gt;Cho đến hiện giờ, mọi thứ đ&amp;atilde; diễn ra trơn tru cho đến bước số 7.&lt;/p&gt;

&lt;p&gt;Điều tiếp theo sẽ l&amp;agrave; t&amp;ocirc;i sử dụng ph&amp;eacute;p thuật, kiến thức, sự th&amp;ocirc;ng th&amp;aacute;i, v&amp;agrave; l&amp;ograve;ng dũng cảm để trốn tho&amp;aacute;t khỏi nơi đ&amp;acirc;y m&amp;ocirc;̣t cách d&amp;ecirc;̃ dàng.&lt;/p&gt;

&lt;p&gt;Để tr&amp;ocirc;ng mọi thứ di&amp;ecirc;̃n ra như th&amp;acirc;̣t, t&amp;ocirc;i vẫn cần phải có chút tùy cơ ứng biến.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i kh&amp;ocirc;ng biết c&amp;oacute; th&amp;agrave;nh c&amp;ocirc;ng hay kh&amp;ocirc;ng, hi&amp;ecirc;̣n cảm thấy hơi ch&amp;uacute;t b&amp;acirc;́t an&amp;hellip;&amp;hellip;&lt;/p&gt;

&lt;p&gt;[&amp;hellip;..Hừm?]&lt;/p&gt;

&lt;p&gt;Nhưng cái nơi n&amp;agrave;y hơi kh&amp;aacute;c so với nơi đ&amp;atilde; sắp đặt.&lt;/p&gt;

&lt;p&gt;Cả nh&amp;agrave; kho đầy bụi, v&amp;agrave; g&amp;oacute;c nh&amp;agrave; c&amp;oacute; một c&amp;aacute;i ghế g&amp;atilde;y v&amp;agrave; một bộ gi&amp;aacute;p đầy lỗ hổng.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng phải họ n&amp;oacute;i l&amp;agrave; nơi n&amp;agrave;y sẽ kh&amp;ocirc;ng tồi t&amp;agrave;n sao&amp;hellip;&amp;hellip;?&lt;/p&gt;

&lt;p&gt;Hừm, kể cả chỉ l&amp;agrave; đ&amp;oacute;ng kịch, th&amp;igrave; sẽ phải cần đồ thật chứ. Cứ cho l&amp;agrave; vậy đi.&lt;/p&gt;

&lt;p&gt;[Ư&amp;hellip;&amp;hellip;.Hừm&amp;hellip;&amp;hellip;.?]&lt;/p&gt;

&lt;p&gt;Sau một l&amp;uacute;c, C&amp;ocirc; chủ cũng đ&amp;atilde; tỉnh dậy.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ấy mở mắt ra. Nhận ra rằng c&amp;ocirc; ấy ở một nơi xa lạ, v&amp;agrave; cố đứng dậy, nhưng rồi lại nhận ra rằng tay c&amp;ocirc; ấy đang bị tr&amp;oacute;i chặt ở đằng sau lưng, v&amp;agrave; rốt cuộc, rơi xuống dưới đất như một con giun.&lt;/p&gt;

&lt;p&gt;[G&amp;igrave; thế n&amp;agrave;y!?]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ nhận ra rằng c&amp;ocirc; ấy kh&amp;ocirc;ng thể cử động v&amp;agrave; đ&amp;atilde; bắt đầu ph&amp;aacute;t ra tiếng động.&lt;/p&gt;

&lt;p&gt;[Đừng c&amp;oacute; đ&amp;ugrave;a với ta! Ngươi c&amp;oacute; biết ta l&amp;agrave; ai kh&amp;ocirc;ng hả!? Mau thả ta ra!]&lt;/p&gt;

&lt;p&gt;La h&amp;eacute;t gì mà to th&amp;ecirc;́.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đ&amp;atilde; từng nghĩ về điều n&amp;agrave;y khi c&amp;ograve;n ở dinh thự, nhưng xem ra c&amp;ocirc; ấy kh&amp;ocirc;ng mu&amp;ocirc;́n bé giọng lại t&amp;yacute; n&amp;agrave;o.&lt;/p&gt;

&lt;p&gt;C&amp;oacute; lẽ n&amp;agrave;o c&amp;ocirc; ấy l&amp;agrave;m vậy để ti&amp;ecirc;́ng la hét vang vọng to&amp;agrave;n b&amp;ocirc;̣ b&amp;ecirc;n trong cái dinh thự r&amp;ocirc;̣ng lớn đó?&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng. C&amp;ocirc; ấy chắc kh&amp;ocirc;ng thể n&amp;agrave;o nghĩ ra được như vậy. &amp;Ocirc;ng của C&amp;ocirc; chủ, l&amp;atilde;nh ch&amp;uacute;a v&amp;ugrave;ng Fedoa, cũng l&amp;agrave; loại người d&amp;ugrave;ng ti&amp;ecirc;́ng nói to lớn của mình để g&amp;acirc;y sức &amp;eacute;p đến người kh&amp;aacute;c. &amp;Ocirc;ng c&amp;ocirc; ấy đ&amp;atilde; d&amp;ugrave;ng c&amp;aacute;i giọng đấy để thị oai với người hầu v&amp;agrave; Philip, v&amp;agrave; C&amp;ocirc; chủ chắc phải chứng kiến việc đ&amp;oacute; v&amp;ocirc; xuể.&lt;/p&gt;

&lt;p&gt;Trẻ con sẽ bắt chước theo, đặc biệt l&amp;agrave; những th&amp;oacute;i xấu.&lt;/p&gt;

&lt;p&gt;[M&amp;agrave;y ồn qu&amp;aacute; đấy, con nh&amp;oacute;c con!]&lt;/p&gt;

&lt;p&gt;Trong khi c&amp;ocirc; chủ c&amp;ograve;n đang ồn &amp;agrave;o, c&amp;aacute;nh cửa đ&amp;atilde; bị mở tung ra, v&amp;agrave; một người đ&amp;agrave;n &amp;ocirc;ng bước v&amp;agrave;o.&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;ng ta c&amp;oacute; bộ quần &amp;aacute;o xấu x&amp;iacute;. Cả cơ thể h&amp;ocirc;i h&amp;aacute;m với mặt mọc r&amp;acirc;u lổm chổm, v&amp;agrave; trọc đầu.&lt;/p&gt;

&lt;p&gt;Nếu &amp;ocirc;ng ta đưa một tấm thẻ c&amp;oacute; ghi c&amp;ocirc;n đồ ở đấy, chắc chắn ai cũng tin.&lt;/p&gt;

&lt;p&gt;Diễn tốt qu&amp;aacute;. B&amp;acirc;y giờ t&amp;ocirc;i kh&amp;ocirc;ng cần phải lo lắng về vai diễn của t&amp;ocirc;i bị lộ ra nữa.&lt;/p&gt;

&lt;p&gt;[Đồ h&amp;ocirc;i h&amp;aacute;m. Đừng c&amp;oacute; tới gần ta. Ngươi h&amp;ocirc;i qu&amp;aacute; đi! Ngươi c&amp;oacute; biết ta l&amp;agrave; ai kh&amp;ocirc;ng hả? Ghyslaine sẽ tới ngay lập tức v&amp;agrave; ch&amp;eacute;m ngươi ra l&amp;agrave;m hai!]&lt;/p&gt;

&lt;p&gt;Bam.&lt;/p&gt;

&lt;p&gt;Với một tiếng đ&amp;ocirc;̣ng nghe c&amp;oacute; vẻ sẽ r&amp;acirc;́t là rất đau, C&amp;ocirc; chủ đã bị đ&amp;aacute; bởi người đ&amp;agrave;n &amp;ocirc;ng đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ấy phát ra một tiếng m&amp;agrave; kh&amp;ocirc;ng một quý c&amp;ocirc; n&amp;agrave;o sẽ k&amp;ecirc;u như thế.&lt;/p&gt;

&lt;p&gt;Cả th&amp;acirc;n thể c&amp;ocirc; ấy bay l&amp;ecirc;n v&amp;agrave; va r&amp;acirc;́t mạnh v&amp;agrave;o bức tường.&lt;/p&gt;

&lt;p&gt;[Con ch&amp;oacute;! M&amp;agrave;y ki&amp;ecirc;u căng c&amp;aacute;i g&amp;igrave; đấy!? Tao biết thừa hai đứa m&amp;agrave;y l&amp;agrave; ch&amp;aacute;u của l&amp;atilde;nh ch&amp;uacute;a rồi!]&lt;/p&gt;

&lt;p&gt;Người đ&amp;agrave;n &amp;ocirc;ng kh&amp;ocirc;ng thương tiếc dẫm đạp l&amp;ecirc;n c&amp;ocirc; chủ đang bất động với đ&amp;ocirc;i tay còn đang bị tr&amp;oacute;i về đằng sau.&lt;/p&gt;

&lt;p&gt;&amp;Ecirc; n&amp;agrave;y. Diễn đạt thế th&amp;igrave; gi&amp;agrave;nh giải Oscar mất.&lt;/p&gt;

&lt;p&gt;[Au&amp;hellip;..Đau qu&amp;aacute;&amp;hellip;&amp;hellip;Dừng lại&amp;hellip;&amp;hellip;.A&amp;hellip;&amp;hellip;&amp;hellip;Dừng&amp;hellip;&amp;hellip;.Au&amp;hellip;&amp;hellip;&amp;hellip;lại đi&amp;hellip;&amp;hellip;..]&lt;/p&gt;

&lt;p&gt;[Chậc.]&lt;/p&gt;

&lt;p&gt;Người đ&amp;agrave;n &amp;ocirc;ng đ&amp;aacute; c&amp;ocirc; chủ được một l&amp;uacute;c v&amp;agrave; cuối c&amp;ugrave;ng l&amp;agrave; nhổ nước miếng v&amp;agrave;o mặt c&amp;ocirc; ấy. Rồi &amp;ocirc;ng ta quay về ph&amp;iacute;a t&amp;ocirc;i v&amp;agrave; lườm t&amp;ocirc;i. Khi t&amp;ocirc;i l&amp;acirc;̣p tức n&amp;eacute; mắt tránh nhìn &amp;ocirc;ng ta, t&amp;ocirc;i đ&amp;atilde; bị đ&amp;aacute; v&amp;agrave;o mặt v&amp;agrave; bay đi.&lt;/p&gt;

&lt;p&gt;[&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;.Au!]&lt;/p&gt;

&lt;p&gt;Đau qu&amp;aacute;. Kể cả chỉ l&amp;agrave; đ&amp;oacute;ng kịch th&amp;ocirc;i, c&amp;oacute; cần thiết phải đ&amp;aacute; mạnh như thế kh&amp;ocirc;ng?&lt;/p&gt;

&lt;p&gt;Kể cả t&amp;ocirc;i n&amp;oacute;i vậy, t&amp;ocirc;i c&amp;oacute; thể d&amp;ugrave;ng ph&amp;eacute;p Chữa trị để chữa trị vết thương.&lt;/p&gt;

&lt;p&gt;[Hừm! D&amp;aacute;m tỏ vẻ như l&amp;agrave; m&amp;agrave;y vui lắm đấy&amp;hellip;&amp;hellip;!]&lt;/p&gt;

&lt;p&gt;Người đ&amp;agrave;n &amp;ocirc;ng đi ra khỏi nh&amp;agrave; kho.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đ&amp;atilde; nghe thấy những lời n&amp;agrave;y khi &amp;ocirc;ng ta bước ra khỏi c&amp;aacute;nh cửa.&lt;/p&gt;

&lt;p&gt;[Y&amp;ecirc;n lặng chưa?]&lt;/p&gt;

&lt;p&gt;[Rồi.]&lt;/p&gt;

&lt;p&gt;[M&amp;agrave;y kh&amp;ocirc;ng giết con b&amp;eacute; phải kh&amp;ocirc;ng? Nếu m&amp;agrave;y l&amp;agrave;m n&amp;oacute; bị thương nhiều qu&amp;aacute;, gi&amp;aacute; sẽ giảm đi đấy.]&lt;/p&gt;

&lt;p&gt;C&amp;aacute;i g&amp;igrave;? Lời thoại của họ thật sự l&amp;agrave; k&amp;igrave; lạ.&lt;/p&gt;

&lt;p&gt;Nếu chỉ l&amp;agrave; đ&amp;oacute;ng kịch th&amp;ocirc;i&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;.Th&amp;igrave; được, nhưng t&amp;ocirc;i cảm thấy kh&amp;ocirc;ng phải l&amp;agrave; như vậy.&lt;/p&gt;

&lt;p&gt;C&amp;oacute; lẽ n&amp;agrave;o, l&amp;agrave; như thế sao?&lt;/p&gt;

&lt;p&gt;[Sao cơ? Có th&amp;ecirc;́ thì có g&amp;igrave; đ&amp;acirc;u. D&amp;ugrave; sao, thằng nh&amp;oacute;c con kia c&amp;ograve;n sống l&amp;agrave; đủ rồi.]&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng ổn t&amp;yacute; n&amp;agrave;o cả.&lt;/p&gt;

&lt;p&gt;[&amp;hellip;&amp;hellip;..]&lt;/p&gt;

&lt;p&gt;Sau khi t&amp;ocirc;i kh&amp;ocirc;ng thể nghe thấy họ n&amp;oacute;i nữa, t&amp;ocirc;i đếm đủ 300 gi&amp;acirc;y, v&amp;agrave; đốt d&amp;acirc;y thừng với Ph&amp;eacute;p hệ lửa, v&amp;agrave; đi tới chỗ C&amp;ocirc; chủ.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ vẫn c&amp;ograve;n m&amp;aacute;u tu&amp;ocirc;n ra từ mũi. Mắt c&amp;ocirc; ấy lờ đờ, v&amp;agrave; c&amp;ocirc; ấy tiếp tục lẩm bẩm điều g&amp;igrave; đ&amp;oacute; ở miệng.&lt;/p&gt;

&lt;p&gt;Khi t&amp;ocirc;i cố nghe r&amp;otilde;, th&amp;igrave; nghe ra được những c&amp;acirc;u như l&amp;agrave;, chắc chắn ta sẽ kh&amp;ocirc;ng bỏ qua, ta sẽ m&amp;aacute;ch &amp;ocirc;ng ta, v&amp;agrave; sau đ&amp;oacute; là một v&amp;agrave;i c&amp;acirc;u nguy hiểm m&amp;agrave; tai t&amp;ocirc;i kh&amp;ocirc;ng muốn nghe thấy.&lt;/p&gt;

&lt;p&gt;D&amp;ugrave; sao, t&amp;ocirc;i sẽ kiểm tra vết thương của c&amp;ocirc; ấy v&amp;agrave; x&amp;aacute;c nhận v&amp;ecirc;́t thương bằng tay mình.&lt;/p&gt;

&lt;p&gt;[Aaaa!]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ quay đ&amp;acirc;̀u nh&amp;igrave;n t&amp;ocirc;i, v&amp;agrave; run rẩy, có vẻ như c&amp;ocirc; ấy th&amp;acirc;́y rất đau.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc; đưa m&amp;ocirc;̣t ngón tay l&amp;ecirc;n m&amp;ocirc;i, ra hiệu cho c&amp;ocirc; &amp;acirc;́y y&amp;ecirc;n lặng.&lt;/p&gt;

&lt;p&gt;Hai cái xương của c&amp;ocirc; ấy đ&amp;atilde; bị g&amp;atilde;y.&lt;/p&gt;

&lt;p&gt;[Hỡi đức mẹ khoan dung, h&amp;atilde;y chữa trị vết thương tại chỗ n&amp;agrave;y, v&amp;agrave; gi&amp;uacute;p c&amp;ocirc; ấy hồi phục với một cơ thể khỏe mạnh.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i khẽ ni&amp;ecirc;̣m thần ch&amp;uacute; của phép trung c&amp;acirc;́p, v&amp;agrave; chữa trị cho cơ thể của C&amp;ocirc; chủ.&lt;/p&gt;

&lt;p&gt;Ph&amp;eacute;p Chữa trị sẽ kh&amp;ocirc;ng hiệu quả nếu t&amp;ocirc;i truy&amp;ecirc;̀n quá nhiều mana v&amp;agrave;o ph&amp;eacute;p. T&amp;ocirc;i kh&amp;ocirc;ng biết li&amp;ecirc;̣u cơ thể c&amp;ocirc; ấy c&amp;oacute; ho&amp;agrave;n to&amp;agrave;n được chữa trị hẳn hay kh&amp;ocirc;ng.&lt;/p&gt;

&lt;p&gt;Mong l&amp;agrave; xương kh&amp;ocirc;ng bị l&amp;ecirc;̣ch&amp;hellip;.&lt;/p&gt;

&lt;p&gt;[Ế? Ế~? Kh&amp;ocirc;ng c&amp;ograve;n đau nữa&amp;hellip;..]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ ngạc nhi&amp;ecirc;n nh&amp;igrave;n cơ thể.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i tiến lại gần c&amp;ocirc; ấy v&amp;agrave; th&amp;igrave; thầm v&amp;agrave;o tai,&lt;/p&gt;

&lt;p&gt;[Suỵt, đừng lớn tiếng. Xương của c&amp;ocirc; đ&amp;atilde; bị g&amp;atilde;y, v&amp;agrave; t&amp;ocirc;i mới chỉ d&amp;ugrave;ng ph&amp;eacute;p chữa trị. C&amp;ocirc; chủ à, ch&amp;uacute;ng ta c&amp;oacute; vẻ như đ&amp;atilde; bị bọn người xấu bắt c&amp;oacute;c. Ch&amp;uacute;ng l&amp;agrave; kẻ th&amp;ugrave; của ng&amp;agrave;i l&amp;atilde;nh ch&amp;uacute;a. Bước tiếp theo ch&amp;uacute;ng ta phải&amp;hellip;..]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc;ng lắng nghe.&lt;/p&gt;

&lt;p&gt;[Ghyslaine! Ghyslaine, cứu t&amp;ocirc;i với! Ch&amp;uacute;ng sắp giết t&amp;ocirc;i rồi! Nhanh cứu t&amp;ocirc;i với!]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i nhanh ch&amp;oacute;ng giấu sợ d&amp;acirc;y thừng về sau &amp;aacute;o v&amp;agrave; chạy về g&amp;oacute;c nh&amp;agrave;. Lưng hướng về tường v&amp;agrave; t&amp;ocirc;i giấu tay về sau lưng, tỏ ra như l&amp;agrave; t&amp;ocirc;i vẫn c&amp;ograve;n bị tr&amp;oacute;i.&lt;/p&gt;

&lt;p&gt;Người đ&amp;agrave;n &amp;ocirc;ng ph&amp;aacute; cửa mở toang ra đ&amp;aacute;p lại tiếng k&amp;ecirc;u của C&amp;ocirc; chủ.&lt;/p&gt;

&lt;p&gt;[IM!]&lt;/p&gt;

&lt;p&gt;V&amp;agrave; l&amp;acirc;̀n này hắn ta đ&amp;aacute; còn l&amp;acirc;u hơn trước.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đ&amp;ecirc;́n chịu thua với khả năng nh&amp;acirc;̣n bi&amp;ecirc;́t t&amp;igrave;nh h&amp;igrave;nh hi&amp;ecirc;̣n tại của c&amp;ocirc; ấy.&lt;/p&gt;

&lt;p&gt;[Khốn kiếp. Nếu m&amp;agrave;y k&amp;ecirc;u l&amp;ecirc;n lần nữa, tao sẽ giết m&amp;agrave;y!]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cũng bị đ&amp;aacute; gấp hai lần.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i thậm ch&amp;iacute; c&amp;ograve;n kh&amp;ocirc;ng l&amp;agrave;m g&amp;igrave;. Đừng đ&amp;aacute; t&amp;ocirc;i nữa, t&amp;ocirc;i sẽ phát kh&amp;oacute;c m&amp;acirc;́t&amp;hellip;&amp;hellip;&amp;hellip;..&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i nghĩ vậy trong khi di chuyển về ph&amp;iacute;a C&amp;ocirc; chủ.&lt;/p&gt;

&lt;p&gt;[Ư&amp;hellip;&amp;hellip;.Ư&amp;hellip;&amp;hellip;]&lt;/p&gt;

&lt;p&gt;D&amp;atilde; man qu&amp;aacute;.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i kh&amp;ocirc;ng biết xương c&amp;ocirc; ấy thế n&amp;agrave;o rồi, nhưng dựa v&amp;agrave;o miệng c&amp;ocirc; ấy đang thổ huyết, c&amp;oacute; vẻ như có vài ch&amp;ocirc;̃ nội tạng đ&amp;atilde; nát. Xương tay v&amp;agrave; ch&amp;acirc;n cũng bị vỡ hết.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i kh&amp;ocirc;ng biết nhiều ngh&amp;ecirc;̀ y, nhưng rõ ràng là n&amp;ecirc;́u cứ đ&amp;ecirc;̉ c&amp;ocirc; &amp;acirc;́y th&amp;ecirc;́ này, thì sớm mu&amp;ocirc;̣n cũng sẽ ch&amp;ecirc;́t.&lt;/p&gt;

&lt;p&gt;[H&amp;atilde;y để sức mạnh của Thần biến đổi th&amp;agrave;nh một vụ m&amp;ugrave;a bội thu, v&amp;agrave; ban cho ngươi đ&amp;atilde; mất sức khỏe để đứng dậy l&amp;ecirc;n lần nữa. 『Chữa trị』]&lt;/p&gt;

&lt;p&gt;D&amp;ugrave; sao, t&amp;ocirc;i sẽ d&amp;ugrave;ng ph&amp;eacute;p hạng sơ cấp để chữa khỏi c&amp;ocirc; ấy một t&amp;yacute;.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ kh&amp;ocirc;ng c&amp;ograve;n thổ huyết nữa. Giờ thì chắc kh&amp;ocirc;ng còn trong tình trạng sắp ch&amp;ecirc;́t r&amp;ocirc;̀i&amp;hellip;. mong là vậy.&lt;/p&gt;

&lt;p&gt;[Ư&amp;hellip;.. Vẫn c&amp;ograve;n đau, g-gi&amp;uacute;p t&amp;ocirc;i chữa trị&amp;hellip;..A.]&lt;/p&gt;

&lt;p&gt;[T&amp;ocirc;i kh&amp;ocirc;ng l&amp;agrave;m nữa đ&amp;acirc;u. Nếu t&amp;ocirc;i chữa trị cho c&amp;ocirc;, c&amp;ocirc; sẽ lại để bị hắn đ&amp;aacute; túi bụi lần nữa th&amp;ocirc;i. Tự đi m&amp;agrave; thi triển ph&amp;eacute;p thuật.]&lt;/p&gt;

&lt;p&gt;[L-l&amp;agrave;m sao t&amp;ocirc;i c&amp;oacute; thể d&amp;ugrave;ng&amp;hellip;..ph&amp;eacute;p đ&amp;oacute;?]&lt;/p&gt;

&lt;p&gt;[Nếu c&amp;ocirc; học được từ trước, c&amp;ocirc; c&amp;oacute; thể d&amp;ugrave;ng n&amp;oacute; b&amp;acirc;y giờ.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i thốt một c&amp;acirc;u như thế v&amp;agrave; di chuyển về ph&amp;iacute;a c&amp;aacute;nh cửa.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đặt tai t&amp;ocirc;i v&amp;agrave;o c&amp;aacute;nh cửa, muốn nghe chúng n&amp;oacute;i g&amp;igrave;.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i c&amp;agrave;ng nghĩ nhiều, t&amp;ocirc;i c&amp;agrave;ng cảm thấy chuyện n&amp;agrave;y k&amp;igrave; lạ. Bất kể như thế n&amp;agrave;o th&amp;igrave; đ&amp;aacute;nh C&amp;ocirc; chủ đến b&amp;aacute;n sống b&amp;aacute;n chết thì đã l&amp;agrave; qu&amp;aacute; trớn rồi.&lt;/p&gt;

&lt;p&gt;[Vậy, ch&amp;uacute;ng ta sẽ b&amp;aacute;n cho g&amp;atilde; lần trước đ&amp;oacute;?]&lt;/p&gt;

&lt;p&gt;[Kh&amp;ocirc;ng. Tốt nhất n&amp;ecirc;n hỏi tiền chuộc.]&lt;/p&gt;

&lt;p&gt;[Liệu ch&amp;uacute;ng ta c&amp;oacute; bị ph&amp;aacute;t hiện kh&amp;ocirc;ng?]&lt;/p&gt;

&lt;p&gt;[Kh&amp;ocirc;ng sao. Ch&amp;uacute;ng ta sẽ bỏ tr&amp;ocirc;́n đến đất nước kh&amp;aacute;c.]&lt;/p&gt;

&lt;p&gt;Dựa v&amp;agrave;o lời ch&amp;uacute;ng n&amp;oacute;i, ch&amp;uacute;ng thật sự c&amp;oacute; kế hoạch b&amp;aacute;n ch&amp;uacute;ng t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Nhờ người quen giả vờ tấn c&amp;ocirc;ng c&amp;ocirc; g&amp;aacute;i, rốt cuộc th&amp;igrave;, ch&amp;uacute;ng t&amp;ocirc;i lại gặp phải h&amp;agrave;ng thật. C&amp;aacute;i tiến triển g&amp;igrave; thế n&amp;agrave;y?&lt;/p&gt;

&lt;p&gt;C&amp;oacute; g&amp;igrave; sai ở đ&amp;acirc;y sao? Chẳng lẽ những người đáng lẽ bắt cóc chúng t&amp;ocirc;i đã bị thay th&amp;ecirc;́ bằng bọn này? Bọn chúng đ&amp;atilde; mu&amp;ocirc;́n bắt cóc tr&amp;uacute;ng t&amp;ocirc;i ngay từ ban đầu? Hay l&amp;agrave; Philip thật sự c&amp;oacute; &amp;yacute; định b&amp;aacute;n con g&amp;aacute;i của cậu ta đi?&lt;/p&gt;

&lt;p&gt;Khả năng cuối c&amp;ugrave;ng kh&amp;ocirc;ng thể l&amp;agrave; thật được.&lt;/p&gt;

&lt;p&gt;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;..G&amp;igrave; cũng được. T&amp;ocirc;i sẽ kh&amp;ocirc;ng nghĩ về điều đ&amp;oacute; b&amp;acirc;y giờ. Bất kể điều g&amp;igrave; đi chăng nữa, mục ti&amp;ecirc;u ban đ&amp;acirc;̀u cũng kh&amp;ocirc;ng thay đổi.&lt;/p&gt;

&lt;p&gt;Giờ chỉ c&amp;oacute; thiếu y&amp;ecirc;́u t&amp;ocirc;́ duy nhất l&amp;agrave; 『t&amp;iacute;nh an to&amp;agrave;n』&lt;/p&gt;

&lt;p&gt;[So s&amp;aacute;nh với b&amp;aacute;n, thì tiền chuộc cao hơn phải kh&amp;ocirc;ng?]&lt;/p&gt;

&lt;p&gt;[D&amp;ugrave; sao, ch&amp;uacute;ng ta n&amp;ecirc;n quyết định trước tối nay.]&lt;/p&gt;

&lt;p&gt;[Bất kể có chọn phương án g&amp;igrave;, th&amp;igrave; cũng đều được cả.]&lt;/p&gt;

&lt;p&gt;Ch&amp;uacute;ng c&amp;oacute; vẻ như đang b&amp;agrave;n bạc với nhau n&amp;ecirc;n b&amp;aacute;n ch&amp;uacute;ng t&amp;ocirc;i hay đ&amp;ograve;i tiền chuộc từ ng&amp;agrave;i l&amp;atilde;nh ch&amp;uacute;a. Xem ra chúng c&amp;oacute; kế hoạch rời khỏi đ&amp;acirc;y tối nay.&lt;/p&gt;

&lt;p&gt;Vậy th&amp;igrave; t&amp;ocirc;i n&amp;ecirc;n di chuyển khi trời vẫn c&amp;ograve;n s&amp;aacute;ng.&lt;/p&gt;

&lt;p&gt;[Được rồi.]&lt;/p&gt;

&lt;p&gt;Nhưng, t&amp;ocirc;i phải l&amp;agrave;m g&amp;igrave; đ&amp;acirc;y?&lt;/p&gt;

&lt;p&gt;Ph&amp;aacute; cửa v&amp;agrave; đ&amp;aacute;nh bại bọn bắt c&amp;oacute;c ư? Sau khi đ&amp;aacute;nh bại ch&amp;uacute;ng ra b&amp;atilde;, C&amp;ocirc; chủ sẽ k&amp;iacute;nh trọng t&amp;ocirc;i&amp;hellip;&amp;hellip;.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng, t&amp;ocirc;i nghĩ sự vi&amp;ecirc;̣c sẽ kh&amp;ocirc;ng di&amp;ecirc;̃n ra đúng như thế&amp;ndash;.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đoán chắc là c&amp;ocirc; &amp;acirc;́y sẽ cảm thấy mình mới là người đ&amp;atilde; chiến thắng, kệ cho việc bản th&amp;acirc;n c&amp;ocirc; ấy còn đang bị tr&amp;oacute;i.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; cuối c&amp;ugrave;ng, c&amp;ocirc; ấy sẽ nghĩ rằng là bạo lực chỉ c&amp;oacute; thể d&amp;ugrave;ng bạo lực để giải quyết, rồi sau này lại ti&amp;ecirc;́p tục đánh đ&amp;acirc;̣p t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cần phải l&amp;agrave;m c&amp;ocirc; ấy cảm thấy th&amp;acirc;̣t bất lực.&lt;/p&gt;

&lt;p&gt;(&amp;hellip;&amp;hellip;..&amp;Agrave;. Cũng c&amp;oacute; khả năng l&amp;agrave; m&amp;igrave;nh kh&amp;ocirc;ng thể đ&amp;aacute;nh bại bọn bắt c&amp;oacute; được)&lt;/p&gt;

&lt;p&gt;Nếu như bọn bắt c&amp;oacute;c mạnh như Paul thì t&amp;ocirc;i nh&amp;acirc;́t định sẽ thua.&lt;/p&gt;

&lt;p&gt;Sau đó thì t&amp;ocirc;i sẽ bị giết. Chắc chắn là v&amp;acirc;̣y.&lt;/p&gt;

&lt;p&gt;Được rồi. D&amp;ugrave; thế n&amp;agrave;o đi nữa, ch&amp;uacute;ng t&amp;ocirc;i sẽ trốn tho&amp;aacute;t khỏi đ&amp;acirc;y mà kh&amp;ocirc;ng đ&amp;ecirc;̉ bọn chúng phát hi&amp;ecirc;̣n.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i nh&amp;igrave;n về đằng sau v&amp;agrave; kiểm tra t&amp;igrave;nh trạng của c&amp;ocirc; chủ.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ấy trừng mắt với vẻ giận dữ.&lt;/p&gt;

&lt;p&gt;Hừm.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i sẽ l&amp;agrave;m tròn việc đã được giao bằng mọi gi&amp;aacute;.&lt;/p&gt;

&lt;p&gt;Đầu ti&amp;ecirc;n, t&amp;ocirc;i d&amp;ugrave;ng ph&amp;eacute;p hệ đất v&amp;agrave; lửa để bịt k&amp;iacute;n ổ kh&amp;oacute;a cửa. Rồi, từ từ d&amp;ugrave;ng ph&amp;eacute;p hệ lửa l&amp;agrave;m tan chảy nó, làm cho nắm cửa kh&amp;ocirc;ng vặn được.&lt;/p&gt;

&lt;p&gt;Và r&amp;ocirc;̀i c&amp;aacute;nh cửa n&amp;agrave;y sẽ kh&amp;ocirc;ng thể mở ra được, nhưng nó cũng kh&amp;ocirc;ng trụ được nếu nó chịu tác đ&amp;ocirc;̣ng mạnh. Dù sao vi&amp;ecirc;̣c này cũng chỉ l&amp;agrave; để đ&amp;ecirc;̀ ph&amp;ograve;ng cho chắc th&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Sau đ&amp;oacute;, t&amp;ocirc;i sẽ đi thẳng đến ch&amp;ocirc;̃ cửa sổ, Mặc d&amp;ugrave; t&amp;ocirc;i đã c&amp;acirc;n nhắc đ&amp;ecirc;́n vi&amp;ecirc;̣c tập trung và nung cháy m&amp;ocirc;̣t cái thanh sắt bằng ph&amp;eacute;p hệ lửa, nhưng nghĩ lại thì cái cửa s&amp;ocirc;̉ sẽ trở n&amp;ecirc;n quá nóng và t&amp;ocirc;i đành phải bỏ ý định này.&lt;/p&gt;

&lt;p&gt;Sau khi thử c&amp;aacute;ch kh&amp;aacute;c, bằng vi&amp;ecirc;̣c d&amp;ugrave;ng ph&amp;eacute;p hệ nước v&amp;agrave; thay đổi đất xung quanh cái cửa sổ bằng b&amp;ugrave;n, thì t&amp;ocirc;i&amp;nbsp; đã th&amp;agrave;nh c&amp;ocirc;ng trong việc gỡ cả thanh sắt xuống. C&amp;aacute;i lỗ tr&amp;ocirc;ng lớn đủ để một đứa trẻ c&amp;oacute; thể chui qua.&lt;/p&gt;

&lt;p&gt;Như vậy là t&amp;ocirc;i đã tạo ra được m&amp;ocirc;̣t l&amp;ocirc;́i thoát.&lt;/p&gt;

&lt;p&gt;[C&amp;ocirc; chủ à, c&amp;oacute; vẻ như lần n&amp;agrave;y ch&amp;uacute;ng ta đ&amp;atilde; bị bắt c&amp;oacute;c bởi kẻ thù của ng&amp;agrave;i l&amp;atilde;nh ch&amp;uacute;a, v&amp;agrave; ch&amp;uacute;ng đang b&amp;agrave;n với nhau tối nay sẽ d&amp;acirc;̃n th&amp;ecirc;m đồng bọn của ch&amp;uacute;ng đ&amp;ecirc;̉ tra tấn ch&amp;uacute;ng ta đến chết.]&lt;/p&gt;

&lt;p&gt;[Cậu đang&amp;hellip;.n&amp;oacute;i dối&amp;hellip;..phải kh&amp;ocirc;ng?]&lt;/p&gt;

&lt;p&gt;Tất nhi&amp;ecirc;n l&amp;agrave; t&amp;ocirc;i đang n&amp;oacute;i dối.&lt;/p&gt;

&lt;p&gt;Nhưng mặt c&amp;ocirc; chủ xanh ngắt lu&amp;ocirc;n.&lt;/p&gt;

&lt;p&gt;[T&amp;ocirc;i vẫn chưa muốn chết ở đ&amp;acirc;y, n&amp;ecirc;n t&amp;ocirc;i xin tự chạy trốn một m&amp;igrave;nh &amp;hellip;&amp;hellip; Tạm biệt nhé.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i trèo l&amp;ecirc;n tr&amp;ecirc;n chỗ cửa s&amp;ocirc;̉ trước đó.&lt;/p&gt;

&lt;p&gt;V&amp;agrave;o thời điểm n&amp;agrave;y, c&amp;oacute; một tiếng nói ph&amp;aacute;t ra từ ph&amp;iacute;a c&amp;aacute;nh cửa.&lt;/p&gt;

&lt;p&gt;[&amp;Ecirc;, sao giờ lại kh&amp;ocirc;ng mở được cửa r&amp;ocirc;̀i!? Quái gì kì v&amp;acirc;̣y!?]&lt;/p&gt;

&lt;p&gt;Ti&amp;ecirc;́ng đ&amp;acirc;̣p cửa thình thình vang l&amp;ecirc;n từ phía b&amp;ecirc;n kia của cánh cửa.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ấy quay đầu lại, nh&amp;igrave;n về ph&amp;iacute;a c&amp;aacute;nh cửa với vẻ sợ h&amp;atilde;i t&amp;ocirc;̣t cùng, v&amp;agrave; r&amp;ocirc;̀i lại quay sang nh&amp;igrave;n t&amp;ocirc;i lần nữa, cứ th&amp;ecirc;́ lặp đi lặp lại.&lt;/p&gt;

&lt;p&gt;[A&amp;hellip;.Đ, đừng bỏ t&amp;ocirc;i lại m&amp;agrave;&amp;hellip;..Cứu t&amp;ocirc;i với&amp;hellip;.]&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;i chà. Sao giờ c&amp;ocirc; lại bình tĩnh nhanh th&amp;ecirc;́. Ngạc nhi&amp;ecirc;n chưa.&lt;/p&gt;

&lt;p&gt;Mà dù sao thì C&amp;ocirc; chủ v&amp;acirc;̃n là người tr&amp;acirc;̀n mắt thịt, gặp tình cảnh này có sợ hãi cũng phải.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i lập tức đi đến gần C&amp;ocirc; chủ v&amp;agrave; n&amp;oacute;i thầm v&amp;agrave;o tai c&amp;ocirc; ấy.&lt;/p&gt;

&lt;p&gt;[&amp;hellip;..Trước khi ch&amp;uacute;ng ta về nh&amp;agrave;, c&amp;ocirc; phải tuy&amp;ecirc;̣t đ&amp;ocirc;́i nghe lời t&amp;ocirc;i. C&amp;ocirc; c&amp;oacute; thể hứa kh&amp;ocirc;ng?]&lt;/p&gt;

&lt;p&gt;[Được được, t&amp;ocirc;i sẽ nghe, t&amp;ocirc;i sẽ nghe c&amp;acirc;̣u mà!]&lt;/p&gt;

&lt;p&gt;[C&amp;ocirc; có th&amp;ecirc;̉ hứa sẽ kh&amp;ocirc;ng la hét &amp;acirc;̀m ĩ được kh&amp;ocirc;ng? Giờ Ghyslaine kh&amp;ocirc;ng có ở đ&amp;acirc;y đ&amp;acirc;u!]&lt;/p&gt;

&lt;p&gt;[T&amp;ocirc;i hứa, t&amp;ocirc;i hứa&amp;hellip;&amp;hellip;..N, Nhanh l&amp;ecirc;n, đang tới&amp;hellip;&amp;hellip;&amp;hellip;..ch&amp;uacute;ng, đang tới&amp;hellip;&amp;hellip;&amp;hellip;..!]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ gật đầu lia địa.&lt;/p&gt;

&lt;p&gt;Cả khu&amp;ocirc;n mặt c&amp;ocirc; ấy tr&amp;agrave;n đầy sự sợ h&amp;atilde;i v&amp;agrave; lo lắng. Ho&amp;agrave;n to&amp;agrave;n kh&amp;aacute;c với thời điểm m&amp;agrave; c&amp;ocirc; ấy đ&amp;aacute;nh t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Điều quan trọng l&amp;agrave; c&amp;ocirc; ấy hi&amp;ecirc;̉u được cảm giác của người bị đ&amp;aacute;nh.&lt;/p&gt;

&lt;p&gt;[Nếu c&amp;ocirc; mà kh&amp;ocirc;ng giữ lời, t&amp;ocirc;i sẽ bỏ c&amp;ocirc; lại lu&amp;ocirc;n đấy.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i n&amp;oacute;i v&amp;acirc;̣y theo c&amp;aacute;ch lạnh l&amp;ugrave;ng hết sức c&amp;oacute; thể, trong khi t&amp;ocirc;i v&amp;ugrave;i l&amp;acirc;́p c&amp;aacute;nh cửa bằng ph&amp;eacute;p hệ đất.&lt;/p&gt;

&lt;p&gt;Rồi t&amp;ocirc;i đốt d&amp;acirc;y thừng bằng ph&amp;eacute;p hệ lửa, v&amp;agrave; ho&amp;agrave;n to&amp;agrave;n chữa trị cho C&amp;ocirc; chủ bằng ph&amp;eacute;p thu&amp;acirc;̣t hạng trung cấp.&lt;/p&gt;

&lt;p&gt;Cuối c&amp;ugrave;ng, t&amp;ocirc;i đ&amp;atilde; tr&amp;egrave;o ra ngo&amp;agrave;i cửa sổ v&amp;agrave; k&amp;eacute;o C&amp;ocirc; chủ l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;Ph&amp;acirc;̀n 2:&lt;/p&gt;

&lt;p&gt;Sau khi chạy được m&amp;ocirc;̣t lúc, t&amp;ocirc;i nhận ra rằng đ&amp;acirc;y l&amp;agrave; th&amp;agrave;nh phố kh&amp;aacute;c.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng c&amp;oacute; tường thành. Nh&amp;acirc;́t định đ&amp;acirc;y kh&amp;ocirc;ng phải l&amp;agrave; Roa.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng r&amp;ocirc;̣ng như một ng&amp;ocirc;i l&amp;agrave;ng, nhưng c&amp;oacute; thể coi nơi đ&amp;acirc;y l&amp;agrave; một thị trấn nhỏ.&lt;/p&gt;

&lt;p&gt;Nếu giờ t&amp;ocirc;i kh&amp;ocirc;ng sớm thực hi&amp;ecirc;̣n bước ti&amp;ecirc;́p theo, thì chúng t&amp;ocirc;i sẽ sớm bị bắt v&amp;ecirc;̀ mất.&lt;/p&gt;

&lt;p&gt;[Ph&amp;ugrave;. Chạy xa cỡ này là an toàn r&amp;ocirc;̀i.]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ lớn ti&amp;ecirc;́ng nói.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ấy nghĩ l&amp;agrave; c&amp;ocirc; ấy đã an to&amp;agrave;n r&amp;ocirc;̀i ư?&lt;/p&gt;

&lt;p&gt;[Kh&amp;ocirc;ng phải l&amp;agrave; c&amp;ocirc; đ&amp;atilde; hứa sẽ kh&amp;ocirc;ng được lớn ti&amp;ecirc;́ng trước khi ch&amp;uacute;ng ta về đến nh&amp;agrave; sao?]&lt;/p&gt;

&lt;p&gt;[Hừm! Sao ta phải giữ lời chứ!?]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ thản nhi&amp;ecirc;n nói v&amp;acirc;̣y.&lt;/p&gt;

&lt;p&gt;Hừ, cái con nhỏ n&amp;agrave;yyyyy.&lt;/p&gt;

&lt;p&gt;[L&amp;agrave; vậy sao? Vậy th&amp;igrave; t&amp;ocirc;i xin phép đi m&amp;ocirc;̣t mình v&amp;ecirc;̀. Tạm biệt nhé.]&lt;/p&gt;

&lt;p&gt;[Hừm!]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ khịt mũi như thể kh&amp;ocirc;ng thèm quan t&amp;acirc;m v&amp;agrave; quay người đi. Ngay l&amp;uacute;c đ&amp;oacute;, có một tiếng gầm ph&amp;aacute;t ra từ xa.&lt;/p&gt;

&lt;p&gt;[Bọn &amp;ocirc;n con! Ch&amp;uacute;ng m&amp;agrave;y chạy đi đ&amp;acirc;u rồi hả!?]&lt;/p&gt;

&lt;p&gt;Chắc là ch&amp;uacute;ng đ&amp;atilde; đạp tung được cánh cửa, th&amp;acirc;́y chúng t&amp;ocirc;i bi&amp;ecirc;́n m&amp;acirc;́t n&amp;ecirc;n kiểm tra cửa s&amp;ocirc;̉, nh&amp;acirc;̣n th&amp;acirc;́y thanh sắt đ&amp;atilde; biến mất n&amp;ecirc;n chúng hi&amp;ecirc;̉u ra rằng ch&amp;uacute;ng t&amp;ocirc;i đ&amp;atilde; trốn thoát v&amp;agrave; giờ thì đang truy đu&amp;ocirc;̉i ch&amp;uacute;ng t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;[&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;A.]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ h&amp;eacute;t một tiếng nhỏ, và chạy theo t&amp;ocirc;i ngay lập tức.&lt;/p&gt;

&lt;p&gt;[T&amp;ocirc;i vừa n&amp;atilde;y chỉ đ&amp;ugrave;a th&amp;ocirc;i, T&amp;ocirc;i sẽ kh&amp;ocirc;ng lớn ti&amp;ecirc;́ng nữa đ&amp;acirc;u. Hãy d&amp;acirc;̃n t&amp;ocirc;i v&amp;ecirc;̀ nhà đi.]&lt;/p&gt;

&lt;p&gt;[T&amp;ocirc;i kh&amp;ocirc;ng phải l&amp;agrave; người hầu của c&amp;ocirc; chủ v&amp;agrave; cũng kh&amp;ocirc;ng phải l&amp;agrave; n&amp;ocirc; lệ của c&amp;ocirc; chủ.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i v&amp;acirc;̃n cảm thấy hơi tức v&amp;ecirc;̀ cái th&amp;aacute;i độ vừa r&amp;ocirc;̀i.&lt;/p&gt;

&lt;p&gt;[C, c&amp;aacute;i g&amp;igrave;, kh&amp;ocirc;ng phải cậu l&amp;agrave; gia sư của t&amp;ocirc;i sao?]&lt;/p&gt;

&lt;p&gt;[C&amp;ocirc; đang nhầm l&amp;acirc;̃n g&amp;igrave; sao?]&lt;/p&gt;

&lt;p&gt;[Ế?]&lt;/p&gt;

&lt;p&gt;[Chính vì ban đ&amp;acirc;̀u c&amp;ocirc; chủ kh&amp;ocirc;ng hài lòng với t&amp;ocirc;i, n&amp;ecirc;n là giờ t&amp;ocirc;i v&amp;acirc;̃n chưa ch&amp;iacute;nh thức được thu&amp;ecirc;.]&lt;/p&gt;

&lt;p&gt;[T&amp;ocirc;i, t&amp;ocirc;i sẽ thu&amp;ecirc; cậu&amp;hellip;&amp;hellip;&amp;hellip;.]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ấy quay đ&amp;acirc;̀u đi ch&amp;ocirc;̃ khác và nói v&amp;acirc;̣y, trong khi tỏ ra mi&amp;ecirc;̃n cưỡng.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cần đảm bảo chắc là c&amp;ocirc; ấy sẽ nghe lời.&lt;/p&gt;

&lt;p&gt;[N&amp;oacute;i mi&amp;ecirc;̣ng th&amp;igrave; l&amp;agrave; th&amp;ecirc;́. Nhưng một khi về đến dinh thự, c&amp;ocirc; sẽ lại kh&amp;ocirc;ng giữ lời như mới vừa trước đ&amp;oacute;, đ&amp;uacute;ng kh&amp;ocirc;ng?]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i c&amp;ocirc;́ gắng lạnh lùng hết sức c&amp;oacute; thể.&lt;/p&gt;

&lt;p&gt;R&amp;ocirc;̀i thẳng thừng nói v&amp;acirc;̣y.&lt;/p&gt;

&lt;p&gt;Nhưng với giọng điệu như vậy th&amp;igrave; t&amp;ocirc;i kh&amp;ocirc;ng nghĩ c&amp;ocirc; c&amp;oacute; thể thực hi&amp;ecirc;n lời hứa.&lt;/p&gt;

&lt;p&gt;[T&amp;ocirc;i sẽ kh&amp;ocirc;ng làm v&amp;acirc;̣y nữa. T&amp;ocirc;i sẽ kh&amp;ocirc;ng ph&amp;aacute; vỡ lời hứa nữa đ&amp;acirc;u&amp;hellip;&amp;hellip;Giúp t&amp;ocirc;i đi mà&amp;hellip;..]&lt;/p&gt;

&lt;p&gt;[Nếu c&amp;ocirc; hứa kh&amp;ocirc;ng lớn ti&amp;ecirc;́ng v&amp;agrave; nghe theo lời t&amp;ocirc;i n&amp;oacute;i, c&amp;ocirc; c&amp;oacute; thể đi theo t&amp;ocirc;i.]&lt;/p&gt;

&lt;p&gt;[T&amp;ocirc;i, t&amp;ocirc;i hiểu rồi.]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ ngoan ngo&amp;atilde;n g&amp;acirc;̣t đ&amp;acirc;̀u.&lt;/p&gt;

&lt;p&gt;Tốt lắm.&lt;/p&gt;

&lt;p&gt;Vậy th&amp;igrave;, t&amp;ocirc;i sẽ đi đến bước tiếp theo.&lt;/p&gt;

&lt;p&gt;Đầu ti&amp;ecirc;n. T&amp;ocirc;i sẽ lấy 5 đồng xu Asuran lớn từ quần l&amp;oacute;t của mình, l&amp;agrave; to&amp;agrave;n bộ t&amp;agrave;i sản của t&amp;ocirc;i hiện giờ. Một đồng xu = 1/10 gi&amp;aacute; của một đồng bạc. Khoản tiền này dù có vẻ hơi ít. Nhưng cũng đủ dùng cho chuy&amp;ecirc;́n đi sắp tới.&lt;/p&gt;

&lt;p&gt;[H&amp;atilde;y theo t&amp;ocirc;i.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đi khỏi cái hướng ph&amp;aacute;t ra tiếng la hét giận dữ v&amp;agrave; đến cổng thị trấn.&lt;/p&gt;

&lt;p&gt;Ở c&amp;aacute;nh cổng, c&amp;oacute; một người l&amp;iacute;nh g&amp;aacute;c lười biếng đang đứng ở th&amp;aacute;p canh.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đ&amp;atilde; đưa m&amp;ocirc;t đồng xu cho t&amp;ecirc;n đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;[Nếu c&amp;oacute; ai hỏi t&amp;igrave;m ch&amp;uacute;ng ch&amp;aacute;u, xin h&amp;atilde;y n&amp;oacute;i với họ l&amp;agrave; ch&amp;uacute;ng ch&amp;aacute;u đ&amp;atilde; đi khỏi th&amp;agrave;nh phố rồi.]&lt;/p&gt;

&lt;p&gt;[Hử? C&amp;aacute;i g&amp;igrave;? Nh&amp;oacute;c? Ta hiểu rồi, nh&amp;oacute;c đang chơi trốn t&amp;igrave;m đấy &amp;agrave;? Hừm, cũng nhiều tiền đ&amp;acirc;́y&amp;hellip;&amp;hellip;. Nh&amp;oacute;c từ một gia đ&amp;igrave;nh qu&amp;yacute; tộc n&amp;agrave;o đấy &amp;agrave;? Chắc là vậy r&amp;ocirc;̀i&amp;hellip;.]&lt;/p&gt;

&lt;p&gt;[Xin h&amp;atilde;y l&amp;agrave;m như lời ch&amp;aacute;u dặn.]&lt;/p&gt;

&lt;p&gt;[Ừ. Ta biết rồi.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i thấy anh ta trả lời c&amp;oacute; vẻ hời hợt, nhưng chí ít thì vi&amp;ecirc;̣c này cũng sẽ gi&amp;uacute;p ch&amp;uacute;ng t&amp;ocirc;i giữ ch&amp;acirc;n bọn chúng được một &amp;iacute;t thời gian.&lt;/p&gt;

&lt;p&gt;Sau đó ch&amp;uacute;ng t&amp;ocirc;i đi tới khu vực xe ngựa c&amp;ocirc;ng cộng. T&amp;ocirc;i đ&amp;atilde; x&amp;aacute;c nhận được giá đ&amp;ecirc;̉ xe đi đến th&amp;agrave;nh. T&amp;ocirc;i cũng kiểm tra cả nơi chúng t&amp;ocirc;i đang đứng hiện tại.&lt;/p&gt;

&lt;p&gt;[Thị trấn này được gọi l&amp;agrave; Widin, nằm cách thành ph&amp;ocirc;́ Roa hai thị tr&amp;acirc;́n.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i th&amp;igrave; thầm v&amp;agrave;o tai C&amp;ocirc; chủ,&lt;/p&gt;

&lt;p&gt;Xem ra c&amp;ocirc; ấy đúng là mu&amp;ocirc;́n giữ lời hứa, n&amp;ecirc;n là đã th&amp;igrave; thầm lại với t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;[Sao cậu biết?]&lt;/p&gt;

&lt;p&gt;[Kh&amp;ocirc;ng phải được viết ngay đ&amp;acirc;y sao?]&lt;/p&gt;

&lt;p&gt;[T&amp;ocirc;i kh&amp;ocirc;ng bi&amp;ecirc;́t đọc&amp;hellip;..]&lt;/p&gt;

&lt;p&gt;Rất tốt. Rất tốt.&lt;/p&gt;

&lt;p&gt;[Nếu như c&amp;ocirc; mà bi&amp;ecirc;́t đọc bi&amp;ecirc;́t vi&amp;ecirc;́t thì mọi vi&amp;ecirc;̣c sẽ trở n&amp;ecirc;n thu&amp;acirc;̣n ti&amp;ecirc;̣n hơn đó. Bởi v&amp;igrave; c&amp;aacute;ch sử dụng xe vận chuyển c&amp;ocirc;ng cộng cũng ngay ở đ&amp;acirc;y này.]&lt;/p&gt;

&lt;p&gt;Thật t&amp;igrave;nh. Chỉ trong v&amp;ograve;ng một ng&amp;agrave;y th&amp;ocirc;i mà bọn chúng đã mang chúng t&amp;ocirc;i được tới đ&amp;acirc;y.&lt;/p&gt;

&lt;p&gt;Phải tới một nơi xa lạ như th&amp;ecirc;́ này khiến t&amp;ocirc;i cảm thấy th&amp;acirc;̣t b&amp;acirc;́t an. B&amp;ecirc;̣nh sợ ra ngoài của t&amp;ocirc;i sẽ bắt đầu ph&amp;aacute;t t&amp;aacute;c m&amp;acirc;́t.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng. Kh&amp;ocirc;ng. T&amp;ocirc;i đ&amp;atilde; kh&amp;aacute;c so c&amp;aacute;i h&amp;ocirc;̀i m&amp;agrave; t&amp;ocirc;i c&amp;ograve;n kh&amp;ocirc;ng biết địa đi&amp;ecirc;̉m xin vi&amp;ecirc;̣c ở đ&amp;acirc;u.&lt;/p&gt;

&lt;p&gt;Khi t&amp;ocirc;i c&amp;ograve;n đang nghĩ ngợi linh tinh, t&amp;ocirc;i cảm thấy tiếng gầm giận dữ đang đến gần.&lt;/p&gt;

&lt;p&gt;[Bọn khốn! Ch&amp;uacute;ng m&amp;agrave;y trốn đ&amp;acirc;u rồi!? Ra đ&amp;acirc;y cho tao!]&lt;/p&gt;

&lt;p&gt;[Trốn ngay th&amp;ocirc;i&amp;hellip;.!]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i k&amp;eacute;o C&amp;ocirc; chủ n&amp;acirc;́p đằng sau nhà v&amp;ecirc;̣ sinh tại khu vực chờ, v&amp;agrave; kh&amp;oacute;a cửa lại.&lt;/p&gt;

&lt;p&gt;Tiếng bước ch&amp;acirc;n ph&amp;aacute;t ra từ b&amp;ecirc;n ngo&amp;agrave;i.&lt;/p&gt;

&lt;p&gt;[Bọn m&amp;agrave;y đ&amp;atilde; đi đ&amp;acirc;u rồi hả?]&lt;/p&gt;

&lt;p&gt;[Đừng nghĩ l&amp;agrave; bọn m&amp;agrave;y c&amp;oacute; thể trốn!]&lt;/p&gt;

&lt;p&gt;Woa. Thật l&amp;agrave; đ&amp;aacute;ng sợ.&lt;/p&gt;

&lt;p&gt;Chẳng lẽ các người kh&amp;ocirc;ng th&amp;ecirc;̉ nói khẽ hơn m&amp;ocirc;̣t chút trong khi đang đi t&amp;igrave;m sao? D&amp;ugrave;ng giọng tử tế th&amp;igrave; kh&amp;eacute;o t&amp;ocirc;i sẽ ra khỏi chỗ trốn đấy. N&amp;oacute;i đùa vậy th&amp;ocirc;i chứ kh&amp;ocirc;ng đời nào t&amp;ocirc;i ra ngoài đ&amp;acirc;u.&lt;/p&gt;

&lt;p&gt;Cuối c&amp;ugrave;ng th&amp;igrave; tiếng nói của chúng cũng ở xa dần. T&amp;ocirc;i c&amp;oacute; thể tạm thời nghỉ ngơi được rồi.&lt;/p&gt;

&lt;p&gt;Nhưng t&amp;ocirc;i kh&amp;ocirc;ng thể đ&amp;ecirc;̉ mất cảnh gi&amp;aacute;c được. Đ&amp;ocirc;i khi người ta thường hay b&amp;acirc;́t chợt quay v&amp;ecirc;̀ ch&amp;ocirc;̃ cũ ki&amp;ecirc;̉m tra lại nhiều lần.&lt;/p&gt;

&lt;p&gt;[&amp;hellip;C, ch&amp;uacute;ng ta sẽ ổn chứ?]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ đang che mi&amp;ecirc;̣ng lại bằng đ&amp;ocirc;i bàn tay run cầm cập. Cả người c&amp;ocirc; &amp;acirc;́y đang b&amp;ocirc;̀n ch&amp;ocirc;̀n lo sợ.&lt;/p&gt;

&lt;p&gt;[Ừm, Nếu bị ph&amp;aacute;t hiện, ch&amp;uacute;ng ta sẽ phải li&amp;ecirc;̀u mạng chiến đấu với chúng đ&amp;acirc;́y.]&lt;/p&gt;

&lt;p&gt;[T&amp;ocirc;i, t&amp;ocirc;i hiểu&amp;hellip;&amp;hellip;&amp;hellip;..Được rồi&amp;hellip;&amp;hellip;.!]&lt;/p&gt;

&lt;p&gt;[Nhưng, ch&amp;uacute;ng ta cũng kh&amp;ocirc;ng để đ&amp;aacute;nh bại bon ch&amp;uacute;ng.]&lt;/p&gt;

&lt;p&gt;[Vậy, vậy sao&amp;hellip;&amp;hellip;.?]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ b&amp;ocirc;̃ng tràn đ&amp;acirc;̀y nhi&amp;ecirc;̣t huy&amp;ecirc;́t trở lại, n&amp;ecirc;n là t&amp;ocirc;i phải nhắc khéo c&amp;ocirc; &amp;acirc;́y m&amp;ocirc;̣t chút.&lt;/p&gt;

&lt;p&gt;Nếu c&amp;ocirc; ấy đột nhi&amp;ecirc;n x&amp;ocirc;ng vào và chi&amp;ecirc;́n đ&amp;acirc;́u với ch&amp;uacute;ng thì sẽ rắc r&amp;ocirc;́i to m&amp;acirc;́t.&lt;/p&gt;

&lt;p&gt;[Nhưng mà vừa nãy, khi t&amp;ocirc;i nh&amp;igrave;n gi&amp;aacute; cước chuy&amp;ecirc;́n xe, t&amp;ocirc;i đ&amp;atilde; thấy rằng ch&amp;uacute;ng ta sẽ c&amp;acirc;̀n phải đổi xe ngựa hai lần khi ch&amp;uacute;ng ta đi từ đ&amp;acirc;y.]&lt;/p&gt;

&lt;p&gt;[&amp;hellip;&amp;hellip;&amp;hellip;..Đổi sao?]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ bi&amp;ecirc;̉u l&amp;ocirc;̣ vẻ mặt như l&amp;agrave; đang hỏi &amp;ldquo;Th&amp;igrave; sao.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;[Bắt đ&amp;acirc;̀u từ 8 giờ sáng, cứ m&amp;ocirc;̃i 2 ti&amp;ecirc;́ng là lại có m&amp;ocirc;̣t chi&amp;ecirc;́c xe ngựa khởi hành, t&amp;ocirc;̉ng c&amp;ocirc;̣ng 5 chuy&amp;ecirc;́n t&amp;acirc;́t cả. Các thị trấn kh&amp;aacute;c cũng hoạt đ&amp;ocirc;̣ng tương tự. Và phải m&amp;acirc;́t 3 giờ đ&amp;ocirc;̀ng h&amp;ocirc;̀ đ&amp;ecirc;̉ đ&amp;ecirc;́n được thị tr&amp;acirc;́n k&amp;ecirc;́ ti&amp;ecirc;́p. B&amp;acirc;y giờ xe thứ 4 sắp khởi hành. Nghĩa l&amp;agrave;&amp;hellip;&amp;hellip;]&lt;/p&gt;

&lt;p&gt;[Nghĩa l&amp;agrave;?]&lt;/p&gt;

&lt;p&gt;[Kể cả nếu ch&amp;uacute;ng ta tới thị trấn tiếp theo, sẽ kh&amp;ocirc;ng c&amp;oacute; xe ngựa n&amp;agrave;o tới Roa. Ch&amp;uacute;ng ta sẽ c&amp;acirc;̀n phải ở một đ&amp;ecirc;m ở thị trấn tiếp theo.]&lt;/p&gt;

&lt;p&gt;[!&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;T&amp;ocirc;i, t&amp;ocirc;i hiểu, a.]&lt;/p&gt;

&lt;p&gt;Tr&amp;ocirc;ng c&amp;ocirc; chủ như là mu&amp;ocirc;́n nói to v&amp;acirc;̣y, nhưng c&amp;ocirc; ấy đã cố kiềm chế.&lt;/p&gt;

&lt;p&gt;Cẩn thận. Đừng c&amp;oacute; tạo tiếng ồn lớn, được kh&amp;ocirc;ng?&lt;/p&gt;

&lt;p&gt;[T&amp;ocirc;i c&amp;oacute; 4 đồng xu lớn Asuran để đi từ đ&amp;acirc;y đến thị trấn tiếp theo, nghỉ một đ&amp;ecirc;m ở đ&amp;oacute;, v&amp;agrave; từ đ&amp;oacute; đi tới Roa, với s&amp;ocirc;́ tiền như vậy sẽ vừa đủ.]&lt;/p&gt;

&lt;p&gt;[Vừa đủ&amp;hellip;&amp;hellip;..cũng đủ phải kh&amp;ocirc;ng.]&lt;/p&gt;

&lt;p&gt;[Ừ. Đủ.]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ thở ph&amp;agrave;o nhẹ nh&amp;otilde;m.&lt;/p&gt;

&lt;p&gt;Nhưng giờ kh&amp;ocirc;ng phải l&amp;uacute;c để nghỉ ngơi.&lt;/p&gt;

&lt;p&gt;[Sẽ đủ nếu như ch&amp;uacute;ng ta kh&amp;ocirc;ng bị lừa tiền.]&lt;/p&gt;

&lt;p&gt;[Lừa tiền&amp;hellip;..?]&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; l&amp;agrave; g&amp;igrave; vậy? C&amp;ocirc; chủ đang bi&amp;ecirc;̉u l&amp;ocirc;̣ vẻ ngạc nhi&amp;ecirc;n đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;C&amp;oacute; lẽ c&amp;ocirc; ấy chưa bao giờ sử dụng tiền của bản th&amp;acirc;n để mua thứ g&amp;igrave; đ&amp;oacute; trước kia.&lt;/p&gt;

&lt;p&gt;[&amp;Ocirc;ng chủ nh&amp;agrave; trọ v&amp;agrave; trạm xe sẽ nghĩ l&amp;agrave; ch&amp;uacute;ng ta kh&amp;ocirc;ng bi&amp;ecirc;́t đếm v&amp;igrave; ch&amp;uacute;ng ta l&amp;agrave; trẻ con. Rồi họ sẽ kh&amp;ocirc;ng đưa ra đúng giá. L&amp;uacute;c đ&amp;oacute; mà xảy ra, ch&amp;uacute;ng ta c&amp;oacute; thể chỉ ra lỗi sai của họ, v&amp;agrave; họ sẽ phải tính đúng giá cho ch&amp;uacute;ng ta. Nhưng nếu ch&amp;uacute;ng ta kh&amp;ocirc;ng biết c&amp;aacute;ch t&amp;iacute;nh toán&amp;hellip;..]&lt;/p&gt;

&lt;p&gt;[Chuyện g&amp;igrave; sẽ xảy ra?]&lt;/p&gt;

&lt;p&gt;[Th&amp;igrave; ch&amp;uacute;ng ta sẽ kh&amp;ocirc;ng thể bắt chuy&amp;ecirc;́n xe ngựa cu&amp;ocirc;́i được, v&amp;agrave; sớm mu&amp;ocirc;̣n ch&amp;uacute;ng ta sẽ bị bắt bởi bọn ch&amp;uacute;ng&amp;hellip;&amp;hellip;]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ lại run b&amp;acirc;̀n b&amp;acirc;̣t lần nữa.&lt;/p&gt;

&lt;p&gt;Chắc là mu&amp;ocirc;́n đi v&amp;ecirc;̣ sinh đ&amp;acirc;y mà.&lt;/p&gt;

&lt;p&gt;[C&amp;ocirc; chủ. Nhà v&amp;ecirc;̣ sinh ở ngay kia.]&lt;/p&gt;

&lt;p&gt;[T&amp;ocirc;i, t&amp;ocirc;i biết rồi.]&lt;/p&gt;

&lt;p&gt;[Vậy, t&amp;ocirc;i sẽ đi ra ngoài xem t&amp;igrave;nh h&amp;igrave;nh một l&amp;uacute;c.]&lt;/p&gt;

&lt;p&gt;Ngay lúc t&amp;ocirc;i chu&amp;acirc;̉n bị ra khỏi nhà v&amp;ecirc;̣ sinh, tay &amp;aacute;o của t&amp;ocirc;i đ&amp;atilde; bị k&amp;eacute;o lại.&lt;/p&gt;

&lt;p&gt;[Đ-Đừng đi.]&lt;/p&gt;

&lt;p&gt;Sau khi được chứng ki&amp;ecirc;́n c&amp;ocirc; &amp;acirc;́y đi v&amp;ecirc;̣ sinh, chúng t&amp;ocirc;i cùng ra khỏi nhà v&amp;ecirc;̣ sinh.&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Nh&amp;acirc;n ti&amp;ecirc;̣n đ&amp;acirc;y, nhà v&amp;ecirc;̣ sinh của đ&amp;acirc;́t nước này dùng b&amp;ocirc;̀n c&amp;acirc;̀u x&amp;ocirc;̉m.&lt;/p&gt;

&lt;p&gt;Bọn chúng c&amp;oacute; vẻ đ&amp;atilde; đi rồi.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cũng kh&amp;ocirc;ng rõ li&amp;ecirc;̣u chúng đang tìm chúng t&amp;ocirc;i ở ngoài thị tr&amp;acirc;́n, hay là v&amp;acirc;̃n còn ở trong thị tr&amp;acirc;́n.&lt;/p&gt;

&lt;p&gt;Nếu ch&amp;uacute;ng t&amp;ocirc;i bị ph&amp;aacute;t hiện, t&amp;ocirc;i sẽ đành phải dùng mọi loại phép mà t&amp;ocirc;i bi&amp;ecirc;́t đ&amp;ecirc;̉ v&amp;ocirc; hi&amp;ecirc;̣u hóa bọn chúng.&lt;/p&gt;

&lt;p&gt;C&amp;acirc;̀u mong là t&amp;ocirc;i có th&amp;ecirc;̉ đánh bại bọn chúng.&lt;/p&gt;

&lt;p&gt;Sau đó, lúc đ&amp;ecirc;́n giờ khởi hành, ch&amp;uacute;ng t&amp;ocirc;i đưa tiền cho l&amp;aacute;i xe v&amp;agrave; l&amp;ecirc;n xe ngựa đ&amp;ecirc;̉ tới thị tr&amp;acirc;́n k&amp;ecirc;́ ti&amp;ecirc;́p.&lt;/p&gt;

&lt;p&gt;Ph&amp;acirc;̀n 3:&lt;/p&gt;

&lt;p&gt;Ch&amp;uacute;ng t&amp;ocirc;i cuối c&amp;ugrave;ng đ&amp;atilde; đến thị tr&amp;acirc;́n k&amp;ecirc;́ ti&amp;ecirc;́p mà kh&amp;ocirc;ng gặp phải rắc r&amp;ocirc;́i gì, qua đ&amp;ecirc;m ở m&amp;ocirc;̣t căn nhà trọ t&amp;ocirc;̀i tàn và ngủ tr&amp;ecirc;n những chi&amp;ecirc;́c giường rơm.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ c&amp;oacute; vẻ lo sợ tới mức kh&amp;ocirc;ng thể ngủ được.&lt;/p&gt;

&lt;p&gt;Mỗi khi c&amp;ocirc; ấy nghe thấy một tiếng động, c&amp;ocirc; ấy lại chổm dậy v&amp;agrave; nh&amp;igrave;n ra ph&amp;iacute;a c&amp;aacute;nh cửa trong sợ h&amp;atilde;i. Sau một l&amp;uacute;c c&amp;ocirc; ấy kh&amp;ocirc;ng thấy c&amp;oacute; g&amp;igrave;, thì c&amp;ocirc; &amp;acirc;́y thở ph&amp;agrave;o nhẹ nh&amp;otilde;m &amp;mdash;&amp;mdash;-Cứ lặp đi lặp lại như vậy.&lt;/p&gt;

&lt;p&gt;Đến ng&amp;agrave;y h&amp;ocirc;m sau, ch&amp;uacute;ng t&amp;ocirc;i bắt chiếc xe đầu ti&amp;ecirc;n trong ng&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;Mắt c&amp;ocirc; chủ đang đỏ cả l&amp;ecirc;n. C&amp;oacute; lẽ l&amp;agrave; do thiếu ngủ, nhưng c&amp;ocirc; ấy kh&amp;ocirc;ng d&amp;aacute;m nhắm mắt lại v&amp;agrave; lu&amp;ocirc;n cảnh gi&amp;aacute;c nh&amp;igrave;n về ph&amp;iacute;a sau xe ngựa.&lt;/p&gt;

&lt;p&gt;Thỉnh thoảng c&amp;oacute; v&amp;agrave;i chi&amp;ecirc;́c xe ngựa đang chạy từ đằng sau, nhưng tất cả đều kh&amp;ocirc;ng phải l&amp;agrave; bọn bắt c&amp;oacute;c.&lt;/p&gt;

&lt;p&gt;C&amp;oacute; lẽ l&amp;acirc;u kh&amp;ocirc;ng tìm được chúng t&amp;ocirc;i n&amp;ecirc;n là ch&amp;uacute;ng đ&amp;atilde; bỏ cuộc rồi.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đoán là v&amp;acirc;̣y.&lt;/p&gt;

&lt;p&gt;Sau khi đi qua mức tường ki&amp;ecirc;n cố của th&amp;agrave;nh phố, ch&amp;uacute;ng t&amp;ocirc;i c&amp;oacute; thể thấy t&amp;ograve;a dinh thự của lãnh chúa từ đằng xa, v&amp;agrave; trong lòng t&amp;ocirc;i bắt đ&amp;acirc;̀u c&amp;oacute; cảm gi&amp;aacute;c an to&amp;agrave;n.&lt;/p&gt;

&lt;p&gt;Trong đ&amp;acirc;̀u t&amp;ocirc;i v&amp;ocirc; thức nghĩ rằng đã v&amp;ecirc;̀ được đ&amp;ecirc;́n đ&amp;acirc;y thì an toàn r&amp;ocirc;̀i.&lt;/p&gt;

&lt;p&gt;Sau khi rời khỏi chi&amp;ecirc;́c xe ngựa, chúng t&amp;ocirc;i đi v&amp;ecirc;̀ phía dinh thự, từng bước ch&amp;acirc;n đ&amp;ecirc;̀u mau mau chóng chóng. Dù sao thì sau khi phải qua đ&amp;ecirc;m tr&amp;ecirc;n chi&amp;ecirc;́c giường rơm khó chịu và ng&amp;ocirc;̀i tr&amp;ecirc;n chi&amp;ecirc;́c xe ngựa li&amp;ecirc;n tục xóc tr&amp;ecirc;n đường, t&amp;ocirc;i đã m&amp;ecirc;̣t mỏi lắm r&amp;ocirc;̀i.&lt;/p&gt;

&lt;p&gt;Và như th&amp;ecirc;̉ nắm được đi&amp;ecirc;̉m y&amp;ecirc;́u này &amp;mdash; C&amp;ocirc; chủ đã bị bắt vào trong ngõ hẻm.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đã qu&amp;aacute; mất cảnh gi&amp;aacute;c.&lt;/p&gt;

&lt;p&gt;[&amp;hellip;&amp;hellip;.Ế?]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i chỉ mới nhận ra sau 2 gi&amp;acirc;y.&lt;/p&gt;

&lt;p&gt;Mắt t&amp;ocirc;i chỉ mới rời đi c&amp;oacute; 2 gi&amp;acirc;y, v&amp;agrave; trong khoảng thời gian đ&amp;oacute;, C&amp;ocirc; chủ đ&amp;atilde; biến mất.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ấy như đã biến v&amp;agrave;o trong kh&amp;ocirc;ng kh&amp;iacute; v&amp;acirc;̣y. Ở cu&amp;ocirc;́i t&amp;acirc;̀m nhìn của t&amp;ocirc;i có th&amp;acirc;́y một mi&amp;ecirc;́ng vải rách c&amp;ugrave;ng m&amp;agrave;u với bộ v&amp;aacute;y của c&amp;ocirc; chủ bị kẹt tr&amp;ecirc;n tường.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i lập tức đuổi theo.&lt;/p&gt;

&lt;p&gt;Khi v&amp;agrave;o trong ng&amp;otilde; hẻm, t&amp;ocirc;i thấy b&amp;oacute;ng d&amp;aacute;ng hai người đang mang theo C&amp;ocirc; chủ.&lt;/p&gt;

&lt;p&gt;[Hừm!]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i lập tức thi triển ph&amp;eacute;p hệ đất để tạo một bức tường.&lt;/p&gt;

&lt;p&gt;Từ tay t&amp;ocirc;i, ph&amp;eacute;p thuật đã tạo ra một bức tường đất lớn ngay trước mặt ch&amp;uacute;ng.&lt;/p&gt;

&lt;p&gt;Ch&amp;uacute;ng bu&amp;ocirc;̣c phải dừng lại bởi bức tường đất bỗng nhi&amp;ecirc;n hiện ra trước mắt chúng.&lt;/p&gt;

&lt;p&gt;[C&amp;aacute;i qu&amp;aacute;i g&amp;igrave; thế n&amp;agrave;y!?]&lt;/p&gt;

&lt;p&gt;[Ư ư ư!]&lt;/p&gt;

&lt;p&gt;Miệng c&amp;ocirc; chủ đ&amp;atilde; bị bịt lại. Và c&amp;ocirc; &amp;acirc;́y đang chảy nước mắt.&lt;/p&gt;

&lt;p&gt;Ch&amp;uacute;ng quả l&amp;agrave; quá quen với những vi&amp;ecirc;̣c bắt cóc người, đ&amp;ecirc;̉ mà bịt được miệng c&amp;ocirc; ấy trong v&amp;agrave;i gi&amp;acirc;y.&lt;/p&gt;

&lt;p&gt;M&amp;ocirc;̣t b&amp;ecirc;n má của c&amp;ocirc; &amp;acirc;́y đang đỏ ửng, có lẽ đã bị chúng đánh m&amp;ocirc;̣t phát.&lt;/p&gt;

&lt;p&gt;Đối thủ của t&amp;ocirc;i l&amp;agrave; hai người, v&amp;agrave; đ&amp;ecirc;̀u là đ&amp;agrave;n &amp;ocirc;ng.&lt;/p&gt;

&lt;p&gt;Một trong số ch&amp;uacute;ng l&amp;agrave; kẻ dã man đ&amp;atilde; đánh đ&amp;aacute; chúng t&amp;ocirc;i. Kẻ c&amp;ograve;n lại chắc l&amp;agrave; kẻ đ&amp;atilde; n&amp;oacute;i chuyện c&amp;ugrave;ng với t&amp;ecirc;n kia. Cả 2 bọn ch&amp;uacute;ng đ&amp;ecirc;̀u tr&amp;ocirc;ng giống bọn cướp, và đều c&amp;oacute; kiếm ở vùng eo.&lt;/p&gt;

&lt;p&gt;[Vậy ra l&amp;agrave; m&amp;agrave;y. Đáng lẽ mày đã có th&amp;ecirc;̉ lẳng lặng v&amp;ecirc;̀ nhà an toàn&amp;hellip;..]&lt;/p&gt;

&lt;p&gt;Cả hai bọn ch&amp;uacute;ng đều ngạc nhi&amp;ecirc;n khi thấy bức tường hiện ra, nhưng khi ch&amp;uacute;ng quay lại nhìn th&amp;acirc;́y t&amp;ocirc;i, ch&amp;uacute;ng mỉm cười.&lt;/p&gt;

&lt;p&gt;Kẻ dã man kia lại gần về ph&amp;iacute;a t&amp;ocirc;i m&amp;agrave; kh&amp;ocirc;ng ch&amp;uacute;t cảnh gi&amp;aacute;c.&lt;/p&gt;

&lt;p&gt;Kẻ c&amp;ograve;n lại đang giữ C&amp;ocirc; chủ m&amp;ocirc;̣t tay. Liệu c&amp;ograve;n c&amp;oacute; kẻ kh&amp;aacute;c nữa kh&amp;ocirc;ng&amp;hellip;&amp;hellip;?&lt;/p&gt;

&lt;p&gt;Tạm thời, t&amp;ocirc;i sẽ thi triển quả cầu lửa nhỏ ở ng&amp;oacute;n tay đ&amp;ecirc;̉ hăm dọa chúng.&lt;/p&gt;

&lt;p&gt;[C&amp;aacute;i g&amp;igrave;? Ch&amp;ecirc;́t ti&amp;ecirc;̣t!]&lt;/p&gt;

&lt;p&gt;Nh&amp;igrave;n thấy vậy, kẻ dã man đã r&amp;uacute;t kiếm ra.&lt;/p&gt;

&lt;p&gt;Kẻ c&amp;ograve;n lại cảnh gi&amp;aacute;c, r&amp;uacute;t kiếm đặt v&amp;agrave;o cổ c&amp;ocirc; chủ, v&amp;agrave; từ từ r&amp;uacute;t lui.&lt;/p&gt;

&lt;p&gt;[Thằng &amp;ocirc;n con. Tao kh&amp;ocirc;ng biết sao m&amp;agrave;y c&amp;oacute; thể b&amp;igrave;nh tĩnh được như thế. M&amp;agrave;y chắc chắn l&amp;agrave; một ph&amp;aacute;t sư h&amp;ocirc;̣ v&amp;ecirc;̣&amp;hellip;&amp;hellip;.. thảo nào m&amp;agrave; m&amp;agrave;y c&amp;oacute; thể chạy trốn được dễ d&amp;agrave;ng được như thế. Khốn kiếp. Tao đ&amp;atilde; bị lừa bởi vẻ b&amp;ecirc;̀ ngoài của m&amp;agrave;y! C&amp;oacute; phải m&amp;agrave;y l&amp;agrave; người Quỷ tộc kh&amp;ocirc;ng!]&lt;/p&gt;

&lt;p&gt;[T&amp;ocirc;i kh&amp;ocirc;ng phải l&amp;agrave; h&amp;ocirc;̣ v&amp;ecirc;̣ gì. T&amp;ocirc;i vẫn chưa được ch&amp;iacute;nh thức thu&amp;ecirc;.]&lt;/p&gt;

&lt;p&gt;Mặc d&amp;ugrave; t&amp;ocirc;i kh&amp;ocirc;ng phải l&amp;agrave; người thuộc quỷ tộc, nhưng t&amp;ocirc;i chẳng c&amp;acirc;̀n phải chỉnh lại cho đúng.&lt;/p&gt;

&lt;p&gt;[C&amp;aacute;i g&amp;igrave;? Vậy th&amp;igrave; sao m&amp;agrave;y lại cản trở bọn tao?]&lt;/p&gt;

&lt;p&gt;[Kh&amp;ocirc;ng, đáng ra sau chuy&amp;ecirc;̣n này là t&amp;ocirc;i sẽ được thu&amp;ecirc;.]&lt;/p&gt;

&lt;p&gt;[Ồ, mày là v&amp;igrave; tiền phải kh&amp;ocirc;ng?]&lt;/p&gt;

&lt;p&gt;V&amp;igrave; tiền.&lt;/p&gt;

&lt;p&gt;Hắn đã đ&amp;uacute;ng về chuyện tiền. T&amp;ocirc;i phải đi làm gia sư đ&amp;ecirc;̉ trang trải học ph&amp;iacute; ở trường đại học.&lt;/p&gt;

&lt;p&gt;[T&amp;ocirc;i kh&amp;ocirc;ng phủ nhận điều n&amp;agrave;y.]&lt;/p&gt;

&lt;p&gt;G&amp;oacute;c miệng t&amp;ecirc;n dã mãn nh&amp;iacute;ch l&amp;ecirc;n sau khi nghe t&amp;ocirc;i trả lời.&lt;/p&gt;

&lt;p&gt;[Vậy th&amp;igrave;, h&amp;atilde;y gi&amp;uacute;p bọn tao. Trong số các kh&amp;aacute;ch h&amp;agrave;ng của ch&amp;uacute;ng tao, c&amp;oacute; một t&amp;ecirc;n qu&amp;yacute; tộc biến th&amp;aacute;i muốn mua c&amp;aacute;c đứa con g&amp;aacute;i c&amp;oacute; địa vị cao trong x&amp;atilde; hội. Hoặc là đòi ti&amp;ecirc;̀n chuộc cũng được. Tao có nghe n&amp;oacute; con b&amp;eacute; này l&amp;agrave; đứa ch&amp;aacute;u g&amp;aacute;i y&amp;ecirc;u qu&amp;yacute; của l&amp;atilde;o l&amp;atilde;nh ch&amp;uacute;a. Vì nó mà lão nh&amp;acirc;́t định sẽ sẵn sàng trao b&amp;acirc;́t cứ thứ gì mà mày muốn.]&lt;/p&gt;

&lt;p&gt;[Ồ&amp;hellip;&amp;hellip;..]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i &amp;ocirc;̀ m&amp;ocirc;̣t ti&amp;ecirc;́ng tỏ ra như thể l&amp;agrave; đã bị h&amp;acirc;́p d&amp;acirc;̃n bởi lời mời, v&amp;agrave; mặt C&amp;ocirc; chủ bỗng xanh ngắt đi.&lt;/p&gt;

&lt;p&gt;C&amp;oacute; lẽ c&amp;ocirc; ấy đ&amp;atilde; biết trước chuy&amp;ecirc;̣n t&amp;ocirc;i trở th&amp;agrave;nh gia sư của c&amp;ocirc; ấy chỉ l&amp;agrave; để được thanh to&amp;aacute;n tiền học ph&amp;iacute; học đại học.&lt;/p&gt;

&lt;p&gt;[V&amp;acirc;̣y chính xác thì là bao nhi&amp;ecirc;u?]&lt;/p&gt;

&lt;p&gt;[Kh&amp;ocirc;ng chỉ l&amp;agrave; 1 hoặc 2 đồng v&amp;agrave;ng ti&amp;ecirc;̀n vặt mỗi th&amp;aacute;ng th&amp;ocirc;i đ&amp;acirc;u, m&amp;agrave; l&amp;agrave; cả một đống tiền 100 đồng v&amp;agrave;ng đ&amp;oacute;.]&lt;/p&gt;

&lt;p&gt;T&amp;ecirc;n dã man hu&amp;ecirc;nh hoang n&amp;oacute;i v&amp;acirc;̣y.&lt;/p&gt;

&lt;p&gt;Mặc d&amp;ugrave; t&amp;ocirc;i cũng kh&amp;ocirc;ng rõ s&amp;ocirc;́ ti&amp;ecirc;̀n đó nhi&amp;ecirc;̀u đ&amp;ecirc;́n mức nào.&lt;/p&gt;

&lt;p&gt;Ý của hắn như th&amp;ecirc;̉ là &amp;ldquo;1 tri&amp;ecirc;̣u y&amp;ecirc;n đó, nhi&amp;ecirc;̀u cực kì lu&amp;ocirc;n&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;Hắn đang hành xử như m&amp;ocirc;̣t đứa trẻ ti&amp;ecirc;̉u học v&amp;acirc;̣y.&lt;/p&gt;

&lt;p&gt;[H&amp;ecirc; h&amp;ecirc; h&amp;ecirc;. Nh&amp;oacute;c, m&amp;agrave;y tr&amp;ocirc;ng vẫn c&amp;ograve;n trẻ, nhưng thực ra m&amp;agrave;y đã nhi&amp;ecirc;̀u tuổi rồi đ&amp;uacute;ng kh&amp;ocirc;ng?&lt;/p&gt;

&lt;p&gt;[Hửm? Sao ngươi lại nghĩ vậy?]&lt;/p&gt;

&lt;p&gt;[Biết d&amp;ugrave;ng ph&amp;eacute;p thuật v&amp;agrave; giữ được th&amp;aacute;i độ điềm tĩnh, th&amp;ecirc;́ th&amp;ocirc;i l&amp;agrave; bọn tao biết. Quỷ tộc c&amp;oacute; những loại người như mày mà. M&amp;agrave;y chắc cũng gặp rắc rối với h&amp;igrave;nh d&amp;aacute;ng của m&amp;agrave;y đ&amp;uacute;ng kh&amp;ocirc;ng? Vậy th&amp;igrave; hẳn là mày cũng biết tầm quan trọng của đồng tiền như th&amp;ecirc;́ nào chứ?]&lt;/p&gt;

&lt;p&gt;[Hiểu rồi.]&lt;/p&gt;

&lt;p&gt;Dưới góc nhìn của kẻ lạ mặt như hắn thì t&amp;ocirc;i tr&amp;ocirc;ng gi&amp;ocirc;́ng người thu&amp;ocirc;̣c quỷ t&amp;ocirc;̣c sao.&lt;/p&gt;

&lt;p&gt;Quả thiệt. Tuổi thật của t&amp;ocirc;i đ&amp;uacute;ng l&amp;agrave; đã hơn 40 r&amp;ocirc;̀i.&lt;/p&gt;

&lt;p&gt;Đ&amp;uacute;ng đấy, trúng phóc r&amp;ocirc;̀i.&lt;/p&gt;

&lt;p&gt;Qu&amp;yacute; ng&amp;agrave;i du c&amp;ocirc;n giỏi lắm.&lt;/p&gt;

&lt;p&gt;[Phải đấy, sống ở c&amp;aacute;i tuổi n&amp;agrave;y, ta biết tiền n&amp;oacute; quan trọng đến mức n&amp;agrave;o. Ta thậm ch&amp;iacute; bị quẳng v&amp;agrave;o cái v&amp;ugrave;ng đất xa lạ này m&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; tiền trong tay.]&lt;/p&gt;

&lt;p&gt;[H&amp;ecirc; h&amp;ecirc; h&amp;ecirc;. M&amp;agrave;y thấy đ&amp;uacute;ng kh&amp;ocirc;ng nào?]&lt;/p&gt;

&lt;p&gt;Th&amp;ecirc;́ nhưng, ở cu&amp;ocirc;̣c s&amp;ocirc;́ng trước kia, t&amp;ocirc;i đ&amp;atilde; từng sống m&amp;ocirc;̣t cu&amp;ocirc;̣c s&amp;ocirc;́ng kh&amp;ocirc;ng lo &amp;acirc;u g&amp;igrave; nhiều.&lt;/p&gt;

&lt;p&gt;Gần 20 năm sống một cuộc đời NEET. Chơi đủ các visual novel người lớn v&amp;agrave; game tr&amp;ecirc;n internet. Cũng phải gần nửa cuộc đời rồi.&lt;/p&gt;

&lt;p&gt;Từ đ&amp;oacute; t&amp;ocirc;i đ&amp;atilde; học được một điều.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i có th&amp;ecirc;̉ phản bội c&amp;ocirc; chủ.&lt;/p&gt;

&lt;p&gt;Hoặc tạo &amp;acirc;́n tượng t&amp;ocirc;́t với c&amp;ocirc; &amp;acirc;́y bằng từ vi&amp;ecirc;̣c giúp c&amp;ocirc; &amp;acirc;́y b&amp;acirc;y giờ.&lt;/p&gt;

&lt;p&gt;[Th&amp;ecirc;́ nhưng, ta dám khẳng định rằng, c&amp;oacute; thứ c&amp;ograve;n quan hơn cả đồng tiền.]&lt;/p&gt;

&lt;p&gt;[Khỏi phải nói những lời đẹp đẽ!]&lt;/p&gt;

&lt;p&gt;[Ch&amp;uacute;ng đ&amp;acirc;u phải l&amp;agrave; lời đẹp đẽ g&amp;igrave;. Ngươi sẽ kh&amp;ocirc;ng thể mua được『Dere』bằng tiền.]&lt;/p&gt;

&lt;p&gt;&amp;Ocirc; kh&amp;ocirc;ng. T&amp;ocirc;i lỡ n&amp;oacute;i ra ý định th&amp;acirc;̣t của mình rồi.&lt;/p&gt;

&lt;p&gt;[Dere. Đ&amp;oacute; l&amp;agrave; c&amp;aacute;i g&amp;igrave;?]&lt;/p&gt;

&lt;p&gt;T&amp;ecirc;n dã man c&amp;oacute; vẻ hơi băn khoăn, nhưng xem ra thì hắn đã hi&amp;ecirc;̉u được rằng việc đ&amp;agrave;m ph&amp;aacute;n đ&amp;atilde; đổ b&amp;ecirc;̉. Nụ cười kh&amp;oacute; chịu của hắn đ&amp;atilde; biến mất, v&amp;agrave; hắn ta đặt thanh kiếm l&amp;ecirc;n cổ C&amp;ocirc; chủ với vẻ mặt nghi&amp;ecirc;m t&amp;uacute;c.&lt;/p&gt;

&lt;p&gt;[Con tin đang ở đ&amp;acirc;y. Mau vứt quả cầu lửa ở trong tay m&amp;agrave;y đi mau.]&lt;/p&gt;

&lt;p&gt;[&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;T&amp;ocirc;i vứt quả cầu l&amp;ecirc;n kh&amp;ocirc;ng trung nh&amp;eacute;?]&lt;/p&gt;

&lt;p&gt;[L&amp;agrave;m đi. Nhưng đừng c&amp;oacute; vứt v&amp;agrave;o bọn tao. Kể cả nếu m&amp;agrave;y c&amp;oacute; nhanh, m&amp;agrave;y cũng kh&amp;ocirc;ng thể n&amp;agrave;o nhanh bằng thanh kiếm tr&amp;ecirc;n tay tao được. Tao sẽ cắt cổ con &amp;ocirc;n n&amp;agrave;y lại v&amp;agrave; d&amp;ugrave;ng n&amp;oacute; l&amp;agrave;m c&amp;aacute;i khi&amp;ecirc;n đ&amp;acirc;́y.]&lt;/p&gt;

&lt;p&gt;Hắn kh&amp;ocirc;ng bắt t&amp;ocirc;i phải l&amp;agrave;m n&amp;oacute; tan biến đi. C&amp;oacute; lẽ hắn ta kh&amp;ocirc;ng biết.&lt;/p&gt;

&lt;p&gt;Phép thu&amp;acirc;̣t có ni&amp;ecirc;̣m chú hoạt đ&amp;ocirc;̣ng tự động cho đ&amp;ecirc;́n khi được bắn ra.&lt;/p&gt;

&lt;p&gt;Hắn ta kh&amp;ocirc;ng th&amp;ecirc;̉ hiểu phần n&amp;agrave;y nếu hắn ta chưa bao giờ học ph&amp;eacute;p thuật trước kia.&lt;/p&gt;

&lt;p&gt;[T&amp;ocirc;i biết rồi.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i điều khiển mana của quả cầu lửa trước khi bắn đi.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i tạo một loại cầu lửa đặc biệt, rồi bắn n&amp;oacute; đi với tiếng động k&amp;igrave; lạ k&amp;egrave;m theo.&lt;/p&gt;

&lt;p&gt;Một vụ nổ lớn đ&amp;atilde; xảy ra trong kh&amp;ocirc;ng kh&amp;iacute;.&lt;/p&gt;

&lt;p&gt;[C&amp;aacute;i!]&lt;/p&gt;

&lt;p&gt;[Wut!?]&lt;/p&gt;

&lt;p&gt;[Ư ư ư!?]&lt;/p&gt;

&lt;p&gt;Cùng thời đi&amp;ecirc;̉m ti&amp;ecirc;́ng n&amp;ocirc;̉ lớn vang đ&amp;ecirc;́n chói tai, cái ánh sáng làm chói mắt và lu&amp;ocirc;̀ng nhi&amp;ecirc;̣t nóng bỏng lan tỏa ra cả m&amp;ocirc;̣t vùng xung quanh.&amp;nbsp;&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đ&amp;atilde; bắt đầu chạy.&lt;/p&gt;

&lt;p&gt;Thi triển ph&amp;eacute;p khi chạy, t&amp;ocirc;i đ&amp;atilde; tạo 2 loại ph&amp;eacute;p m&amp;agrave; t&amp;ocirc;i thường hay d&amp;ugrave;ng.&lt;/p&gt;

&lt;p&gt;Tay phải l&amp;agrave; ph&amp;eacute;p hệ gi&amp;oacute; [Sóng ch&amp;acirc;n kh&amp;ocirc;ng].&lt;/p&gt;

&lt;p&gt;Tay tr&amp;aacute;i l&amp;agrave; ph&amp;eacute;p hệ đất [Đạn đ&amp;aacute;]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i bắn ch&amp;uacute;ng v&amp;agrave;o 2 t&amp;ecirc;n đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;[A!]&lt;/p&gt;

&lt;p&gt;Sóng ch&amp;acirc;n kh&amp;ocirc;ng chém đứt cánh tay của t&amp;ecirc;n dã man đang giữ C&amp;ocirc; chủ.&lt;/p&gt;

&lt;p&gt;[Ư!]&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ rơi khỏi tay t&amp;ecirc;n dã man v&amp;agrave; t&amp;ocirc;i bắt lấy c&amp;ocirc; ấy an to&amp;agrave;n. B&amp;ecirc;́ c&amp;ocirc; ấy như b&amp;ecirc;́ kiểu c&amp;ocirc;ng ch&amp;uacute;a vậy.&lt;/p&gt;

&lt;p&gt;[Chậc! Đừng c&amp;oacute; coi thường tao!]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i nh&amp;igrave;n t&amp;ecirc;n kia, v&amp;agrave; thấy hắn cắt đạn đ&amp;aacute; ra l&amp;agrave;m đ&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;[Ư a&amp;hellip;&amp;hellip;&amp;hellip;.]&lt;/p&gt;

&lt;p&gt;Chết tiệt. Hắn ta thực sự l&amp;agrave; đ&amp;atilde; cắt tảng đ&amp;aacute; làm đ&amp;ocirc;i. Mặc d&amp;ugrave; t&amp;ocirc;i kh&amp;ocirc;ng biết trường phái ki&amp;ecirc;́m thu&amp;acirc;̣t của hắn ta, nhưng xem ra hắn đúng là giỏi ki&amp;ecirc;́m thu&amp;acirc;̣t. Nếu hắn mà giỏi như Paul, th&amp;igrave; sẽ rắc rối đ&amp;acirc;y. T&amp;ocirc;i g&amp;acirc;̀n như kh&amp;ocirc;ng thể chiến thắng m&amp;ocirc;̣t đối thủ như hắn.&lt;/p&gt;

&lt;p&gt;[A a a a&amp;hellip;&amp;hellip;.!]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i sử dụng ph&amp;eacute;p h&amp;ecirc;̣ gi&amp;oacute; v&amp;agrave; lửa kết hợp với nhau v&amp;agrave; tạo n&amp;ecirc;n s&amp;oacute;ng xung k&amp;iacute;ch gần ch&amp;acirc;n mình, v&amp;agrave; bay về hướng ngược lại.&lt;/p&gt;

&lt;p&gt;S&amp;oacute;ng xung k&amp;iacute;ch n&amp;agrave;y đủ mạnh để khiến t&amp;ocirc;i cảm thấy như l&amp;agrave; xương ch&amp;acirc;n sắp g&amp;atilde;y tới nơi.&lt;/p&gt;

&lt;p&gt;Trong khoảnh khắc tiếp theo, thanh kiếm đ&amp;aacute;nh v&amp;agrave;o nơi t&amp;ocirc;i vừa bay qua trước đ&amp;oacute;. Lưỡi kiếm ch&amp;eacute;m qua ch&amp;oacute;p mũi của t&amp;ocirc;i, để lại &amp;acirc;m thanh gi&amp;oacute; bị cắt.&lt;/p&gt;

&lt;p&gt;Qu&amp;aacute; nguy hiểm.&lt;/p&gt;

&lt;p&gt;Nhưng hắn ta kh&amp;ocirc;ng nhanh bằng Paul. Vậy th&amp;igrave; t&amp;ocirc;i chỉ cần tập trung v&amp;agrave; xử l&amp;yacute; hắn ta. Dù sao thì t&amp;ocirc;i đã t&amp;acirc;̣p cách đ&amp;ocirc;́i phó với ki&amp;ecirc;́m sĩ v&amp;ocirc; s&amp;ocirc;́ l&amp;acirc;̀n trong đ&amp;acirc;̀u mình r&amp;ocirc;̀i. Nếu t&amp;ocirc;i cứ làm theo những g&amp;igrave; đ&amp;atilde; tập, t&amp;ocirc;i c&amp;oacute; thể sẽ xử l&amp;yacute; được hắn.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i chuẩn bị c&amp;acirc;u thần ch&amp;uacute; tiếp theo trong khi v&amp;acirc;̃n còn đang bay th&amp;acirc;́p.&lt;/p&gt;

&lt;p&gt;Đầu ti&amp;ecirc;n l&amp;agrave; một quả cầu lửa ngắm v&amp;agrave;o mặt t&amp;ecirc;n đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Tốc độ hơi chậm.&lt;/p&gt;

&lt;p&gt;[Chỉ thế th&amp;ocirc;i sao!]&lt;/p&gt;

&lt;p&gt;Hắn ta thấy r&amp;otilde; quả cầu lửa v&amp;agrave; giơ kiếm l&amp;ecirc;n chuẩn bị đối phó.&lt;/p&gt;

&lt;p&gt;Ngay khi hắn ta ra đ&amp;ocirc;̣ng tác ch&amp;eacute;m n&amp;oacute;, t&amp;ocirc;i d&amp;ugrave;ng ph&amp;eacute;p hệ nước v&amp;agrave; đất, tạo một b&amp;atilde;i c&amp;aacute;t l&amp;uacute;n dưới ch&amp;acirc;n hắn ta.&lt;/p&gt;

&lt;p&gt;Mặc d&amp;ugrave; hắn c&amp;oacute; thể xử l&amp;yacute; quả cầu lửa, đ&amp;ocirc;i ch&amp;acirc;n hắn ta ho&amp;agrave;n to&amp;agrave;n bị ch&amp;ocirc;n v&amp;ugrave;i trong đ&amp;ocirc;́ng b&amp;ugrave;n nhầy đ&amp;oacute;. Kh&amp;oacute;a ch&amp;acirc;n của hắn ta lại.&lt;/p&gt;

&lt;p&gt;[C&amp;aacute;i g&amp;igrave;!?]&lt;/p&gt;

&lt;p&gt;Rất tốt. Ch&amp;uacute;ng ta thắng rồi.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i đã chắc chắn vậy.&lt;/p&gt;

&lt;p&gt;Kẻ địch kh&amp;ocirc;ng th&amp;ecirc;̉ đu&amp;ocirc;̉i theo, v&amp;agrave; mặc d&amp;ugrave; hắn c&amp;oacute; thể xử l&amp;yacute; quả cầu lửa, thì t&amp;ocirc;i cũng đ&amp;atilde; tho&amp;aacute;t khỏi tầm với của ch&amp;uacute;ng r&amp;ocirc;̀i. Tuy là t&amp;ocirc;i còn phải b&amp;ecirc;́ C&amp;ocirc; chủ, một khi t&amp;ocirc;i đến nơi c&amp;oacute; người, thì sẽ l&amp;agrave; thắng lợi ho&amp;agrave;n to&amp;agrave;n. Đ&amp;ecirc;̉ đ&amp;ecirc;̀ phòng, t&amp;ocirc;i c&amp;oacute; thể k&amp;ecirc;u gọi gi&amp;uacute;p đỡ.&lt;/p&gt;

&lt;p&gt;&amp;mdash;&amp;mdash;- Ngay khi t&amp;ocirc;i còn đang nghĩ v&amp;acirc;̣y.&lt;/p&gt;

&lt;p&gt;[Đừng h&amp;ograve;ng chạy tho&amp;aacute;t!]&lt;/p&gt;

&lt;p&gt;T&amp;ecirc;n đ&amp;oacute; đột nhi&amp;ecirc;n phi thanh kiếm của hắn ta.&lt;/p&gt;

&lt;p&gt;Với cái hành đ&amp;ocirc;̣ng đó, b&amp;agrave;i học cũ của Paul bỗng hi&amp;ecirc;̣n l&amp;ecirc;n trong t&amp;acirc;m tr&amp;iacute; t&amp;ocirc;i. Kỹ thuật phi kiếm của trường phái Bắc-Thần nếu chẳng may ch&amp;acirc;n bị thương.&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; l&amp;agrave; kĩ thuật phi kiếm v&amp;agrave;o đối thủ ở khoảng c&amp;aacute;ch xa.&lt;/p&gt;

&lt;p&gt;Thanh kiếm bay về ph&amp;iacute;a t&amp;ocirc;i với tốc độ cao.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i v&amp;ocirc; thức nh&amp;acirc;̣n th&amp;acirc;́y rằng mình kh&amp;ocirc;ng thể né được thanh kiếm.&lt;/p&gt;

&lt;p&gt;Thanh kiếm bay như một cảnh quay chậm.&lt;/p&gt;

&lt;p&gt;Điểm đến l&amp;agrave; đầu của t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;mdash;&amp;mdash;&amp;mdash;&amp;mdash;&amp;mdash;&amp;mdash;&amp;mdash;&amp;ndash;Chết.&lt;/p&gt;

&lt;p&gt;C&amp;aacute;i từ [Chết] vụt hiện l&amp;ecirc;n trong t&amp;acirc;m tr&amp;iacute; t&amp;ocirc;i trong gi&amp;acirc;y lát.&lt;/p&gt;

&lt;p&gt;B&amp;ocirc;̃ng có một mái tóc m&amp;agrave;u n&amp;acirc;u tr&amp;agrave; bay vụt v&amp;ecirc;̀ phía trước của t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;C&amp;ugrave;ng thời điểm đó, thanh ki&amp;ecirc;́m đ&amp;ocirc;̣t nhi&amp;ecirc;n rơi xu&amp;ocirc;́ng đ&amp;acirc;́t tạo n&amp;ecirc;n ti&amp;ecirc;́ng keng.&lt;/p&gt;

&lt;p&gt;[Ế?]&lt;/p&gt;

&lt;p&gt;Ngay trước mắt t&amp;ocirc;i l&amp;agrave; lưng ai đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Một t&amp;acirc;́m lưng rộng lớn. T&amp;ocirc;i ngẩng đầu l&amp;ecirc;n v&amp;agrave; thấy đ&amp;ocirc;i tai thú của người tr&amp;ecirc;n đầu.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ấy l&amp;agrave; Ghyslaine Dedorudia.&lt;/p&gt;

&lt;p&gt;[Để phần c&amp;ograve;n lại cho ta.]&lt;/p&gt;

&lt;p&gt;Khi c&amp;ocirc; ấy n&amp;oacute;i vậy, trong khoảnh khắc tay c&amp;ocirc; ấy di chuyển thanh kiếm ở thắt lưng, &amp;mdash;&amp;mdash;-Một &amp;aacute;nh m&amp;agrave;u đỏ cắt ngang kh&amp;ocirc;ng kh&amp;iacute;.&lt;/p&gt;

&lt;p&gt;[&amp;hellip;&amp;hellip;.A?]&lt;/p&gt;

&lt;p&gt;Đầu t&amp;ecirc;n đ&amp;oacute; rơi xuống đống c&amp;aacute;t l&amp;uacute;n ở dưới đất.&lt;/p&gt;

&lt;p&gt;Mặc d&amp;ugrave; hắn ta ở rất xa. Mặc d&amp;ugrave; thanh kiếm kh&amp;ocirc;ng thể với đến đ&amp;oacute;.&amp;nbsp;&lt;/p&gt;

&lt;p&gt;[M, M&amp;agrave;y từ đ&amp;acirc;u đến &amp;hellip;&amp;hellip;..]&lt;/p&gt;

&lt;p&gt;Ngay trong khoảnh khắc đu&amp;ocirc;i của Ghyslaine cử động, đầu của t&amp;ecirc;n kh&amp;aacute;c đ&amp;atilde; rơi xuống dưới đất lu&amp;ocirc;n.&lt;/p&gt;

&lt;p&gt;Sầm. &amp;Acirc;m thanh vang l&amp;ecirc;n như vậy. T&amp;ocirc;i c&amp;oacute; thể nghe thấy từ đ&amp;acirc;y.&lt;/p&gt;

&lt;p&gt;T&amp;acirc;m tr&amp;iacute; t&amp;ocirc;i kh&amp;ocirc;ng thể theo kịp chuy&amp;ecirc;̣n vừa di&amp;ecirc;̃n ra.&lt;/p&gt;

&lt;p&gt;[&amp;hellip;&amp;hellip;..]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i nh&amp;igrave;n về hai cơ thể đã rơi sập xuống một v&amp;agrave;i m&amp;eacute;t kia trong ngơ ng&amp;aacute;c.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i kh&amp;ocirc;ng thể nh&amp;acirc;̣n ra đ&amp;acirc;y l&amp;agrave; hi&amp;ecirc;̣n thực. Chuyện g&amp;igrave; xảy ra vậy? T&amp;ocirc;i kh&amp;ocirc;ng biết nữa.&lt;/p&gt;

&lt;p&gt;Ế? Ch&amp;uacute;ng chết rồi sao?&lt;/p&gt;

&lt;p&gt;C&amp;acirc;u hỏi đ&amp;oacute; đang tr&amp;agrave;n ng&amp;acirc;̣p t&amp;acirc;m tr&amp;iacute; t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;[Hừm, Rudeus. Chỉ c&amp;oacute; 2 t&amp;ecirc;n địch th&amp;ocirc;i &amp;agrave;?]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i tỉnh người khi mình được hỏi.&lt;/p&gt;

&lt;p&gt;[&amp;Agrave;, v&amp;acirc;ng, cảm ơn, Ghyslaine, Nee-chan.]&lt;/p&gt;

&lt;p&gt;[Kh&amp;ocirc;ng cần thiết gọi l&amp;agrave; Nee-chan, Ghyslaine l&amp;agrave; đủ rồi.]&lt;/p&gt;

&lt;p&gt;Ghyslaine quay lại v&amp;agrave; gật đầu với t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;[Vừa nãy ta b&amp;ocirc;̃ng thấy một vụ nổ tr&amp;ecirc;n kh&amp;ocirc;ng, v&amp;agrave; ta đ&amp;atilde; tới đ&amp;acirc;y để kiểm tra xem như thế n&amp;agrave;o. Xem ra là ta đ&amp;atilde; quyết định đ&amp;uacute;ng.]&lt;/p&gt;

&lt;p&gt;[Nhanh qu&amp;aacute; đi. C&amp;ocirc; lại còn hạ bọn ch&amp;uacute;ng trong gi&amp;acirc;y lát nữa&amp;hellip;&amp;hellip;]&lt;/p&gt;

&lt;p&gt;Từ lúc t&amp;ocirc;i bắt đ&amp;acirc;̀u phóng phép thu&amp;acirc;̣t gi&amp;ocirc;́ng pháo hoa đ&amp;ecirc;́n giờ thì cũng chưa được tới m&amp;ocirc;̣t phút.&lt;/p&gt;

&lt;p&gt;Cho dù thế n&amp;agrave;o đi nữa th&amp;igrave; c&amp;ocirc; &amp;acirc;́y đã tới qu&amp;aacute; l&amp;agrave; nhanh.&lt;/p&gt;

&lt;p&gt;[Ta cũng ở gần đ&amp;acirc;y th&amp;ocirc;i, và vừa r&amp;ocirc;̀i cũng kh&amp;ocirc;ng nhanh lắm. B&amp;acirc;́t k&amp;ecirc;̉ chi&amp;ecirc;́n binh Dedorudia nào cũng có th&amp;ecirc;̉ nhanh chóng gi&amp;ecirc;́t đ&amp;ocirc;́i thủ như bọn chúng. Nhưng m&amp;agrave; Rudeus n&amp;agrave;y, đ&amp;acirc;y l&amp;agrave; lần đầu ti&amp;ecirc;n cậu chiến đấu với ki&amp;ecirc;́m phái Bắc-Thần à?]&lt;/p&gt;

&lt;p&gt;[Đ&amp;acirc;y l&amp;agrave; lần đầu ti&amp;ecirc;n ch&amp;aacute;u phải trải qua m&amp;ocirc;̣t cu&amp;ocirc;̣c chi&amp;ecirc;́n sinh tử.]&lt;/p&gt;

&lt;p&gt;[Vậy sao? Cậu phải cẩn thận hơn. Những kẻ như thế sẽ kh&amp;ocirc;ng từ bỏ dễ d&amp;agrave;ng cho đến khi ch&amp;uacute;ng chết đ&amp;acirc;u.]&lt;/p&gt;

&lt;p&gt;Đến khi ch&amp;uacute;ng chết.&lt;/p&gt;

&lt;p&gt;Thật vậy. T&amp;ocirc;i đ&amp;atilde; gần đến ngưỡng cửa của c&amp;aacute;i chết.&lt;/p&gt;

&lt;p&gt;Đ&amp;ocirc;i ch&amp;acirc;n t&amp;ocirc;i bắt đ&amp;acirc;̀u run rẩy khi nhớ lại khoảnh khắc thanh kiếm bay về ph&amp;iacute;a t&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;Một khoảnh khắc đứng trước cửa tử.&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; l&amp;agrave; chuyện vừa mới xảy ra.&lt;/p&gt;

&lt;p&gt;[Q,quay về nh&amp;agrave; th&amp;ocirc;i.]&lt;/p&gt;

&lt;p&gt;Nếu t&amp;ocirc;i chỉ phạm sai l&amp;acirc;̀m m&amp;ocirc;̣t chút th&amp;ocirc;i. Chắc chắn l&amp;agrave; t&amp;ocirc;i đ&amp;atilde; bị gi&amp;ecirc;́t rồi.&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i chưa từng nghĩ về chuyện n&amp;agrave;y trước kia. Đ&amp;acirc;y l&amp;agrave; thế giới kh&amp;aacute;c.&lt;/p&gt;

&lt;p&gt;Một thế giới của kiếm v&amp;agrave; ph&amp;eacute;p thuật.&lt;/p&gt;

&lt;p&gt;Chuyện g&amp;igrave; sẽ xảy ra nếu t&amp;ocirc;i lại chết lần nữa&amp;hellip;&amp;hellip;..?&lt;/p&gt;

&lt;p&gt;Nỗi sợ hãi v&amp;ocirc; hình n&amp;agrave;y khiến t&amp;ocirc;i cảm th&amp;acirc;́y run sợ.&lt;/p&gt;

&lt;p&gt;Ph&amp;acirc;̀n 4:&lt;/p&gt;

&lt;p&gt;Khi t&amp;ocirc;i trở về dinh thự, C&amp;ocirc; chủ ngồi ngay ở s&amp;agrave;n nh&amp;agrave; như thể l&amp;agrave; c&amp;ocirc; ấy đ&amp;atilde; hết năng lượng.&lt;/p&gt;

&lt;p&gt;Cả người c&amp;ocirc; &amp;acirc;́y đã m&amp;ecirc;̀m nhũn ra sau khi căng thẳng tan bi&amp;ecirc;́n.&lt;/p&gt;

&lt;p&gt;C&amp;aacute;c c&amp;ocirc; hầu nữ chạy đến ch&amp;ocirc;̃ C&amp;ocirc; chủ trong hoảng hốt.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ đẩy những b&amp;agrave;n tay đang dang ra giúp đỡ v&amp;agrave; run r&amp;acirc;̉y đứng dậy như một con nai con.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ấy đứng thẳng người với đ&amp;ocirc;i tay khoanh trước ngực.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; ấy c&amp;oacute; vẻ đ&amp;atilde; lấy lại được kh&amp;iacute; thế khi về đến nh&amp;agrave;.&lt;/p&gt;

&lt;p&gt;C&amp;aacute;c c&amp;ocirc; hầu bắt đ&amp;acirc;̀u dừng cử đ&amp;ocirc;̣ng khi thấy tư thế k&amp;igrave; lạ đó của c&amp;ocirc; ấy.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; chủ đột nhi&amp;ecirc;n chỉ ng&amp;oacute;n tay về phía t&amp;ocirc;i v&amp;agrave; n&amp;oacute;i to.&lt;/p&gt;

&lt;p&gt;[Như ta đ&amp;atilde; hứa l&amp;agrave; trước khi ch&amp;uacute;ng ta về đến nh&amp;agrave;! B&amp;acirc;y giờ ta c&amp;oacute; thể lớn ti&amp;ecirc;́ng được rồi nh&amp;eacute;!]&lt;/p&gt;

&lt;p&gt;[Ừm, v&amp;acirc;ng, b&amp;acirc;y giờ c&amp;ocirc; c&amp;oacute; thể lớn ti&amp;ecirc;́ng được rồi ạ, C&amp;ocirc; chủ.]&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i cảm thấy như l&amp;agrave; mình đ&amp;atilde; giáo dục thất bại sau khi nghe thấy c&amp;ocirc; ấy lớn ti&amp;ecirc;́ng.&lt;/p&gt;

&lt;p&gt;Toàn b&amp;ocirc;̣ mọi chuy&amp;ecirc;̣n vừa xảy ra v&amp;acirc;̃n chưa đủ đ&amp;ecirc;̉ làm c&amp;ocirc; chủ ngang bướng và hung dữ tỉnh ng&amp;ocirc;̣.&lt;/p&gt;

&lt;p&gt;Đặc biệt l&amp;agrave; sau trận chiến sống c&amp;ograve;n đ&amp;oacute;. Cả cơ thể t&amp;ocirc;i đang li&amp;ecirc;n tục run rẩy.&lt;/p&gt;

&lt;p&gt;C&amp;oacute; lẽ C&amp;ocirc; chủ đ&amp;atilde; nhận ra điều n&amp;agrave;y, và đang nghĩ rằng là t&amp;ocirc;i chỉ giỏi ăn n&amp;oacute;i th&amp;ocirc;i chứ thực ra thì rất yếu ớt.&lt;/p&gt;

&lt;p&gt;[Ta sẽ cho ph&amp;eacute;p ngươi được vinh dự gọi ta l&amp;agrave; Eris!]&lt;/p&gt;

&lt;p&gt;Th&amp;ecirc;́ nhưng, c&amp;acirc;u nói này của c&amp;ocirc; chủ làm t&amp;ocirc;i phải ngạc nhi&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;[Hả?]&lt;/p&gt;

&lt;p&gt;[Vì đ&amp;acirc;y là trường hợp đặc bi&amp;ecirc;̣t th&amp;ocirc;i đ&amp;acirc;́y nhé!]&lt;/p&gt;

&lt;p&gt;&amp;mdash;&amp;mdash;&amp;mdash; Nghĩa l&amp;agrave;. Vậy sao, Được r&amp;ocirc;̀i ư?&lt;/p&gt;

&lt;p&gt;T&amp;ocirc;i c&amp;oacute; thể l&amp;agrave;m gia sư ư?&lt;/p&gt;

&lt;p&gt;&amp;Ocirc;i hay quá, Thật đấy &amp;agrave;!? T, t&amp;ocirc;i đã th&amp;agrave;nh c&amp;ocirc;ng rồi sao? Tuyệt qu&amp;aacute;!&lt;/p&gt;

&lt;p&gt;[Cảm ơn c&amp;ocirc; rất nhiều, Eris-sama!]&lt;/p&gt;

&lt;p&gt;[Kh&amp;ocirc;ng cần phải th&amp;ecirc;m -sama! Cứ gọi ta l&amp;agrave; Eris!]&lt;/p&gt;

&lt;p&gt;Eris bắt chước cách nói của Ghyslaine, v&amp;agrave; duy tr&amp;igrave; cái tư thế đ&amp;oacute; trong khi ngồi phịch xuống đất.&lt;/p&gt;

&lt;p&gt;Như vậy là, T&amp;ocirc;i đ&amp;atilde; trở th&amp;agrave;nh Gia sư của Eris Boreas Greyrat.&lt;/p&gt;

&lt;p&gt;&lt;strong&gt;&amp;ndash;T&amp;igrave;nh trạng&amp;ndash;&lt;/strong&gt;&lt;/p&gt;

&lt;p&gt;T&amp;ecirc;n: Eris Boreas Greyrat&lt;/p&gt;

&lt;p&gt;Nghề nghiệp: Ch&amp;aacute;u g&amp;aacute;i của l&amp;atilde;nh ch&amp;uacute;a Fedoa&lt;/p&gt;

&lt;p&gt;T&amp;iacute;nh c&amp;aacute;ch: Hung dữ&lt;/p&gt;

&lt;p&gt;N&amp;oacute;i chuyện với c&amp;ocirc; ấy: Kh&amp;ocirc;ng phải l&amp;agrave; kh&amp;ocirc;ng thể&lt;/p&gt;

&lt;p&gt;Ng&amp;ocirc;n ngữ: Chỉ c&amp;oacute; thể viết được t&amp;ecirc;n c&amp;ocirc; ấy&lt;/p&gt;

&lt;p&gt;To&amp;aacute;n học: Chỉ ph&amp;eacute;p t&amp;iacute;nh cộng&lt;/p&gt;

&lt;p&gt;Ph&amp;eacute;p thuật: C&amp;oacute; hơi chút hứng th&amp;uacute;&lt;/p&gt;

&lt;p&gt;Kiếm thuật: Hạng sơ cấp trong trường phái Kiếm-Thần&lt;/p&gt;

&lt;p&gt;L&amp;ecirc;̃ nghi phép tắc: Cách ch&amp;agrave;o hỏi của nh&amp;agrave; Boreas&lt;/p&gt;

&lt;p&gt;Những người c&amp;ocirc; ấy th&amp;iacute;ch： &amp;Ocirc;ng nội, Ghyslaine&lt;/p&gt;
', 1, CAST(0x0000ADE4017004E2 AS DateTime), CAST(0x0000ADE4017004E2 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2091, 1069, 1039, N'Chương 1: Hành trình nơi tận cùng của thế giới', N'&lt;p&gt;Chương 1: Đứng Trước Thế Giới Mới&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i l&amp;agrave; Misimi Makoto.&lt;br /&gt;
&lt;br /&gt;
Học sinh năm hai tại trường trung học địa phương Nakatsuhara.&lt;br /&gt;
&lt;br /&gt;
C&amp;acirc;u lạc bộ m&amp;agrave; t&amp;ocirc;i tham gia đ&amp;oacute; l&amp;agrave; c&amp;acirc;u lạc bộ bắn cung v&amp;agrave; tất nhi&amp;ecirc;n thế mạnh của t&amp;ocirc;i l&amp;agrave; bắn cung.&lt;br /&gt;
&lt;br /&gt;
Thể chất th&amp;igrave; ở mức trung b&amp;igrave;nh th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Bề ngo&amp;agrave;i th&amp;igrave; c&amp;oacute; thể l&amp;agrave; kh&amp;ocirc;ng đẹp nhưng cũng kh&amp;ocirc;ng đến nỗi qu&amp;aacute; tệ.&lt;br /&gt;
&lt;br /&gt;
Sở th&amp;iacute;ch c&amp;oacute; phần n&amp;agrave;o giống otaku, d&amp;ugrave; vậy phạm vi n&amp;oacute; kh&amp;aacute; rộng n&amp;ecirc;n t&amp;ocirc;i thường thử tất cả mọi thứ c&amp;oacute; thể.&lt;br /&gt;
&lt;br /&gt;
Thật tuyệt nếu mọi thứ kh&amp;ocirc;ng thay đổi với những mũi t&amp;ecirc;n v&amp;agrave; c&amp;aacute;c bộ phim truyền h&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
Một phần đẹp trong cuộc sống của t&amp;ocirc;i l&amp;agrave; c&amp;aacute;i nh&amp;igrave;n về c&amp;aacute;ch sử dụng cung.&lt;br /&gt;
&lt;br /&gt;
D&amp;ugrave; thế, t&amp;ocirc;i nghĩ l&amp;agrave; t&amp;ocirc;i c&amp;oacute; một l&amp;iacute; lịch b&amp;igrave;nh thường.&lt;br /&gt;
&lt;br /&gt;
Một nơi như thế n&amp;agrave;y chắc chắn l&amp;agrave; kh&amp;ocirc;ng ph&amp;ugrave; hợp với cho t&amp;ocirc;i. Một v&amp;ugrave;ng hoang mạc m&amp;agrave;u n&amp;acirc;u đỏ trải d&amp;agrave;i trong tầm nh&amp;igrave;n của t&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Chỗ n&amp;agrave;y giống như những g&amp;igrave; m&amp;agrave; t&amp;ocirc;i đ&amp;atilde; được nghe tr&amp;ecirc;n lớp.&lt;br /&gt;
&lt;br /&gt;
Ng&amp;agrave;y th&amp;igrave; n&amp;oacute;ng, đ&amp;ecirc;m th&amp;igrave; lạnh, nơi n&amp;agrave;y&lt;/p&gt;
', 1, CAST(0x0000ADE40171A0E5 AS DateTime), CAST(0x0000ADE40171A0E5 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2092, 1069, 1039, N'Chương 2: Tôi chỉ còn biết dựa vào tiếng kêu cứu', N'&lt;p&gt;Những g&amp;igrave; t&amp;ocirc;i thấy chỉ l&amp;agrave; một v&amp;ugrave;ng đất hoang v&amp;agrave; n&amp;uacute;i đ&amp;aacute; rộng lớn.&lt;br /&gt;
&lt;br /&gt;
Vẫn tiếp tục một c&amp;aacute;ch m&amp;ugrave; qu&amp;aacute;ng lao v&amp;agrave;o v&amp;ugrave;ng đất hoang v&amp;agrave; n&amp;uacute;i đ&amp;aacute; n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
Một kịch bản kh&amp;ocirc;ng hồi kết.&lt;br /&gt;
&lt;br /&gt;
Khi t&amp;ocirc;i rơi, mắt t&amp;ocirc;i rơm rớm nước mắt v&amp;agrave; t&amp;ocirc;i kh&amp;ocirc;ng c&amp;oacute; l&amp;iacute; do để quan s&amp;aacute;t cẩn thận những g&amp;igrave; ở ph&amp;iacute;a dưới. (Trans: đoạn được nữ thần cho bay đ&amp;acirc;y m&amp;agrave;)&lt;br /&gt;
&lt;br /&gt;
Nghi&amp;ecirc;m t&amp;uacute;c ư? Trong t&amp;igrave;nh huống n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;acirc;y đ&amp;atilde; l&amp;agrave; ng&amp;agrave;y thứ ba bạn biết chứ?&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute; sẽ ổn nếu c&amp;oacute; một sự thay đổi ngay b&amp;acirc;y giờ.&lt;br /&gt;
&lt;br /&gt;
Kể từ thời điểm rơi xuống, t&amp;ocirc;i đ&amp;atilde; đi bộ về ph&amp;iacute;a trước bất kể ng&amp;agrave;y đ&amp;ecirc;m. Nhưng d&amp;ugrave; sao đ&amp;acirc;y l&amp;agrave; một v&amp;ugrave;ng đất cằn cỗi. Trước khi nhận ra t&amp;ocirc;i đang ở c&amp;ugrave;ng một chỗ giống nhau, loại điều, để điều n&amp;agrave;y kh&amp;ocirc;ng xảy ra t&amp;ocirc;i đ&amp;atilde; để lại dấu hiệu trong một phần cảnh quan v&amp;agrave; tiếp tục đi.&lt;br /&gt;
&lt;br /&gt;
Ngay cả với thứ đ&amp;oacute;, thứ trước mặt t&amp;ocirc;i m&amp;agrave; t&amp;ocirc;i đang hướng đến, một ngọn n&amp;uacute;i to lớn, nhưng t&amp;ocirc;i kh&amp;ocirc;ng cảm thấy n&amp;oacute; gần hơn t&amp;yacute; n&amp;agrave;o. N&amp;oacute; c&amp;oacute; thể l&amp;agrave; ảo ảnh, v&amp;agrave; nhiều lần t&amp;ocirc;i cảm thấy tr&amp;aacute;i tim m&amp;igrave;nh c&amp;oacute; thể sẽ sụp đổ.&lt;br /&gt;
&lt;br /&gt;
Sau tất cả, vẫn kh&amp;ocirc;ng c&amp;oacute; ai ở đ&amp;acirc;y kh&amp;ocirc;ng c&amp;oacute; bất cứ c&amp;aacute;i g&amp;igrave; cả.&lt;br /&gt;
&lt;br /&gt;
Theo một nghĩa n&amp;agrave;o đ&amp;oacute; kh&amp;ocirc;ng thể tin được. Kh&amp;ocirc;ng một người, thậm ch&amp;iacute; đến cả động vật cũng kh&amp;ocirc;ng bạn biết chứ?&lt;br /&gt;
&lt;br /&gt;
Ah, t&amp;ocirc;i qu&amp;ecirc;n mất.&lt;br /&gt;
&lt;br /&gt;
Những thứ t&amp;ocirc;i c&amp;oacute; thể ăn l&amp;agrave; những thứ bạn kh&amp;ocirc;ng tưởng được. C&amp;oacute; một lần t&amp;ocirc;i nh&amp;igrave;n thấy một c&amp;acirc;y sậy kh&amp;ocirc; giống cỏ, đ&amp;uacute;ng như mong đợi, t&amp;ocirc;i kh&amp;ocirc;ng nghĩ l&amp;agrave; t&amp;ocirc;i c&amp;oacute; khả năng ăn n&amp;oacute;. Ngay cả khi n&amp;oacute; khan hiếm đi nữa!&lt;br /&gt;
&lt;br /&gt;
D&amp;ugrave; cảm thấy đ&amp;oacute;i nhưng t&amp;ocirc;i vẫn c&amp;oacute; thể di chuyển, c&amp;oacute; thể do cơ thể t&amp;ocirc;i đ&amp;atilde; trở th&amp;agrave;nh si&amp;ecirc;u nhi&amp;ecirc;n. Nếu n&amp;oacute; m&amp;agrave; b&amp;igrave;nh thường th&amp;igrave; t&amp;ocirc;i c&amp;oacute; thể đ&amp;atilde; kh&amp;ocirc; kiệt v&amp;agrave; kiệt sức để c&amp;oacute; thể đứng được.&lt;br /&gt;
&lt;br /&gt;
L&amp;agrave;m theo những g&amp;igrave; Tsuki-sama bảo, t&amp;ocirc;i cố gắng sử dụng sức mạnh của m&amp;igrave;nh do đ&amp;oacute; t&amp;ocirc;i đ&amp;atilde; tập trung để k&amp;iacute;ch hoạt n&amp;oacute; nhưng t&amp;ocirc;i vẫn thất bại.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i cố gắng tụ tập sức mạnh v&amp;agrave;o l&amp;ograve;ng b&amp;agrave;n tay nhưng.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i vẫn kh&amp;ocirc;ng hiểu n&amp;oacute; l&amp;agrave; c&amp;aacute;i qu&amp;aacute;i g&amp;igrave; cả. T&amp;ocirc;i c&amp;oacute; thể cảm nhận được sức mạnh được tụ tập lại, nhưng vẫn kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; xảy ra cả.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i thử đặt tay l&amp;ecirc;n mặt đất nhưng v&amp;ocirc; &amp;iacute;ch.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i thử nghiệm với rất nhiềuthứ nhưng.&lt;br /&gt;
&lt;br /&gt;
Duy nhất, chỉ c&amp;aacute;c đối tượng trong tay t&amp;ocirc;i di chuyển nhẹ nh&amp;agrave;ng tuỳ v&amp;agrave;o mức năng lượng t&amp;ocirc;i sử dụng. Đ&amp;acirc;y c&amp;oacute; lẽ l&amp;agrave; c&amp;aacute;ch đơn giản để xem v&amp;agrave; hiểu được bề ngo&amp;agrave;i của n&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; l&amp;agrave; một b&amp;iacute; ẩn. V&amp;agrave; tất nhi&amp;ecirc;n, t&amp;ocirc;i kh&amp;ocirc;ng nghĩ l&amp;agrave; t&amp;ocirc;i c&amp;oacute; thể d&amp;ugrave;ng n&amp;oacute; để tho&amp;aacute;t ra khỏi t&amp;igrave;nh trạng hiện tại.&lt;br /&gt;
&lt;br /&gt;
V&amp;acirc;ng, sức mạnh n&amp;agrave;y l&amp;agrave; một thứ qu&amp;yacute; gi&amp;aacute; m&amp;agrave; Tsuki-sama đ&amp;atilde; trao cho t&amp;ocirc;i. T&amp;ocirc;i tin l&amp;agrave; vị thần tuyệt vời đ&amp;oacute; sẽ kh&amp;ocirc;ng phạm v&amp;agrave;o một sai lầm n&amp;agrave;o cả.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i sẽ cố gắng thử nghiệm nhiều hơn về n&amp;oacute;, t&amp;ocirc;i cần sớm hiểu quyền năng n&amp;agrave;y c&amp;agrave;ng nhanh c&amp;agrave;ng tốt.&lt;br /&gt;
&lt;br /&gt;
Ah, n&amp;oacute;ng.&lt;br /&gt;
&lt;br /&gt;
Ng&amp;agrave;y n&amp;oacute;ng một c&amp;aacute;ch d&amp;atilde; man.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;ecirc;m lạnh kinh khủng (Trans: teo trym =)) )&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; l&amp;agrave; c&amp;aacute;ch m&amp;agrave; t&amp;ocirc;i cảm nhận n&amp;oacute; nhưng.&lt;br /&gt;
&lt;br /&gt;
Buổi trưa t&amp;ocirc;i c&amp;oacute; thể thấy r&amp;otilde; những đ&amp;aacute;m m&amp;acirc;y bụi n&amp;oacute;ng bằng mắt m&amp;igrave;nh. L&amp;uacute;c n&amp;agrave;y cũng chỉ c&amp;oacute; thế.&lt;br /&gt;
&lt;br /&gt;
Về đ&amp;ecirc;m mặt đất bắt đầu phủ sương lạnh.&lt;br /&gt;
&lt;br /&gt;
M&amp;ocirc;i trường n&amp;agrave;y qu&amp;aacute; khắc nghiệt đối với một con người.&lt;br /&gt;
&lt;br /&gt;
Một lần nữa t&amp;ocirc;i lại cảm ơn cơ thể si&amp;ecirc;u nhi&amp;ecirc;n n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
V&amp;acirc;ng kh&amp;ocirc;ng quan t&amp;acirc;m đến m&amp;ocirc;i trường xung quanh, t&amp;ocirc;i tiến về ph&amp;iacute;a trước với một tốc độ kh&amp;aacute; nhanh.&lt;br /&gt;
&lt;br /&gt;
Thời điểm t&amp;ocirc;i đến ngọn n&amp;uacute;i đ&amp;oacute; t&amp;igrave;nh h&amp;igrave;nh c&amp;oacute; lẽ sẽ thay đổi. Nếu c&amp;oacute; thể. T&amp;ocirc;i cầu xin.&lt;br /&gt;
&lt;br /&gt;
Điều duy nhất t&amp;ocirc;i nghe được l&amp;agrave; tiếng gi&amp;oacute; v&amp;agrave; bước ch&amp;acirc;n của t&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;atilde; được ba ng&amp;agrave;y!&lt;br /&gt;
&lt;br /&gt;
Tại thời điểm n&amp;agrave;y phải c&amp;oacute; một sự kiện mới đ&amp;uacute;ng chứ?&lt;br /&gt;
&lt;br /&gt;
&amp;quot;T&amp;ocirc;i thấy, bởi v&amp;igrave; t&amp;ocirc;i kh&amp;ocirc;ng phải l&amp;agrave; anh h&amp;ugrave;ng &amp;ndash; sau tất cả, t&amp;ocirc;i chỉ l&amp;agrave; một con vịt xấu x&amp;iacute;.&amp;quot;&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i bắt đầu n&amp;oacute;i chuyện với bản th&amp;acirc;n m&amp;igrave;nh. Đ&amp;oacute; c&amp;oacute; thể l&amp;agrave; do ảnh hưởng của sự c&amp;ocirc; đơn, số lần t&amp;ocirc;i tự n&amp;oacute;i những suy nghĩ của m&amp;igrave;nh đ&amp;atilde; tăng l&amp;ecirc;n. Buồn qu&amp;aacute;.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;ocirc;i mắt t&amp;ocirc;i trở n&amp;ecirc;n trống rỗng. nh&amp;igrave;n về ph&amp;iacute;a xa, t&amp;ocirc;i tin rằng c&amp;oacute; người ở b&amp;ecirc;n đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Hai anh h&amp;ugrave;ng giờ đang l&amp;agrave;m g&amp;igrave; nhỉ? ( T&amp;ocirc;i tự hỏi ) Họ giờ chắc đang được đ&amp;oacute;n nhận trong v&amp;ograve;ng tay mở rộng của ho&amp;agrave;ng tộc v&amp;agrave; qu&amp;yacute; tộc, v&amp;agrave; được ăn sơn h&amp;agrave;o hải vị.&lt;br /&gt;
&lt;br /&gt;
So với m&amp;igrave;nh th&amp;igrave;.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i nh&amp;igrave;n lại đằng sau. Kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; ngo&amp;agrave;i v&amp;ugrave;ng đất hoang m&amp;agrave;u n&amp;acirc;u đỏ. Con đường m&amp;agrave; t&amp;ocirc;i đ&amp;atilde; đi qua.&lt;br /&gt;
&lt;br /&gt;
Mỗi lần nh&amp;igrave;n thấy ảo ảnh l&amp;agrave; t&amp;ocirc;i lại tan v&amp;agrave;o n&amp;oacute; v&amp;igrave; vậy t&amp;ocirc;i đ&amp;atilde; r&amp;uacute;t ngắn khoảng c&amp;aacute;ch đi rất nhiều. T&amp;ocirc;i rất c&amp;oacute; thể kh&amp;ocirc;ng c&amp;ograve;n nhận ra nơi t&amp;ocirc;i rơi xuống nữa.&lt;br /&gt;
&lt;br /&gt;
L&amp;uacute;c đầu, t&amp;ocirc;i định đi trong v&amp;ocirc; thức v&amp;agrave; gặp một ai đ&amp;oacute; hoặc t&amp;igrave;m ra một giải ph&amp;aacute;p, đ&amp;oacute; l&amp;agrave; những g&amp;igrave; t&amp;ocirc;i đ&amp;atilde; nghĩ.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; vẻ đ&amp;oacute; chỉ l&amp;agrave; đặc &amp;acirc;n chỉ d&amp;agrave;nh cho nh&amp;acirc;n vật ch&amp;iacute;nh.&lt;br /&gt;
&lt;br /&gt;
Ngo&amp;agrave;i ra để được ho&amp;agrave;n hảo m&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; bất cứ lỗi g&amp;igrave;. Hiện nay kh&amp;ocirc;ng c&amp;oacute; tới một c&amp;aacute;i b&amp;oacute;ng của con ng.....??&lt;br /&gt;
&lt;br /&gt;
&amp;quot;????&amp;quot;&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Một giọng n&amp;oacute;i nhẹ nhưng.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i cố gắng hết khả năng của m&amp;igrave;nh để tập trung mọi gi&amp;aacute;c quan của cơ thể, c&amp;oacute; lẽ đ&amp;acirc;y l&amp;agrave; lần đầu ti&amp;ecirc;n trong cuộc sống m&amp;agrave; t&amp;ocirc;i trở n&amp;ecirc;n nhạy cảm.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;ocirc;i tai của t&amp;ocirc;i sẽ kh&amp;ocirc;ng để&amp;acirc;m thanh đ&amp;oacute; tho&amp;aacute;t.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i dừng lại.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i giơ tay l&amp;ecirc;n tai v&amp;agrave; nhắm mắt lại.&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute; ở đ&amp;acirc;u, từ đ&amp;acirc;u đến?&lt;br /&gt;
&lt;br /&gt;
M&amp;igrave;nh phải tập trung, tập trung.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng được bỏ lỡ kể cả l&amp;agrave; giọt nước rơi.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i chắc chắn đ&amp;atilde; nghe được một giọng n&amp;oacute;i, t&amp;ocirc;i khẳng định về điều đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Sa ... Cứ.....u&amp;quot;&lt;br /&gt;
&lt;br /&gt;
&amp;quot;N&amp;oacute; ở đằng kia&amp;quot;&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i nghe thấy n&amp;oacute; một lần nữa, đ&amp;oacute; l&amp;agrave; một tiếng h&amp;eacute;t.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i mở mắt ra. Cũng giống như x&amp;aacute;c định được vị tr&amp;iacute; những s&amp;oacute;ng &amp;acirc;m thanh!&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i vẫn nhịn ăn d&amp;ugrave;!&lt;br /&gt;
&lt;br /&gt;
Dạ d&amp;agrave;y t&amp;ocirc;i n&amp;oacute; trống rỗng nhưng!&lt;br /&gt;
&lt;br /&gt;
Kể từ khi đến đ&amp;acirc;y, đ&amp;oacute; l&amp;agrave; quyền năng duy nhất m&amp;agrave; t&amp;ocirc;i c&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i nhảy xuống đất v&amp;agrave; chạy.&lt;/p&gt;
', 1, CAST(0x0000ADE40171D2DF AS DateTime), CAST(0x0000ADE40171D2DF AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2093, 1069, 1039, N'Chương 3: Gặp gỡ với cư dân đầu tiên, không , vụ này không được tính', N'&lt;p&gt;&amp;quot;Cứ....Cứu t&amp;ocirc;i!!&amp;quot;&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i r&amp;otilde; r&amp;agrave;ng nghe thấy một giọng n&amp;oacute;i. Một nơi n&amp;agrave;o đ&amp;oacute; gần n&amp;uacute;i đ&amp;aacute;.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Tuyệt&amp;quot; (Makoto)&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i lao đi với một sự hạnh ph&amp;uacute;c. Sự căng thẳng của t&amp;ocirc;i đ&amp;atilde; biến mất. T&amp;ocirc;i cảm thấy t&amp;ocirc;i c&amp;oacute; thể sử dụng kỹ năng độc nhất khi kh&amp;aacute;c.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i đ&amp;atilde; thấy n&amp;oacute;, t&amp;ocirc;i c&amp;oacute; thể thấy n&amp;oacute; r&amp;otilde; r&amp;agrave;ng. Thị lực của t&amp;ocirc;i thực sự đ&amp;aacute;ng kinh ngạc. T&amp;ocirc;i chắc chắn m&amp;igrave;nh kh&amp;ocirc;ng cần k&amp;iacute;nh. T&amp;ocirc;i đ&amp;atilde; bỏ k&amp;iacute;nh đi, mặc d&amp;ugrave; n&amp;oacute; chỉ l&amp;agrave; l&amp;agrave;m cho c&amp;oacute; vẻ.&lt;br /&gt;
&lt;br /&gt;
Những g&amp;igrave; t&amp;ocirc;i thấy c&amp;oacute; thể khiến t&amp;ocirc;i sợ h&amp;atilde;i, nhưng t&amp;ocirc;i sẽ kh&amp;ocirc;ng dừng lại.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; hai thứ ở đ&amp;oacute;, một con heo v&amp;agrave; một con ch&amp;oacute; hai đầu. Oh, n&amp;oacute; vẫn tốt hơn nhiều so với sự c&amp;ocirc; độc.&lt;br /&gt;
&lt;br /&gt;
Trong tr&amp;ograve; chơi, c&amp;oacute; những con lợn bay tr&amp;ecirc;n bầu trời v&amp;agrave; cũng c&amp;oacute; một con ch&amp;oacute; địa ngục ba dầu.&lt;br /&gt;
&lt;br /&gt;
Chỉ l&amp;agrave; n&amp;oacute; c&amp;oacute; tồn tại trong thế giới thực, v&amp;agrave;o l&amp;uacute;c n&amp;agrave;y, t&amp;ocirc;i thậm ch&amp;iacute; kh&amp;ocirc;ng quan t&amp;acirc;m đến diều đ&amp;oacute;! T&amp;ocirc;i l&amp;agrave; một si&amp;ecirc;u nh&amp;acirc;n ở đ&amp;acirc;y c&amp;oacute; vấn đề g&amp;igrave; với chuyện đ&amp;oacute;?&lt;br /&gt;
&lt;br /&gt;
Theo những g&amp;igrave; t&amp;ocirc;i quan s&amp;aacute;t được, người cần cứu l&amp;agrave; một con heo. Đ&amp;oacute; c&amp;oacute; phải những g&amp;igrave; bạn gọi l&amp;agrave; Orc?&lt;br /&gt;
&lt;br /&gt;
Kẻ tấn c&amp;ocirc;ng l&amp;agrave; con ch&amp;oacute; hai đầu. Một cuộc chiến giữa những con qu&amp;aacute;i vật?&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i cần l&amp;agrave;m r&amp;otilde;. Ai đ&amp;atilde; l&amp;ecirc;n tiếng ban n&amp;atilde;y! Nhờ điều đ&amp;oacute; m&amp;agrave; t&amp;ocirc;i đ&amp;atilde; gặp ch&amp;uacute;ng sau tất cả.&lt;br /&gt;
&lt;br /&gt;
Ch&amp;uacute;ng đ&amp;atilde; nhận ra sự tồn tại của t&amp;ocirc;i. Cả hai đều thận trọng trước sự xuất hiện của t&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Cảm ơn. với điều n&amp;agrave;y th&amp;igrave; Orc-kun (c&amp;oacute; thể) sẽ an to&amp;agrave;n. Đ&amp;oacute; l&amp;agrave; nếu t&amp;ocirc;i c&amp;oacute; thể đ&amp;aacute;nh bại con ch&amp;oacute; trong một đ&amp;ograve;n.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Ngươi l&amp;agrave; c&amp;aacute;i g&amp;igrave;, khốn kiếp? Ngươi định cản đường ta ư ?&amp;quot; ( ch&amp;oacute; 2 đầu )&lt;br /&gt;
&lt;br /&gt;
Con ch&amp;oacute; hai đầu tru l&amp;ecirc;n. V&amp;igrave; v&amp;agrave;i l&amp;iacute; do m&amp;agrave; t&amp;ocirc;i c&amp;oacute; thể hiểu được tiếng tru của n&amp;oacute;. T&amp;ocirc;i cũng c&amp;oacute; sự ngạc nhi&amp;ecirc;n nhẹ đ&amp;oacute; l&amp;agrave; t&amp;ocirc;i cũng c&amp;oacute; thể hiểu ng&amp;ocirc;n ngữ của orc. Đ&amp;oacute; kh&amp;ocirc;ng phải l&amp;agrave; vấn đề! T&amp;ocirc;i kh&amp;ocirc;ng quan t&amp;acirc;m về n&amp;oacute;!&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; l&amp;agrave; lạ khi nghe tiếng r&amp;iacute;t v&amp;agrave; tiếng tru trong c&amp;ugrave;ng một l&amp;uacute;c nhưng...&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Ch&amp;agrave;o đằng đ&amp;oacute;! T&amp;ocirc;i l&amp;agrave; một con người, Makoto! Rất vui được gặp bạn!&amp;quot;&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute; ở trong tầm tấn c&amp;ocirc;ng của t&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Để an to&amp;agrave;n t&amp;ocirc;i đ&amp;atilde; chạy lấy đ&amp;agrave; v&amp;agrave; lao tới con ch&amp;oacute;! Thực hiện một c&amp;uacute; song phi v&amp;agrave;o đối thủ.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Deryaaaa!&amp;quot; (Makoto)&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; l&amp;agrave; một c&amp;uacute; tấn c&amp;ocirc;ng m&amp;agrave; t&amp;ocirc;i đ&amp;atilde; sử dụng sức lực của m&amp;igrave;nh để chủ động v&amp;agrave; k&amp;eacute;o d&amp;atilde;n khoảng c&amp;aacute;ch.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Wa, n&amp;oacute; nhanh qu&amp;aacute;!&amp;quot; (Ch&amp;oacute; 2 đầu)&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; l&amp;agrave; những lời cuối c&amp;ugrave;ng của con ch&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Tại vị tr&amp;iacute; giữa hai c&amp;aacute;i đầu, t&amp;ocirc;i nhắm v&amp;agrave;o đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute; vẫn ổn cho đến l&amp;uacute;c đ&amp;oacute; nhưng....&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; vẻ như t&amp;ocirc;i đ&amp;atilde; xuy&amp;ecirc;n qua n&amp;oacute;....&lt;br /&gt;
&lt;br /&gt;
Hah?&lt;br /&gt;
&lt;br /&gt;
Đối thủ của t&amp;ocirc;i l&amp;agrave; một con qu&amp;aacute;i vật phải kh&amp;ocirc;ng? Kh&amp;ocirc;ng, đ&amp;oacute; kh&amp;ocirc;ng phải l&amp;agrave; vấn đề nếu n&amp;oacute; l&amp;agrave; qu&amp;aacute;i vật.&lt;br /&gt;
&lt;br /&gt;
Ngay cả khi t&amp;ocirc;i chạy với tất cả sức mạnh của m&amp;igrave;nh, một h&amp;iacute;t.....&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng phải vấn đề l&amp;agrave; bao nhi&amp;ecirc;u, c&amp;aacute;i n&amp;agrave;y kh&amp;ocirc;ng phải n&amp;oacute; qu&amp;aacute; k&amp;igrave; lạ &amp;agrave;?&lt;br /&gt;
&lt;br /&gt;
&amp;quot;E h&amp;egrave;m&amp;quot; (Makoto)&lt;br /&gt;
&lt;br /&gt;
Thật l&amp;ograve;ng l&amp;agrave; t&amp;ocirc;i đang hoảng loạn nhưng t&amp;ocirc;i vẫn cố chế ngự n&amp;oacute; xuống.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i quang lưng lại một c&amp;aacute;ch rụt r&amp;egrave;.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Ah~, tuyệt, m&amp;igrave;nh đ&amp;atilde; l&amp;agrave;m điều đ&amp;oacute;&amp;quot; (Makoto)&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; l&amp;agrave; một khung cảnh khủng khiếp.&lt;br /&gt;
&lt;br /&gt;
Nửa tr&amp;ecirc;n của con ch&amp;oacute; hai đầu nằm rải r&amp;aacute;c xung quanh, trong khi nửa dưới nằm tr&amp;ecirc;n mặt đất.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i xin lỗi, t&amp;ocirc;i xin lỗi, t&amp;ocirc;i xin lỗi.&lt;br /&gt;
&lt;br /&gt;
Nghĩ rằng một điều như vậy sẽ xảy ra, t&amp;ocirc;i thậm ch&amp;iacute; c&amp;ograve;n kh&amp;ocirc;ng thể tưởng tượng n&amp;oacute;. N&amp;oacute; l&amp;agrave; sự thật, bạn biết chứ?&lt;br /&gt;
&lt;br /&gt;
Giống như một chiếc xe tải vừa băng qua n&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i mở mắt.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i l&amp;agrave; người thực hiện điều đ&amp;oacute; nhưng t&amp;ocirc;i kh&amp;ocirc;ng thể hiểu được n&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i bắt gặp với &amp;aacute;nh mắt của Orc-kun.&lt;br /&gt;
&lt;br /&gt;
So với khi n&amp;oacute; l&amp;agrave; con ch&amp;oacute; th&amp;igrave; đ&amp;ocirc;i mắt đ&amp;oacute; tr&amp;ocirc;ng r&amp;otilde; sợ h&amp;atilde;i hơn hẳn l&amp;uacute;c n&amp;atilde;y.&lt;br /&gt;
&lt;br /&gt;
K&amp;igrave; lạ thay, sự hiện diện đ&amp;oacute; đ&amp;aacute;ng ra phải xấu x&amp;iacute; nhưng m&amp;agrave; t&amp;ocirc;i lại chẳng cảm thấy gh&amp;ecirc; tởm t&amp;yacute; n&amp;agrave;o cả, t&amp;ocirc;i chắc chắn l&amp;agrave; do s&amp;acirc;u bọ, &amp;yacute; t&amp;ocirc;i l&amp;agrave; nữ thần. Sẽ kh&amp;ocirc;ng c&amp;oacute; một kinh nghiệm n&amp;agrave;o th&amp;iacute;ch hợp hơn để kh&amp;ocirc;ng ph&amp;aacute;n x&amp;eacute;t sau tất cả.&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute;i rằng t&amp;ocirc;i kh&amp;ocirc;ng đẹp, t&amp;ocirc;i v&amp;ocirc; dụng, đừng &amp;aacute;p bức t&amp;ocirc;i. (Tran: &amp;ocirc;i &amp;aacute;nh mắt ấy :v)&lt;br /&gt;
&lt;br /&gt;
Trong rất nhiều &amp;yacute; nghĩa, c&amp;oacute; thể t&amp;ocirc;i đ&amp;atilde; nhầm?&lt;br /&gt;
&lt;br /&gt;
Đ&amp;uacute;ng rồi, một cuộc n&amp;oacute;i chuyện. &amp;Yacute; tưởng tuyệt vời.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i chập hai b&amp;agrave;n tay m&amp;igrave;nh lại v&amp;agrave; cầu nguyện cho hạnh ph&amp;uacute;c của m&amp;igrave;nh trong thế giới n&amp;agrave;y. Lần sau gặp mặt ch&amp;uacute;ng ta c&amp;oacute; thể n&amp;oacute;i chuyện với nhau.&lt;br /&gt;
&lt;br /&gt;
B&amp;acirc;y giờ th&amp;igrave;.&lt;br /&gt;
&lt;br /&gt;
Một cuộc đối thoại đ&amp;uacute;ng kh&amp;ocirc;ng? Cuối c&amp;ugrave;ng t&amp;ocirc;i cũng được n&amp;oacute;i chuyện với một ai đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Một cảm gi&amp;aacute;c kỳ lạ, tr&amp;aacute;i tim t&amp;ocirc;i đập nhanh hơn.&lt;br /&gt;
&lt;br /&gt;
Lặng lẽ nh&amp;igrave;n v&amp;agrave;o orc đứng trước mặt m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Ah~ rất vui được gặp bạn!&amp;quot; (Makoto)&lt;br /&gt;
&lt;br /&gt;
&amp;quot; Hiii!!!! N&amp;oacute; n&amp;oacute;i được!&amp;quot; (Orc)&lt;br /&gt;
&lt;br /&gt;
Ế????&lt;br /&gt;
&lt;br /&gt;
G&amp;igrave; vậy? T&amp;ocirc;i thất bại ngay từ l&amp;uacute;c bắt chuyện ư?&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng kh&amp;ocirc;ng, đ&amp;acirc;y l&amp;agrave; cuộc n&amp;oacute;i chuyện đầu ti&amp;ecirc;n của t&amp;ocirc;i sau ba ng&amp;agrave;y đ&amp;oacute;, bạn biết m&amp;agrave;? Giống như địa ngục, t&amp;ocirc;i sẽ bị từ chối. Kh&amp;ocirc;ng thể n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;T&amp;ocirc;i kh&amp;ocirc;ng phải l&amp;agrave; người xấu. T&amp;ocirc;i hiền l&amp;agrave;nh v&amp;agrave; tốt bụng. Bạn hiểu những g&amp;igrave; t&amp;ocirc;i n&amp;oacute;i chứ?&amp;quot; (Makoto)&lt;br /&gt;
&lt;br /&gt;
Orc-kun gật đầu l&amp;ecirc;n xuống nhưng ngay lập tức lắc sang hai b&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i kh&amp;ocirc;ng hiểu &amp;yacute; của n&amp;oacute; l&amp;agrave; g&amp;igrave;. Đ&amp;oacute; c&amp;oacute; phải l&amp;agrave; một cử chỉ tồn tại trong thế giới n&amp;agrave;y?&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute; đi bằng hai ch&amp;acirc;n v&amp;agrave; mặc bộ quần &amp;aacute;o giống với con người hay mặc.&lt;br /&gt;
&lt;br /&gt;
Chờ đ&amp;atilde;. Nh&amp;igrave;n heo-san đang đứng, c&amp;oacute; thể bởi v&amp;igrave; tr&amp;ocirc;ng giống con người n&amp;ecirc;n t&amp;ocirc;i v&amp;ocirc; thức dồn &amp;eacute;p qu&amp;aacute; nhiều.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Một người đ&amp;atilde; gϊếŧ &amp;#39;Liz&amp;#39; với một đ&amp;ograve;n kh&amp;ocirc;ng thể n&amp;agrave;o l&amp;agrave; một người hiền l&amp;agrave;nh v&amp;agrave; tốt bụng được!!!&amp;quot; (Orc)&lt;br /&gt;
&lt;br /&gt;
Oh. T&amp;ocirc;i biết. T&amp;ocirc;i c&amp;oacute; thể đồng &amp;yacute; với điều đ&amp;oacute;. N&amp;oacute; thật sự kh&amp;ocirc;ng thể tin được sau tất cả. T&amp;ocirc;i đồng &amp;yacute; với điều đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute; dường như đang th&amp;igrave; thầm rất nhiều thứ. N&amp;oacute;i rằng &amp;quot;Đ&amp;oacute;.... Đ&amp;oacute; l&amp;agrave; c&amp;aacute;ch để l&amp;agrave;m điều đ&amp;oacute;&amp;quot; hoặc một c&amp;aacute;i g&amp;igrave; đ&amp;oacute; giống như vậy.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Được rồi, t&amp;ocirc;i đ&amp;atilde; l&amp;agrave;m điều đ&amp;oacute;. T&amp;ocirc;i mạnh mẽ, T&amp;ocirc;i mạnh hơn bạn.&amp;quot; (Makoto)&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Hiiiii!&amp;quot; (Orc)&lt;br /&gt;
&lt;br /&gt;
Con heo sợ h&amp;atilde;i v&amp;agrave; cuộn lại cơ thể m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
Điều g&amp;igrave; với khung cảnh n&amp;agrave;y vậy? N&amp;oacute;i rằng &amp;quot;N&amp;oacute; n&amp;oacute;i được?&amp;quot; v&amp;agrave; b&amp;acirc;y giờ th&amp;igrave; sợ h&amp;atilde;i. Để xoa dịu n&amp;oacute; t&amp;ocirc;i thực hiện một số cử chỉ.&lt;br /&gt;
&lt;br /&gt;
Oh, điều n&amp;agrave;y l&amp;agrave; phi thực tế.&lt;br /&gt;
&lt;br /&gt;
V&amp;acirc;ng, trong trường hợp n&amp;agrave;y t&amp;ocirc;i nghĩ l&amp;agrave; n&amp;oacute; sẽ n&amp;oacute;i &amp;quot;T&amp;ocirc;i thấy bạn th&amp;uacute; vị đ&amp;oacute;&amp;quot; hay c&amp;aacute;i g&amp;igrave; đ&amp;oacute; giống như vậy nhưng c&amp;oacute; lẽ t&amp;ocirc;i đ&amp;atilde; chơi qu&amp;aacute; nhiều tr&amp;ograve; chơi.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i thấy, đ&amp;oacute; l&amp;agrave; một c&amp;aacute;i g&amp;igrave; đ&amp;oacute; l&amp;agrave;m l&amp;agrave;m việc giống như lo&amp;agrave;i th&amp;uacute;. Một điều c&amp;oacute; thể ph&amp;ugrave; hợp hơn với một con ch&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Heo kh&amp;ocirc;ng phải l&amp;agrave; một loại th&amp;uacute;?&lt;br /&gt;
&lt;br /&gt;
Một c&amp;aacute;i g&amp;igrave; tương tự như l&amp;agrave; y&amp;ecirc;u tinh huh. Đ&amp;oacute; h&amp;igrave;nh như l&amp;agrave; một c&amp;ocirc; g&amp;aacute;i? Nhưng t&amp;ocirc;i cảm thấy một Oni sẽ ph&amp;ugrave; hợp với h&amp;igrave;nh ảnh của c&amp;ocirc; ấy hơn.&lt;br /&gt;
&lt;br /&gt;
Nghĩ rằng t&amp;ocirc;i đ&amp;atilde; chơi qu&amp;aacute; nhiều tr&amp;ograve; chơi, nhưng t&amp;ocirc;i vẫn đang t&amp;igrave;m kiếm th&amp;ocirc;ng tin từ b&amp;ecirc;n trong bởi v&amp;igrave; sự tồn tại chỉ n&amp;ecirc;n xuất hiện ở tr&amp;ograve; chơi đang ở trước mặt t&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Rồi, h&amp;atilde;y b&amp;igrave;nh tĩnh lại. Đ&amp;uacute;ng l&amp;agrave; t&amp;ocirc;i mạnh mẽ nhưng sự thật t&amp;ocirc;i cũng đ&amp;atilde; đến cứu bạn l&amp;agrave; sự thật, bạn biết chứ?&amp;quot; (Makoto)&lt;br /&gt;
&lt;br /&gt;
Giơ cả hai tay m&amp;igrave;nh l&amp;ecirc;n, t&amp;ocirc;i thể hiện l&amp;agrave; t&amp;ocirc;i kh&amp;ocirc;ng nguy hiểm .&lt;br /&gt;
&lt;br /&gt;
Yeah, thay v&amp;igrave; n&amp;oacute;i &amp;quot;T&amp;ocirc;i mạnh hơn bạn&amp;quot; n&amp;oacute; sẽ tốt hơn để chứng tỏ rằng t&amp;ocirc;i kh&amp;ocirc;ng đến đ&amp;acirc;y để l&amp;agrave;m hại c&amp;ocirc; ấy.&lt;br /&gt;
&lt;br /&gt;
D&amp;ugrave; sao, sau tất cả đe doạ kh&amp;ocirc;ng phải l&amp;agrave; một phần t&amp;iacute;nh c&amp;aacute;ch của t&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Bạn đ&amp;atilde; k&amp;ecirc;u &amp;#39;Cứu t&amp;ocirc;i~!&amp;#39;. V&amp;igrave; vậy, t&amp;ocirc;i đ&amp;atilde; đến đ&amp;acirc;y v&amp;agrave; cứu bạn, t&amp;ocirc;i l&amp;agrave; đồng minh của bạn, đ&amp;uacute;ng kh&amp;ocirc;ng?&amp;quot;&lt;br /&gt;
&lt;br /&gt;
Orc-kun nhấc đầu l&amp;ecirc;n v&amp;agrave; đối mặt với t&amp;ocirc;i. Dường như sự run rẩy cảu c&amp;ocirc; đ&amp;atilde; giảm đi một ch&amp;uacute;t.&lt;br /&gt;
&lt;br /&gt;
Tốt tốt, c&amp;oacute; vẻ như t&amp;ocirc;i đ&amp;atilde; gi&amp;agrave;nh được thiện ch&amp;iacute;. Với c&amp;aacute;ch n&amp;agrave;y sẽ....&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Thật....thật sự&amp;quot;&lt;br /&gt;
&lt;br /&gt;
C&amp;ocirc; ấy vẫn c&amp;ograve;n sợ khi đối mặt v&amp;agrave; nh&amp;igrave;n v&amp;agrave;o mắt t&amp;ocirc;i, t&amp;ocirc;i gật đầu với c&amp;ocirc; ấy.&lt;br /&gt;
&lt;br /&gt;
Sự thận trọng của c&amp;ocirc; ấy giảm đi v&amp;agrave; sự sợ h&amp;atilde;i lại đến một lần nữa.&lt;br /&gt;
&lt;br /&gt;
Ở một nơi kh&amp;ocirc;ng c&amp;oacute; ai đẻ t&amp;ocirc;i thực hiện tsukomi. (Tran: tsukomi c&amp;oacute; nghĩa l&amp;agrave; một lời đ&amp;aacute;p lại nhưng cũng c&amp;oacute; nghĩa l&amp;agrave; t&amp;aacute;t một người b&amp;ecirc;n cạnh bạn khi đ&amp;aacute;p trả lại anh ta)&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng tốt. T&amp;ocirc;i kh&amp;ocirc;ng nghĩ rằng giao tiếp sẽ rắc rối như vậy.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i kh&amp;ocirc;ng c&amp;oacute; tiền cũng kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; trong tay v&amp;igrave; vậy t&amp;ocirc;i kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; để m&amp;agrave; cho cả.(edit)&lt;br /&gt;
&lt;br /&gt;
Sẽ..sẽ kết th&amp;uacute;c trong thất bại ư? Kh&amp;ocirc;ng thể n&amp;agrave;o , t&amp;ocirc;i sẽ kh&amp;ocirc;ng bỏ cuộc.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;T....tại sao một con người c&amp;oacute; thể n&amp;oacute;i chuyện với t&amp;ocirc;i? Kh&amp;ocirc;ng lẽ bạn l&amp;agrave; một con người sở hữu tamer?&amp;quot; (Orc)&lt;br /&gt;
&lt;br /&gt;
Tamer?&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; l&amp;agrave; g&amp;igrave;?&lt;br /&gt;
&lt;br /&gt;
Nếu bạn hỏi v&amp;igrave; sao t&amp;ocirc;i c&amp;oacute; thể n&amp;oacute;i chuyện với c&amp;ocirc; ấy th&amp;igrave; đ&amp;oacute; l&amp;agrave; bởi v&amp;igrave; s&amp;acirc;u bọ.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i thấy, một người b&amp;igrave;nh thường, kh&amp;ocirc;ng, ngay cả khi nếu đ&amp;oacute; l&amp;agrave; một người b&amp;igrave;nh thường cũng kh&amp;ocirc;ng thể n&amp;oacute;i chuyện với qu&amp;aacute;i vật.&lt;br /&gt;
&lt;br /&gt;
Sức mạnh c&amp;ocirc; cho t&amp;ocirc;i l&amp;agrave; c&amp;aacute;i g&amp;igrave; vậy?&lt;br /&gt;
&lt;br /&gt;
Mọi người sẽ hiểu nhầm t&amp;ocirc;i v&amp;igrave; điều n&amp;agrave;y!!!&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Ah, gezz!! T&amp;ocirc;i, tamer? Kh&amp;ocirc;ng đ&amp;uacute;ng. T&amp;ocirc;i bị lạc. T&amp;ocirc;i đ&amp;atilde; cứu bạn. Kết th&amp;uacute;c!&amp;quot; (Makoto)&lt;br /&gt;
&lt;br /&gt;
C&amp;ograve;n b&amp;acirc;y giờ h&amp;atilde;y r&amp;otilde; r&amp;agrave;ng.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i sẽ n&amp;oacute;i với c&amp;ocirc; ấy những điều x&amp;aacute;c thực.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;??&amp;quot;&lt;br /&gt;
&lt;br /&gt;
Mu, c&amp;ocirc; ấy đang nghĩ. Vẫn run rẩy nhưng so với l&amp;uacute;c n&amp;atilde;y th&amp;igrave; tốt hơn rồi. T&amp;ocirc;i đ&amp;atilde; r&amp;uacute;t ngắn khoảng c&amp;aacute;ch giữa cả hai v&amp;igrave; vậy t&amp;ocirc;i sẽ rất vui nếu c&amp;ocirc; ấy dừng l&amp;agrave;m việc đ&amp;oacute;. (Tran: việc g&amp;igrave; vậy ta???)&lt;br /&gt;
&lt;br /&gt;
Hơn nữa, bạn c&amp;oacute; biết l&amp;agrave; t&amp;ocirc;i cũng đang sợ chứ?&lt;br /&gt;
&lt;br /&gt;
Trong t&amp;igrave;nh huống t&amp;ocirc;i đang phải đối mặt với một con heo đứng bằng hai ch&amp;acirc;n, với &amp;yacute; định t&amp;igrave;m hiểu lẫn nhau.&lt;br /&gt;
&lt;br /&gt;
Lang thang ở nơi n&amp;agrave;y suốt ba ng&amp;agrave;y m&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave;.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;??&amp;quot;&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i chờ đợi trong im lặng. Đằng đ&amp;oacute; phản ứng như thế n&amp;agrave;o nhỉ? Sự hiện diện của cuộc tr&amp;ograve; chuyện l&amp;agrave; zero cho đến giờ.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;T..t&amp;ocirc;i hiểu rồi.&amp;quot; (Orc)&lt;br /&gt;
&lt;br /&gt;
Yeah&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i đ&amp;atilde; l&amp;agrave;m được! Cảm ơn! Cảm ơn! ShieShie.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Cảm ơn v&amp;igrave; đ&amp;atilde; cứu t&amp;ocirc;i.&amp;quot; (Orc)&lt;br /&gt;
&lt;br /&gt;
Đ&amp;acirc;y l&amp;agrave; một cuộc tr&amp;ograve; chuyện, một cuộc tr&amp;ograve; chuyện. V&amp;agrave; hơn thế nữa, đầy thiện ch&amp;iacute;.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Kh&amp;ocirc;ng kh&amp;ocirc;ng, t&amp;ocirc;i mừng l&amp;agrave; bạn vẫn ổn. Vậy l&amp;agrave;ng của cậu c&amp;oacute; gần đ&amp;acirc;y kh&amp;ocirc;ng?&amp;quot; (Makoto)&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i sẽ thay đổi c&amp;aacute;ch n&amp;oacute;i ... &amp;quot;kimi&amp;quot; (kimi=bạn theo nghĩa lịch sự). N&amp;oacute;i &amp;quot;omae omae&amp;quot; (bạn theo c&amp;aacute;ch th&amp;ocirc; lỗ) c&amp;oacute; ch&amp;uacute;t bất lịch sự hay &amp;iacute;t nhất l&amp;agrave; t&amp;ocirc;i nghĩ vậy.&lt;br /&gt;
&lt;br /&gt;
Thậm ch&amp;iacute; kể cả n&amp;oacute; l&amp;agrave; một ng&amp;ocirc;i l&amp;agrave;ng, một thị trấn hay l&amp;agrave; một ng&amp;ocirc;i nh&amp;agrave;.&lt;br /&gt;
&lt;br /&gt;
Tất cả đều ổn. T&amp;ocirc;i chỉ muốn ngủ ở một nơi dưới m&amp;aacute;i nh&amp;agrave;.&lt;br /&gt;
&lt;br /&gt;
Nhưng buồn thay c&amp;ocirc; ấy lắc đầu.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;K..kh&amp;ocirc;ng lẽ cậu cũng bị lạc?&amp;quot; (Makoto)&lt;br /&gt;
&lt;br /&gt;
C&amp;ocirc; lại lắc đầu một lần nữa m&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; sức sống.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;T&amp;ocirc;i... sẽ n&amp;oacute;i cho bạn, sự thật l&amp;agrave; t&amp;ocirc;i đ&amp;atilde; lạc ở đ&amp;acirc;y ba ng&amp;agrave;y rồi. Bạn c&amp;oacute; thể cho t&amp;ocirc;i biết nơi c&amp;oacute; thể t&amp;igrave;m thấy những người xung quanh đ&amp;acirc;y kh&amp;ocirc;ng?&amp;quot; (Makoto)&lt;br /&gt;
&lt;br /&gt;
Một lần nữa c&amp;ocirc; lắc đầu.&lt;br /&gt;
&lt;br /&gt;
Trời ơi. T&amp;igrave;nh h&amp;igrave;nh của t&amp;ocirc;i chẳng thay đổi t&amp;yacute; n&amp;agrave;o cả. Đ&amp;acirc;y l&amp;agrave; một sự kiện đ&amp;uacute;ng kh&amp;ocirc;ng? Hay n&amp;oacute; kh&amp;ocirc;ng phải?&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Kh&amp;ocirc;ng c&amp;oacute; l&amp;agrave;ng của con người ở đ&amp;acirc;y. Nơi đ&amp;acirc;y được coi l&amp;agrave; &amp;#39;r&amp;igrave;a thế giới&amp;#39; m&amp;agrave;, một v&amp;ugrave;ng đất hoang cằn cỗi.&amp;quot; (Orc)&lt;br /&gt;
&lt;br /&gt;
R&amp;igrave;a thế giới?&lt;br /&gt;
&lt;br /&gt;
Điều n&amp;agrave;y..... H&amp;igrave;nh như t&amp;ocirc;i đ&amp;atilde; nghe thấy n&amp;oacute; c&amp;aacute;ch đ&amp;acirc;y kh&amp;ocirc;ng l&amp;acirc;u.&lt;br /&gt;
&lt;br /&gt;
...... &amp;Ecirc;!!!&lt;br /&gt;
&lt;br /&gt;
Con mụ đ&amp;oacute; thật sự quẳng t&amp;ocirc;i đến r&amp;igrave;a thế giới?!&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; kh&amp;ocirc;ng phải l&amp;agrave; c&amp;aacute;ch n&amp;oacute;i kh&amp;aacute;c &amp;agrave;?! C&amp;oacute; cần đi xa đến thế kh&amp;ocirc;ng?!&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i cảm thấy &amp;aacute;c &amp;yacute;. &amp;Aacute;c &amp;yacute; rất r&amp;otilde; r&amp;agrave;ng!&lt;br /&gt;
&lt;br /&gt;
Th&amp;agrave;nh thật m&amp;agrave; n&amp;oacute;i, bạn sẽ nghi ngờ về lượng rắc rối n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
Eh.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; thể đ&amp;acirc;y l&amp;agrave; &amp;#39;r&amp;igrave;a thế giới&amp;#39;, nhưng thực sự c&amp;oacute; thể c&amp;oacute; một thị trấn khổng lồ ở v&amp;ugrave;ng l&amp;acirc;n cận.&lt;br /&gt;
&lt;br /&gt;
Qu&amp;aacute; ng&amp;acirc;y thơ!!! N&amp;oacute; ng&amp;acirc;y thơ hơn so với l&amp;ograve;ng tốt của Tsuki-sama.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng c&amp;ograve;n c&amp;aacute;ch n&amp;agrave;o, thật sự kh&amp;ocirc;ng c&amp;ograve;n c&amp;aacute;ch kh&amp;aacute;c ư?&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i đ&amp;atilde; hiểu được t&amp;iacute;nh c&amp;aacute;ch của mụ thần đ&amp;oacute;. Mụ ấy kh&amp;ocirc;ng thừa nhận bất cứ điều g&amp;igrave; nếu n&amp;oacute; kh&amp;ocirc;ng đẹp. Thứ đầu ti&amp;ecirc;n trong tất cả l&amp;agrave; phải ok.&lt;br /&gt;
&lt;br /&gt;
Nhiều khả năng l&amp;agrave; hai người kia thật sự đẹp. Đ&amp;atilde; bị một mụ s&amp;acirc;u bọ gh&amp;eacute;t con người kia th&amp;iacute;ch, đ&amp;atilde; ban cho họ sức mạnh v&amp;agrave; phước l&amp;agrave;nh bảo vệ, họ thực sự rất đẹp phải kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
&amp;quot;T&amp;ocirc;i giờ đang đến ngọn n&amp;uacute;i của vị thần Shen-sama để hiến tế bản th&amp;acirc;n m&amp;igrave;nh.&amp;quot; (Orc)&lt;br /&gt;
&lt;br /&gt;
Trong khi t&amp;ocirc;i đang di chuyển một c&amp;aacute;ch hoang d&amp;atilde; với sự ch&amp;aacute;n gh&amp;eacute;t với vị thần m&amp;agrave; t&amp;ocirc;i chưa nh&amp;igrave;n thấy mặt, c&amp;ocirc; tiếp tục cuộc tr&amp;ograve; chuyện của m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
Yahh l&amp;aacute; cờ sự kiện.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i thậm ch&amp;iacute; c&amp;ograve;n chưa đến một ng&amp;ocirc;i l&amp;agrave;ng hay một thị trấn m&amp;agrave; đ&amp;atilde; gặp phải một sự kiện c&amp;oacute; m&amp;ugrave;i với cuộc chiến với boss cấp trung rồi.&lt;br /&gt;
&lt;br /&gt;
Trong khi nước mắt chảy d&amp;agrave;i tr&amp;ecirc;n mắt c&amp;ocirc;, c&amp;ocirc; n&amp;oacute;i với t&amp;ocirc;i về thực tế g&amp;acirc;y sốc của c&amp;ocirc; ấy.&lt;br /&gt;
&lt;br /&gt;
Nghe c&amp;ocirc; ấy n&amp;oacute;i t&amp;ocirc;i hiểu rằng c&amp;ocirc; ấy l&amp;agrave; một orc cao nguy&amp;ecirc;n v&amp;agrave; sống tr&amp;ecirc;n một cao nguy&amp;ecirc;n, đ&amp;oacute; c&amp;oacute; vẻ l&amp;agrave; một bộ tộc orc cấp cao.&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; sự xuất hiện của n&amp;oacute; kh&amp;ocirc;ng giống như thế.&lt;br /&gt;
&lt;br /&gt;
Cứ nửa năm một lần, vị thần của ngọn n&amp;uacute;i y&amp;ecirc;u cầu một phụ nữ trẻ phải hy sinh.&lt;br /&gt;
&lt;br /&gt;
Nếu họ kh&amp;ocirc;ng l&amp;agrave;m vậy sẽ c&amp;oacute; một l&amp;agrave;n sương d&amp;agrave;y bao phủ l&amp;agrave;ng v&amp;agrave; c&amp;acirc;y n&amp;ocirc;ng nghiệp sẽ kh&amp;ocirc;ng thể ph&amp;aacute;t triển được.&lt;br /&gt;
&lt;br /&gt;
Điều đ&amp;oacute; thật kh&amp;oacute; tin với orc cao nguy&amp;ecirc;n. Để kh&amp;ocirc;ng bị cướp b&amp;oacute;c v&amp;agrave; l&amp;agrave;m săn bắn với n&amp;ocirc;ng nghiệp. C&amp;aacute;c bạn c&amp;oacute; một kế sinh nhai th&amp;iacute;ch hợp.&lt;br /&gt;
&lt;br /&gt;
Họ l&amp;agrave; những con người thực tế. Chiếm được vẻ bề ngo&amp;agrave;i.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;acirc;n tiện.&lt;br /&gt;
&lt;br /&gt;
V&amp;igrave; một v&amp;agrave;i l&amp;yacute; do m&amp;agrave; t&amp;ocirc;i cảm thấy l&amp;aacute; cờ đ&amp;atilde; được dựng l&amp;ecirc;n. (Tran: Flags &amp;#39;l&amp;aacute; cờ&amp;#39; giống như c&amp;aacute;c sự kiện trong tr&amp;ograve; chơi đẩy bạn đến một điểm nhất định)&lt;br /&gt;
&lt;br /&gt;
Từ những d&amp;ograve;ng giải th&amp;iacute;ch v&amp;agrave; ho&amp;agrave;n cảnh, bạn n&amp;ecirc;n biết loại Flag đ&amp;uacute;ng với loại người n&amp;agrave;o?&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; l&amp;agrave; một l&amp;aacute; cờ chiến? Kh&amp;ocirc;ng kh&amp;ocirc;ng n&amp;oacute; c&amp;oacute; kh&amp;aacute;c một ch&amp;uacute;t.&lt;br /&gt;
&lt;br /&gt;
Một cảm gi&amp;aacute;c lạc quan? Hoặc c&amp;oacute; thể l&amp;agrave; một chất độc nọt ng&amp;agrave;o mang t&amp;ecirc;n hi vọng?&lt;br /&gt;
&lt;br /&gt;
Được rồi, cho ph&amp;eacute;p t&amp;ocirc;i sắp xếp c&amp;aacute;c sự kiện:&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i bị n&amp;eacute;m v&amp;agrave;o một thế giới kh&amp;aacute;c.T&amp;ocirc;i theo tiếng th&amp;eacute;t v&amp;agrave; cứu gi&amp;uacute;p một c&amp;ocirc; g&amp;aacute;i orc khỏi con qu&amp;aacute;i vật.V&amp;agrave; c&amp;ocirc; g&amp;aacute;i đầu ti&amp;ecirc;n t&amp;ocirc;i gặp tr&amp;ecirc;n thế giới n&amp;agrave;y c&amp;ocirc; sẽ phải hy sinh bản th&amp;acirc;n m&amp;igrave;nh.V&amp;agrave; sau đ&amp;oacute; t&amp;ocirc;i đi ph&amp;aacute; huỷ thứ gọi l&amp;agrave; hy sinh n&amp;agrave;y. (Chưa)&lt;br /&gt;
&lt;br /&gt;
Bạn hiểu chưa?&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; l&amp;agrave; một h.e.r.o.i.n.e Flaaaagggg!!??!!?? (Tran: heroine flag = Cờ nữ anh h&amp;ugrave;ng What the .....) (Edit: C&amp;aacute;i n&amp;agrave;y gọi l&amp;agrave; đ&amp;atilde; cắm cờ rồi đấy, chuẩn bị thuyền đi l&amp;agrave; vừa :v)&lt;br /&gt;
&lt;br /&gt;
Giờ h&amp;atilde;y thử l&amp;agrave;m điều đ&amp;oacute; (chưa)&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute; sẽ nghi&amp;ecirc;m t&amp;uacute;c ch&amp;agrave;o cờ mất! (It would seriously stand up!)&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng thể, kh&amp;ocirc;ng thể xảy ra được.&lt;br /&gt;
&lt;br /&gt;
Tất nhi&amp;ecirc;n t&amp;ocirc;i kh&amp;ocirc;ng phải l&amp;agrave; loại người ph&amp;aacute;n x&amp;eacute;t một c&amp;ocirc; g&amp;aacute;i dựa theo ngoại h&amp;igrave;nh của họ. C&amp;ocirc; ấy b&amp;igrave;nh thường. V&amp;agrave; ấn tượng về c&amp;ocirc; ấy l&amp;agrave; kh&amp;aacute; xinh.&lt;br /&gt;
&lt;br /&gt;
Nhưng, nhưng nếu đi chơi với một người n&amp;agrave;o đ&amp;oacute; t&amp;ocirc;i muốn đ&amp;oacute; l&amp;agrave; con người. (Tran: em rất tốt nhưng anh rất tiếc =v=/ )&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; c&amp;oacute; phải l&amp;agrave; một sự xa xỉ?&lt;br /&gt;
&lt;br /&gt;
Nếu người ấy hơn orc một ch&amp;uacute;t?&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng kh&amp;ocirc;ng, đ&amp;oacute; l&amp;agrave; sự nguỵ biện.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i cũng c&amp;oacute; king nghiệm như một người b&amp;igrave;nh thường. T&amp;ocirc;i sẽ kh&amp;ocirc;ng để t&amp;acirc;m về những thứ như th&amp;agrave;nh kiến v&amp;agrave; định kiến.&lt;br /&gt;
&lt;br /&gt;
Chắc chắn, từ c&amp;ocirc; g&amp;aacute;i orc t&amp;ocirc;i kh&amp;ocirc;ng hề ngửi thấy m&amp;ugrave;i h&amp;ocirc;i m&amp;agrave; t&amp;ocirc;i biết. Thay v&amp;agrave;o đ&amp;oacute; t&amp;ocirc;i c&amp;oacute; thể ngửi thấy một m&amp;ugrave;i hương giống như hoa từ c&amp;ocirc; ấy.&lt;br /&gt;
&lt;br /&gt;
Giống như một đ&amp;agrave;n chị m&amp;agrave; bạn ngưỡng mộ.&lt;br /&gt;
&lt;br /&gt;
Ha !!!!!!&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng.... Kh&amp;ocirc;ng đ&amp;uacute;ng! Kh&amp;ocirc;ng phải l&amp;agrave; n&amp;oacute;!&lt;br /&gt;
&lt;br /&gt;
Lắng nghe, trong king nghiệm của t&amp;ocirc;i đ&amp;oacute; r&amp;otilde; r&amp;agrave;ng l&amp;agrave; vi phạm đạo đức.&lt;br /&gt;
&lt;br /&gt;
Một sự quyến rũ với những điểm kh&amp;ocirc;ng tự nhi&amp;ecirc;n, những người m&amp;agrave; cơ thể họ đ&amp;atilde; ngừng ph&amp;aacute;t triển ở giai đoạn đầu, c&amp;aacute;c c&amp;ocirc; g&amp;aacute;i đại diện cho tộc Elf, th&amp;uacute; nh&amp;acirc;n với tai động vật v&amp;agrave; &amp;aacute;o gi&amp;aacute;p l&amp;agrave;m bởi da.&lt;br /&gt;
&lt;br /&gt;
Tinh linh c&amp;oacute; dạng người, chủng tộc quỷ với l&amp;agrave;n da xanh hoặc đen hoặc đ&amp;ocirc;i khi m&amp;agrave;u xanh l&amp;aacute; c&amp;acirc;y. Tuỳ thuộc v&amp;agrave;o vẻ bề ngo&amp;agrave;i của n&amp;oacute;, thậm ch&amp;iacute; một con robot cũng tốt.&lt;br /&gt;
&lt;br /&gt;
Một Orc.&lt;br /&gt;
&lt;br /&gt;
Nhưng một Orc th&amp;igrave; kh&amp;ocirc;ng thể.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; l&amp;agrave; sự ph&amp;acirc;n biệt đối xử!?&lt;br /&gt;
&lt;br /&gt;
Im n&amp;agrave;o!! Nếu cơ bản h&amp;igrave;nh thức của n&amp;oacute; kh&amp;ocirc;ng phải l&amp;agrave; một con người giống như t&amp;ocirc;i muốn! Đ&amp;oacute; l&amp;agrave; một phần m&amp;agrave; t&amp;ocirc;i kh&amp;ocirc;ng muốn quay lại ! T&amp;ocirc;i sẽ kh&amp;ocirc;ng quay trở lại!&lt;br /&gt;
&lt;br /&gt;
Tất cả kinh nghiệm m&amp;agrave; t&amp;ocirc;i đ&amp;atilde; chơi trong giấc mơ của đ&amp;agrave;n &amp;ocirc;ng, thật đ&amp;aacute;ng tiếc, thật đ&amp;aacute;ng tiếc đ&amp;atilde; kh&amp;ocirc;ng c&amp;oacute; một c&amp;ocirc; g&amp;aacute;i orc giống như một mục ti&amp;ecirc;u chinh phục.&lt;br /&gt;
&lt;br /&gt;
Wa, kinh nghiệm! Đ&amp;uacute;ng vậy, đ&amp;oacute; l&amp;agrave; trong game! N&amp;oacute; tệ kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
D&amp;ugrave; sao, bạn sẽ c&amp;oacute; được n&amp;oacute;. Coi c&amp;ocirc; ấy l&amp;agrave; một mục ti&amp;ecirc;u chinh phục sẽ kh&amp;ocirc;ng xảy ra.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;V&amp;igrave; vậy đ&amp;oacute; l&amp;agrave; l&amp;iacute; do tại sao, t&amp;ocirc;i xin lỗi!&amp;quot; (Makoto)&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i xin lỗi c&amp;ocirc; ấy ngay từ l&amp;uacute;c bắt đầu. Điều đ&amp;oacute; sẽ tốt hơn nế giải quyết cang sớm c&amp;agrave;ng tốt.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;&amp;Ecirc;, bạn đang n&amp;oacute;i về c&amp;aacute;i g&amp;igrave; vậy?&amp;quot; (Orc)&lt;br /&gt;
&lt;br /&gt;
Chết tiệt. T&amp;ocirc;i đ&amp;atilde; sai lầm khi để tr&amp;aacute;i tim xen v&amp;agrave;o cuộc tr&amp;ograve; chuyện n&amp;agrave;y. Đ&amp;acirc;y l&amp;agrave; một sai lầm.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;&amp;Agrave; &amp;agrave;, kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; cả!&amp;quot;&lt;br /&gt;
&lt;br /&gt;
C&amp;ocirc; g&amp;aacute;i đ&amp;atilde; bối rối. Nhưng điều đ&amp;oacute; chỉ xảy ra trong khoảng khắc ngắn, c&amp;ocirc; ấy lại mỉm nụ cười với t&amp;ocirc;i lần nữa.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;D&amp;ugrave; sao th&amp;igrave;, nếu n&amp;oacute; vẫn ổn với bạn, xin cho ph&amp;eacute;p t&amp;ocirc;i bồi thường Makoto-sama.&amp;quot; (Orc)&lt;br /&gt;
&lt;br /&gt;
Wow, nghĩ đến việc c&amp;ocirc; ấy vẫn nhớ t&amp;ecirc;n t&amp;ocirc;i sau việc đ&amp;oacute;. Yeah, t&amp;ocirc;i đ&amp;atilde; qu&amp;ecirc;n rằng sau đ&amp;oacute; c&amp;ocirc; ấy n&amp;oacute;i &amp;quot;N&amp;oacute; n&amp;oacute;i?&amp;quot;.&lt;br /&gt;
&lt;br /&gt;
Một qu&amp;yacute; c&amp;ocirc; lịch sự. Đ&amp;aacute;ng tiếc. Hơn cả c&amp;ocirc; g&amp;aacute;i lo&amp;agrave;i người, t&amp;ocirc;i th&amp;iacute;ch c&amp;ocirc; ấy l&amp;agrave; một c&amp;ocirc; g&amp;aacute;i ch&amp;oacute; hoặc l&amp;agrave; một c&amp;ocirc; g&amp;aacute;i m&amp;egrave;o d&amp;ugrave;....&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Uh, t&amp;ocirc;i l&amp;agrave; Makoto. T&amp;ocirc;i 17 tuổi. Rất vui được gặp bạn.&amp;quot; (Makoto)&lt;br /&gt;
&lt;br /&gt;
&amp;quot;T&amp;ocirc;i l&amp;agrave; Ema, t&amp;ocirc;i cũng 17 tuổi.&amp;quot; (Ema)&lt;br /&gt;
&lt;br /&gt;
Nghĩ đến tuổi t&amp;aacute;c của c&amp;ocirc; cũng rất ph&amp;ugrave; hợp! N&amp;oacute; thực sự l&amp;agrave; chủng tộc của c&amp;ocirc; l&amp;agrave;m l&amp;aacute; cờ giống như cờ chiến.&lt;br /&gt;
&lt;br /&gt;
Bằng c&amp;aacute;ch n&amp;agrave;y, từ &amp;quot;kh&amp;ocirc;ng cưới&amp;quot; m&amp;agrave; s&amp;acirc;u bọ đ&amp;atilde; n&amp;oacute;i với t&amp;ocirc;i thậm ch&amp;iacute; c&amp;ograve;n kh&amp;ocirc;ng tồn tại trong t&amp;acirc;m ch&amp;iacute; của t&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Tsuki-sama đ&amp;atilde; n&amp;oacute;i rằng t&amp;ocirc;i c&amp;oacute; thể l&amp;agrave;m bất k&amp;igrave; thứ g&amp;igrave; t&amp;ocirc;i muốn sau tất cả.&lt;br /&gt;
&lt;br /&gt;
Điều n&amp;agrave;y kh&amp;aacute; l&amp;agrave; xấu hổ nhưng n&amp;oacute; giống như c&amp;ocirc; ấy khiến t&amp;ocirc;i th&amp;agrave;nh vệ sĩ của c&amp;ocirc; ấy cho đến khi ch&amp;uacute;ng t&amp;ocirc;i đến nơi &amp;quot;Body Purifying Field&amp;quot;. V&amp;acirc;ng nếu n&amp;oacute; giống như trước th&amp;igrave; sẽ kh&amp;ocirc;ng c&amp;oacute; vấn đề g&amp;igrave; cả. Nếu một tảng đ&amp;aacute; rơi xuống t&amp;ocirc;i chắc l&amp;agrave; c&amp;oacute; thể đẩy l&amp;ugrave;i n&amp;oacute; tốt.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Cảm ơm, Ema.&amp;quot; (Makoto)&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i chấp nhận lời mời của c&amp;ocirc; ấy v&amp;agrave; ch&amp;uacute;ng t&amp;ocirc;i bắt đầu đi bộ về nơi gọi l&amp;agrave; n&amp;uacute;i thần.&lt;br /&gt;
&lt;br /&gt;
Kỳ lạ thay, t&amp;ocirc;i c&amp;agrave;ng n&amp;oacute;i chuyện với c&amp;ocirc; ấy th&amp;igrave; c&amp;agrave;ng tr&amp;ocirc;i chảy hơn. T&amp;ocirc;i c&amp;oacute; thể hiểu điều m&amp;agrave; c&amp;ocirc; ấy n&amp;oacute;i.&lt;br /&gt;
&lt;br /&gt;
S&amp;acirc;u bọ đ&amp;atilde; đưa cho t&amp;ocirc;i sức mạnh cho ph&amp;eacute;p t&amp;ocirc;i hiểu được ng&amp;ocirc;n ngữ của lo&amp;agrave;i kh&amp;aacute;c khi t&amp;ocirc;i n&amp;oacute;i chuyện với họ. Như điều chỉnh giống suy nghĩ của họ.&lt;br /&gt;
&lt;br /&gt;
V&amp;acirc;ng, t&amp;ocirc;i kh&amp;ocirc;ng c&amp;oacute; bất kỳ vấn đ&amp;egrave; với điều n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
Trong khi n&amp;oacute;i chuyện với c&amp;ocirc; ấy ch&amp;uacute;ng t&amp;ocirc;i tiếp tục chuyến đi của m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
C&amp;ocirc; ấy n&amp;oacute;i với t&amp;ocirc;i l&amp;agrave; l&amp;agrave;ng của c&amp;ocirc; ấy đang mất dần đi c&amp;aacute;c c&amp;ocirc; g&amp;aacute;i trẻ. C&amp;ocirc; ấy cũng kể với t&amp;ocirc;i những c&amp;acirc;u chuyện về lễ hội l&amp;agrave;ng m&amp;igrave;nh đ&amp;atilde; thực hiện trong thời b&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
Nếu hai c&amp;ocirc; g&amp;aacute;i trẻ ra đi mỗi năm để hi sinh th&amp;igrave; trong tương lai n&amp;oacute; sẽ hư mất. Đ&amp;oacute; l&amp;agrave; một ph&amp;eacute;p t&amp;iacute;nh đơn giản. Ngay cả một đứa trẻ cũng biết điều đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Ngay từ l&amp;uacute;c bắt đầu, Ema đ&amp;atilde; l&amp;agrave; vật hi sinh v&amp;agrave; đang tr&amp;ecirc;n đường đến chỗ chết của c&amp;ocirc; ấy.&lt;br /&gt;
&lt;br /&gt;
C&amp;ocirc; ấy n&amp;oacute;i chuyện một c&amp;aacute;ch ảm đạm trong suốt thời gian, điều đ&amp;oacute; kh&amp;ocirc;ng hề ngạc nhi&amp;ecirc;n ch&amp;uacute;t n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i chỉ trả lời của c&amp;ocirc; ấy v&amp;agrave; đi theo, nhưng t&amp;ocirc;i vẫn c&amp;oacute; một số c&amp;acirc;u hỏi.&lt;br /&gt;
&lt;br /&gt;
Sau n&amp;agrave;y t&amp;ocirc;i sẽ nghĩ về ch&amp;uacute;ng một c&amp;aacute;ch cẩn thận.&lt;br /&gt;
&lt;br /&gt;
Ngay sau khi đến nơi dừng ch&amp;acirc;n cuối c&amp;ugrave;ng, những g&amp;igrave; t&amp;ocirc;i n&amp;ecirc;n l&amp;agrave;m?&lt;br /&gt;
&lt;br /&gt;
Nếu t&amp;ocirc;i đi v&amp;agrave; đ&amp;aacute;nh bại boss trung, liệu cờ sẽ được dựng l&amp;ecirc;n?&lt;br /&gt;
&lt;br /&gt;
C&amp;ocirc; ấy l&amp;agrave; một c&amp;ocirc; g&amp;aacute;i tốt nhưng...&lt;br /&gt;
&lt;br /&gt;
C&amp;ocirc; ấy c&amp;oacute; một nh&amp;acirc;n c&amp;aacute;ch tốt đẹp, tuổi của c&amp;ocirc; ấy th&amp;igrave; gần qu&amp;aacute;. C&amp;ocirc; ấy cũng l&amp;agrave; con g&amp;aacute;i của trưởng l&amp;agrave;ng, do đ&amp;oacute; n&amp;oacute; c&amp;oacute; thể tr&amp;ocirc;ng t&amp;ocirc;i giống như một người đ&amp;agrave;o mỏ.&lt;br /&gt;
&lt;br /&gt;
Muu~ thực sự, tại sao bạn kh&amp;ocirc;ng phải l&amp;agrave; một con người chứ, Ema?&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute; c&amp;oacute; thể bạn l&amp;agrave; một n&amp;agrave;ng c&amp;ocirc;ng ch&amp;uacute;a xing đẹp bị nguyền rủa.&lt;br /&gt;
&lt;br /&gt;
Nền văn minh của con người qu&amp;aacute; xa nơi n&amp;agrave;y n&amp;ecirc;n kh&amp;ocirc;ng thể xảy ra.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Ah, l&amp;agrave; nơi đ&amp;oacute;.&amp;quot; (Ema)&lt;br /&gt;
&lt;br /&gt;
Ema chỉ một ng&amp;oacute;n tay v&amp;agrave;o một hang động. N&amp;oacute; chắc chắn giống như được thực hiện một c&amp;aacute;ch nh&amp;acirc;n tạo. T&amp;igrave;nh trạng của cửa ra v&amp;agrave;o cũng như con đường đến đ&amp;oacute;. R&amp;otilde; r&amp;agrave;ng c&amp;oacute; dấu vết của b&amp;agrave;n tay t&amp;aacute;c động l&amp;ecirc;n n&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
&amp;quot;Um, Makoto-san. Xin lỗi nhưng bạn c&amp;oacute; thể chờ ở đ&amp;acirc;y một ch&amp;uacute;t được kh&amp;ocirc;ng? T&amp;ocirc;i phải đi v&amp;agrave;o v&amp;agrave; giải th&amp;iacute;ch với người d&amp;acirc;n bảo vệ nơi n&amp;agrave;y về Makoto.&amp;quot; (Ema)&lt;br /&gt;
&lt;br /&gt;
&amp;quot; T&amp;ocirc;i hiểu.&amp;quot; (Makoto)&lt;br /&gt;
&lt;br /&gt;
Điều đ&amp;oacute; l&amp;agrave; hợp l&amp;yacute;. Nếu t&amp;ocirc;i đi v&amp;agrave;o c&amp;ugrave;ng c&amp;ocirc; ấy t&amp;ocirc;i c&amp;oacute; thể sẽ bị tấn c&amp;ocirc;ng.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i hiểu ngầm một ch&amp;uacute;t về bố tr&amp;iacute; của Ema-san.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng c&amp;oacute; c&amp;aacute;ch n&amp;agrave;o để c&amp;ocirc; ấy mang một qu&amp;acirc;n đội đ&amp;eacute;n tấn c&amp;ocirc;ng t&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Thậm ch&amp;iacute; nếu điều đ&amp;oacute; đến, kể từ khi t&amp;ocirc;i thấy r&amp;otilde; c&amp;aacute;c lối v&amp;agrave;o từ đay t&amp;ocirc;i c&amp;oacute; thể tho&amp;aacute;t được,&lt;br /&gt;
&lt;br /&gt;
Khẳng định rằng b&amp;oacute;ng của Ema đ&amp;atilde; khuất sau hang động, t&amp;ocirc;i bắt đầu suy nghĩ về tương lai.&lt;br /&gt;
&lt;br /&gt;
Với tốc độ n&amp;agrave;y Ema sẽ chết. C&amp;ocirc; ấy l&amp;agrave; một vật hi sinh sau tất cả.&lt;br /&gt;
&lt;br /&gt;
C&amp;ocirc; g&amp;aacute;i đ&amp;oacute; thực sự l&amp;agrave; một Orc tốt. Hơn nữa c&amp;ocirc; ấy l&amp;agrave; người đầu ti&amp;ecirc;n đ&amp;atilde; n&amp;oacute;i chuyện với t&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; thể c&amp;oacute; một ch&amp;uacute;t kh&amp;aacute;c nhau nhưng c&amp;ocirc; ấy giống như một đồng ch&amp;iacute;.&lt;br /&gt;
&lt;br /&gt;
Nếu c&amp;oacute; thể, t&amp;ocirc;i muốn cứu c&amp;ocirc; ấy, nhưng l&amp;aacute; cờ thật l&amp;agrave; khắc nghiệt. V&amp;agrave; t&amp;ocirc;i kh&amp;ocirc;ng biết sức mạnh của kẻ th&amp;ugrave;.&lt;br /&gt;
&lt;br /&gt;
Nếu t&amp;ocirc;i nghĩ về tất cả những g&amp;igrave; đ&amp;atilde; xảy ra, n&amp;oacute; sẽ kh&amp;ocirc;ng lạ l&amp;agrave; gặp boss cuối c&amp;ograve;n lại.&lt;br /&gt;
&lt;br /&gt;
Điều n&amp;agrave;y ho&amp;agrave;n to&amp;agrave;n l&amp;agrave; một maso-game.&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; n&amp;oacute; kh&amp;ocirc;ng phải l&amp;agrave; tr&amp;ograve; chơi nhưng thực tế l&amp;agrave; n&amp;oacute; r&amp;otilde; r&amp;agrave;ng l&amp;agrave; kh&amp;oacute; khăn.&lt;br /&gt;
&lt;br /&gt;
Nếu t&amp;ocirc;i c&amp;oacute; thể c&amp;oacute; được v&amp;agrave;i th&amp;ocirc;ng tin hữu &amp;iacute;ch từ hang động đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
V&amp;agrave;o s&amp;aacute;ng sớm t&amp;ocirc;i sẽ l&amp;eacute;n ra ngo&amp;agrave;i, đ&amp;aacute;nh bại vị &amp;quot;thần&amp;quot; đ&amp;oacute; v&amp;agrave; kết quả l&amp;agrave; t&amp;ocirc;i sẽ cứu được c&amp;ocirc; g&amp;aacute;i.&lt;br /&gt;
&lt;br /&gt;
Sẽ kh&amp;ocirc;ng sao nếu t&amp;ocirc;i biến mất ngay sau đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Nếu t&amp;ocirc;i hứa với c&amp;ocirc; ấy rằng ng&amp;ocirc;i l&amp;agrave;ng của c&amp;ocirc; ấy vẫn tồn tại v&amp;agrave; c&amp;ocirc; ấy c&amp;oacute; thể trở về l&amp;agrave;ng sau tất cả.&lt;br /&gt;
&lt;br /&gt;
Boss m&amp;agrave; Ema gọi l&amp;agrave; Shen-sama, nếu đ&amp;oacute; l&amp;agrave; t&amp;ocirc;i, t&amp;ocirc;i c&amp;oacute; thể n&amp;oacute;i chuyện với n&amp;oacute;. N&amp;ecirc;n c&amp;oacute; những c&amp;aacute;ch kh&amp;aacute;c giải quyết mọi chuyện m&amp;agrave; kh&amp;ocirc;ng phải đ&amp;aacute;nh nhau.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i thấy Ema vẫy tay ở lối v&amp;agrave;o hang động. C&amp;ocirc; ấy mỉm cười. C&amp;ocirc; ấy đ&amp;atilde; th&amp;agrave;nh c&amp;ocirc;ng trong cuộc đ&amp;agrave;m ph&amp;aacute;n của m&amp;igrave;nh.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n thấy c&amp;ocirc; ấy xuất hiện.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i suy nghĩ một ch&amp;uacute;t, để l&amp;agrave;m giả anh h&amp;ugrave;ng m&amp;agrave; Nữ thần đ&amp;atilde; n&amp;oacute;i l&amp;agrave; t&amp;ocirc;i kh&amp;ocirc;ng phải l&amp;agrave;m&lt;/p&gt;
', 1, CAST(0x0000ADE401722228 AS DateTime), CAST(0x0000ADE401722228 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2094, 1076, 1039, N'Chương 1: Khởi đầu', N'&lt;p&gt;Cuộc chiến giữa 『Ma Vương』 v&amp;agrave; 『Anh H&amp;ugrave;ng』.&lt;br /&gt;
&lt;br /&gt;
Cuộc chiến đ&amp;atilde; lặp v&amp;ocirc; số lần tr&amp;ecirc;n thế giới n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
『Ma Vương』 l&amp;agrave; ch&amp;uacute;a tể của to&amp;agrave;n bộ Ma Tộc.&lt;br /&gt;
&lt;br /&gt;
Mỗi thời đại chỉ tồn tại một 『Ma Vương』 duy nhất.&lt;br /&gt;
&lt;br /&gt;
Khi 『Ma Vương』 của thời đại n&amp;agrave;y bị ti&amp;ecirc;u diệt, một người thuộc Ma Tộc xuất sắc sẽ trở th&amp;agrave;nh 『Ma Vương』 của thời đại kế tiếp.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; l&amp;agrave; c&amp;aacute;ch thế giới n&amp;agrave;y hoạt động.&lt;br /&gt;
&lt;br /&gt;
Bằng c&amp;aacute;ch n&amp;agrave;y, 『Ma Vương』 sẽ kh&amp;ocirc;ng bao giờ thực sự bị ti&amp;ecirc;u diệt.&lt;br /&gt;
&lt;br /&gt;
Bản chất của 『Ma Vương』 chỉ l&amp;agrave; một danh hiệu.&lt;br /&gt;
&lt;br /&gt;
『Ma Vương』 l&amp;agrave; kẻ c&amp;oacute; thể dời n&amp;uacute;i lấp biển với sức của bản th&amp;acirc;n hắn.&lt;br /&gt;
&lt;br /&gt;
『Ma Vương』 l&amp;agrave; kẻ tinh th&amp;ocirc;ng ph&amp;aacute;p thuật v&amp;agrave; c&amp;oacute; hơn ng&amp;agrave;n vạn kĩ năng kh&amp;aacute;c nhau.&lt;br /&gt;
&lt;br /&gt;
Nếu 『Anh H&amp;ugrave;ng』 c&amp;oacute; thể ti&amp;ecirc;u diệt được 『Ma Vương』, th&amp;igrave; 『Ma Vương』 cũng c&amp;oacute; khả năng ti&amp;ecirc;u diệt 『Anh H&amp;ugrave;ng』.&lt;br /&gt;
&lt;br /&gt;
『Ma Vương』v&amp;agrave; 『Anh H&amp;ugrave;ng』 kh&amp;ocirc;ng thể thực sự bị ti&amp;ecirc;u diệt ho&amp;agrave;n to&amp;agrave;n.&lt;br /&gt;
&lt;br /&gt;
Cuộc chiến giữa hai b&amp;ecirc;n lu&amp;ocirc;n tiếp tục, kh&amp;ocirc;ng bao giờ ngừng lại.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;acirc;y ch&amp;iacute;nh l&amp;agrave; vận mệnh của thế giới n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
Khi thảm họa xảy xa, bản chất tồn tại của 『Ma Vương』 v&amp;agrave; 『Anh H&amp;ugrave;ng』 l&amp;agrave; ho&amp;agrave;n to&amp;agrave;n giống nhau.&lt;br /&gt;
&lt;br /&gt;
Cả hai đều c&amp;oacute; thể sử dụng Ma Ph&amp;aacute;p Kh&amp;ocirc;ng Gian m&amp;agrave; hiếm ai c&amp;oacute; được.&lt;br /&gt;
&lt;br /&gt;
Ma Ph&amp;aacute;p ngang tầm với c&amp;aacute;c vị thần, khả năng điều khiển được kh&amp;ocirc;ng gian v&amp;agrave; kh&amp;ocirc;ng-thời gian.&lt;br /&gt;
&lt;br /&gt;
Họ đ&amp;atilde; tung ra ma ph&amp;aacute;p theo đ&amp;uacute;ng như vận mệnh đ&amp;atilde; định.&lt;br /&gt;
&lt;br /&gt;
Hai ma ph&amp;aacute;p va chạm nhau, v&amp;agrave; thế giới đ&amp;atilde; g&amp;agrave;o th&amp;eacute;t.&lt;br /&gt;
&lt;br /&gt;
Cả hai, 『Ma Vương』 v&amp;agrave; 『Anh H&amp;ugrave;ng』 bị ch&amp;iacute;nh ma ph&amp;aacute;p của m&amp;igrave;nh phản lại m&amp;agrave; chết.&lt;br /&gt;
&lt;br /&gt;
Dư &amp;acirc;m của sự va chạm ấy lan tới một thế giới kh&amp;aacute;c.&lt;br /&gt;
&lt;br /&gt;
Điểm đến của vụ nổ l&amp;agrave; thế giới mang t&amp;ecirc;n Tr&amp;aacute;i Đất, ở đất nước t&amp;ecirc;n gọi Nhật Bản, trong một ng&amp;ocirc;i trường cấp 3.&lt;br /&gt;
&lt;br /&gt;
B&amp;ecirc;n trong lớp học ấy, tổng cộng 26 sinh linh bao gồm gi&amp;aacute;o vi&amp;ecirc;n v&amp;agrave; học sinh đ&amp;atilde; tử vong từ vụ nổ ma ph&amp;aacute;p.&lt;br /&gt;
&lt;br /&gt;
Thảm họa ấy sau n&amp;agrave;y đ&amp;atilde; được ghi lại th&amp;agrave;nh một vụ nổ lớn b&amp;iacute; ẩn.&lt;br /&gt;
&lt;br /&gt;
Nhưng những người đ&amp;atilde; chết kh&amp;ocirc;ng biết về chuyện đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Ngay cả khi họ được hồi sinh lại.&lt;br /&gt;
&lt;br /&gt;
V&amp;igrave; linh hồn của to&amp;agrave;n bộ họ đ&amp;atilde; chuyển ngược lại tới thế giới nơi m&amp;agrave; 『Ma Vương』 v&amp;agrave; 『Anh H&amp;ugrave;ng』 đ&amp;atilde; lu&amp;ocirc;n chiến đấu với nhau.&lt;br /&gt;
&lt;br /&gt;
Linh hồn của họ truyền khắp mọi nơi tr&amp;ecirc;n thế giới mới n&amp;agrave;y, v&amp;agrave; to&amp;agrave;n bộ đều hồi sinh với một cuộc đời mới.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;acirc;y l&amp;agrave; c&amp;acirc;u chuyện của một trong số đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
~~~&lt;br /&gt;
&lt;br /&gt;
Uguoga!&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i cố gắng ph&amp;aacute;t ra &amp;acirc;m thanh nhưng kh&amp;ocirc;ng được.&lt;br /&gt;
&lt;br /&gt;
(Kh&amp;ocirc;ng lẽ cơ thể m&amp;igrave;nh rơi v&amp;agrave;o t&amp;igrave;nh trạng nguy kịch tới mức đ&amp;oacute; sao?)&lt;br /&gt;
&lt;br /&gt;
Được rồi, b&amp;igrave;nh tĩnh n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i kh&amp;ocirc;ng cảm thấy cơ thể bị đau hay g&amp;igrave; cả.&lt;br /&gt;
&lt;br /&gt;
Chuyện cuối c&amp;ugrave;ng t&amp;ocirc;i nhớ ra được l&amp;agrave; đang ở trong lớp học m&amp;ocirc;n Văn rồi đột nhi&amp;ecirc;n c&amp;oacute; cảm gi&amp;aacute;c đau điếng.&lt;br /&gt;
&lt;br /&gt;
Sau đ&amp;oacute; c&amp;oacute; lẽ t&amp;ocirc;i đ&amp;atilde; bất tỉnh, nhưng hiện tại th&amp;igrave; kh&amp;ocirc;ng c&amp;oacute; đau đớn g&amp;igrave; cả.&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; t&amp;ocirc;i đang mở mắt, nhưng xung quanh chỉ l&amp;agrave; một m&amp;agrave;u tối đen như mực, ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc;ng thể biết được m&amp;igrave;nh đang ở đ&amp;acirc;u cả.&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
Hơn nữa l&amp;agrave; t&amp;ocirc;i thậm ch&amp;iacute; c&amp;ograve;n kh&amp;ocirc;ng di chuyển được, nhưng t&amp;ocirc;i c&amp;oacute; thể cảm gi&amp;aacute;c được người t&amp;ocirc;i bị bao bọc bởi c&amp;aacute;i g&amp;igrave; đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Liệu đ&amp;acirc;y c&amp;oacute; phải l&amp;agrave; t&amp;igrave;nh trạng thực vật?&lt;br /&gt;
&lt;br /&gt;
Uwaa.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; l&amp;agrave; chuyện t&amp;ocirc;i kh&amp;ocirc;ng muốn thừa nhận ch&amp;uacute;t n&amp;agrave;o, nhưng c&amp;oacute; vẻ đ&amp;oacute; l&amp;agrave; khả năng cao nhất ở hiện tại.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i kh&amp;ocirc;ng biết l&amp;uacute;c đ&amp;oacute; đ&amp;atilde; xảy ra chuyện g&amp;igrave; nhưng c&amp;oacute; vẻ l&amp;agrave; t&amp;ocirc;i đ&amp;atilde; bị biến th&amp;agrave;nh một người sống thực vật&amp;hellip;&lt;br /&gt;
&lt;br /&gt;
Nai waa. (Tn: no way)&lt;br /&gt;
&lt;br /&gt;
Chỉ c&amp;oacute; &amp;yacute; thức, kh&amp;ocirc;ng c&amp;oacute; khả năng điều khiển cơ thể v&amp;agrave; kh&amp;ocirc;ng c&amp;ograve;n 5 gi&amp;aacute;c quan.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng bao l&amp;acirc;u t&amp;ocirc;i sẽ đi&amp;ecirc;n mất.&lt;br /&gt;
&lt;br /&gt;
Nai waa!!&lt;br /&gt;
&lt;br /&gt;
Khi nghĩ đến đ&amp;oacute; th&amp;igrave; t&amp;ocirc;i chợt nghe tiếng xột xoạt ở đ&amp;acirc;u đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; vẻ t&amp;ocirc;i vẫn c&amp;ograve;n th&amp;iacute;nh gi&amp;aacute;c.&lt;br /&gt;
&lt;br /&gt;
Un ~.~&lt;br /&gt;
&lt;br /&gt;
Ngay cả khi t&amp;ocirc;i nghe được th&amp;igrave; t&amp;igrave;nh h&amp;igrave;nh hiện tại cũng kh&amp;ocirc;ng kh&amp;aacute; hơn mấy.&lt;br /&gt;
&lt;br /&gt;
*GAN!*&lt;br /&gt;
&lt;br /&gt;
Ui da!?&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; l&amp;agrave; g&amp;igrave; vậy?&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i vừa đụng d&amp;iacute;nh c&amp;aacute;i g&amp;igrave; đ&amp;oacute; &amp;agrave;?&lt;br /&gt;
&lt;br /&gt;
Hmm?&lt;br /&gt;
&lt;br /&gt;
Vừa rồi t&amp;ocirc;i đ&amp;atilde; thấy đau, vậy tức l&amp;agrave; cảm gi&amp;aacute;c vẫn c&amp;ograve;n &amp;agrave;?&lt;br /&gt;
&lt;br /&gt;
Huh?&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i n&amp;ecirc;n b&amp;igrave;nh tĩnh lại một ch&amp;uacute;t.&lt;br /&gt;
&lt;br /&gt;
Suy nghĩ kĩ một ch&amp;uacute;t, t&amp;ocirc;i cảm gi&amp;aacute;c hơi kh&amp;oacute; chịu nhưng c&amp;oacute; vẻ l&amp;agrave; t&amp;ocirc;i vừa di chuyển cơ thể m&amp;igrave;nh được một ch&amp;uacute;t!&lt;br /&gt;
&lt;br /&gt;
Ph&amp;ugrave;, c&amp;oacute; vẻ t&amp;ocirc;i kết luận m&amp;igrave;nh bị sống thực vật hơi sớm một ch&amp;uacute;t.&lt;br /&gt;
&lt;br /&gt;
L&amp;uacute;c n&amp;atilde;y cơ thể t&amp;ocirc;i bị bao bọc bởi c&amp;aacute;i g&amp;igrave; đ&amp;oacute;, v&amp;agrave; b&amp;acirc;y giờ cũng vậy.&lt;br /&gt;
&lt;br /&gt;
Ahaha.&lt;br /&gt;
&lt;br /&gt;
Khoan c&amp;aacute;i n&amp;agrave;y h&amp;igrave;nh như kh&amp;ocirc;ng đ&amp;ugrave;a được!?&lt;br /&gt;
&lt;br /&gt;
Eh, t&amp;igrave;nh huống b&amp;acirc;y giờ l&amp;agrave; thế n&amp;agrave;o?&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i bị bắt c&amp;oacute;c v&amp;agrave; bỏ v&amp;ocirc; bao &amp;agrave;?&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng thể n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
Bắt c&amp;oacute;c một c&amp;ocirc; g&amp;aacute;i kh&amp;ocirc;ng nổi tiếng như t&amp;ocirc;i c&amp;oacute; lợi g&amp;igrave; chứ?&lt;br /&gt;
&lt;br /&gt;
D&amp;ugrave; sao đi nữa tho&amp;aacute;t khỏi đ&amp;acirc;y trước đ&amp;atilde; rồi t&amp;iacute;nh.&lt;br /&gt;
&lt;br /&gt;
Crắc!&lt;br /&gt;
&lt;br /&gt;
Khi t&amp;ocirc;i cố gắng di chuyển cơ thể th&amp;igrave; c&amp;aacute;i g&amp;igrave; đ&amp;oacute; đang bao bọc t&amp;ocirc;i dần vỡ ra.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; vẻ kh&amp;ocirc;ng phải l&amp;agrave; một c&amp;aacute;i bao.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i tự hỏi n&amp;oacute; l&amp;agrave; g&amp;igrave;?&lt;br /&gt;
&lt;br /&gt;
Vừa cứng lại vừa mềm, một cảm gi&amp;aacute;c rất lạ.&lt;br /&gt;
&lt;br /&gt;
Meh, cứ đập n&amp;oacute; bể trước.&lt;br /&gt;
&lt;br /&gt;
Đập n&amp;oacute; bể v&amp;agrave; tho&amp;aacute;t khỏi đ&amp;acirc;y.&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
Crắc!&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute; bể rồi!&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i d&amp;ugrave;ng tay l&amp;ocirc;i cơ thể m&amp;igrave;nh ra khỏi đ&amp;oacute;, đầu trước.&lt;br /&gt;
&lt;br /&gt;
Tự do!&lt;br /&gt;
&lt;br /&gt;
Trước mắt t&amp;ocirc;i, l&amp;agrave; một ổ nhện lớn b&amp;ograve; lổn ngổn.&lt;br /&gt;
&lt;br /&gt;
Howaiii!?&lt;br /&gt;
&lt;br /&gt;
Ueeeeeeeh!?&lt;br /&gt;
&lt;br /&gt;
Kisho!?&lt;br /&gt;
&lt;br /&gt;
Qu&amp;acirc;n đo&amp;agrave;n nhện n&amp;agrave;y l&amp;agrave; sao!?&lt;br /&gt;
&lt;br /&gt;
Con n&amp;agrave;o con nấy to bằng t&amp;ocirc;i!?&lt;br /&gt;
&lt;br /&gt;
Eh, h&amp;igrave;nh như bọn ch&amp;uacute;ng đang b&amp;ograve; từ trứng ra!&lt;br /&gt;
&lt;br /&gt;
Vậy tiếng xột soạt t&amp;ocirc;i nghe l&amp;agrave; bọn N&amp;Agrave;Y!!&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i giật m&amp;igrave;nh v&amp;agrave; lui lại.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i g&amp;igrave; đ&amp;oacute; chạm d&amp;iacute;nh ch&amp;acirc;n t&amp;ocirc;i n&amp;ecirc;n t&amp;ocirc;i quay lại.&lt;br /&gt;
&lt;br /&gt;
Un?&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i n&amp;agrave;y?&lt;br /&gt;
&lt;br /&gt;
Đ&amp;acirc;y l&amp;agrave; thứ m&amp;agrave; t&amp;ocirc;i vừa b&amp;ograve; ra khỏi sao?&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n n&amp;oacute; gi&amp;ocirc;ng giống trứng của qu&amp;acirc;n đo&amp;agrave;n nhện&amp;hellip; T&amp;ocirc;i c&amp;oacute; đang tưởng tượng kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
H&amp;igrave;nh như kh&amp;ocirc;ng phải gi&amp;ocirc;ng giống m&amp;agrave; thực sự ch&amp;iacute;nh l&amp;agrave; trứng th&amp;igrave; phải?&lt;br /&gt;
&lt;br /&gt;
Một lần nữa t&amp;ocirc;i tự kiểm tra bản th&amp;acirc;n.&lt;br /&gt;
&lt;br /&gt;
Cổ t&amp;ocirc;i kh&amp;ocirc;ng di chuyển được.&lt;br /&gt;
&lt;br /&gt;
Nhưng ở g&amp;oacute;c mắt t&amp;ocirc;i thấy được c&amp;aacute;i g&amp;igrave; đ&amp;oacute;, c&amp;aacute;i g&amp;igrave; đ&amp;oacute; giống như một c&amp;aacute;i ch&amp;acirc;n.&lt;br /&gt;
&lt;br /&gt;
Một c&amp;aacute;i ch&amp;acirc;n của nhện.&lt;br /&gt;
&lt;br /&gt;
Bi-bi-bi-biiiiiiii B&amp;Igrave;NH TĨNH !!!!&lt;br /&gt;
&lt;br /&gt;
T-thiệt đ&amp;oacute; hả!?&lt;br /&gt;
&lt;br /&gt;
Thiệt chứ kh&amp;ocirc;ng đ&amp;ugrave;a hả!?&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i c&amp;acirc;u truyện nổi tiếng tr&amp;ecirc;n mạng đ&amp;oacute; sao!?&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng kh&amp;ocirc;ng kh&amp;ocirc;ng!&lt;br /&gt;
&lt;br /&gt;
Trong truyện th&amp;igrave; c&amp;oacute; một người giống như Ch&amp;uacute;a ban quyền năng cho mọi người m&amp;agrave;?.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i chưa từng thấy Ch&amp;uacute;a n&amp;agrave;o như thế n&amp;ecirc;n chắc chắn kh&amp;ocirc;ng phải!&lt;br /&gt;
&lt;br /&gt;
Thực ra th&amp;igrave; vẫn c&amp;oacute; dạng cốt truyện l&amp;agrave; Ch&amp;uacute;a kh&amp;ocirc;ng xuất hiện.&lt;br /&gt;
&lt;br /&gt;
Nam sinh ra th&amp;igrave; l&amp;agrave;m anh h&amp;ugrave;ng dự bị, nữ sinh ra th&amp;igrave; l&amp;agrave;m con g&amp;aacute;i của kẻ xấu, dạng cốt truyện n&amp;agrave;y cũng c&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i ngay lập tức nh&amp;igrave;n sang một b&amp;ecirc;n lần nữa.&lt;br /&gt;
&lt;br /&gt;
Như những con nhện kia, c&amp;oacute; một c&amp;aacute;i ch&amp;acirc;n mỏng như d&amp;acirc;y điện.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i thử di chuyển ch&amp;acirc;n của t&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i ch&amp;acirc;n ấy di chuyển đ&amp;uacute;ng như &amp;yacute; muốn.&lt;br /&gt;
&lt;br /&gt;
Umu~&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; điểm mạnh của t&amp;ocirc;i l&amp;agrave; trốn tho&amp;aacute;t thực tại, nhưng c&amp;oacute; vẻ lần n&amp;agrave;y kh&amp;ocirc;ng thể l&amp;agrave;m được rồi.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; vẻ t&amp;ocirc;i đ&amp;atilde; hồi sinh th&amp;agrave;nh một con nhện.&lt;/p&gt;
', 1, CAST(0x0000ADE40172BD27 AS DateTime), CAST(0x0000ADE40172BD27 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2095, 1076, 1039, N'Chương 2: Khởi Đầu – Coi Bộ Tôi Là Quái Vật', N'&lt;p&gt;Rất tiếc phải th&amp;ocirc;ng b&amp;aacute;o rằng t&amp;ocirc;i đ&amp;atilde; hồi sinh th&amp;agrave;nh một con nhện.&lt;br /&gt;
&lt;br /&gt;
Nhưng d&amp;ugrave; c&amp;oacute; thể chấp nhận điều n&amp;agrave;y, t&amp;ocirc;i vẫn chẳng biết m&amp;igrave;nh n&amp;ecirc;n l&amp;agrave;m g&amp;igrave; b&amp;acirc;y giờ?&lt;br /&gt;
&lt;br /&gt;
Cạp! Cạp!&lt;br /&gt;
&lt;br /&gt;
V&amp;igrave; l&amp;iacute; do n&amp;agrave;o đ&amp;oacute;, t&amp;ocirc;i nghe thấy &amp;acirc;m thanh nguy hiểm.&lt;br /&gt;
&lt;br /&gt;
Un.&lt;br /&gt;
&lt;br /&gt;
D&amp;ugrave; c&amp;oacute; cố gắng chạy trốn khỏi thực tế trước mắt cũng kh&amp;ocirc;ng tho&amp;aacute;t được.&lt;br /&gt;
&lt;br /&gt;
Trước mắt t&amp;ocirc;i, một qu&amp;acirc;n đo&amp;agrave;n nhện c&amp;oacute; vẻ như l&amp;agrave; anh em của t&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Ch&amp;uacute;ng l&amp;agrave; thứ duy nhất c&amp;oacute; khả năng l&amp;agrave;m ra &amp;acirc;m thanh đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i lặng lẽ nh&amp;igrave;n trước mắt.&lt;br /&gt;
&lt;br /&gt;
Cạp! Cạp!&lt;br /&gt;
&lt;br /&gt;
Hogyaa!?&lt;br /&gt;
&lt;br /&gt;
Ch&amp;uacute;ng đang l&amp;agrave;m g&amp;igrave; thế!?&lt;br /&gt;
&lt;br /&gt;
Hở, ch&amp;uacute;ng đang ăn?&lt;br /&gt;
&lt;br /&gt;
Ch&amp;uacute;ng đang ăn lẫn nhau!?&lt;br /&gt;
&lt;br /&gt;
Trước mặt t&amp;ocirc;i ch&amp;iacute;nh l&amp;agrave; cuộc tranh gi&amp;agrave;nh sự sống giữa c&amp;aacute;c anh chị em.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng kh&amp;ocirc;ng kh&amp;ocirc;ng kh&amp;ocirc;ng!&lt;br /&gt;
&lt;br /&gt;
Chuyện n&amp;agrave;y rất tệ, thực sự rất l&amp;agrave; tệ!&lt;br /&gt;
&lt;br /&gt;
Tại sao t&amp;ocirc;i lại phải đ&amp;aacute;nh nhau với c&amp;aacute;c anh em ruột của m&amp;igrave;nh!?&lt;br /&gt;
&lt;br /&gt;
A, l&amp;agrave; để c&amp;oacute; thức ăn.&lt;br /&gt;
&lt;br /&gt;
Ch&amp;uacute;ng đang đ&amp;oacute;i.&lt;br /&gt;
&lt;br /&gt;
Thực sự th&amp;igrave; t&amp;ocirc;i cũng đang rất đ&amp;oacute;i.&lt;br /&gt;
&lt;br /&gt;
Hả!?&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng kh&amp;ocirc;ng.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i su&amp;yacute;t nữa đ&amp;atilde; chạy trốn khỏi thực tế nữa rồi.&lt;br /&gt;
&lt;br /&gt;
Tr&amp;ecirc;n chiến trường dữ dội n&amp;agrave;y, t&amp;ocirc;i chỉ l&amp;agrave; một c&amp;ocirc; g&amp;aacute;i mềm yếu c&amp;oacute; khả năng rơi v&amp;agrave;o nanh vuốt của đ&amp;agrave;n &amp;ocirc;ng trong chớp mắt m&amp;agrave; th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Thực đ&amp;oacute;, kh&amp;ocirc;ng phải l&amp;agrave; giả dụ đ&amp;acirc;u!&lt;br /&gt;
&lt;br /&gt;
Chiến đấu&lt;br /&gt;
&lt;br /&gt;
Dụng cụ&lt;br /&gt;
&lt;br /&gt;
Bỏ chạy &amp;larr;&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;ch duy nhất để sống s&amp;oacute;t khỏi trường hợp hiện tại l&amp;agrave; bỏ chạy.&lt;br /&gt;
&lt;br /&gt;
Ở lại chiến đấu?&lt;br /&gt;
&lt;br /&gt;
V&amp;ocirc; vọng.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i l&amp;agrave; mẫu người thuộc &amp;ldquo;CLB-về-nh&amp;agrave;&amp;rdquo; điển h&amp;igrave;nh&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng thể n&amp;agrave;o t&amp;ocirc;i đ&amp;aacute;nh lại c&amp;aacute;i bọn d&amp;atilde; man đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
A! Hiện tại t&amp;ocirc;i nh&amp;igrave;n y chang bọn ch&amp;uacute;ng.&lt;br /&gt;
&lt;br /&gt;
Un.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i n&amp;ecirc;n bỏ chạy gấp nếu c&amp;oacute; thời gian nghĩ vớ vẩn như thế.&lt;br /&gt;
&lt;br /&gt;
*ỒM!*&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
B&amp;acirc;y giờ lại l&amp;agrave; g&amp;igrave;!?&lt;br /&gt;
&lt;br /&gt;
Một &amp;acirc;m thanh v&amp;agrave; chấn động vang l&amp;ecirc;n sau lưng t&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Khi quay đầu lại t&amp;ocirc;i thấy một con nhện khổng lồ.&lt;br /&gt;
&lt;br /&gt;
&amp;Ocirc;! Đ&amp;oacute; l&amp;agrave; mẹ?&lt;br /&gt;
&lt;br /&gt;
Hay l&amp;agrave; ba?&lt;br /&gt;
&lt;br /&gt;
T&amp;igrave;nh huống kh&amp;ocirc;ng ph&amp;aacute;t triển t&amp;iacute; n&amp;agrave;o hết.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i b&amp;acirc;y giờ c&amp;ograve;n rối hơn l&amp;uacute;c n&amp;atilde;y nữa.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng phải con nhện n&amp;agrave;y qu&amp;aacute; BỰ &amp;Agrave;!?&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; vẻ n&amp;oacute; to gấp 10 t&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; con nhện n&amp;agrave;o to như thế tr&amp;ecirc;n Tr&amp;aacute;i Đất &amp;agrave;?&lt;br /&gt;
&lt;br /&gt;
Hyoi, Cạp.&lt;br /&gt;
&lt;br /&gt;
A.&lt;br /&gt;
&lt;br /&gt;
Con nhện bự d&amp;ugrave;ng ch&amp;acirc;n trước xi&amp;ecirc;n qua người một con nhện nhỏ v&amp;agrave; đưa l&amp;ecirc;n miệng ăn.&lt;br /&gt;
&lt;br /&gt;
Cứ như đang ăn vặt.&lt;br /&gt;
&lt;br /&gt;
Mẹ &amp;agrave;, người cũng thế sao&amp;hellip;!&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; vẻ nghĩ nữa l&amp;agrave; IQ t&amp;ocirc;i sẽ rớt v&amp;agrave;i chục điểm.&lt;br /&gt;
&lt;br /&gt;
Trước ti&amp;ecirc;n t&amp;ocirc;i n&amp;ecirc;n bỏ chạy khỏi nơi n&amp;agrave;y v&amp;agrave; t&amp;igrave;m c&amp;aacute;ch sống s&amp;oacute;t đ&amp;atilde;.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i bỏ chạy d&amp;ugrave;ng hết sức b&amp;igrave;nh sinh.&lt;br /&gt;
&lt;br /&gt;
Sau khi chạy tới mức kh&amp;ocirc;ng thể di chuyển được nữa th&amp;igrave; t&amp;ocirc;i b&amp;igrave;nh tĩnh lại.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng c&amp;oacute; con nhện n&amp;agrave;o đuổi theo t&amp;ocirc;i khi t&amp;ocirc;i quay lại kiểm tra.&lt;br /&gt;
&lt;br /&gt;
Ha~ Cứ tưởng chết rồi chứ.&lt;br /&gt;
&lt;br /&gt;
Vừa sinh ra rồi chết ngay lập tức kh&amp;ocirc;ng phải l&amp;agrave; tr&amp;ograve; đ&amp;ugrave;a vui đ&amp;acirc;u.&lt;br /&gt;
&lt;br /&gt;
B&amp;acirc;y giờ khi đ&amp;atilde; c&amp;oacute; thời gian rảnh rỗi th&amp;igrave; t&amp;ocirc;i n&amp;ecirc;n suy nghĩ một ch&amp;uacute;t.&lt;br /&gt;
&lt;br /&gt;
Hiện giờ t&amp;ocirc;i l&amp;agrave; một con nhện.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;acirc;y l&amp;agrave; sự thật kh&amp;ocirc;ng chối c&amp;atilde;i được.&lt;br /&gt;
&lt;br /&gt;
Thứ nhất l&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; con người n&amp;agrave;o c&amp;oacute; kĩ năng nhảy cao qu&amp;aacute; đầu xong rồi b&amp;aacute;m l&amp;ecirc;n tường m&amp;agrave; chạy.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i đang n&amp;oacute;i về chuyện g&amp;igrave; hở?&lt;br /&gt;
&lt;br /&gt;
Dĩ nhi&amp;ecirc;n l&amp;agrave; c&amp;aacute;ch t&amp;ocirc;i đ&amp;atilde; chạy tho&amp;aacute;t.&lt;br /&gt;
&lt;br /&gt;
Với số lượng nhện ở chỗ đ&amp;oacute;, chạy thẳng kh&amp;ocirc;ng phải l&amp;agrave; một lựa chọn.&lt;br /&gt;
&lt;br /&gt;
Nếu như phải so s&amp;aacute;nh th&amp;igrave; l&amp;agrave;m vậy giống như chạy thẳng v&amp;agrave;o giữa đ&amp;aacute;m đ&amp;ocirc;ng đang gi&amp;agrave;nh mua h&amp;agrave;ng Black Friday hay l&amp;agrave; gi&amp;agrave;nh Bento ở của h&amp;agrave;ng tiện lợi như một c&amp;aacute;i anime n&amp;agrave;o đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Cơ bản th&amp;igrave; đ&amp;oacute; l&amp;agrave; tự s&amp;aacute;t!&lt;br /&gt;
&lt;br /&gt;
Thực tế th&amp;igrave; t&amp;ocirc;i chưa đi mua h&amp;agrave;ng Black Friday bao giờ.&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute;i chung l&amp;agrave;, l&amp;uacute;c đang bỏ chạy t&amp;ocirc;i đ&amp;atilde; nhảy l&amp;ecirc;n tường như ninja v&amp;agrave; bỏ chạy khỏi v&amp;ograve;ng v&amp;acirc;y của lũ nhện&lt;br /&gt;
&lt;br /&gt;
Khi chạy t&amp;ocirc;i c&amp;oacute; cảm gi&amp;aacute;c hơi k&amp;igrave; lạ v&amp;igrave; số lượng ch&amp;acirc;n, nhưng bằng c&amp;aacute;ch n&amp;agrave;o đ&amp;oacute; t&amp;ocirc;i vẫn chạy m&amp;agrave; kh&amp;ocirc;ng bị vấp t&amp;eacute; hay quấn ch&amp;acirc;n v&amp;agrave;o nhau.&lt;br /&gt;
&lt;br /&gt;
Chắc đ&amp;oacute; l&amp;agrave; nhờ v&amp;agrave;o phản xạ tự nhi&amp;ecirc;n của t&amp;ocirc;i?&lt;br /&gt;
&lt;br /&gt;
Un, c&amp;oacute; khả năng điều khiển cơ thể m&amp;agrave; kh&amp;ocirc;ng gặp vấn đề l&amp;agrave; một chuyện tốt.&lt;br /&gt;
&lt;br /&gt;
Hmm, nếu t&amp;ocirc;i l&amp;agrave; một con nhện, vậy con nhện bự kinh khủng l&amp;uacute;c n&amp;atilde;y l&amp;agrave; sao?&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
Un.&lt;br /&gt;
&lt;br /&gt;
Nếu so nhờ vị tr&amp;iacute; th&amp;igrave; đ&amp;oacute; chắc l&amp;agrave; cha hoặc mẹ của t&amp;ocirc;i?&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i kh&amp;ocirc;ng biết qu&amp;aacute; nhiều về tập tục của lo&amp;agrave;i nhện nhưng m&amp;agrave; cha mẹ ăn thịt con chắc c&amp;oacute; tồn tại trong tự nhi&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Cơ bản th&amp;igrave; một chủng tộc ăn lẫn nhau khi ch&amp;uacute;ng vừa sinh ra th&amp;igrave; chuyện cha mẹ ăn thịt con chắc cũng kh&amp;ocirc;ng qu&amp;aacute; bất ngờ.&lt;br /&gt;
&lt;br /&gt;
Nếu con nhện bự đ&amp;oacute; l&amp;agrave; cha mẹ t&amp;ocirc;i, vậy một ng&amp;agrave;y n&amp;agrave;o đ&amp;oacute; t&amp;ocirc;i sẽ to như thế?&lt;br /&gt;
&lt;br /&gt;
C&amp;agrave;ng nghĩ t&amp;ocirc;i c&amp;agrave;ng thấy bệnh hơn.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng, n&amp;oacute;i cho đ&amp;uacute;ng th&amp;igrave; nhện l&amp;agrave; một lo&amp;agrave;i c&amp;oacute; lợi như người kh&amp;aacute;c. Kh&amp;ocirc;ng phải như thế th&amp;igrave; tốt hơn t&amp;ocirc;i ở kiếp trước nữa sao?&lt;br /&gt;
&lt;br /&gt;
Hờ, thật k&amp;igrave; lạ, b&amp;acirc;y giờ t&amp;ocirc;i c&amp;oacute; cảm gi&amp;aacute;c hơi buồn&amp;hellip;&lt;br /&gt;
&lt;br /&gt;
&amp;Agrave; kh&amp;ocirc;ng kh&amp;ocirc;ng.&lt;br /&gt;
&lt;br /&gt;
Quay lại vấn đề l&amp;uacute;c n&amp;atilde;y.&lt;br /&gt;
&lt;br /&gt;
So s&amp;aacute;nh k&amp;iacute;ch cỡ của t&amp;ocirc;i với con nhện lớn đ&amp;oacute; th&amp;igrave; hơi kh&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
V&amp;igrave; cơ bản th&amp;igrave; t&amp;ocirc;i kh&amp;ocirc;ng biết m&amp;igrave;nh to cỡ n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
Nếu t&amp;ocirc;i chỉ to như một đầu ng&amp;oacute;n &amp;uacute;t th&amp;igrave; kh&amp;ocirc;ng sao.&lt;br /&gt;
&lt;br /&gt;
Nếu thế t&amp;ocirc;i c&amp;oacute; thể tưởng tượng được k&amp;iacute;ch cỡ của con nhện đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
D&amp;ugrave; n&amp;oacute;i thế th&amp;igrave; con nhện đ&amp;oacute; cũng phải bằng một con Tarantula.&lt;br /&gt;
&lt;br /&gt;
Nhưng nếu t&amp;ocirc;i to hơn th&amp;igrave; con nhện đ&amp;oacute; hẳn thuộc một loại chưa được kh&amp;aacute;m ph&amp;aacute; tr&amp;ecirc;n Tr&amp;aacute;i Đất.&lt;br /&gt;
&lt;br /&gt;
Một loại nhện mới chưa được kh&amp;aacute;m ph&amp;aacute; vẫn c&amp;ograve;n ổn, nhưng t&amp;ocirc;i vừa được hồi sinh cứ như trong truyện huyền ảo n&amp;ecirc;n c&amp;oacute; lẽ suy nghĩ một c&amp;aacute;ch t&amp;iacute;ch cực l&amp;agrave; kh&amp;ocirc;ng khả quan.&lt;br /&gt;
&lt;br /&gt;
Để x&amp;aacute;c định, t&amp;ocirc;i phải biết được m&amp;igrave;nh to cỡ n&amp;agrave;o c&amp;agrave;ng nhanh c&amp;agrave;ng tốt.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; c&amp;aacute;i g&amp;igrave; t&amp;ocirc;i c&amp;oacute; thể so s&amp;aacute;nh với k&amp;iacute;ch cỡ bản th&amp;acirc;n được kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i nh&amp;igrave;n xung quanh.&lt;br /&gt;
&lt;br /&gt;
Hiện tại t&amp;ocirc;i đang ở trong một c&amp;aacute;i hang rất lớn.&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; kh&amp;ocirc;ng c&amp;oacute; &amp;aacute;nh s&amp;aacute;ng, khung cảnh vẫn rất r&amp;otilde; r&amp;agrave;ng, chỉ hơi mờ một ch&amp;uacute;t.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i ng&amp;oacute; nghi&amp;ecirc;n xung quanh kh&amp;ocirc;ng ngừng.&lt;br /&gt;
&lt;br /&gt;
Ồ, đ&amp;acirc;-đ&amp;acirc;y!&lt;br /&gt;
&lt;br /&gt;
Ở trước mặt t&amp;ocirc;i l&amp;agrave; dấu ch&amp;acirc;n của con người.&lt;br /&gt;
&lt;br /&gt;
Ồ!&lt;br /&gt;
&lt;br /&gt;
L&amp;agrave; dấu ch&amp;acirc;n của nhiều người, hiện l&amp;ecirc;n rất r&amp;otilde; tr&amp;ecirc;n đất!&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute;i c&amp;aacute;ch kh&amp;aacute;c, c&amp;oacute; nghĩa l&amp;agrave; đ&amp;atilde; c&amp;oacute; người đi qua khu vực n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
Nghĩa l&amp;agrave; c&amp;oacute; con người ở thế giới n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i thật sự rất vui khi t&amp;ocirc;i biết rằng c&amp;oacute; con người.&lt;br /&gt;
&lt;br /&gt;
Thế nhưng t&amp;ocirc;i kh&amp;ocirc;ng cười nổi, v&amp;igrave; t&amp;ocirc;i nhận ra một sự thật phũ ph&amp;agrave;ng kh&amp;aacute;c.&lt;br /&gt;
&lt;br /&gt;
Cơ thể của t&amp;ocirc;i to hơn rất nhiều so với dấu ch&amp;acirc;n người.&lt;br /&gt;
&lt;br /&gt;
Un.&lt;br /&gt;
&lt;br /&gt;
Giả sử người để lại dấu ch&amp;acirc;n n&amp;agrave;y cao 170cm, t&amp;ocirc;i d&amp;agrave;i khoảng 1m.&lt;br /&gt;
&lt;br /&gt;
Aah, un.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i đ&amp;atilde; hơi nghĩ tới trường hợp đ&amp;oacute; khi t&amp;ocirc;i thấy con nhện bự kia.&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; c&amp;oacute; nghĩ cỡ n&amp;agrave;o đi nữa t&amp;ocirc;i cũng kh&amp;ocirc;ng phải l&amp;agrave; một loại nhện sống ở tr&amp;ecirc;n Tr&amp;aacute;i Đất.&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute;i c&amp;aacute;ch kh&amp;aacute;c, đ&amp;acirc;y l&amp;agrave; một thế giới rất kh&amp;aacute;c so với Tr&amp;aacute;i Đất, v&amp;agrave; kh&amp;ocirc;ng cần biết t&amp;ocirc;i c&amp;oacute; t&amp;iacute;ch cực cỡ n&amp;agrave;o đi nữa, t&amp;ocirc;i chắc chắn l&amp;agrave; một con qu&amp;aacute;i vật&amp;hellip;. C&amp;aacute;m ơn rất nhiều!&lt;/p&gt;
', 1, CAST(0x0000ADE40172DF5B AS DateTime), CAST(0x0000ADE40172DF5B AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2096, 1076, 1039, N'Chương 3: Khởi Đầu – Đã Có Lúc Tôi Nghĩ “Giám Định” Là Một Kĩ Năng Bá Đạo', N'&lt;p&gt;T&amp;ocirc;i l&amp;agrave; một con nhện.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i vẫn kh&amp;ocirc;ng c&amp;oacute; t&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Tại sao t&amp;ocirc;i lại n&amp;oacute;i thế hả?&lt;br /&gt;
&lt;br /&gt;
Đơn giản v&amp;igrave; t&amp;ocirc;i muốn n&amp;oacute;i rằng t&amp;ocirc;i kh&amp;ocirc;ng c&amp;oacute; t&amp;ecirc;n&lt;br /&gt;
&lt;br /&gt;
&amp;Yacute; t&amp;ocirc;i l&amp;agrave; sao hả?&lt;br /&gt;
&lt;br /&gt;
Để giải th&amp;iacute;ch th&amp;igrave; t&amp;ocirc;i cần phải quay lại qu&amp;aacute; khứ một ch&amp;uacute;t.&lt;br /&gt;
&lt;br /&gt;
~~~~&lt;br /&gt;
&lt;br /&gt;
Khi x&amp;aacute;c định được k&amp;iacute;ch thước của m&amp;igrave;nh t&amp;ocirc;i đ&amp;atilde; chết lặng.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;acirc;y l&amp;agrave; phản ứng b&amp;igrave;nh thường m&amp;agrave; đ&amp;uacute;ng kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng những t&amp;ocirc;i hồi sinh lại th&amp;agrave;nh một con nhện, m&amp;agrave; t&amp;ocirc;i c&amp;ograve;n l&amp;agrave; một con nhện qu&amp;aacute;i vật nữa.&lt;br /&gt;
&lt;br /&gt;
Thật l&amp;agrave; tồi tệ.&lt;br /&gt;
&lt;br /&gt;
Một người b&amp;igrave;nh thường chắc sẽ bị sốc v&amp;agrave; tự s&amp;aacute;t rồi.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i? T&amp;ocirc;i th&amp;igrave; chưa nghĩ tới việc muốn chết.&lt;br /&gt;
&lt;br /&gt;
Nhưng m&amp;agrave; t&amp;ocirc;i kh&amp;ocirc;ng thể cứ tội nghiệp cho bản th&amp;acirc;n m&amp;atilde;i được.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;acirc;y kh&amp;ocirc;ng phải l&amp;agrave; Tr&amp;aacute;i Đất, đ&amp;acirc;y l&amp;agrave; một thế giới kh&amp;aacute;c, nơi m&amp;agrave; t&amp;ocirc;i kh&amp;ocirc;ng c&amp;oacute; khả năng x&amp;aacute;c định xung quanh nguy hiểm tới mức n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; chắc chắn rằng ngo&amp;agrave;i con nhện lớn đ&amp;oacute; ra kh&amp;ocirc;ng c&amp;oacute; bất k&amp;igrave; qu&amp;aacute;i vật n&amp;agrave;o kh&amp;aacute;c ở đ&amp;acirc;y.&lt;br /&gt;
&lt;br /&gt;
Một người b&amp;igrave;nh thường c&amp;oacute; gϊếŧ nổi thứ đ&amp;oacute; kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i lặng lẽ cầu may gi&amp;uacute;p cho chủ nh&amp;acirc;n của những dấu ch&amp;acirc;n kia.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; lẽ nếu họ c&amp;oacute; s&amp;uacute;ng ống hạng nặng th&amp;igrave; mọi chuyện sẽ kh&amp;aacute;c.&lt;br /&gt;
&lt;br /&gt;
Thậm ch&amp;iacute; c&amp;oacute; khả năng ph&amp;aacute;p thuật cũng tồn tại ở thế giới n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
Nếu l&amp;agrave; thế, họ c&amp;oacute; khả năng chống lại con nhện bự đ&amp;oacute; &amp;iacute;t nhất một l&amp;uacute;c kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i kh&amp;ocirc;ng biết được.&lt;br /&gt;
&lt;br /&gt;
Nhưng con nhện bự đ&amp;oacute; chắc chắn phải l&amp;agrave; một con qu&amp;aacute;i &amp;iacute;t nhất thuộc cấp độ Boss.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;uacute;ng hơn m&amp;agrave; n&amp;oacute;i th&amp;igrave; nếu t&amp;ocirc;i nghĩ sai th&amp;igrave; t&amp;ocirc;i chết chắc.&lt;br /&gt;
&lt;br /&gt;
Từ n&amp;atilde;y đến giờ, t&amp;ocirc;i cứ cho rằng những người kia sẽ đ&amp;aacute;nh nhau với con nhện bự ấy, nhưng kh&amp;ocirc;ng phải như thế c&amp;agrave;ng tốt cho t&amp;ocirc;i &amp;agrave;?&lt;br /&gt;
&lt;br /&gt;
R&amp;otilde; r&amp;agrave;ng m&amp;agrave; n&amp;oacute;i, t&amp;ocirc;i l&amp;agrave; con của con nhện bự đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i l&amp;agrave; một em b&amp;eacute; qu&amp;aacute;i vật.&lt;br /&gt;
&lt;br /&gt;
Ah, un&amp;hellip;&lt;br /&gt;
&lt;br /&gt;
Đ&amp;acirc;y kh&amp;ocirc;ng phải l&amp;uacute;c để đ&amp;ugrave;a.&lt;br /&gt;
&lt;br /&gt;
Nếu c&amp;oacute; ai đ&amp;oacute; gặp t&amp;ocirc;i, kh&amp;ocirc;ng phải chắc chắn l&amp;agrave; t&amp;ocirc;i sẽ bị ti&amp;ecirc;u diệt ngay lập tức &amp;agrave;?&lt;br /&gt;
&lt;br /&gt;
Rất c&amp;oacute; thể.&lt;br /&gt;
&lt;br /&gt;
Thực sự l&amp;agrave; tỉ lệ bị gϊếŧ rất cao.&lt;br /&gt;
&lt;br /&gt;
Vậy b&amp;acirc;y giờ t&amp;ocirc;i phải l&amp;agrave;m g&amp;igrave; đ&amp;acirc;y?&lt;br /&gt;
&lt;br /&gt;
Ngay cả nếu t&amp;ocirc;i chỉ muốn th&amp;ocirc;ng tin về con người, t&amp;ocirc;i sẽ bị gϊếŧ ngay nếu bị ph&amp;aacute;t hiện.&lt;br /&gt;
&lt;br /&gt;
Un~&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng tốt rồi.&lt;br /&gt;
&lt;br /&gt;
Th&amp;ocirc;ng tin qu&amp;aacute; &amp;iacute;t, t&amp;ocirc;i kh&amp;ocirc;ng hiểu được g&amp;igrave; hết.&lt;br /&gt;
&lt;br /&gt;
Thế giới n&amp;agrave;y l&amp;agrave; thế giới như thế n&amp;agrave;o?&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
Những loại người n&amp;agrave;o sống ở đ&amp;acirc;y?&lt;br /&gt;
&lt;br /&gt;
Họ đối xử với qu&amp;aacute;i vật như t&amp;ocirc;i như thế n&amp;agrave;o?&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; qu&amp;aacute; nhiều thứ t&amp;ocirc;i muốn biết nhưng lại kh&amp;ocirc;ng c&amp;oacute; c&amp;aacute;ch n&amp;agrave;o để biết.&lt;br /&gt;
&lt;br /&gt;
&amp;Agrave; nếu đ&amp;acirc;y l&amp;agrave; trong truyện th&amp;igrave; hẳn sẽ c&amp;oacute; skill &amp;ldquo;Gi&amp;aacute;m Định&amp;rdquo; hay g&amp;igrave; đ&amp;oacute; để gi&amp;uacute;p t&amp;ocirc;i thu thập th&amp;ocirc;ng tin.&lt;br /&gt;
&lt;br /&gt;
《Hiện tại bạn c&amp;oacute; 100 điểm skill.&lt;br /&gt;
&lt;br /&gt;
Kĩ năng 『Gi&amp;aacute;m Định LV1』c&amp;oacute; thể được học nếu d&amp;ugrave;ng 100 điểm skill.&lt;br /&gt;
&lt;br /&gt;
Bạn c&amp;oacute; muốn học n&amp;oacute; kh&amp;ocirc;ng?》&lt;br /&gt;
&lt;br /&gt;
&amp;hellip;Thật &amp;agrave;?&lt;br /&gt;
&lt;br /&gt;
Trong đầu t&amp;ocirc;i chợt vang l&amp;ecirc;n giọng n&amp;oacute;i m&amp;aacute;y m&amp;oacute;c.&lt;br /&gt;
&lt;br /&gt;
Ồ, ra thế.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; thật.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; skill &amp;ldquo;Gi&amp;aacute;m Định&amp;rdquo; thật k&amp;igrave;a!&lt;br /&gt;
&lt;br /&gt;
Fuu~ Hyoii!&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i thật l&amp;agrave; thi&amp;ecirc;n t&amp;agrave;i m&amp;agrave;.&lt;br /&gt;
&lt;br /&gt;
Hồi sinh ở thế giới n&amp;agrave;y đ&amp;uacute;ng l&amp;agrave; kh&amp;aacute;c hẳn với thế giới trước!&lt;br /&gt;
&lt;br /&gt;
Dĩ nhi&amp;ecirc;n t&amp;ocirc;i chọn C&amp;Oacute;!&lt;br /&gt;
&lt;br /&gt;
《『Gi&amp;aacute;m Định LV1』đ&amp;atilde; được học. Điểm skill c&amp;ograve;n lại: 0》&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; t&amp;ocirc;i đ&amp;atilde; sử dụng hết to&amp;agrave;n bộ điểm skill của m&amp;igrave;nh, số điểm đ&amp;oacute; chắc chắn sẽ được hồi lại đầy đủ khi t&amp;ocirc;i l&amp;ecirc;n cấp, n&amp;ecirc;n kh&amp;ocirc;ng cần phải lo lắng l&amp;agrave;m g&amp;igrave;.&lt;br /&gt;
&lt;br /&gt;
Kệ. N&amp;oacute;. Đi.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i n&amp;ecirc;n d&amp;ugrave;ng thử skill &amp;ldquo;Gi&amp;aacute;m Định&amp;rdquo; bằng c&amp;aacute;ch kiểm tra nhiều thứ xung quanh đ&amp;acirc;y.&lt;br /&gt;
&lt;br /&gt;
&amp;hellip;.L&amp;agrave;m sao d&amp;ugrave;ng nhỉ?&lt;br /&gt;
&lt;br /&gt;
Để thử tập trung v&amp;agrave;o cục đ&amp;aacute; n&amp;agrave;y rồi niệm &amp;ldquo;Gi&amp;aacute;m Định&amp;rdquo; trong l&amp;ograve;ng xem sao.&lt;br /&gt;
&lt;br /&gt;
Mmmmm!&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; vẻ l&amp;agrave;m vậy l&amp;agrave; đ&amp;uacute;ng!&lt;br /&gt;
&lt;br /&gt;
Th&amp;ocirc;ng tin nhanh ch&amp;oacute;ng được chuyển trực tiếp v&amp;agrave;o đầu t&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
『Đ&amp;aacute;』&lt;br /&gt;
&lt;br /&gt;
&amp;hellip;Hmmm?&lt;br /&gt;
&lt;br /&gt;
Hở?&lt;br /&gt;
&lt;br /&gt;
Vậy th&amp;ocirc;i &amp;agrave;?&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng kh&amp;ocirc;ng kh&amp;ocirc;ng, đừng đ&amp;ugrave;a chứ?&lt;br /&gt;
&lt;br /&gt;
Chắc l&amp;agrave; lần đầu ti&amp;ecirc;n bị thất bại th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
H&amp;atilde;y thử lại n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
『Đ&amp;aacute;』&lt;br /&gt;
&lt;br /&gt;
&amp;hellip;&amp;hellip;Eh?&lt;br /&gt;
&lt;br /&gt;
Thật sự l&amp;agrave; chỉ c&amp;oacute; vậy th&amp;ocirc;i sao?&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng kh&amp;ocirc;ng kh&amp;ocirc;ng kh&amp;ocirc;ng.&lt;br /&gt;
&lt;br /&gt;
Chắc l&amp;agrave;, cục đ&amp;aacute; n&amp;agrave;y kh&amp;ocirc;ng c&amp;oacute; th&amp;ocirc;ng tin g&amp;igrave; gi&amp;aacute; trị. V&amp;igrave; vậy, t&amp;ocirc;i chắc chắn n&amp;oacute; chỉ l&amp;agrave; một cục đ&amp;aacute; b&amp;igrave;nh thường.&lt;br /&gt;
&lt;br /&gt;
B&amp;acirc;y giờ, t&amp;ocirc;i sẽ thử gi&amp;aacute;m định bức tường.&lt;br /&gt;
&lt;br /&gt;
Nếu được th&amp;igrave; t&amp;ocirc;i c&amp;oacute; lẽ sẽ biết được nơi đ&amp;acirc;y l&amp;agrave; đ&amp;acirc;u.&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i sẽ cảm gi&amp;aacute;c thanh thản hơn nếu c&amp;oacute; được một c&amp;aacute;i t&amp;ecirc;n v&amp;agrave; giải th&amp;iacute;ch về c&amp;aacute;i hang n&amp;agrave;y sau khi gi&amp;aacute;m định n&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
『Tường』&lt;br /&gt;
&lt;br /&gt;
&amp;hellip;&amp;hellip;&amp;hellip;&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i sẽ kh&amp;ocirc;ng n&amp;oacute;i g&amp;igrave; hết.&lt;br /&gt;
&lt;br /&gt;
『Gi&amp;aacute;m định LV1』. C&amp;oacute; th&amp;ecirc;m LV kế b&amp;ecirc;n c&amp;aacute;i t&amp;ecirc;n, chắc l&amp;agrave; phải nghĩ kĩ hơn một ch&amp;uacute;t.&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute;i chung l&amp;agrave;, skill ở LV1 kh&amp;ocirc;ng c&amp;oacute; gi&amp;aacute; trị g&amp;igrave; hết.&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; t&amp;ocirc;i muốn tăng LV cho n&amp;oacute;, t&amp;ocirc;i cũng kh&amp;ocirc;ng c&amp;ograve;n ch&amp;uacute;t điểm skill n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
Uwaaaa!&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i đ&amp;atilde; ph&amp;iacute; điểm skill của t&amp;ocirc;i r&amp;ocirc;i!&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; kh&amp;ocirc;ng r&amp;otilde; ngo&amp;agrave;i &amp;ldquo;Gi&amp;aacute;m Định&amp;rdquo; c&amp;ograve;n skill g&amp;igrave; kh&amp;aacute;c, nhưng ở LV1 chắc chắn phải c&amp;oacute; skill kh&amp;aacute;c c&amp;oacute; lợi hơn thế n&amp;agrave;y!&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng, t&amp;ocirc;i n&amp;ecirc;n nghĩ ngược lại.&lt;br /&gt;
&lt;br /&gt;
Nếu &amp;ldquo;Gi&amp;aacute;m Định&amp;rdquo; m&amp;agrave; đ&amp;atilde; như thế n&amp;agrave;y, hẳn những skill kh&amp;aacute;c ở LV1 c&amp;ograve;n phế hơn nữa.&lt;br /&gt;
&lt;br /&gt;
H&amp;atilde;y nghĩ như vậy đi.&lt;br /&gt;
&lt;br /&gt;
Nếu kh&amp;ocirc;ng th&amp;igrave; t&amp;ocirc;i sẽ kh&amp;ocirc;ng tiếp tục được mất.&lt;br /&gt;
&lt;br /&gt;
Haaa~&lt;br /&gt;
&lt;br /&gt;
Nai waa.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;acirc;n tiện, chắc t&amp;ocirc;i n&amp;ecirc;n tự gi&amp;aacute;m định bản th&amp;acirc;n nhỉ?&lt;br /&gt;
&lt;br /&gt;
『Nhện&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng t&amp;ecirc;n』&lt;br /&gt;
&lt;br /&gt;
Hmm?&lt;br /&gt;
&lt;br /&gt;
Đ&amp;uacute;ng như t&amp;ocirc;i nghĩ m&amp;igrave;nh l&amp;agrave; thuộc d&amp;ograve;ng nhện, nhưng m&amp;agrave;&amp;hellip; kh&amp;ocirc;ng t&amp;ecirc;n?&lt;br /&gt;
&lt;br /&gt;
~~~&lt;br /&gt;
&lt;br /&gt;
Cơ bản th&amp;igrave; đ&amp;oacute; l&amp;agrave; to&amp;agrave;n bộ c&amp;acirc;u chuyện, v&amp;agrave; b&amp;acirc;y giờ ch&amp;uacute;ng ta ở nơi bắt đầu.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng t&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
Ở kiếp trước t&amp;ocirc;i c&amp;oacute; t&amp;ecirc;n, vậy c&amp;oacute; nghĩa l&amp;agrave; t&amp;ocirc;i hiện tại, l&amp;agrave; một con nhện th&amp;igrave; kh&amp;ocirc;ng c&amp;oacute; t&amp;ecirc;n?&lt;br /&gt;
&lt;br /&gt;
Tạm thời t&amp;ocirc;i sẽ bỏ skill &amp;ldquo;Gi&amp;aacute;m Định&amp;rdquo; v&amp;ocirc; dụng n&amp;agrave;y qua một b&amp;ecirc;n.&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute;i đ&amp;uacute;ng hơn l&amp;agrave; mọi chuyện đ&amp;atilde; trở n&amp;ecirc;n rắc rối hơn bởi v&amp;igrave; skill &amp;ldquo;Gi&amp;aacute;m Định&amp;rdquo; n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
Điểm skill.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; lẽ nếu t&amp;ocirc;i để d&amp;agrave;nh một &amp;iacute;t điểm skill th&amp;igrave; t&amp;ocirc;i sẽ c&amp;oacute; thể lấy được skill kh&amp;aacute;c.&lt;br /&gt;
&lt;br /&gt;
Nhưng t&amp;ocirc;i kh&amp;ocirc;ng biết l&amp;agrave;m sao để tăng điểm skill.&lt;br /&gt;
&lt;br /&gt;
Nếu thế giới n&amp;agrave;y c&amp;oacute; kh&amp;aacute;i niệm LV, vậy t&amp;ocirc;i đo&amp;aacute;n m&amp;igrave;nh sẽ c&amp;oacute; th&amp;ecirc;m điểm khi tăng LV.&lt;br /&gt;
&lt;br /&gt;
Nếu như vậy th&amp;igrave;.&lt;br /&gt;
&lt;br /&gt;
Thế giới n&amp;agrave;y cơ bản l&amp;agrave; một tr&amp;ograve; chơi với LV, skill v&amp;agrave; điểm.&lt;br /&gt;
&lt;br /&gt;
Như thế kh&amp;ocirc;ng phải l&amp;agrave; tốt sao?&lt;br /&gt;
&lt;br /&gt;
Nhiều nhất th&amp;igrave; t&amp;ocirc;i cũng chỉ l&amp;agrave; một con qu&amp;aacute;i vật nhện.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i kh&amp;ocirc;ng thể sống một cuộc sống an nh&amp;agrave;n được. A, cơ bản m&amp;agrave; n&amp;oacute;i th&amp;igrave; t&amp;ocirc;i chỉ l&amp;agrave; một con nhện. Hẳn l&amp;agrave; t&amp;ocirc;i sẽ sống cuộc sống Nhện chứ kh&amp;ocirc;ng phải l&amp;agrave; cuộc sống Người.&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute;i sao đi nữa, trong thế giới như một tr&amp;ograve; chơi n&amp;agrave;y, t&amp;ocirc;i n&amp;ecirc;n sống c&amp;agrave;ng thỏa m&amp;atilde;n c&amp;agrave;ng tốt, giống như đang chơi một tr&amp;ograve; chơi.&lt;br /&gt;
&lt;br /&gt;
Trước hết, t&amp;ocirc;i đ&amp;oacute;i rồi.&lt;/p&gt;
', 1, CAST(0x0000ADE40172FE56 AS DateTime), CAST(0x0000ADE40172FE56 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2097, 1076, 1039, N'Chương 4: Khởi Đầu – Lần Đầu Tiên Khám Phá Một Mê Cung', N'&lt;p&gt;N&amp;agrave;o n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
Đứng y&amp;ecirc;n một chỗ kh&amp;ocirc;ng c&amp;oacute; t&amp;aacute;c dụng g&amp;igrave; hết n&amp;ecirc;n t&amp;ocirc;i n&amp;ecirc;n bắt đầu di chuyển.&lt;br /&gt;
&lt;br /&gt;
V&amp;igrave; c&amp;oacute; dấu ch&amp;acirc;n người ở đ&amp;acirc;y n&amp;ecirc;n chắc hẳn c&amp;oacute; người ở gần đ&amp;acirc;y, nếu t&amp;ocirc;i gặp họ l&amp;uacute;c n&amp;agrave;y t&amp;ocirc;i nghĩ sẽ c&amp;oacute; vấn đề.&lt;br /&gt;
&lt;br /&gt;
Tạm thời, t&amp;ocirc;i n&amp;ecirc;n đi hướng ngược lại với dấu ch&amp;acirc;n.&lt;br /&gt;
&lt;br /&gt;
Nhưng m&amp;agrave; c&amp;aacute;i hang n&amp;agrave;y thật sự l&amp;agrave; rất rộng!&lt;br /&gt;
&lt;br /&gt;
Chiều cao hang gần khoảng 100m v&amp;agrave; chiều rộng cũng khoảng nhi&amp;ecirc;u đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i kh&amp;ocirc;ng thể chắc chắn được v&amp;igrave; c&amp;oacute; đ&amp;aacute; rải r&amp;aacute;c khắp nơi, nhưng chắc chắn c&amp;aacute;i hang n&amp;agrave;y rất l&amp;agrave; rộng r&amp;atilde;i.&lt;br /&gt;
&lt;br /&gt;
Lối đi lại c&amp;ograve;n chia ra nhiều ng&amp;atilde; rẽ l&amp;agrave;m cho n&amp;oacute; c&amp;ograve;n rộng hơn nữa.&lt;br /&gt;
&lt;br /&gt;
Ngay tại đ&amp;acirc;y l&amp;agrave; một ng&amp;atilde; ba, một hướng l&amp;agrave; hướng c&amp;aacute;i hang nhện, một hướng c&amp;oacute; dấu ch&amp;acirc;n người v&amp;agrave; cuối c&amp;ugrave;ng l&amp;agrave; hướng t&amp;ocirc;i đang đi.&lt;br /&gt;
&lt;br /&gt;
Hướng t&amp;ocirc;i đang đi l&amp;agrave; hướng xuống tr&amp;ecirc;n một ng&amp;atilde; ba h&amp;igrave;nh chữ Y.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i leo l&amp;ecirc;n những tảng đ&amp;aacute; gần đ&amp;oacute; v&amp;agrave; lặng lẽ ng&amp;oacute; hướng đi trước mặt.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; c&amp;aacute;i g&amp;igrave; đ&amp;oacute; ở đ&amp;oacute;&amp;hellip;!&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; qu&amp;aacute;i vật ở hướng đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Hươu』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『Dơi』『S&amp;oacute;i』『S&amp;oacute;i』『S&amp;oacute;i』『S&amp;oacute;i』『S&amp;oacute;i』『S&amp;oacute;i』『Khủng Long』&amp;hellip;&amp;hellip;&lt;br /&gt;
&lt;br /&gt;
Kĩ năng &amp;ldquo;Gi&amp;aacute;m Định&amp;rdquo; l&amp;agrave;m đầu t&amp;ocirc;i c&amp;oacute; cảm gi&amp;aacute;c muốn nổ tung.&lt;br /&gt;
&lt;br /&gt;
Nhưng m&amp;agrave;, những con n&amp;agrave;y nh&amp;igrave;n giống Hươu nhưng con Hươu m&amp;agrave; t&amp;ocirc;i biết kh&amp;ocirc;ng c&amp;oacute; sừng sắc như kiếm.&lt;br /&gt;
&lt;br /&gt;
Những con Dơi cũng kh&amp;aacute;c. Ch&amp;uacute;ng giống như những con gặm nhấm xấu x&amp;iacute; c&amp;oacute; c&amp;aacute;nh &amp;aacute;c quỷ.&lt;br /&gt;
&lt;br /&gt;
Mới nh&amp;igrave;n th&amp;igrave; con S&amp;oacute;i nh&amp;igrave;n b&amp;igrave;nh thường, nhưng m&amp;agrave; ch&amp;uacute;ng lại c&amp;oacute; 6 ch&amp;acirc;n.&lt;br /&gt;
&lt;br /&gt;
Ở xa xa c&amp;oacute; một con Khủng long nằm nghỉ.&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n giống một con T-rex c&amp;oacute; sừng v&amp;agrave; vảy. Thực ra thay v&amp;igrave; Khủng long gọi n&amp;oacute; l&amp;agrave; Rồng th&amp;igrave; đ&amp;uacute;ng hơn th&amp;igrave; phải?&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i kh&amp;ocirc;ng c&amp;oacute; đường kh&amp;aacute;c trừ đường n&amp;agrave;y sao?&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng phải l&amp;agrave; v&amp;ocirc; vọng rồi &amp;agrave;?&lt;br /&gt;
&lt;br /&gt;
Hay l&amp;agrave; &amp;yacute; định gốc l&amp;agrave; để cho một con nhện mới sinh đi qua khu vực n&amp;agrave;y để tập luyện?&lt;br /&gt;
&lt;br /&gt;
Nh&amp;igrave;n ra sao th&amp;igrave; độ kh&amp;oacute; chỉ c&amp;oacute; thể l&amp;agrave; Lunatic.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i trượt nhẹ nh&amp;agrave;ng xuống khỏi tảng đ&amp;aacute;.&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
L&amp;agrave;m g&amp;igrave; đ&amp;acirc;y~&lt;br /&gt;
&lt;br /&gt;
Ở đằng trước l&amp;agrave; rừng qu&amp;aacute;i vật.&lt;br /&gt;
&lt;br /&gt;
Ở đằng sau một lối l&amp;agrave; địa ngục nhện v&amp;agrave; một lối c&amp;oacute; con người.&lt;br /&gt;
&lt;br /&gt;
Hở?&lt;br /&gt;
&lt;br /&gt;
Thế n&amp;agrave;y h&amp;igrave;nh như l&amp;agrave; chiếu b&amp;iacute;?&lt;br /&gt;
&lt;br /&gt;
Thực ra, chờ đ&amp;atilde;.&lt;br /&gt;
&lt;br /&gt;
B&amp;igrave;nh tĩnh.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i đ&amp;atilde; chuẩn bị sẵn ph&amp;ograve;ng cho trường hợp giống thế n&amp;agrave;y. (Keikaku doori desu!)&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute;i thế chứ thực ra l&amp;agrave; t&amp;ocirc;i v&amp;ocirc; t&amp;igrave;nh t&amp;igrave;m được một lối đi kh&amp;aacute;c.&lt;br /&gt;
&lt;br /&gt;
Bởi v&amp;igrave; ng&amp;atilde; ba lớn như thế n&amp;ecirc;n lối đi n&amp;agrave;y kh&amp;ocirc;ng nổi bật lắm, nhưng n&amp;oacute; c&amp;oacute; ở đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; l&amp;agrave; một c&amp;aacute;i lỗ ở tr&amp;ecirc;n bức tường.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i lỗ rộng v&amp;agrave; cao khoảng 3m.&lt;br /&gt;
&lt;br /&gt;
Nếu c&amp;oacute; vấn đề g&amp;igrave;, đ&amp;oacute; ch&amp;iacute;nh l&amp;agrave; việc c&amp;oacute; dấu ch&amp;acirc;n người đi từ trong hướng đ&amp;oacute; ra.&lt;br /&gt;
&lt;br /&gt;
Nếu c&amp;oacute; người đi từ c&amp;aacute;i lỗ n&amp;agrave;y ra, vậy ở đầu b&amp;ecirc;n kia hướng đi ch&amp;iacute;nh l&amp;agrave; lối ra khỏi hầm ngục n&amp;agrave;y?&lt;br /&gt;
&lt;br /&gt;
Umu.&lt;br /&gt;
&lt;br /&gt;
Lối ra.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i c&amp;oacute; n&amp;ecirc;n đi ra kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
Nếu như t&amp;ocirc;i l&amp;agrave; một con người b&amp;igrave;nh thường th&amp;igrave; t&amp;ocirc;i kh&amp;ocirc;ng ngại đi ra ngo&amp;agrave;i.&lt;br /&gt;
&lt;br /&gt;
Cơ bản m&amp;agrave; n&amp;oacute;i c&amp;aacute;i hầm ngục n&amp;agrave;y tr&amp;igrave;nh độ qu&amp;aacute; cao.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i kh&amp;ocirc;ng biết l&amp;agrave;m qu&amp;aacute;i vật th&amp;igrave; t&amp;ocirc;i mạnh cỡ n&amp;agrave;o, v&amp;igrave; vậy ngay khi t&amp;ocirc;i nghĩ rằng m&amp;igrave;nh kh&amp;ocirc;ng c&amp;oacute; khả năng thắng được th&amp;igrave; chiến đấu sẽ bị loại.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng. Nếu đ&amp;acirc;y chỉ l&amp;agrave; tr&amp;ograve; chơi th&amp;igrave; chết kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; đ&amp;aacute;ng sợ cả, v&amp;igrave; t&amp;ocirc;i c&amp;oacute; thể hồi sinh, nhưng nếu đ&amp;acirc;y l&amp;agrave; sự thật th&amp;igrave; chết l&amp;agrave; hết.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i sẽ kh&amp;ocirc;ng đ&amp;aacute;nh cược t&amp;iacute;nh mạng v&amp;agrave;o một lần tấn c&amp;ocirc;ng tự s&amp;aacute;t.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i muốn c&amp;agrave;ng nhiều biện ph&amp;aacute;p an to&amp;agrave;n c&amp;agrave;ng tốt.&lt;br /&gt;
&lt;br /&gt;
Nếu theo c&amp;aacute;ch nghĩ đ&amp;oacute; bỏ chạy l&amp;agrave; một lựa chọn rất tốt.&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; l&amp;agrave; lựa chọn tốt, t&amp;ocirc;i cũng kh&amp;ocirc;ng d&amp;aacute;m chắc đi ra l&amp;agrave; an to&amp;agrave;n.&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute;i sao th&amp;igrave; t&amp;ocirc;i l&amp;agrave; qu&amp;aacute;i vật.&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
V&amp;igrave; c&amp;oacute; dấu hiệu con người ra v&amp;agrave;o hầm ngục, n&amp;ecirc;n cũng sẽ c&amp;oacute; x&amp;atilde; hội c&amp;oacute; con người sống gần đ&amp;acirc;y.&lt;br /&gt;
&lt;br /&gt;
Nếu c&amp;oacute; một con qu&amp;aacute;i vật nhện xuất hiện ở trong khu vực sống của con người, dĩ nhi&amp;ecirc;n t&amp;ocirc;i sẽ bị săn l&amp;ugrave;ng.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;oacute; l&amp;agrave; nguy hiểm của việc ra ngo&amp;agrave;i.&lt;br /&gt;
&lt;br /&gt;
Thế nhưng nếu t&amp;ocirc;i c&amp;oacute; thể t&amp;igrave;m được chỗ l&amp;agrave;m tổ kh&amp;oacute; ai ph&amp;aacute;t hiện được th&amp;igrave; c&amp;oacute; lẽ sẽ kh&amp;ocirc;ng sao&lt;br /&gt;
&lt;br /&gt;
Chỉ c&amp;oacute; lựa chọn giữa việc dựa v&amp;agrave;o may mắn v&amp;agrave; tr&amp;igrave;nh độ lẩn tr&amp;aacute;nh để tr&amp;aacute;nh con người hoặc tiếp tục ở trong hầm ngục.&lt;br /&gt;
&lt;br /&gt;
Được rồi, t&amp;ocirc;i đ&amp;atilde; quyết định!&lt;br /&gt;
&lt;br /&gt;
Tạm thời h&amp;atilde;y đi về lối ra của hầm ngục.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i n&amp;ecirc;n t&amp;igrave;m lối ra v&amp;agrave; tho&amp;aacute;t khỏi đ&amp;acirc;y c&amp;agrave;ng sớm c&amp;agrave;ng tốt.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; khả năng l&amp;agrave; con người sẽ dựng lều ở ngay trước lối ra của hầm ngục.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;atilde; quyết định vậy h&amp;atilde;y Đi Th&amp;ocirc;i!&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i đ&amp;atilde; chần chờ. (&amp;acute;&amp;forall;｀*)&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng phải như bạn nghĩ. T&amp;ocirc;i n&amp;ecirc;n n&amp;oacute;i lại kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i hang n&amp;agrave;y thực sự RẤT to.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i m&amp;ecirc; cung kh&amp;ocirc;ng lồ n&amp;agrave;y l&amp;agrave; thế n&amp;agrave;o?&lt;br /&gt;
&lt;br /&gt;
Mỗi lối đi t&amp;aacute;ch ra nhiều đến mức t&amp;ocirc;i kh&amp;ocirc;ng c&amp;ograve;n thấy r&amp;otilde; m&amp;igrave;nh đang đi đ&amp;acirc;u nữa.&lt;br /&gt;
&lt;br /&gt;
Số lượng lối t&amp;aacute;ch ra hở?&lt;br /&gt;
&lt;br /&gt;
Đếm tới 10 l&amp;agrave; t&amp;ocirc;i bỏ cuộc rồi.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i gặp kh&amp;aacute; nhiều qu&amp;aacute;i vật.&lt;br /&gt;
&lt;br /&gt;
Kết quả của việc tho&amp;aacute;t chết l&amp;agrave; t&amp;ocirc;i bị lạc.&lt;br /&gt;
&lt;br /&gt;
Dấu ch&amp;acirc;n? T&amp;ocirc;i mất dấu ch&amp;uacute;ng từ l&amp;acirc;u lắm rồi.&lt;br /&gt;
&lt;br /&gt;
Ahh, kh&amp;ocirc;ng thể n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
Nếu muốn chinh phục c&amp;aacute;i m&amp;ecirc; cung n&amp;agrave;y m&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; bản đồ th&amp;igrave; chỉ l&amp;agrave; nằm si n&amp;oacute;i mộng.&lt;br /&gt;
&lt;br /&gt;
Hiện tại kh&amp;ocirc;ng phải l&amp;agrave; l&amp;uacute;c để t&amp;igrave;m lối ra.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i đ&amp;oacute;i sắp chết rồi.&lt;br /&gt;
&lt;br /&gt;
Ai đ&amp;oacute; cho t&amp;ocirc;i xin t&amp;iacute; cơm đi.&lt;/p&gt;
', 1, CAST(0x0000ADE401732618 AS DateTime), CAST(0x0000ADE401732618 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2098, 1076, 1039, N'Chương 5: Khởi Đầu – Chương Mới, Ngôi Nhà Mới', N'&lt;p&gt;T&amp;ocirc;i bỏ cuộc việc ra khỏi m&amp;ecirc; cung.&lt;br /&gt;
&lt;br /&gt;
Nếu như cứ tiếp tục chạy v&amp;ograve;ng v&amp;ograve;ng như thế n&amp;agrave;y th&amp;igrave; sớm muộn t&amp;ocirc;i sẽ chết.&lt;br /&gt;
&lt;br /&gt;
D&amp;ugrave; l&amp;agrave; qu&amp;aacute;i vật hay con người th&amp;igrave; đều l&amp;agrave; kẻ th&amp;ugrave; ch&amp;iacute; mạng với t&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
D&amp;ugrave; viết hay đọc cũng đều l&amp;agrave; kẻ th&amp;ugrave; ch&amp;iacute; mạng, kh&amp;ocirc;ng phải đối thủ hay l&amp;agrave; bạn. (TN: đ&amp;acirc;y l&amp;agrave; n&amp;oacute;i đến việt trong một số manga/anime chữ Teki-敵 ngo&amp;agrave;i kẻ th&amp;ugrave; c&amp;ograve;n c&amp;oacute; thể đọc th&amp;agrave;nh đối thủ hoặc bạn b&amp;egrave;, ko mang &amp;yacute; muốn gϊếŧ nhau như chữ kẻ th&amp;ugrave;)&lt;br /&gt;
&lt;br /&gt;
Ch&amp;iacute;nh l&amp;agrave; mang &amp;yacute; nghĩa nguy hiểm tới t&amp;iacute;nh mạng.&lt;br /&gt;
&lt;br /&gt;
May mắn thay những con qu&amp;aacute;i vật xuất hiện trong lối đi n&amp;agrave;y kh&amp;ocirc;ng đủ nhanh nhẹn.&lt;br /&gt;
&lt;br /&gt;
Nếu kh&amp;ocirc;ng t&amp;ocirc;i đ&amp;atilde; kh&amp;ocirc;ng thể chạy tho&amp;aacute;t đến giờ.&lt;br /&gt;
&lt;br /&gt;
Cơ thể nhện n&amp;agrave;y tương đối nhanh nhạy.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; lẽ tốc độ hiện tại của t&amp;ocirc;i tốt hơn nhiều so với kiếp trước.&lt;br /&gt;
&lt;br /&gt;
&amp;hellip;T&amp;ocirc;i xin lỗi.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i chỉ muốn khoe một ch&amp;uacute;t th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Thực ra ngo&amp;agrave;i tốc độ th&amp;igrave; to&amp;agrave;n bộ c&amp;aacute;c chỉ số kh&amp;aacute;c của t&amp;ocirc;i cũng cao hơn so với kiếp trước.&lt;br /&gt;
&lt;br /&gt;
Trước khi được hồi sinh t&amp;ocirc;i đ&amp;atilde; l&amp;agrave; loại người ở nh&amp;agrave; suốt ng&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
Hơn nữa nhện dĩ nhi&amp;ecirc;n sẽ c&amp;oacute; chỉ số cao hơn so với người.&lt;br /&gt;
&lt;br /&gt;
Khi t&amp;ocirc;i c&amp;ograve;n ở kiếp trước khả năng duy nhất m&amp;agrave; t&amp;ocirc;i c&amp;oacute; thể tự h&amp;agrave;o l&amp;agrave; tốc độ di chuyển ng&amp;oacute;n tay nhờ việc chơi game.&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute;i chung l&amp;agrave; bỏ qua vấn đề n&amp;agrave;y.&lt;br /&gt;
&lt;br /&gt;
Cơ bản đ&amp;oacute; l&amp;agrave; l&amp;iacute; do tại sao t&amp;ocirc;i vẫn c&amp;oacute; khả năng chạy tho&amp;aacute;t đến giờ.&lt;br /&gt;
&lt;br /&gt;
Nhưng chạy m&amp;atilde;i kh&amp;ocirc;ng phải l&amp;agrave; một lựa chọn.&lt;br /&gt;
&lt;br /&gt;
Nếu t&amp;ocirc;i bị tấn c&amp;ocirc;ng kiểu gọng kiềm th&amp;igrave; t&amp;ocirc;i sẽ chết, hơn nữa qu&amp;aacute;i vật nhanh hơn t&amp;ocirc;i sớm muốn cũng xuất hiện.&lt;br /&gt;
&lt;br /&gt;
Hơn thế nữa l&amp;agrave; t&amp;ocirc;i đang rất đ&amp;oacute;i.&lt;br /&gt;
&lt;br /&gt;
Muốn chiến đấu th&amp;igrave; bụng kh&amp;ocirc;ng được rỗng.&lt;br /&gt;
&lt;br /&gt;
Nếu cứ tiếp tục thế n&amp;agrave;y t&amp;ocirc;i sẽ chết đ&amp;oacute;i.&lt;br /&gt;
&lt;br /&gt;
Hmm.&lt;br /&gt;
&lt;br /&gt;
Phải suy nghĩ một ch&amp;uacute;t.&lt;br /&gt;
&lt;br /&gt;
Hỏi: Nhện ăn g&amp;igrave;?&lt;br /&gt;
&lt;br /&gt;
Đ&amp;aacute;p: C&amp;ocirc;n tr&amp;ugrave;ng.&lt;br /&gt;
&lt;br /&gt;
Ufuu~&lt;br /&gt;
&lt;br /&gt;
Dĩ nhi&amp;ecirc;n l&amp;agrave; vậy.&lt;br /&gt;
&lt;br /&gt;
Khi đ&amp;oacute;i th&amp;igrave; kh&amp;ocirc;ng đ&amp;ograve;i hỏi được.&lt;br /&gt;
&lt;br /&gt;
Nhưng nghĩ lại th&amp;igrave; con mồi của t&amp;ocirc;i kh&amp;ocirc;ng nhất thiết chỉ l&amp;agrave; c&amp;ocirc;n tr&amp;ugrave;ng.&lt;br /&gt;
&lt;br /&gt;
Chắc chắn con mồi của t&amp;ocirc;i c&amp;oacute; bao gồm qu&amp;aacute;i vật v&amp;agrave; v&amp;agrave;i thứ kh&amp;aacute;c&amp;hellip; như con người chẳng hạn, d&amp;ugrave; t&amp;ocirc;i muốn tr&amp;aacute;nh &amp;yacute; tưởng đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
Ngay từ l&amp;uacute;c mới sinh th&amp;igrave; anh chị em ruột của t&amp;ocirc;i đ&amp;atilde; ăn thịt lẫn nhau rồi.&lt;br /&gt;
&lt;br /&gt;
Con nhện bự tr&amp;ocirc;ng c&amp;oacute; vẻ như ba/mẹ t&amp;ocirc;i th&amp;igrave; ăn thịt con của m&amp;igrave;nh như chuyện b&amp;igrave;nh thường. Lo&amp;agrave;i của t&amp;ocirc;i chắc cho rằng trừ bản th&amp;acirc;n ra ai cũng l&amp;agrave; con mồi.&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
Đ&amp;uacute;ng hơn l&amp;agrave;, trong một c&amp;aacute;i hang như thế n&amp;agrave;y đ&amp;oacute; l&amp;agrave; lựa chọn duy nhất.&lt;br /&gt;
&lt;br /&gt;
Kh&amp;ocirc;ng biết con qu&amp;aacute;i vật Hươu ở trong c&amp;aacute;i hang lớn l&amp;uacute;c đầu ăn g&amp;igrave; nhỉ?&lt;br /&gt;
&lt;br /&gt;
Liệu n&amp;oacute; c&amp;oacute; phải l&amp;agrave; lo&amp;agrave;i ăn thịt giả l&amp;agrave;m lo&amp;agrave;i ăn cỏ kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; nghĩ th&amp;ecirc;m cũng thế.&lt;br /&gt;
&lt;br /&gt;
Hiện tại bữa ăn của t&amp;ocirc;i l&amp;agrave; quan trọng nhất.&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; vẻ kh&amp;ocirc;ng c&amp;oacute; lựa chọn n&amp;agrave;o kh&amp;aacute;c.&lt;br /&gt;
&lt;br /&gt;
Nếu kh&amp;ocirc;ng muốn chết đ&amp;oacute;i t&amp;ocirc;i cần phải l&amp;agrave;m g&amp;igrave; đ&amp;oacute; ngay lập tức.&lt;br /&gt;
&lt;br /&gt;
D&amp;ugrave; kh&amp;ocirc;ng muốn đi nữa, t&amp;ocirc;i vẫn sẽ phải ăn bất k&amp;igrave; thứ g&amp;igrave; t&amp;ocirc;i t&amp;igrave;m được ở đ&amp;acirc;y.&lt;br /&gt;
&lt;br /&gt;
Phải như vậy mới sống được.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;atilde; như thế th&amp;igrave; tới l&amp;uacute;c t&amp;igrave;m đồ ăn th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Dĩ nhi&amp;ecirc;n quanh đ&amp;acirc;y kh&amp;ocirc;ng c&amp;oacute; đồ ăn n&amp;agrave;o tiện như thế.&lt;br /&gt;
&lt;br /&gt;
Muốn ăn th&amp;igrave; lăn v&amp;agrave;o bếp.&lt;br /&gt;
&lt;br /&gt;
Bằng c&amp;aacute;ch n&amp;agrave;o?&lt;br /&gt;
&lt;br /&gt;
N&amp;oacute;i trắng ra th&amp;igrave; tỉ lệ đ&amp;aacute;nh thắng một con qu&amp;aacute;i vật bất k&amp;igrave; ở đ&amp;acirc;y với t&amp;ocirc;i l&amp;agrave; 0%.&lt;br /&gt;
&lt;br /&gt;
Lối đi n&amp;agrave;y chật hơn hẳn so với lối đi khổng lồ trước đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
V&amp;agrave; ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc;ng c&amp;oacute; con qu&amp;aacute;i vật n&amp;agrave;o tạo ra cảm gi&amp;aacute;c &amp;ldquo;tới gần l&amp;agrave; chết&amp;rdquo; giống con nhện to hay con qu&amp;aacute;i vật khủng long trong c&amp;aacute;i lối đi lớn kia.&lt;br /&gt;
&lt;br /&gt;
Những con qu&amp;aacute;i ở đ&amp;acirc;y chỉ to cỡ người b&amp;igrave;nh thường th&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
Nhưng vẫn l&amp;agrave; v&amp;ocirc; vọng nếu t&amp;ocirc;i muốn gϊếŧ ch&amp;uacute;ng.&lt;br /&gt;
&lt;br /&gt;
Tại sao &amp;agrave;? Đ&amp;oacute; l&amp;agrave; v&amp;igrave; t&amp;ocirc;i chưa đ&amp;aacute;nh nhau bao giờ!&lt;br /&gt;
&lt;br /&gt;
Nếu đ&amp;acirc;y l&amp;agrave; game th&amp;igrave; đ&amp;aacute;nh nhau lại l&amp;agrave; điểm mạnh của t&amp;ocirc;i.&lt;br /&gt;
&lt;br /&gt;
V&amp;igrave; game v&amp;agrave; đời thật rất kh&amp;aacute;c nhau.&lt;br /&gt;
&lt;br /&gt;
2D v&amp;agrave; 3D ho&amp;agrave;n to&amp;agrave;n kh&amp;aacute;c nhau.&lt;br /&gt;
&lt;br /&gt;
Khi mạng sống l&amp;agrave; vật đ&amp;aacute;nh cược th&amp;igrave; kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; l&amp;agrave; ăn gian hết.&lt;br /&gt;
&lt;br /&gt;
Hiện tại t&amp;ocirc;i đang đ&amp;oacute;i r&amp;atilde; ruột, nhưng vẫn chưa tới mức chết đ&amp;oacute;i.&lt;br /&gt;
&lt;br /&gt;
Thế n&amp;ecirc;n t&amp;ocirc;i sẽ săn bắt như một con nhện ch&amp;iacute;nh hiệu.&lt;br /&gt;
&lt;br /&gt;
Dĩ nhi&amp;ecirc;n n&amp;oacute;i đến nhện th&amp;igrave; phải n&amp;oacute;i đến tơ nhện.&lt;br /&gt;
&lt;br /&gt;
Nhện l&amp;agrave;m tổ bằng những sợi tơ c&amp;oacute; độ d&amp;iacute;nh đặc biệt v&amp;agrave; bắt con mồi v&amp;agrave;o đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
C&amp;aacute;i hang n&amp;agrave;y cực k&amp;igrave; th&amp;iacute;ch hợp cho việc đ&amp;oacute;.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i sẽ c&amp;oacute; thể thả tơ nhện khắp mọi nơi ở đ&amp;acirc;y.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;atilde; quyết định thế th&amp;igrave; h&amp;atilde;y l&amp;agrave;m nh&amp;agrave; mới th&amp;ocirc;i!&lt;br /&gt;
&lt;br /&gt;
Đầu ti&amp;ecirc;n t&amp;ocirc;i sẽ l&amp;agrave;m một sợi tơ.&lt;br /&gt;
&lt;br /&gt;
Ở dưới m&amp;ocirc;ng nhỉ? Đ&amp;oacute; l&amp;agrave; nơi nhả tơ?&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;
Khi đang suy nghĩ về n&amp;oacute; th&amp;igrave; một sợi tơ xuất hiện.&lt;br /&gt;
&lt;br /&gt;
Hở?&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i kh&amp;ocirc;ng nhớ đ&amp;atilde; đẻ ra thứ n&amp;agrave;y l&amp;uacute;c n&amp;agrave;o.&lt;br /&gt;
&lt;br /&gt;
Hơn nữa n&amp;oacute; c&amp;ograve;n rất l&amp;agrave; d&amp;agrave;i.&lt;br /&gt;
&lt;br /&gt;
Đừng n&amp;oacute;i l&amp;agrave; t&amp;ocirc;i đ&amp;atilde; nhả tơ từ l&amp;uacute;c t&amp;ocirc;i bắt đầu di chuyển chứ?&lt;br /&gt;
&lt;br /&gt;
Uwa, t&amp;ocirc;i chợt thấy hơi xấu hổ một ch&amp;uacute;t!&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; vẻ suốt thời gian n&amp;agrave;y t&amp;ocirc;i kh&amp;ocirc;ng để &amp;yacute; l&amp;agrave; t&amp;ocirc;i đ&amp;atilde; nhả tơ.&lt;br /&gt;
&lt;br /&gt;
Un.&lt;br /&gt;
&lt;br /&gt;
L&amp;agrave;m g&amp;igrave; với đoạn tơ n&amp;agrave;y đ&amp;acirc;y?&lt;br /&gt;
&lt;br /&gt;
C&amp;oacute; lẽ n&amp;oacute; sẽ gi&amp;uacute;p &amp;iacute;ch g&amp;igrave; đ&amp;oacute;, nhưng trước ti&amp;ecirc;n cứ cắt d&amp;acirc;y đ&amp;atilde;.&lt;br /&gt;
&lt;br /&gt;
Bắt đầu l&amp;agrave;m tổ n&amp;agrave;o!&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i biết m&amp;igrave;nh c&amp;oacute; thể nhả tơ.&lt;br /&gt;
&lt;br /&gt;
Chỉ cần l&amp;agrave;m lưới th&amp;iacute;ch hợp h&amp;igrave;nh d&amp;aacute;ng của c&amp;aacute;i hang l&amp;agrave; được.&lt;br /&gt;
&lt;br /&gt;
Mặc d&amp;ugrave; t&amp;ocirc;i kh&amp;aacute; kh&amp;eacute;o tay nhưng liệu c&amp;oacute; thể l&amp;agrave;m được một c&amp;aacute;i lưới kh&amp;ocirc;ng?&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i đ&amp;atilde; nghĩ về việc đ&amp;oacute; một l&amp;uacute;c.&lt;br /&gt;
&lt;br /&gt;
Khi nh&amp;igrave;n thấy th&amp;agrave;nh phẩm th&amp;igrave; t&amp;ocirc;i kh&amp;aacute; h&amp;agrave;i l&amp;ograve;ng.&lt;br /&gt;
&lt;br /&gt;
Một c&amp;aacute;i mạng nhện tuyệt đẹp căng ra chặn đường đi giữa hang.&lt;br /&gt;
&lt;br /&gt;
Đ&amp;acirc;y l&amp;agrave; bản năng tự nhi&amp;ecirc;n của nhện &amp;agrave;?&lt;br /&gt;
&lt;br /&gt;
Cơ thể t&amp;ocirc;i tự di chuyển khi t&amp;ocirc;i bắt đầu đan lưới v&amp;agrave; trước khi kịp nhận ra th&amp;igrave; mạng nhện đ&amp;atilde; ho&amp;agrave;n th&amp;agrave;nh.&lt;br /&gt;
&lt;br /&gt;
Nhưng t&amp;ocirc;i chỉ l&amp;agrave;m nửa dưới của lưới.&lt;br /&gt;
&lt;br /&gt;
Nửa tr&amp;ecirc;n th&amp;igrave; c&amp;aacute;ch nửa dưới 1m, căng từ tr&amp;ecirc;n trần hang xuống.&lt;br /&gt;
&lt;br /&gt;
L&amp;agrave;m vậy để l&amp;agrave;m g&amp;igrave; &amp;agrave;?&lt;br /&gt;
&lt;br /&gt;
Để c&amp;oacute; đường chạy tho&amp;aacute;t nếu cần thiết.&lt;br /&gt;
&lt;br /&gt;
Hiện tại t&amp;ocirc;i đang ở một ng&amp;atilde; ba h&amp;igrave;nh chữ T.&lt;br /&gt;
&lt;br /&gt;
Ở mỗi đầu t&amp;ocirc;i căng một c&amp;aacute;i lưới nhện, chặn hết c&amp;aacute;c lối đi.&lt;br /&gt;
&lt;br /&gt;
Nhưng nếu chặn ho&amp;agrave;n to&amp;agrave;n th&amp;igrave; t&amp;ocirc;i sẽ kh&amp;ocirc;ng c&amp;oacute; đường để tho&amp;aacute;t.&lt;br /&gt;
&lt;br /&gt;
Khả năng n&amp;agrave;y rất thấp, nhưng vẫn c&amp;oacute; khả năng l&amp;agrave; c&amp;oacute; c&amp;aacute;i g&amp;igrave; đ&amp;oacute; đủ sức đi qua mạng lưới t&amp;ocirc;i đ&amp;atilde; l&amp;agrave;m.&lt;br /&gt;
&lt;br /&gt;
Trong trường hợp đ&amp;oacute; t&amp;ocirc;i sẽ c&amp;oacute; khả năng bỏ chạy.&lt;br /&gt;
&lt;br /&gt;
Những con qu&amp;aacute;i vật kh&amp;ocirc;ng th&amp;ocirc;ng minh sẽ bị d&amp;iacute;nh v&amp;agrave;o lưới ở dưới mặt đất.&lt;br /&gt;
&lt;br /&gt;
Qu&amp;aacute;i vật biết bay sẽ bị d&amp;iacute;nh v&amp;agrave;o lưới ở tr&amp;ecirc;n trần nh&amp;agrave;.&lt;br /&gt;
&lt;br /&gt;
T&amp;ocirc;i đ&amp;atilde; l&amp;agrave;m được một khu vực an to&amp;agrave;n nhờ v&amp;agrave;o mạng lưới ở cả ba hướng đi, ngo&amp;agrave;i ra c&amp;ograve;n c&amp;oacute; lối tho&amp;aacute;t hiểm ph&amp;ograve;ng trường hợp.&lt;br /&gt;
&lt;br /&gt;
Khu vực cho NEET đ&amp;atilde; ho&amp;agrave;n th&amp;agrave;nh.&lt;br /&gt;
&lt;br /&gt;
Ng&amp;ocirc;i nh&amp;agrave; tuyệt vời của t&amp;ocirc;i.&lt;/p&gt;
', 1, CAST(0x0000ADE40173411B AS DateTime), CAST(0x0000ADE40173411B AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2099, 1071, 1039, N'Chương 01: Giáo viên đi làm khảo cổ học', N'&lt;p&gt;Đế Quốc Alzano.&lt;/p&gt;

&lt;p&gt;Tọa lọa ph&amp;iacute;a T&amp;acirc;y Bắc của Lục địa Bắc Selford, được ban phước với kh&amp;iacute; hậu &amp;ocirc;n đới của đại dương với hai m&amp;ugrave;a ri&amp;ecirc;ng biệt, đ&amp;ocirc;ng ẩm ướt v&amp;agrave; h&amp;egrave; kh&amp;ocirc; h&amp;agrave;nh.&lt;/p&gt;

&lt;p&gt;Nhưng điều đ&amp;aacute;ng lưu &amp;yacute; ở đế quốc kh&amp;ocirc;ng chỉ c&amp;oacute; vậy, h&amp;atilde;y đến v&amp;ugrave;ng cực Nam của đế quốc, một khu vực c&amp;oacute; t&amp;ecirc;n gọi l&amp;agrave; Yorkshire, nơi sở hữu t&amp;ograve;a th&amp;agrave;nh đặc biệt: Fejite.&lt;/p&gt;

&lt;p&gt;Với kiến tr&amp;uacute;c ấn tượng nhất của n&amp;oacute;: Học viện ph&amp;aacute;p thuật của Đế Quốc Alzano.&lt;/p&gt;

&lt;p&gt;Điều đ&amp;atilde; khiến Fejite như một th&amp;aacute;nh địa ph&amp;aacute;p thuật h&amp;agrave;ng đầu của cả lục địa Bắc Selford.&lt;/p&gt;

&lt;p&gt;Ban đầu, Fejite chỉ l&amp;agrave; một thị trấn được x&amp;acirc;y dựng v&amp;agrave; ph&amp;aacute;t triển song song với sự th&amp;agrave;nh lập của học viện.&lt;/p&gt;

&lt;p&gt;Cũng bởi vậy m&amp;agrave; sự cổ truyền thấm đẫm trong cảnh sắc của nơi đ&amp;acirc;y. Những m&amp;aacute;i nh&amp;agrave;, được xếp l&amp;ecirc;n nhau h&amp;ograve;a trộn tr&amp;ecirc;n thiết kế m&amp;aacute;i nhọn nối tiếp, s&amp;acirc;u v&amp;agrave; rộng lớn. N&amp;oacute; khiến cho cả thị trấn đượm một vẻ trang trọng m&amp;agrave; cũng lại tao nh&amp;atilde;.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng dừng ở đ&amp;oacute;, bởi một lượng nhu cầu vật liệu v&amp;agrave; h&amp;agrave;ng h&amp;oacute;a ma thuật khổng lồ của học viện, một khu vực thương mại đ&amp;atilde; dần h&amp;igrave;nh th&amp;agrave;nh trong thị trấn, l&amp;agrave;m cho n&amp;oacute; trở th&amp;agrave;nh một trong những khu mậu dịch mạnh mẽ nhất. Đi c&amp;ugrave;ng với sự thuận lợi về mặt địa l&amp;yacute; v&amp;agrave; tuyến thương mại, lượng người truy cập ng&amp;agrave;y c&amp;agrave;ng nhiều l&amp;ecirc;n, để rồi Fejite ng&amp;agrave;y nay trở th&amp;agrave;nh một th&amp;agrave;nh phố phồn hoa, vừa tấp nập hiện đại, nhưng vẫn kh&amp;ocirc;ng mất đi n&amp;eacute;t quyến rũ cổ xưa của n&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Một nơi giao thoa giữa qu&amp;aacute; khứ v&amp;agrave; tương lai.&lt;/p&gt;

&lt;p&gt;Trong một g&amp;oacute;c của th&amp;agrave;nh phố nơi vẫn c&amp;ograve;n được &amp;ocirc;m ấp bởi những tảng sương m&amp;ugrave; m&amp;ocirc;ng lung l&amp;uacute;c s&amp;aacute;ng, một c&amp;ocirc; g&amp;aacute;i trẻ đứng lặng lẽ dưới d&amp;atilde;y đ&amp;egrave;n đường chạy đọc theo một con đường l&amp;aacute;t đ&amp;aacute;.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; c&amp;oacute; lẽ chỉ khoảng 15 hay 16 tuổi, m&amp;aacute;i t&amp;oacute;c v&amp;agrave;ng mềm mại như b&amp;ocirc;ng g&amp;ograve;n được cắt một c&amp;aacute;ch vừa phải, đung đưa ngay ph&amp;iacute;a tr&amp;ecirc;n đ&amp;ocirc;i mắt ngọc lấp l&amp;aacute;nh đầy ấn tượng. Da của c&amp;ocirc; mịn, hệt như một miếng lụa thượng đẳng. Ngay cả cử chỉ v&amp;agrave; d&amp;aacute;ng dấp đều tỏa ra &amp;aacute;ng s&amp;aacute;ng rạng rỡ kh&amp;ocirc;ng thể che khuất, kết hợp với một khu&amp;ocirc;n mặt thi&amp;ecirc;n thần m&amp;agrave; c&amp;oacute; lẽ được đi&amp;ecirc;u khắc bởi b&amp;agrave;n tay của những nghệ sĩ bậc thầy.&lt;/p&gt;

&lt;p&gt;Nếu chỉ lướt qua c&amp;ocirc; trong một c&amp;aacute;i nh&amp;igrave;n đầu ti&amp;ecirc;n, ấn tượng về c&amp;ocirc; sẽ l&amp;agrave; sự thất thường kh&amp;oacute; tin, nhưng nếu xem x&amp;eacute;t kĩ, ta c&amp;oacute; thể nhận thấy sắt v&amp;agrave; th&amp;eacute;p như ẩn như hiện trong người con g&amp;aacute;i ấy.&lt;/p&gt;

&lt;p&gt;Tr&amp;aacute;i với sự xinh đẹp c&amp;oacute; thể khiến cho người qua đường phải ngo&amp;aacute;i lại, trang phục của c&amp;ocirc; l&amp;agrave; một sự pha trộn kh&amp;ocirc;ng hợp thời.&lt;/p&gt;

&lt;p&gt;Vest, với kiểu d&amp;aacute;ng kh&amp;aacute; đẹp, v&amp;agrave; v&amp;aacute;y xếp ly kết hợp c&amp;ugrave;ng một chiếc &amp;aacute;o cho&amp;agrave;ng tơ tằm tr&amp;ugrave;m l&amp;ecirc;n n&amp;oacute;.&lt;/p&gt;

&lt;p&gt;D&amp;ugrave; b&amp;acirc;y giờ đ&amp;atilde; v&amp;agrave;o m&amp;ugrave;a h&amp;egrave;, đ&amp;ecirc;m của Fejite vẫn c&amp;ograve;n mang theo c&amp;aacute;i se lạnh s&amp;oacute;t lại của m&amp;ugrave;a đ&amp;ocirc;ng.&lt;/p&gt;

&lt;p&gt;V&amp;igrave; l&amp;yacute; do n&amp;agrave;o đ&amp;oacute; m&amp;agrave; c&amp;ocirc; mới ăn mặc hở hang như vậy?&lt;/p&gt;

&lt;p&gt;V&amp;agrave;, tại sao c&amp;ocirc; chỉ đeo một chiếc găng tay tr&amp;ecirc;n b&amp;agrave;n tay tr&amp;aacute;i của m&amp;igrave;nh?&lt;/p&gt;

&lt;p&gt;&amp;quot;~ ♪&amp;quot;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Dường như c&amp;ocirc; đang đợi ai đ&amp;oacute; với một t&amp;acirc;m trạng kh&amp;aacute; tốt khi siết chặt v&amp;agrave;nh t&amp;uacute;i da ngang vai v&amp;agrave; giết thời gian bằng hu&amp;yacute;t một b&amp;agrave;i ca.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Đ&amp;uacute;ng l&amp;uacute;c ấy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;Ouch!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Giọng n&amp;oacute;i đau đớn vang l&amp;ecirc;n ph&amp;iacute;a sau khiến c&amp;ocirc; quay đầu nh&amp;igrave;n lại.&lt;/p&gt;

&lt;p&gt;Một &amp;ocirc;ng gi&amp;agrave; lớn tuổi, đang &amp;ocirc;m ng&amp;oacute;n tay v&amp;agrave; nhắn nh&amp;oacute; v&amp;igrave; đau đớn.&lt;/p&gt;

&lt;p&gt;Chiếc th&amp;ugrave;ng sắt chứa đầy l&amp;aacute; rụng v&amp;agrave; c&amp;agrave;nh c&amp;acirc;y nằm dưới ch&amp;acirc;n &amp;ocirc;ng, b&amp;ecirc;n cạnh h&amp;ograve;n đ&amp;aacute; đ&amp;aacute;nh lửa vừa rơi xuống.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;aacute;i- Những g&amp;igrave; xảy ra vậy thưa &amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ngay cả khi &amp;ocirc;ng gi&amp;agrave; chỉ l&amp;agrave; một người xa lạ, sự lo lắng vẫn hiện tr&amp;ecirc;n gương mặt c&amp;ocirc;, trong c&amp;aacute;ch c&amp;ocirc; vội v&amp;atilde; chạy đến b&amp;ecirc;n &amp;ocirc;ng kh&amp;ocirc;ng ch&amp;uacute;t do dự.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Oh? &amp;Ocirc;i kh&amp;ocirc;ng, hahaha&amp;hellip;Chỉ l&amp;agrave; một ch&amp;uacute;t vụng về của tuổi t&amp;aacute;c th&amp;ocirc;i thưa tiểu thư.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Trước c&amp;ocirc; g&amp;aacute;i tốt bụng, &amp;ocirc;ng gi&amp;agrave; ph&amp;aacute;t ra một tiếng cười của l&amp;uacute;ng t&amp;uacute;ng v&amp;agrave;&amp;hellip;cay đắng?&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i đang định đốt chỗ r&amp;aacute;c gom lại n&amp;agrave;y m&amp;agrave; th&amp;ocirc;i. T&amp;ocirc;i, của tất cả mọi người, trượt ch&amp;acirc;n v&amp;agrave; đập tay v&amp;agrave;o đ&amp;aacute; lửa&amp;hellip;Haizz, tuổi gi&amp;agrave; đ&amp;ocirc;i khi đ&amp;aacute;ng gh&amp;eacute;t vậy đấy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; liếc nh&amp;igrave;n ng&amp;oacute;n tay chảy m&amp;aacute;u v&amp;agrave; sưng u của &amp;ocirc;ng gi&amp;agrave;. N&amp;oacute; dường như bị đ&amp;aacute;nh kh&amp;aacute; mạnh. Ngay cả khi kh&amp;ocirc;ng phải vết thương nghi&amp;ecirc;m trọng, tr&amp;ocirc;ng n&amp;oacute; vẫn kh&amp;aacute; đau đớn.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ah, t&amp;ocirc;i kh&amp;ocirc;ng thể trở về nh&amp;agrave; v&amp;agrave; lấy &amp;iacute;t thảo dược từ vợ t&amp;ocirc;i, v&amp;agrave;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; vẫn mải kiểm tra vết thương của người đ&amp;agrave;n &amp;ocirc;ng lớn tuổi rồi ng&amp;oacute; nghi&amp;ecirc;ng xung quanh kh&amp;ocirc;ng ngừng. M&amp;atilde;i tới khi chắc chắn kh&amp;ocirc;ng c&amp;oacute; một ai ở gần, một nụ cười ma m&amp;atilde;nh hiện l&amp;ecirc;n với ng&amp;oacute;n tay trỏ đặt l&amp;ecirc;n m&amp;ocirc;i m&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Ocirc;ng, c&amp;aacute;i n&amp;agrave;y phải giữ b&amp;iacute; mật nha?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;Huh?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Nắm lấy b&amp;agrave;n tay của &amp;ocirc;ng gi&amp;agrave; bối rối, c&amp;ocirc; lẩm bẩm những từ rune v&amp;agrave; cast một spell tr&amp;ecirc;n đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;&amp;lt;That Angel&amp;rsquo;s Charity&amp;gt;&lt;/p&gt;

&lt;p&gt;Một &amp;aacute;nh s&amp;aacute;ng mờ nhạt tỏa ra từ l&amp;ograve;ng b&amp;agrave;n tay c&amp;ocirc;, phủ l&amp;ecirc;n vết thương v&amp;agrave; chữa l&amp;agrave;nh n&amp;oacute; ngay lập tức.&lt;/p&gt;

&lt;p&gt;White Magic [Life Up].&lt;/p&gt;

&lt;p&gt;Ph&amp;eacute;p thuật tăng cao khả năng t&amp;aacute;i tạo tế b&amp;agrave;o trong ứng dụng chữa l&amp;agrave;nh.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;C-..C-C&amp;ocirc;&amp;hellip;.!?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Người đ&amp;agrave;n &amp;ocirc;ng vẫn tiếp tục nh&amp;igrave;n chằm chằm với đ&amp;ocirc;i mắt mở rộng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Uhm, được rồi. Tiếp theo l&amp;agrave;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;lt;Pups of fire. Small flame on my fingertips. You sall light up&amp;gt;&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; cast th&amp;ecirc;m một ph&amp;eacute;p thuật kh&amp;aacute;c [Fire Torch].&lt;/p&gt;

&lt;p&gt;Ngọn lửa b&amp;ugrave;ng l&amp;ecirc;n tr&amp;ecirc;n đầu ng&amp;oacute;n tay c&amp;ocirc; trước khi bị n&amp;eacute;m v&amp;agrave;o th&amp;ugrave;ng sắt v&amp;agrave; đốt ch&amp;aacute;y những g&amp;igrave; trong n&amp;oacute;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tiểu thư&amp;hellip;C&amp;aacute;i sức mạnh b&amp;iacute; ẩn m&amp;agrave; tiểu thư vừa d&amp;ugrave;ng&amp;hellip;l&amp;agrave; ph&amp;aacute;p thuật trong lời đồn?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;V&amp;acirc;ng. C&amp;oacute; điều, ch&amp;aacute;u sẽ bị phạt v&amp;igrave; sử dụng ph&amp;aacute;p thuật b&amp;ecirc;n ngo&amp;agrave;i học viện.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ngay cả khi ngạc nhi&amp;ecirc;n v&amp;igrave; điều đ&amp;oacute;, sự ngưỡng mộ vẫn kh&amp;ocirc;ng ch&amp;uacute;t suy giảm tr&amp;ecirc;n gương mặt &amp;ocirc;ng l&amp;atilde;o. C&amp;ocirc; l&amp;egrave; lưỡi v&amp;agrave; cười toe to&amp;eacute;t một c&amp;aacute;ch ranh m&amp;atilde;nh.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nếu vậy, đồng phục n&amp;agrave;y&amp;hellip;l&amp;agrave; đồng phục của học vi&amp;ecirc;n ma ph&amp;aacute;p rồi. Bạn b&amp;egrave; tiểu thư đều sử dụng được nghệ thuật b&amp;iacute; ẩn ban n&amp;atilde;y sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;V&amp;acirc;ng v&amp;acirc;ng. Họ sử dụng ch&amp;uacute;ng thuần thục hơn ch&amp;aacute;u nhiều, &amp;ocirc;ng biết kh&amp;ocirc;ng? Họ cũng c&amp;oacute; thể d&amp;ugrave;ng c&amp;aacute;c ph&amp;aacute;p thuật cực k&amp;igrave; mạnh mẽ nữa.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Whoa..thật ti&amp;ecirc;n lợi. Nếu l&amp;atilde;o gi&amp;agrave; n&amp;agrave;y c&amp;oacute; thể d&amp;ugrave;ng được những thuật th&amp;uacute; vị như vậy th&amp;igrave; nhiều việc sẽ dễ d&amp;agrave;ng hơn rồi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ahahaa, c&amp;oacute; lẽ thế. Nhưng &amp;ocirc;ng, việc ch&amp;aacute;u vừa d&amp;ugrave;ng ph&amp;eacute;p thuật, liệu&amp;hellip;&amp;ocirc;ng c&amp;oacute; thể&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ooh, tiểu thư muốn l&amp;atilde;o giữ b&amp;iacute; mật? Chắc chắn chứ.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Yata, cảm ơn &amp;ocirc;ng nhiều.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tiểu thư n&amp;oacute;i g&amp;igrave; vậy, t&amp;ocirc;i mới phải l&amp;agrave; người n&amp;oacute;i điều đ&amp;oacute;. Cảm ơn tiểu thư v&amp;igrave; đ&amp;atilde; gi&amp;uacute;p đỡ t&amp;ocirc;i.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Họ c&amp;ugrave;ng trao đổi một nụ cười.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Lumiaaaaaa! Xin lỗi m&amp;igrave;nh đến chậ mmmmmm!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Từ xa, tiếng bước ch&amp;acirc;n dồn dập truyền tới ngay c&amp;agrave;ng gần hơn. Một c&amp;ocirc; g&amp;aacute;i kh&amp;aacute;c, với trang phục giống hệt c&amp;ocirc; g&amp;aacute;i trẻ n&amp;agrave;y, đang chạy đến từ ph&amp;iacute;a b&amp;ecirc;n kia đường.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Oh? C&amp;ocirc; g&amp;aacute;i đ&amp;oacute;&amp;hellip;tiểu thư đ&amp;oacute; l&amp;agrave; bạn của ch&amp;aacute;u?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;V&amp;acirc;ng. C&amp;ocirc; ấy l&amp;agrave; con g&amp;aacute;i của gia đ&amp;igrave;nh ch&amp;aacute;u đang k&amp;yacute; t&amp;uacute;c, v&amp;agrave; l&amp;agrave; bạn th&amp;acirc;n của ch&amp;aacute;u. Vậy, &amp;ocirc;ng, ch&amp;aacute;u nghĩ đến l&amp;uacute;c ch&amp;aacute;u phải đi rồi. Nhưng d&amp;ugrave; sao cũng thật tuyệt khi được gặp &amp;ocirc;ng.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Oh, tạm biệt tiểu thư, ban phước cho những điều tốt đẹp nhất.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; g&amp;aacute;i c&amp;uacute;i đầu ch&amp;agrave;o tạm biệt &amp;ocirc;ng l&amp;atilde;o rồi xoay người chạy về hướng người bạn của m&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;Vẫn c&amp;ograve;n l&amp;agrave; buổi s&amp;aacute;ng ở th&amp;agrave;nh Fejite, n&amp;ecirc;n con đường ch&amp;iacute;nh vẫn c&amp;ograve;n kh&amp;aacute; vắng vẻ.&lt;/p&gt;

&lt;p&gt;Hai c&amp;ocirc; g&amp;aacute;i bước đi b&amp;ecirc;n cạnh nhau một c&amp;aacute;ch duy&amp;ecirc;n d&amp;aacute;ng dọc theo con đường l&amp;aacute;t đ&amp;aacute; granit.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hmmmp, Lumia, cậu qu&amp;aacute; quy củ rồi&amp;hellip;M&amp;igrave;nh đ&amp;atilde; bảo cậu cứ đi trước m&amp;agrave;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Uhh, nhưng, nhưng t&amp;ocirc;i được bổ nhiệm vị tr&amp;iacute; chăm s&amp;oacute;c bạn, my lady. V&amp;agrave; với tư c&amp;aacute;ch một kẻ ở nhờ, nếu bỏ ng&amp;agrave;i để đi trước, &amp;ocirc;ng chủ c&amp;ugrave;ng phu nh&amp;acirc;n sẽ&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Baka, đừng đ&amp;ugrave;a kiểu đ&amp;oacute;. Cậu l&amp;agrave; một phần của gia đ&amp;igrave;nh m&amp;agrave;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ahaha, m&amp;igrave;nh xin lỗi Sisti.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Cuộc tr&amp;ograve; chuyện th&amp;acirc;n thiện v&amp;agrave; ngớ ngẩn của hai c&amp;ocirc; g&amp;aacute;i đ&amp;atilde; bắt đầu như vậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thật hiếm khi thấy Sisti qu&amp;ecirc;n thứ g&amp;igrave; đ&amp;oacute; đấy&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Chia tay &amp;ocirc;ng l&amp;atilde;o, Lumia xoay chủ đề về người bạn c&amp;ocirc; &amp;ndash; kết hợp c&amp;ugrave;ng một vẻ mặt kh&amp;oacute; tin.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tớ xin lỗi&amp;hellip;để cậu phải đợi khi tớ quay trở lại&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;B&amp;ecirc;n cạnh Lumia, Sistina nh&amp;igrave;n c&amp;oacute; vẻ ch&amp;aacute;n nản khi c&amp;ocirc; l&amp;ecirc; bước v&amp;agrave; thở d&amp;agrave;i ảm đạm.&lt;/p&gt;

&lt;p&gt;Sistina bằng tuổi Lumia, với m&amp;aacute;i t&amp;oacute;c bạc, m&amp;agrave;u sắc của bạc tinh kiết kh&amp;ocirc;ng hề bị trộn lẫn. C&amp;ugrave;ng đ&amp;ocirc;i mắt ngọc lục bảo mang theo ch&amp;uacute;t u buồn. L&amp;agrave;n da c&amp;ocirc; trắng, như tuyết, kết hợp với sự đoan trang v&amp;agrave; thanh t&amp;uacute; của một bức tượng đầy tự h&amp;agrave;o v&amp;agrave; ki&amp;ecirc;n cường của một n&amp;agrave;ng ti&amp;ecirc;n, song vẫn kh&amp;ocirc;ng thiếu sự đ&amp;aacute;ng y&amp;ecirc;u trong đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Ngay cả khi mang theo ch&amp;uacute;t u &amp;aacute;m, th&amp;aacute;i độ của c&amp;ocirc; vẫn b&amp;igrave;nh tĩnh v&amp;agrave; trang nghi&amp;ecirc;m. Một ấn tượng m&amp;agrave; c&amp;ocirc; lu&amp;ocirc;n đem lại cho người kh&amp;aacute;c.&lt;/p&gt;

&lt;p&gt;Lumia &amp;ndash; Sistina.&lt;/p&gt;

&lt;p&gt;Hai c&amp;ocirc; g&amp;aacute;i với hai phong c&amp;aacute;ch kh&amp;aacute;c nhau, độc đ&amp;aacute;o m&amp;agrave; kh&amp;ocirc;ng phải kiểu m&amp;agrave; bất k&amp;igrave; c&amp;ocirc; g&amp;aacute;i tầm thường n&amp;agrave;o trong th&amp;agrave;nh phố c&amp;oacute; thể bắt chước.&lt;/p&gt;

&lt;p&gt;Vẻ đẹp của sang trọng v&amp;agrave; tự nhi&amp;ecirc;n đi k&amp;egrave;m với nhau.&lt;/p&gt;

&lt;p&gt;Ngay cả khi chỉ mang tr&amp;ecirc;n m&amp;igrave;nh đồng phục Học viện Ma Ph&amp;aacute;p v&amp;agrave; bước đi tr&amp;ecirc;n một g&amp;oacute;c tầm thường của th&amp;agrave;nh phố, bầu kh&amp;ocirc;ng kh&amp;iacute; b&amp;ecirc;n họ vẫn đậm chất qu&amp;yacute; tộc kh&amp;ocirc;ng thể phủ nhận.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chẳng lẽ&amp;hellip;Sisti&amp;hellip;đ&amp;uacute;ng như tớ nghĩ&amp;hellip;cậu vẫn bị ảnh hưởng v&amp;igrave; chuyện kia sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Lo lắng to&amp;aacute;t ra trong mắt Lumia khi c&amp;ocirc; nh&amp;igrave;n gương mặt của Sistina. Sistina m&amp;agrave; c&amp;ocirc; biết kh&amp;ocirc;ng bao giờ c&amp;oacute; thể phạm một lỗi ngớ ngẩn như qu&amp;ecirc;n mang đồ như vậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;oacute; lẽ&amp;hellip;l&amp;agrave; vậy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Cố xoa dịu t&amp;iacute;n hiệu lo &amp;acirc;u từ người bạn th&amp;acirc;n của m&amp;igrave;nh bằng một nụ cười, song Sistina đ&amp;atilde; thất bại khi kh&amp;ocirc;ng thể loại bỏ hết u buồn c&amp;ograve;n đọng lại tr&amp;ecirc;n gương mặt m&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nhưng m&amp;agrave;, c&amp;ocirc;ng nhận lạ thật đấy&amp;hellip;Đột ngột từ chức rồi đột ngột rời đi. Sao gi&amp;aacute;o sư Huey phải l&amp;agrave;m vậy nhỉ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Biết sao được. Mỗi gi&amp;aacute;o sư đều c&amp;oacute; ho&amp;agrave;n cảnh kh&amp;aacute;c nhau m&amp;agrave;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Aiii, đ&amp;aacute;ng tiếc&amp;hellip;gi&amp;aacute;o sư Huey giảng b&amp;agrave;i dễ hiểu vậy m&amp;agrave;, c&amp;ograve;n giải đ&amp;aacute;p hết thắc mắc cho ch&amp;uacute;ng ta nữa&amp;hellip;Một người tốt như vậy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thầy ấy cũng đẹp trai nữa, phải kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hừ! Cậu n&amp;oacute;i g&amp;igrave; vậy! Ai quan t&amp;acirc;m tới vẻ ngo&amp;agrave;i của thầy ấy chứ!?&amp;rdquo; Một m&amp;agrave;u đỏ lan rộng tr&amp;ecirc;n gương mặt Sistina khi nghe c&amp;acirc;u tr&amp;ecirc;u đ&amp;ugrave;a của Lumia.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tớ, người đứng đầu tiếp theo của gia tộc Ma ph&amp;aacute;p Feebell danh gi&amp;aacute;, đến học viện với mục đ&amp;iacute;ch nghi&amp;ecirc;n cứu ma thuật! T&amp;ocirc;i chỉ đơn giản l&amp;agrave; hy vọng học được c&amp;aacute;c b&amp;agrave;i học chất lượng nhất từ c&amp;aacute;c gi&amp;aacute;o sư m&amp;agrave; th&amp;ocirc;i!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Bỏ qua giải th&amp;iacute;ch kh&amp;ocirc;ng ngừng từ Sistina, Lumia đ&amp;aacute;p lại với nụ cười kh&amp;uacute;c kh&amp;iacute;ch đi k&amp;egrave;m với một c&amp;aacute;i nh&amp;igrave;n t&amp;ocirc;i-biết-t&amp;ocirc;i-biết.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ah đ&amp;uacute;ng rồi, Sisti. Đổi chủ đề, nghe n&amp;oacute;i h&amp;ocirc;m nay sẽ c&amp;oacute; người đến thay thế thầy ấy như một giảng vi&amp;ecirc;n tạm thời, cậu biết chưa?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;Tớ biết&amp;hellip;&amp;rdquo; Sistina tỏ ra kh&amp;ocirc;ng quan t&amp;acirc;m &amp;ldquo;Chỉ cần gi&amp;aacute;o vi&amp;ecirc;n nửa tốt như gi&amp;aacute;o sư Huey l&amp;agrave; được.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng sai. Tớ cũng quen với lớp của gi&amp;aacute;o sư Huey rồi, giờ học của người kh&amp;aacute;c th&amp;igrave; như thế n&amp;agrave;o ấy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ngay tại thời điểm họ trao đổi ở gần một ng&amp;atilde; tư&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ooooooooooooooo!? M&amp;igrave;nh trễ mất, m&amp;igrave;nh trễ mất th&amp;ocirc;i.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Một người đ&amp;agrave;n &amp;ocirc;ng đ&amp;aacute;ng ngờ với đ&amp;ocirc;i mắt đỏ ngầu, tr&amp;ocirc;ng c&amp;oacute; vẻ vội v&amp;agrave;ng, với một miếng b&amp;aacute;nh m&amp;igrave; vẫn c&amp;ograve;n treo tr&amp;ecirc;n miệng của m&amp;igrave;nh, đang chạy thục mạng từ b&amp;ecirc;n phải đường đến ph&amp;iacute;a hai người họ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;Eh?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kyaaa!?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;aacute;i-hả?! Tr&amp;aacute;nh ra, tr&amp;aacute;nh ra mau hai đứa-!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Qu&amp;aacute;n t&amp;iacute;nh khiến vật thể h&amp;igrave;nh người kia kh&amp;ocirc;ng thể phanh lại. Người đ&amp;agrave;n &amp;ocirc;ng mang theo định luật kinh điển của vật l&amp;yacute; lao thẳng v&amp;agrave;o hai c&amp;ocirc; g&amp;aacute;i bất lực- rồi&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;quot;Gre-&amp;lt;Great Wind&amp;gt;&amp;quot;&lt;/p&gt;

&lt;p&gt;Tiếng h&amp;ocirc; kịp thời của Sistina vang l&amp;ecirc;n c&amp;ugrave;ng một Black Magic[Gale Blow].&lt;/p&gt;

&lt;p&gt;Cơn gi&amp;oacute; dữ dội nổ ra từ b&amp;agrave;n tay c&amp;ocirc; v&amp;agrave; nhấn ch&amp;igrave;m cơ thể của người đ&amp;agrave;n &amp;ocirc;ng&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Huhhh?! M&amp;igrave;nh đang bayyyyy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;hellip;v&amp;agrave; hất n&amp;oacute; l&amp;ecirc;n cao, đến nỗi họ phải ngước đầu mới thấy r&amp;otilde; đường parabol tuyệt đẹp được vẽ ra bởi ch&amp;iacute;nh cơ thể anh ta trước khi hạ c&amp;aacute;nh v&amp;agrave;o trong đ&amp;agrave;i phun nước h&amp;igrave;nh cầu ph&amp;iacute;a b&amp;ecirc;n kia đường phố.&lt;/p&gt;

&lt;p&gt;Ngơ ng&amp;aacute;c nh&amp;igrave;n cột nước h&amp;ugrave;ng vĩ b&amp;ugrave;ng l&amp;ecirc;n từ đ&amp;agrave;i phun nước, hai c&amp;ocirc; g&amp;aacute;i đứng như thể bị h&amp;oacute;a đ&amp;aacute; tại chỗ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Uhmmm, Sisti? Cậu&amp;hellip;hơi qu&amp;aacute; tay đ&amp;oacute;?!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Oh, oh&amp;hellip;Lỗi của tớ&amp;hellip;Ahaha&amp;hellip;Tớ kh&amp;ocirc;ng cẩn thận mất rồi&amp;hellip;Phải l&amp;agrave;m g&amp;igrave; b&amp;acirc;y giờ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Trong khi hai người vẫn &amp;acirc;m thầm kh&amp;ocirc;ng rời mắt khỏi người đ&amp;agrave;n &amp;ocirc;ng, anh ta đ&amp;atilde; b&amp;ograve; ra khỏi đ&amp;agrave;i phun nướ v&amp;agrave; đi đến trước mặt họ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Whew, hai vị tiểu thư vẫn ổn chứ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng, anh c&amp;oacute; sao kh&amp;ocirc;ng?&lt;/p&gt;

&lt;p&gt;C&amp;oacute; lẽ anh ta đ&amp;atilde; buộc bản th&amp;acirc;n phải thể hiện một nụ cười sảng kho&amp;aacute;i, đ&amp;aacute;ng tiếc l&amp;agrave; n&amp;oacute; kh&amp;ocirc;ng thể ho&amp;agrave;n th&amp;agrave;nh một nửa.&lt;/p&gt;

&lt;p&gt;Một kẻ k&amp;igrave; qu&amp;aacute;i. C&amp;oacute; lẽ chỉ lớn hơn Sistina v&amp;agrave;i tuổi. Anh ta c&amp;oacute; đ&amp;ocirc;i mắt v&amp;agrave; m&amp;aacute;i t&amp;oacute;c đen, cao, v&amp;agrave; gầy c&amp;ograve;m. Kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; đặc biệt về ngoại h&amp;igrave;nh của anh, ngoại trừ bộ quần &amp;aacute;o tỉ mỉ; một chiếc &amp;aacute;o sơ mi trắng, c&amp;agrave; vạt, quần đen kh&amp;aacute; phong c&amp;aacute;ch.&lt;/p&gt;

&lt;p&gt;Tuy nhi&amp;ecirc;n c&amp;aacute;ch ăn mặc l&amp;ocirc;i th&amp;ocirc;i lại như thể thể hiện sự kh&amp;ocirc;ng h&amp;agrave;i l&amp;ograve;ng của anh ta về n&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Một hiển nhi&amp;ecirc;n, bởi bất k&amp;igrave; ai cũng c&amp;oacute; thể nhận thấy người chọn bộ quần &amp;aacute;o n&amp;agrave;y v&amp;agrave; người mặc kh&amp;ocirc;ng phải l&amp;agrave; một.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ahahaa..hai người n&amp;ecirc;n cẩn thận hơn khi đi đến ng&amp;atilde; tư chứ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng&amp;hellip;Anh mới l&amp;agrave; người đột nhi&amp;ecirc;n lao ra&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sistina lập tức chỉ ra vấn đề, đ&amp;uacute;ng l&amp;uacute;c n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Sisti, cậu kh&amp;ocirc;ng thể!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Lumia phồng m&amp;aacute; xen v&amp;agrave;o giữa Sistina v&amp;agrave; người đ&amp;agrave;n &amp;ocirc;ng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cậu kh&amp;ocirc;ng thể chỉ đổ lỗi cho người n&amp;agrave;y! Bởi v&amp;igrave; SISTI mới l&amp;agrave; người bất ngờ d&amp;ugrave;ng Black Magic tấn c&amp;ocirc;ng anh ta&amp;hellip;Nếu c&amp;oacute; ch&amp;uacute;t sai lầm nhỏ cũng đủ l&amp;agrave;m tổn thương anh ta, kh&amp;ocirc;ng phải sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;HMP&amp;hellip;t&amp;ocirc;i xin lỗi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sistina cụp mắt với vẻ xấu hổ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Sisti, nhanh xin lỗi anh ta đi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Được rồi. Uhmm&amp;hellip;T&amp;ocirc;i thực sự xin lỗi v&amp;igrave; những g&amp;igrave; đ&amp;atilde; l&amp;agrave;m. Xin h&amp;atilde;y tha thứ cho sự th&amp;ocirc; lỗ của t&amp;ocirc;i.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Được rồi, t&amp;ocirc;i thấy thất vọng. T&amp;ocirc;i thực sự muốn gặp cha mẹ của bạn! Heck, loại gi&amp;aacute;o dục n&amp;agrave;o bạn đ&amp;atilde; nhận? Huh?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ne, ch&amp;uacute;ng t&amp;ocirc;i đang h&amp;agrave;nh xử khi&amp;ecirc;m tốn, v&amp;agrave; th&amp;aacute;i độ của anh&amp;hellip;l&amp;agrave; sao? Người n&amp;agrave;y c&amp;oacute; vấn đề &amp;agrave;?!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ahaha, nhịn, n&amp;ecirc;n nhịn.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ngay l&amp;uacute;c SISTI muốn l&amp;ocirc;i Lumia đi, c&amp;ocirc; đẩy tay v&amp;agrave; c&amp;uacute;i đầu trước người đ&amp;agrave;n &amp;ocirc;ng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thật c&amp;oacute; lỗi, ban n&amp;atilde;y l&amp;agrave; lỗi của ch&amp;uacute;ng t&amp;ocirc;i. Thật xin lỗi, anh c&amp;oacute; thể vui l&amp;ograve;ng tha thứ cho ch&amp;uacute;ng t&amp;ocirc;i được kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ma-kh&amp;ocirc;ng c&amp;oacute; biện ph&amp;aacute;p&amp;hellip;d&amp;ugrave; sao cũng l&amp;agrave; sai lầm của hai người, nhưng nếu c&amp;ocirc; đ&amp;atilde; n&amp;oacute;i vậy&amp;hellip;T&amp;ocirc;i sẽ tặng c&amp;ocirc; một sự tha thứ si&amp;ecirc;u đặc biệt, nhưng&amp;hellip;huh?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Những lời cằn cằn đột ngột dừng lại khi người đ&amp;agrave;n &amp;ocirc;ng nh&amp;igrave;n v&amp;agrave;o Lumia, l&amp;ocirc;ng m&amp;agrave;y của anh cau lại như nhận ra thứ g&amp;igrave; đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Huh? HuH?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;U, um..C&amp;oacute; c&amp;aacute;i g&amp;igrave; tr&amp;ecirc;n mặt t&amp;ocirc;i &amp;agrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng để &amp;yacute; tới một Lumia bối rối, người đ&amp;agrave;n &amp;ocirc;ng tiến s&amp;aacute;t tới gần c&amp;ocirc; kh&amp;ocirc;ng ch&amp;uacute;t do dự.&lt;/p&gt;

&lt;p&gt;&amp;Aacute;nh mắt th&amp;ocirc; lỗ như thể xo&amp;aacute;y v&amp;agrave;o trong t&amp;acirc;m hồn l&amp;agrave;m Lumia cảm thấy sợ. C&amp;ocirc; chớp mắt.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng&amp;hellip;Bạn&amp;hellip;L&amp;agrave;m thế n&amp;agrave;o&amp;hellip;&amp;rdquo; Người đ&amp;agrave;n &amp;ocirc;ng nghi&amp;ecirc;ng đầu, ng&amp;oacute;n tay chọc chọc tr&amp;aacute;n của Lumia trước khi dịch chuyển n&amp;oacute; tới phần m&amp;aacute; v&amp;agrave; nh&amp;eacute;o, tai v&amp;agrave; phần vai hẹp tinh tế, để rồi hất t&amp;oacute;c m&amp;aacute;i của c&amp;ocirc; l&amp;ecirc;n v&amp;agrave; nh&amp;igrave;n thẳng v&amp;agrave;o mắt c&amp;ocirc;&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Anh! Anh Đang L&amp;Agrave; MMMMMM c&amp;aacute;i qu&amp;aacute;i g&amp;igrave; thế?!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;uacute; đ&amp;aacute; tức giận nhắm thẳng v&amp;agrave;o m&amp;ocirc;ng của người đ&amp;agrave;n &amp;ocirc;ng v&amp;agrave; gửi anh ta ra một g&amp;oacute;c.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Gwwaaaaaaaaaaa!?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Tiếng la h&amp;eacute;t thảm thiết của người đ&amp;agrave;n &amp;ocirc;ng vang l&amp;ecirc;n khi anh lăn lộn tr&amp;ecirc;n mặt đất. C&amp;oacute; lẽ bởi quần &amp;aacute;o vừa bị ng&amp;acirc;m nước, ch&amp;uacute;ng nhanh ch&amp;oacute;ng trở n&amp;ecirc;n bẩn thỉu v&amp;agrave; nh&amp;agrave;u n&amp;aacute;t, thậm ch&amp;iacute; r&amp;aacute;ch rưới so với h&amp;igrave;nh dạng l&amp;uacute;c đầu của ch&amp;uacute;ng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Bất cẩn đổ x&amp;ocirc; v&amp;agrave;o ch&amp;uacute;ng t&amp;ocirc;i v&amp;agrave; định giở tr&amp;ograve; biến th&amp;aacute;i?! Tự tiện chạm v&amp;agrave;o c&amp;ocirc; g&amp;aacute;i m&amp;agrave; kh&amp;ocirc;ng được cho ph&amp;eacute;p. Thật kh&amp;ocirc;ng thể tin được! Bạn&amp;hellip;Hạ đẳng!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Khoan, b&amp;igrave;nh tĩnh ch&amp;uacute;t được kh&amp;ocirc;ng?! T&amp;ocirc;i chỉ l&amp;agrave; một học giả b&amp;igrave;nh thường, đ&amp;oacute; chỉ l&amp;agrave; v&amp;igrave; mục đ&amp;iacute;ch nghi&amp;ecirc;n cứu v&amp;agrave; sự t&amp;ograve; m&amp;ograve; tinh khiết th&amp;ocirc;i nha! Được rồi, t&amp;ocirc;i thừa nhận m&amp;igrave;nh c&amp;oacute; ch&amp;uacute;t biến th&amp;aacute;i!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ecirc;n khốn nạn.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;GOBOHOO!?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Nắm tay Sistina tạo th&amp;agrave;nh một g&amp;oacute;c độ tuyệt đẹp, đập thẳng v&amp;agrave;o eo của người đ&amp;agrave;n &amp;ocirc;ng khiến anh gục ng&amp;atilde; trong đau đớn.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Lumia, gọi cảnh vệ ở ga. Ch&amp;uacute;ng ta sẽ bắt anh ta. Đ&amp;acirc;y l&amp;agrave; một kẻ biến th&amp;aacute;i chết tiệt!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ha?! Đợi đ&amp;atilde;- vui l&amp;ograve;ng tha thứ cho t&amp;ocirc;i được kh&amp;ocirc;ng? H&amp;ocirc;m nay l&amp;agrave; ng&amp;agrave;y đi l&amp;agrave;m đầu ti&amp;ecirc;n của t&amp;ocirc;i, nếu bị bắt, Celica sẽ giết t&amp;ocirc;i mất! T&amp;ocirc;i thật sự hối lỗi m&amp;agrave;! Xin h&amp;atilde;y tha thứ cho t&amp;ocirc;i! Vừa n&amp;atilde;y t&amp;ocirc;i đ&amp;atilde; qu&amp;aacute; ngu ngốc, t&amp;ocirc;i xin lỗi!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; l&amp;agrave; h&amp;igrave;nh ảnh một người đ&amp;agrave;n &amp;ocirc;ng đ&amp;aacute;ng thương kh&amp;ocirc;ng để &amp;yacute; tới thể diện của m&amp;igrave;nh, quỳ gối trước c&amp;ocirc; g&amp;aacute;i nhỏ tuổi.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Umm&amp;hellip;nếu bạn đ&amp;atilde; n&amp;oacute;i vậy, t&amp;ocirc;i sẽ tha thứ cho bạn.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Huh? Cậu nghi&amp;ecirc;m t&amp;uacute;c thật &amp;agrave;? Lumia, cậu qu&amp;aacute; ng&amp;acirc;y thơ rồi&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cảm ơn! Cảm ơn c&amp;ocirc; rất nhiều! T&amp;ocirc;i sẽ kh&amp;ocirc;ng bao giờ qu&amp;ecirc;n l&amp;ograve;ng tốt của c&amp;ocirc;! Cảm ơn&amp;hellip;!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Sau đ&amp;oacute; người đ&amp;agrave;n &amp;ocirc;ng đứng thẳng v&amp;agrave; v&amp;ecirc;nh v&amp;aacute;o n&amp;oacute;i:&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Như vậy, hai người. Đồng phục của học sinh Học viện Ph&amp;aacute;p Thuật phải kh&amp;ocirc;ng? Hai người đang l&amp;agrave;m g&amp;igrave; ở đ&amp;acirc;y vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Vừa xin tha thứ đ&amp;atilde; l&amp;agrave;m ra d&amp;aacute;ng vẻ n&amp;agrave;y&amp;hellip;chuyện qu&amp;aacute;i g&amp;igrave; với anh ta vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ahhahahaa!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Cả hai người đều kh&amp;ocirc;ng tỏ ra ngạc nhi&amp;ecirc;n, giống như đ&amp;atilde; quen với n&amp;oacute;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hai người biết mấy giờ rồi kh&amp;ocirc;ng? Nếu kh&amp;ocirc;ng nhanh, sẽ bị muộn học đ&amp;oacute;? Kh&amp;ocirc;ng c&amp;oacute; kh&amp;aacute;i niệm về thời gian sao?! Uhmm..Uhmm..M&amp;igrave;nh vừa n&amp;oacute;i c&amp;aacute;i g&amp;igrave; đ&amp;oacute; thực sự mang tinh thần gi&amp;aacute;o vi&amp;ecirc;n th&amp;igrave; phải.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Người đ&amp;agrave;n &amp;ocirc;ng dường như bị m&amp;ecirc; hoặc bởi lời n&amp;oacute;i của ch&amp;iacute;nh m&amp;igrave;nh, bỏ qua hai c&amp;ocirc; g&amp;aacute;i liếc nhau trong sự bối rối.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;Đến muộn, sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Anh định lừa ai? Kh&amp;ocirc;ng phải b&amp;acirc;y giờ vẫn c&amp;ograve;n sớm sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hai người kh&amp;ocirc;ng biết? Ma&amp;hellip;Hiện tại đ&amp;atilde; hơn 8:30!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Người đ&amp;agrave;n &amp;ocirc;ng giơ l&amp;ecirc;n trước Sistina một chiếc đồng hồ bỏ t&amp;uacute;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chiếc đồng hồ đ&amp;oacute; chạy nhanh hơn. Nh&amp;igrave;n c&amp;aacute;i n&amp;agrave;y xem.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sisitina ngẩng cao đầu, lấy ra chiếc đồng hồ bỏ t&amp;uacute;i của m&amp;igrave;nh v&amp;agrave; n&amp;acirc;ng n&amp;oacute; về ph&amp;iacute;a trước.&lt;/p&gt;

&lt;p&gt;Kim đồng hồ chỉ 8:00. V&amp;agrave; lớp học bắt đầu l&amp;uacute;c 8:45, theo c&amp;aacute;ch n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sự trầm mặc kh&amp;oacute; xử bao bọc hai c&amp;ocirc; g&amp;aacute;i.&lt;/p&gt;

&lt;p&gt;Sau đ&amp;oacute;:&lt;/p&gt;

&lt;p&gt;&amp;ldquo;R&amp;uacute;t lui!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Lại chạy?!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Cũng giống như l&amp;uacute;c họ mới gặp nhau, người đ&amp;agrave;n &amp;ocirc;ng đ&amp;atilde; chạy trốn khỏi họ với một sức mạnh đ&amp;aacute;ng kinh ngạc&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chết tiệt! Người phụ nữ đ&amp;oacute;, c&amp;ocirc; ta lại d&amp;aacute;m chỉnh đồng hồ của &amp;ldquo;me&amp;rdquo;!?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;hellip;c&amp;ugrave;ng những tiếng la h&amp;eacute;t v&amp;ocirc; nghĩa.&lt;/p&gt;

&lt;p&gt;Hai c&amp;ocirc; g&amp;aacute;i vẫn đứng nguy&amp;ecirc;n, xem c&amp;aacute;ch anh ta chạy trong một niềm đam m&amp;ecirc; bệnh hoạn cho đến khi b&amp;oacute;ng lưng anh biến mất.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ng-người đ&amp;oacute; l&amp;agrave; ai?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Yeah&amp;hellip;Nhưng, anh ta l&amp;agrave; một người th&amp;uacute; vị, phải kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Th&amp;uacute; vị g&amp;igrave; chứ. Một kẻ v&amp;ocirc; dụng đ&amp;uacute;ng hơn.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Sistina thở d&amp;agrave;i trước nhận x&amp;eacute;t của người bạn th&amp;acirc;n. Lumia đ&amp;ocirc;i khi lu&amp;ocirc;n c&amp;oacute; những nhận định kh&amp;aacute; sai lầm về một thứ g&amp;igrave; đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;M&amp;igrave;nh kh&amp;ocirc;ng bao giờ muốn gặp kiểu người ngu ngốc như thế lần nữa. Nh&amp;igrave;n c&amp;aacute;i vẻ thảm hại đ&amp;oacute; th&amp;ocirc;i cũng đủ bực m&amp;igrave;nh rồi! Đ&amp;aacute;ng lẽ ra ch&amp;uacute;ng ta n&amp;ecirc;n giao anh ta cho cảnh vệ mới đ&amp;uacute;ng.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ahaha&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Sistina tiếp tục đi bộ về học viện c&amp;ugrave;ng Lumia, người vẫn treo tr&amp;ecirc;n m&amp;ocirc;i một nụ cười mơ hồ. Họ qu&amp;ecirc;n đi người đ&amp;agrave;n &amp;ocirc;ng k&amp;igrave; lạ biến th&amp;aacute;i v&amp;agrave; n&amp;eacute;m n&amp;oacute; sau đầu. Với một Ma thuật sư, sắp xếp bộ nhớ l&amp;agrave; một nền tảng cơ bản nhất.&lt;/p&gt;

&lt;p&gt;Thực tế, Sistina đ&amp;atilde; ho&amp;agrave;n to&amp;agrave;n x&amp;oacute;a sự tồn tại của con người đ&amp;oacute; ra khỏi t&amp;acirc;m tr&amp;iacute; m&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;Chỉ c&amp;oacute; điều-&lt;/p&gt;

&lt;p&gt;Sistina kh&amp;ocirc;ng bao giờ biết, sự tồn tại của người ấy rồi sẽ một lần nữa khắc s&amp;acirc;u v&amp;agrave;o k&amp;yacute; ức của c&amp;ocirc;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Vậy th&amp;igrave;, Lumia, h&amp;ocirc;m nay ch&amp;uacute;ng ta h&amp;atilde;y c&amp;ugrave;ng cố gắng nh&amp;eacute;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ừ.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Cuối c&amp;ugrave;ng, hiện l&amp;ecirc;n trước mặt hai người l&amp;agrave; h&amp;agrave;ng r&amp;agrave;o sắt bao bọc khu&amp;ocirc;n vi&amp;ecirc;n của Học Viện Ma Thuật tr&amp;aacute;ng lệ v&amp;agrave; h&amp;ugrave;ng vĩ.&lt;/p&gt;

&lt;p&gt;Học viện Ma Ph&amp;aacute;p Đế Quốc Alzano.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng một ai trong Đế Quốc kh&amp;ocirc;ng biết đến c&amp;aacute;i t&amp;ecirc;n n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;400 năm trước, Nữ Ho&amp;agrave;ng Alicia III đ&amp;atilde; khởi xướng v&amp;agrave; tập trung một phần lớn ng&amp;acirc;n s&amp;aacute;ch Đế Quốc để x&amp;acirc;y dựng l&amp;ecirc;n ng&amp;ocirc;i trường đ&amp;agrave;o tạo c&amp;aacute;c Ph&amp;aacute;p Sư. Để ng&amp;agrave;y nay, Học vi&amp;ecirc;n đ&amp;atilde; trở th&amp;agrave;nh một nền tảng để đế quốc Alzano ph&amp;aacute;t triển l&amp;ecirc;n vai tr&amp;ograve; của một đất nước ph&amp;aacute;p thuật nổi tiếng tr&amp;ecirc;n đại lục, đồng thời, danh tiếng của ng&amp;ocirc;i trường &amp;ndash; được v&amp;iacute; như học viện cấp cao nhất, với ma ph&amp;aacute;p thuật ti&amp;ecirc;n triến nhất &amp;ndash; được lan truyền tới khắp c&amp;aacute;c l&amp;acirc;n bang. N&amp;oacute; đ&amp;oacute;ng vai tr&amp;ograve; kh&amp;ocirc;ng thể lay động, bởi hầu hết c&amp;aacute;c ph&amp;aacute;p sư nổi tiếng đều từng l&amp;agrave; sinh vi&amp;ecirc;n tốt nghiệp từ đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;N&amp;oacute;i c&amp;aacute;ch kh&amp;aacute;c, Học viện ch&amp;iacute;nh l&amp;agrave; một th&amp;aacute;nh địa ước mơ của c&amp;aacute;c ph&amp;aacute;p sư c&amp;oacute; ch&amp;iacute; hướng trong v&amp;agrave; ngo&amp;agrave;i Đế Quốc.&lt;/p&gt;

&lt;p&gt;Hệ quả tất yếu l&amp;agrave; sinh vi&amp;ecirc;n v&amp;agrave; gi&amp;aacute;o sư của Học viện đều tự h&amp;agrave;o khi l&amp;agrave; một phần của n&amp;oacute;. V&amp;agrave; để được vậy, họ phải đ&amp;aacute;p ứng một nhu cầu học tập chuy&amp;ecirc;n cần từng ng&amp;agrave;y, từng giờ.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng c&amp;oacute; nao n&amp;uacute;ng, kh&amp;ocirc;ng c&amp;oacute; l&amp;ugrave;i bước. Chỉ c&amp;oacute; khao kh&amp;aacute;t kiến thức.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; một ng&amp;agrave;y trong tương lai, cơ sở tr&amp;iacute; thức m&amp;agrave; họ sở hữu c&amp;ugrave;ng đ&amp;oacute;ng g&amp;oacute;p sẽ trở th&amp;agrave;nh trụ cột hỗ trợ cho sự h&amp;ugrave;ng mạnh của Đế Quốc, đi k&amp;egrave;m với địa vị vững chắc v&amp;agrave; vinh quanh m&amp;agrave; bất k&amp;igrave; ai cũng phải ước ao.&lt;/p&gt;

&lt;p&gt;Cũng v&amp;igrave; lẽ đ&amp;oacute;, muộn hoặc bỏ học l&amp;agrave; hiếm c&amp;oacute;. Chưa kể đ&amp;oacute; l&amp;agrave; kh&amp;ocirc;ng thể n&amp;agrave;o với c&amp;aacute;c gi&amp;aacute;o sư trước sự nhiệt th&amp;agrave;nh của c&amp;aacute;c học sinh.&lt;/p&gt;

&lt;p&gt;Một chuyện kh&amp;ocirc;ng thể xảy ra.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;Q&amp;uacute;a chậm!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Lớp học d&amp;agrave;nh cho học vi&amp;ecirc;n năm II nằm tại phần s&amp;acirc;u nhất của đại sảnh tầng 2 của t&amp;ograve;a nh&amp;agrave; ph&amp;iacute;a đ&amp;ocirc;ng. Một bảng đen, v&amp;agrave; một c&amp;aacute;i bục trước đ&amp;oacute;, với chỗ ngồi v&amp;agrave; b&amp;agrave;n d&amp;agrave;i được l&amp;agrave;m từ gỗ cứng sắp xếp theo một vầng trăng khuyết bao quanh bục giảng.&lt;/p&gt;

&lt;p&gt;Sisitina chiếm h&amp;agrave;ng ghế đầu, vẻ bực tức hiện r&amp;otilde; tr&amp;ecirc;n gương mặt, c&amp;ocirc; buột miệng:&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chuyện g&amp;igrave; thế n&amp;agrave;y? Loại gi&amp;aacute;o vi&amp;ecirc;n l&amp;agrave;&amp;hellip;?! Kh&amp;ocirc;ng phải lớp học bắt đầu rồi sao.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Qủa thật c&amp;oacute; ch&amp;uacute;t lạ&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Lumia, người ngồi b&amp;ecirc;n cạnh Sistina cũng bối rối.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chuyện g&amp;igrave; đ&amp;atilde; xảy ra với thầy chăng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Những học vi&amp;ecirc;n kh&amp;aacute;c cũng bắt đầu cảm thấy nghi hoặc khi liếc nh&amp;igrave;n xung quanh. Tiếng ồn v&amp;agrave; lời th&amp;igrave; thầm bắt đầu lan truyền, họ tự hỏi khi n&amp;agrave;o người hướng dẫn của họ mới hiển thị.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ng&amp;agrave;y h&amp;ocirc;m nay sẽ c&amp;oacute; một giảng vi&amp;ecirc;n tạm thời đến thay thế Giao Sư Huey&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ph&amp;aacute;p sư được xếp hạng từ 1 đến 7, với 7 l&amp;agrave; thứ hạng cao nhất.&lt;/p&gt;

&lt;p&gt;Gi&amp;aacute;o sư Celica Alfonia, l&amp;agrave; một trong những ph&amp;aacute;p sư dẫn đầu đại l&amp;uacute;c v&amp;agrave; đạt được vinh dự đ&amp;oacute;, một giờ trước đ&amp;atilde; tự th&amp;acirc;n đến lớp học để th&amp;ocirc;ng b&amp;aacute;o điều n&amp;agrave;y. M&amp;agrave; lời đ&amp;aacute;nh gi&amp;aacute; về gi&amp;aacute;o vi&amp;ecirc;n tạm thời của Celica.&amp;rdquo; Đ&amp;oacute; l&amp;agrave; một người rất đặc biệt&amp;rdquo; khiến nhiều hy vọng được thắp l&amp;ecirc;n, song đang l&amp;acirc;m v&amp;agrave;o nguy cơ bị hủy diệt ngay l&amp;uacute;c n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Vốn t&amp;ocirc;i c&amp;ograve;n c&amp;oacute; ch&amp;uacute;t hứng th&amp;uacute; với người m&amp;agrave; gi&amp;aacute;o sư Alfonia đề cử&amp;hellip;nhưng n&amp;oacute; l&amp;agrave; v&amp;ocirc; &amp;iacute;ch đ&amp;uacute;ng kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y, đừng n&amp;oacute;i vậy chứ, hiện tại vẫn c&amp;ograve;n sớm để kết luận m&amp;agrave;. Biết đ&amp;acirc;u thầy ấy đến muộn v&amp;igrave; l&amp;yacute; do n&amp;agrave;o đ&amp;oacute;&amp;hellip;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sistina quay sang Lumia v&amp;agrave; phản đối quyết liệt.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cậu qu&amp;aacute; ng&amp;acirc;y thơ Lumia. L&amp;yacute; do ch&amp;iacute;nh đ&amp;aacute;ng? Mặc kệ l&amp;yacute; do g&amp;igrave; đi nữa, điều hiển nhi&amp;ecirc;n l&amp;agrave; người n&amp;agrave;y đ&amp;atilde; sai hẹn. Nếu l&amp;agrave; người tuyệt vời th&amp;igrave; l&amp;agrave;m g&amp;igrave; c&amp;oacute; chuyện như vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Vậy &amp;agrave;&amp;hellip;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;uacute;ng thế, ng&amp;agrave;y đầu ti&amp;ecirc;n l&amp;agrave;m giảng vi&amp;ecirc;n tạm thời m&amp;agrave; đ&amp;atilde; trễ, anh ch&amp;agrave;ng n&amp;agrave;y hẳn phải c&amp;oacute; ch&amp;uacute;t thần kinh. M&amp;igrave;nh phải đại diện cho lớp đưa g&amp;oacute;p &amp;yacute; mới được&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Đ&amp;uacute;ng l&amp;uacute;c đ&amp;oacute;&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ma, xin lỗi, xin lỗi. T&amp;ocirc;i tới trễ ~ &amp;ldquo;&lt;/p&gt;

&lt;p&gt;C&amp;aacute;nh cửa ph&amp;ograve;ng học trượt mở truyền đến tiếng n&amp;oacute;i c&amp;ugrave;ng l&amp;uacute;c.&lt;/p&gt;

&lt;p&gt;Vị giảng vi&amp;ecirc;n tạm thời trong lời đồn cuối c&amp;ugrave;ng cũng đến. Thế nhưng với số tiết đ&amp;atilde; tr&amp;ocirc;i qua ph&amp;acirc;n nửa. Chỉ sợ đ&amp;acirc;y l&amp;agrave; việc chậm trễ nghi&amp;ecirc;m trọng nhất kể từ khi th&amp;agrave;nh lập ng&amp;ocirc;i trường cho tới nay.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thầy! Cuối c&amp;ugrave;ng cũng đến rồi! Thầy định giải th&amp;iacute;ch như thế n&amp;agrave;o?! Thầy n&amp;ecirc;n hiểu thầy l&amp;agrave; một giảng vi&amp;ecirc;n vinh dự của học viện n&amp;agrave;y &amp;hellip;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;B&amp;agrave;i thuyết gi&amp;aacute;o li&amp;ecirc;n thanh của Sistina ngay lập tức được bắt đầu khi nghe thấy tiếng n&amp;oacute;i, nhưng ngay l&amp;uacute;c người đ&amp;agrave;n &amp;ocirc;ng xoay người&amp;hellip;.cả người c&amp;ocirc; cứng lại.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;L&amp;agrave;&amp;hellip;.l&amp;agrave; bạn nnnnn!?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Vẫn bộ quần &amp;aacute;o ướt đẫm. Vẫn những vết bẩn, trầy xước, bầm dập do bị đ&amp;aacute; v&amp;agrave; g&amp;otilde; xuống. Kỷ niệm kh&amp;oacute; chịu nổi l&amp;ecirc;n trong đầu Sistina. V&amp;agrave; c&amp;ocirc; ngay lập tức nhận ra kẻ biến th&amp;aacute;i m&amp;agrave; họ đ&amp;atilde; gặp tr&amp;ecirc;n đường tới trường s&amp;aacute;ng nay.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;Em nhận nhầm người rồi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Anh ta đ&amp;aacute;p một c&amp;aacute;ch trơ tr&amp;aacute;o. Bỏ qua nhận x&amp;eacute;t về m&amp;igrave;nh bất chấp ng&amp;oacute;n tay chỉ thẳng của Sistina v&amp;agrave;o mặt anh.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng thể n&amp;agrave;o. Anh ch&amp;iacute;nh l&amp;agrave; người va v&amp;agrave;o t&amp;ocirc;i s&amp;aacute;ng nay!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ma, vị tiểu thư n&amp;agrave;y. Cha mẹ em kh&amp;ocirc;ng dạy em chỉ ng&amp;oacute;n tay v&amp;agrave;o người kh&amp;aacute;c l&amp;agrave; cử chỉ th&amp;ocirc; lỗ sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Người đ&amp;agrave;n &amp;ocirc;ng đ&amp;aacute;p lại Sistina một c&amp;aacute;ch lịch sự.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Yacute; t&amp;ocirc;i l&amp;agrave;, bạn, tại sao anh lại đi trễ như vậy? L&amp;yacute; do g&amp;igrave; cho ph&amp;eacute;p bạn đến muộn?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ma&amp;hellip;Thật kh&amp;oacute; n&amp;oacute;i. Đ&amp;oacute; l&amp;agrave; do t&amp;ocirc;i c&amp;oacute; ch&amp;uacute;t tuyệt vọng khi nhận ra m&amp;igrave;nh kh&amp;ocirc;ng trễ v&amp;agrave; c&amp;ograve;n một &amp;iacute;t thời gian?! Vậy n&amp;ecirc;n t&amp;ocirc;i đ&amp;atilde; đến c&amp;ocirc;ng vi&amp;ecirc;n v&amp;agrave; nghỉ ngơi một ch&amp;uacute;t. Đo&amp;aacute;n l&amp;agrave; t&amp;ocirc;i thực sự ngủ qu&amp;ecirc;n.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng thể tin tưởng được! Một l&amp;yacute; do v&amp;ocirc; l&amp;yacute; đến thế cũng d&amp;ugrave;ng được sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Người đ&amp;agrave;n &amp;ocirc;ng tiếp tục phủ nhận v&amp;agrave; bắt bẻ như thể kh&amp;ocirc;ng muốn nhận lỗi cho việc đến trễ. Mọi người đều c&amp;oacute; phản ứng tương tự Sistina, sự xuất hiện đặc biệt của anh ta đ&amp;atilde; mang tới sự ồn &amp;agrave;o nhiều hơn cho lớp học.&lt;/p&gt;

&lt;p&gt;Dường như bỏ qua điều đ&amp;oacute;, anh ta bước về bục giảng v&amp;agrave; d&amp;ugrave;ng phấn viết t&amp;ecirc;n m&amp;igrave;nh l&amp;ecirc;n bảng đen.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Um, t&amp;ecirc;n t&amp;ocirc;i l&amp;agrave; Glen Redas. Thưa qu&amp;yacute; vị, trong một th&amp;aacute;ng từ h&amp;ocirc;m nay trở đi, t&amp;ocirc;i sẽ trở th&amp;agrave;nh hướng dẫn v&amp;agrave; gi&amp;uacute;p đỡ trong c&amp;aacute;c nghi&amp;ecirc;n cứu của c&amp;aacute;c bạn. Tuy thời gian kh&amp;ocirc;ng d&amp;agrave;i, nhưng t&amp;ocirc;i sẽ l&amp;agrave;m to-tốt nhất trong khả năng của m&amp;igrave;nh.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Gioi thiệu xong rồi, vậy thầy c&amp;oacute; bắt đầu tiết lu&amp;ocirc;n kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sistina lạnh nhạt n&amp;oacute;i, thậm ch&amp;iacute; kh&amp;ocirc;ng th&amp;egrave;m che giấu sự kh&amp;oacute; chịu chất chứa.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Oh..Kh&amp;ocirc;ng sai. T&amp;ocirc;i cũng cảm thấy c&amp;oacute; ch&amp;uacute;t mệt&amp;hellip;vậy bắt đầu th&amp;ocirc;i&amp;hellip;D&amp;ugrave; sao đ&amp;acirc;y cũng l&amp;agrave; việc t&amp;ocirc;i phải l&amp;agrave;m&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Khi nghe những lời lẩm bẩm về th&amp;aacute;i độ v&amp;agrave; giai điệu trước đ&amp;oacute; của anh ta, người đ&amp;agrave;n &amp;ocirc;ng lập tức quay đi v&amp;agrave; trở về vẻ lười biếng của m&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Mở b&amp;agrave;i học đầu ti&amp;ecirc;n: L&amp;yacute; thuyết ma ph&amp;aacute;p cơ sở II&amp;hellip;&amp;rdquo; *ng&amp;aacute;p*.&lt;/p&gt;

&lt;p&gt;Glen vừa ng&amp;aacute;p vừa cầm phấn viết l&amp;ecirc;n bảng đen.&lt;/p&gt;

&lt;p&gt;Sự tập trung ngay lập tức quay trở lại với c&amp;aacute;c sinh vi&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;Sistina cũng từ bỏ những hiềm kh&amp;iacute;ch l&amp;uacute;c trước của m&amp;igrave;nh v&amp;agrave; chăm ch&amp;uacute; nh&amp;igrave;n l&amp;ecirc;n bục giảng.&lt;/p&gt;

&lt;p&gt;(Để xem tr&amp;igrave;nh độ của hắn đến mức n&amp;agrave;o&amp;hellip;)&lt;/p&gt;

&lt;p&gt;Bỏ qua ấn tượng tồi tệ ban đầu của c&amp;ocirc; với Glen, Sisitina vẫn nhớ lời nhận x&amp;eacute;t của Celica Alfonia &amp;ndash; ph&amp;aacute;p sư h&amp;ugrave;ng mạnh &amp;ndash; về người đ&amp;agrave;n &amp;ocirc;ng t&amp;ecirc;n Glen thục sự &amp;ldquo;rất tuyệt vời&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;Người đ&amp;agrave;n &amp;ocirc;ng đ&amp;atilde; bắt đầu giảng dạy, v&amp;agrave; đ&amp;oacute; sẽ l&amp;agrave; một lời n&amp;oacute;i dối nếu n&amp;oacute;i Sistina kh&amp;ocirc;ng tr&amp;ocirc;ng mong g&amp;igrave; ở anh.&lt;/p&gt;

&lt;p&gt;Mặt kh&amp;aacute;c, một phần trong Sistina vẫn kh&amp;ocirc;ng mua đ&amp;aacute;nh gi&amp;aacute; Celica một c&amp;aacute;ch ho&amp;agrave;n to&amp;agrave;n. C&amp;ocirc; chỉ tin v&amp;agrave;o kết luận của ch&amp;iacute;nh m&amp;igrave;nh. Cho đến nay, mọi việc lu&amp;ocirc;n diễn ra theo kiểu: c&amp;ocirc; sẽ đưa những c&amp;acirc;u hỏi với c&amp;aacute;c gi&amp;aacute;o sư bất cứ khi n&amp;agrave;o c&amp;oacute; thể. Nếu gi&amp;aacute;o sư trả lời bằng một c&amp;acirc;u hỏi mơ hồ, n&amp;oacute; sẽ kh&amp;ocirc;ng thể qua mắt được c&amp;ocirc;. Ch&amp;iacute;nh v&amp;igrave; lẽ đ&amp;oacute; m&amp;agrave; Sistina c&amp;ograve;n c&amp;oacute; một biết danh đ&amp;aacute;ng gh&amp;eacute;t trong giới học thuật &amp;ldquo;Sistina-Teacher Badgerer&amp;rdquo;.&lt;/p&gt;

&lt;p&gt;Đ&amp;acirc;y cũng chỉ v&amp;igrave; c&amp;ocirc; muốn tỏ r&amp;otilde; sự ch&amp;acirc;n th&amp;agrave;nh của m&amp;igrave;nh khi bước tr&amp;ecirc;n con đường cao qu&amp;yacute; mang tr&amp;ecirc;n &amp;ldquo;Magic&amp;rdquo;. C&amp;ocirc; gh&amp;eacute;t sự thỏa hiệp, v&amp;agrave; cho rằng n&amp;oacute; l&amp;agrave; r&amp;agrave;o cản để ngăn đến th&amp;agrave;nh c&amp;ocirc;ng.&lt;/p&gt;

&lt;p&gt;Thực tế, c&amp;ocirc; ho&amp;agrave;n to&amp;agrave;n tự h&amp;agrave;o về điều đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;(B&amp;acirc;y giờ, h&amp;atilde;y thể hiện bản lĩnh cho t&amp;ocirc;i xem đi n&amp;agrave;o, qu&amp;yacute; ng&amp;agrave;i giảng vi&amp;ecirc;n tạm thời m&amp;agrave; ch&amp;uacute;ng t&amp;ocirc;i chờ mong!)&lt;/p&gt;

&lt;p&gt;To&amp;agrave;n bộ lớp, bao gồm Sistina, nh&amp;igrave;n chằm chằm v&amp;agrave;o từng chữ của Glen tr&amp;ecirc;n bảng cho đến khi n&amp;oacute; h&amp;igrave;nh th&amp;agrave;nh 2 từ:&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tự Học&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sự im lặng bao tr&amp;ugrave;m cả lớp.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Eh? Tự học&amp;hellip;Eh? Thật &amp;agrave;?...Eh?...Eh?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sistina cố gắng suy nghĩ h&amp;agrave;m &amp;yacute; kh&amp;aacute;c trong hai từ. Tuy vậy, c&amp;ocirc; thất bại ho&amp;agrave;n to&amp;agrave;n. Đ&amp;oacute; l&amp;agrave; hợp l&amp;yacute;. Bởi h&amp;agrave;m &amp;yacute; của n&amp;oacute; chỉ c&amp;oacute; một.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Um &amp;ndash; cho b&amp;agrave;i học đầu ti&amp;ecirc;n của h&amp;ocirc;m nay, c&amp;aacute;c em sẽ tự học.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Glen tuy&amp;ecirc;n bố như thể đ&amp;oacute; l&amp;agrave; chuyện đương nhi&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;bởi v&amp;igrave; t&amp;ocirc;i đang buồn ngủ.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Anh ta th&amp;igrave; thầm loại l&amp;yacute; do tồi tệ nhất với vẻ ch&amp;aacute;n.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;&amp;hellip;..&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Im lặng. Chiếm &amp;aacute;p đảo v&amp;agrave; thống trị to&amp;agrave;n bộ lớp học.&lt;/p&gt;

&lt;p&gt;Glen lướt qua c&amp;aacute;c học vinh với một th&amp;aacute;i độ &amp;ldquo;T&amp;ocirc;i kh&amp;ocirc;ng sai, thế giới n&amp;agrave;y mới l&amp;agrave; người sai.&amp;rdquo; V&amp;agrave; gục xuống b&amp;agrave;n gi&amp;aacute;o vi&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;Trong v&amp;ograve;ng chưa đầy 10 gi&amp;acirc;y, tiếng ng&amp;aacute;y đ&amp;atilde; vang l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;Sự trầm mặc xen kẽ. V&amp;agrave; rồi&amp;hellip;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đừng c&amp;oacute; ngủ uuuuuuuuuuuuuuuuu!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sistina đ&amp;aacute;p mạnh một cuốn s&amp;aacute;ch gi&amp;aacute;o khoa d&amp;agrave;y cộp v&amp;agrave;o đầu Glen.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hiệu trưởng, xin ng&amp;agrave;i vui l&amp;ograve;ng xem x&amp;eacute;t lại!&amp;rdquo; &amp;Acirc;m thanh đầy giận dữ vọng ra từ b&amp;ecirc;n trong ph&amp;ograve;ng hiệu trưởng Học viện Ma Ph&amp;aacute;p Đế Quốc Alzano.&lt;/p&gt;

&lt;p&gt;N&amp;oacute; đến từ một người đ&amp;agrave;n &amp;ocirc;ng nằm giữa độ tuổi 25 hay 26, với mắt k&amp;iacute;nh tr&amp;ograve;n v&amp;agrave; th&amp;acirc;n h&amp;igrave;nh thẳng tắp với vẻ bực bội hiện r&amp;otilde; tr&amp;ecirc;n mặt anh. Chiếc &amp;aacute;o cho&amp;agrave;ng anh đang mặc th&amp;ecirc;u biểu tượng của một con c&amp;uacute;, chứng minh cho vị tr&amp;iacute; cao qu&amp;yacute; ch&amp;iacute;nh thức tại học viện. T&amp;ecirc;n của anh l&amp;agrave; Harley. V&amp;agrave; trong thế giới nơi rất nhiều ph&amp;aacute;p sư chỉ đạt đến cấp 4 trong cả cuộc đời phấn đấu, anh l&amp;agrave; một thi&amp;ecirc;n t&amp;agrave;i, người đạt được cấp 5 ngay từ khi c&amp;ograve;n rất trẻ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i kh&amp;ocirc;ng biết Glen Redas đến từ đ&amp;acirc;u. T&amp;ocirc;i ho&amp;agrave;n to&amp;agrave;n phản đối việc giao ph&amp;oacute; cho anh ta vị tr&amp;iacute; giảng vi&amp;ecirc;n tạm thời trong học viện n&amp;agrave;y!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Hai b&amp;agrave;n tay của anh đập mạnh của b&amp;agrave;n l&amp;agrave;m việc, tr&amp;aacute;n anh nhăn lại th&amp;agrave;nh một đường dữ dội khi nh&amp;igrave;n thẳng v&amp;agrave;o &amp;ocirc;ng l&amp;atilde;o tr&amp;ecirc;n dưới 50 tuổi trước mặt.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thầy Harley, t&amp;ocirc;i chọn anh ta v&amp;igrave; đề cử tha thiết của qu&amp;yacute; c&amp;ocirc; Celica.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ngay cả khi đối mặt với c&amp;aacute;i nh&amp;igrave;n đe dọa đầy giận dữ từ đối phương, gương mặt của người đ&amp;agrave;n &amp;ocirc;ng lớn tuổi vẫn kh&amp;ocirc;ng ch&amp;uacute;t biến động.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hiệu trưởng Rick, điều đ&amp;oacute; l&amp;agrave; kh&amp;ocirc;ng thể chấp nhận! Ng&amp;agrave;i thực sự t&amp;aacute;n đồng kiến nghị từ Ả Ph&amp;ugrave; Thủy đ&amp;oacute;?!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; l&amp;agrave; kh&amp;ocirc;ng thể. Quyết định cuối c&amp;ugrave;ng của t&amp;ocirc;i l&amp;agrave; chấp nhận &amp;ocirc;ng Glen v&amp;agrave;o vị tr&amp;iacute; giảng vi&amp;ecirc;n tạm thời. Ngay cả khi anh ta kh&amp;ocirc;ng c&amp;oacute; giấy ph&amp;eacute;p giảng dạy, nhưng với một l&amp;aacute; thư giới thiệu v&amp;agrave; khả năng th&amp;iacute;ch hợp với c&amp;ocirc;ng việc của một gi&amp;aacute;o vi&amp;ecirc;n. T&amp;ocirc;i cho đ&amp;oacute; l&amp;agrave; kh&amp;ocirc;ng vấn đề, d&amp;ugrave; sao cũng chỉ l&amp;agrave; vai tr&amp;ograve; tạm thời m&amp;agrave; th&amp;ocirc;i&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nhưng khả năng của anh ta l&amp;agrave; một vấn đề! Xin &amp;atilde;y đọc v&amp;agrave; xem lại n&amp;oacute; một lần nữa!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Với một tiếng nổ, Harley đ&amp;oacute;ng sầm một tập t&amp;agrave;i liệu d&amp;agrave;y l&amp;ecirc;n b&amp;agrave;n l&amp;agrave;m việc của Hiệu trưởng Rick.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;acirc;y, đ&amp;acirc;y ch&amp;iacute;nh l&amp;agrave; kết quả đ&amp;aacute;nh gi&amp;aacute; khảo nghiệm khả năng của Glen một v&amp;agrave;i ng&amp;agrave;y trước! Sao ng&amp;agrave;i kh&amp;ocirc;ng nh&amp;igrave;n thử? Kết quả thật chẳng ra sao!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hmm! T&amp;ocirc;i thấy, dĩ nhi&amp;ecirc;n? Kh&amp;ocirc;ng c&amp;oacute; đặc th&amp;ugrave;. Bể chứa ma lực v&amp;agrave; khả năng cảm nhận ở mức phổ th&amp;ocirc;ng, kh&amp;ocirc;ng c&amp;oacute; năng khiếu đặc biệt. V&amp;acirc;ng&amp;hellip;anh ta l&amp;agrave; một ph&amp;aacute;p sư b&amp;igrave;nh thường&amp;hellip;Hmm, nếu đ&amp;aacute;nh gi&amp;aacute; theo cơ sở năng lực, anh ta c&amp;oacute; lẽ ở mức cuối.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Rick nhặt một v&amp;agrave;i trang t&amp;agrave;i liệu m&amp;agrave; Harley đưa đến v&amp;agrave; lướt qua ch&amp;uacute;ng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;B&amp;ecirc;n cạnh đ&amp;oacute;, anh ta chỉ l&amp;agrave; một ph&amp;aacute;p sư cấp 3! Xin h&amp;atilde;y nh&amp;igrave;n v&amp;agrave;o đ&amp;oacute;, l&amp;yacute; lịch c&amp;aacute; nh&amp;acirc;n của anh ta nữa!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Huh?...&amp;Ocirc;, cậu ta tốt nghiệp ở đ&amp;acirc;y?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;oacute;i anh ta tốt nghiệp l&amp;agrave; sai lầm. Thậm ch&amp;iacute; anh ta c&amp;ograve;n kh&amp;ocirc;ng nộp được một luận &amp;aacute;n tốt nghiệp.&amp;rdquo; Harley khịt mũi, cho ph&amp;eacute;p vẻ ki&amp;ecirc;u ngạo hiện l&amp;ecirc;n tr&amp;ecirc;n gương mặt.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Glen Redas. Tham gia Học viện Ma Ph&amp;aacute;p khi mới 11 tuổi&amp;hellip;C&amp;aacute;i g&amp;igrave;? 11?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Rick ph&amp;aacute;t ra một &amp;acirc;m thanh ngạc nhi&amp;ecirc;n trước th&amp;ocirc;ng tin n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng phải học vi&amp;ecirc;n b&amp;igrave;nh thường phải 14-15 tuổi mới c&amp;oacute; thể bước v&amp;agrave;o học viện sao? Cậu ta thực sự nhập học khi mới 11 tuổi?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;Đ&amp;uacute;ng vậy. L&amp;uacute;c đ&amp;oacute; anh ta đ&amp;atilde; vượt qua cuộc thi s&amp;aacute;t hạch v&amp;agrave; trở th&amp;agrave;nh học vi&amp;ecirc;n trẻ tuổi nhất trong lịch sử của học viện nổi tiếng n&amp;agrave;y. V&amp;agrave; sự kiện đ&amp;oacute; đ&amp;atilde; c&amp;oacute; rất nhiều tiếng vang.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Harley tức tối cau m&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nhưng đ&amp;oacute; l&amp;agrave; điểm s&amp;aacute;ng duy nhất trong cả hồ sơ. Sau khi v&amp;agrave;o trường, kết quả học tập đều k&amp;eacute;m đi, v&amp;agrave; khi tốt nghiệp ở tuổi 15 sau 4 năm của chương tr&amp;igrave;nh học việc&amp;hellip;Kh&amp;ocirc;ng, phải n&amp;oacute;i l&amp;agrave; &amp;ldquo;bỏ học&amp;rdquo; th&amp;igrave; đ&amp;uacute;ng hơn. Một th&amp;agrave;nh t&amp;iacute;ch tệ hại v&amp;agrave; k&amp;eacute;m cỏi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hmm&amp;hellip;Xem ra đ&amp;uacute;ng l&amp;agrave; như vậy&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chưa kể đến con đường anh ta theo đuổi sau đ&amp;oacute;! Mặc d&amp;ugrave; tự xưng l&amp;agrave; ph&amp;aacute;p sư theo đuổi ma ph&amp;aacute;p của Thần tối cao, nhưng 4 năm đ&amp;oacute; anh ta kh&amp;ocirc;ng hề l&amp;agrave;m g&amp;igrave; m&amp;agrave; chỉ lảng ph&amp;iacute; thời gian! Nếu, trong thời gian đ&amp;oacute;, anh ta thực sự nghi&amp;ecirc;m t&amp;uacute;c trong việc nghi&amp;ecirc;n cứu th&amp;igrave; biết đ&amp;acirc;u khả năng ma ph&amp;aacute;p đ&amp;atilde; l&amp;agrave; một c&amp;acirc;u chuyện kh&amp;aacute;c rồi!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Những g&amp;igrave; Harley n&amp;oacute;i đều l&amp;agrave; sự thật, phần lịch sử c&amp;aacute; nh&amp;acirc;n của Glen trong 4 năm l&amp;agrave; khoảng trống.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thất&amp;hellip;thất nghiệp trong 4 năm&amp;hellip;C&amp;aacute;i qu&amp;aacute;i g&amp;igrave; xảy ra với anh ta vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ng&amp;agrave;i hiểu &amp;yacute; t&amp;ocirc;i chứ? Một ph&amp;aacute;p sư thấp k&amp;eacute;m v&amp;agrave; tục tằn như thế kh&amp;ocirc;ng xứng đ&amp;aacute;ng với Học viện cao qusy n&amp;agrave;y.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hmm, d&amp;ugrave; t&amp;ocirc;i kh&amp;ocirc;ng nhớ r&amp;otilde; lắm, nhưng h&amp;igrave;nh như kh&amp;ocirc;ng c&amp;oacute; bất k&amp;igrave; điều kiện hạn chế n&amp;agrave;o về cấp độ v&amp;agrave; l&amp;yacute; lịch bản th&amp;acirc;n trong việc tuyển dụng giảng vi&amp;ecirc;n đ&amp;uacute;ng kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cho d&amp;ugrave; kh&amp;ocirc;ng được ghi trong quy định nhưng bất k&amp;igrave; ai cũng ngầm thừa nhận c&amp;aacute;i hạn chế đ&amp;oacute;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Harley đập tay xuống b&amp;agrave;n một lần nữa.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Xin ng&amp;agrave;i h&amp;atilde;y nghĩ lại hiệu trưởng. Đội ngũ giảng vi&amp;ecirc;n trong Học vi&amp;ecirc;n của ch&amp;uacute;ng ta đều nổi tiếng! Đa số mọi người đều ở cấp 4, v&amp;agrave; cấp 5, thậm ch&amp;iacute; c&amp;ograve;n c&amp;oacute; cấp 6. Chỉ những ai đ&amp;atilde; th&amp;agrave;nh thạo ph&amp;eacute;p thuật ti&amp;ecirc;n tiến v&amp;agrave; bảo vệ tốt luận &amp;aacute;n nghi&amp;ecirc;n cứu mới được ph&amp;eacute;p ở lại trường. Một người như Glen ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc;ng xứng để đứng giữa họ.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hmmm&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hiệu trưởng! Ng&amp;agrave;i l&amp;agrave; hiệu trưởng! Tại sao ng&amp;agrave;i kh&amp;ocirc;ng xem tư liệu cẩn thận trước khi chấp nhận thu&amp;ecirc; anh ta!?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Bởi v&amp;igrave;&amp;hellip;bạn thấy đấy. &amp;Ocirc;ng ấy được tiến cử bởi qu&amp;yacute; c&amp;ocirc; Celica. Bạn kh&amp;ocirc;ng cho l&amp;agrave; cậu ta sẽ l&amp;agrave; một người mang đến cho ch&amp;uacute;ng ta những điều mới mẻ sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Rick nhếch m&amp;ocirc;i, nụ cười hệt như một cậu b&amp;eacute; tinh nghịch.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i kh&amp;ocirc;ng chấp nhận! Ng&amp;agrave;i đ&amp;atilde; đ&amp;aacute;nh gi&amp;aacute; qu&amp;aacute; cao Ả ph&amp;ugrave; thủy kia rồi! Con mụ đ&amp;oacute; chỉ l&amp;agrave; một kẻ ăn b&amp;aacute;m v&amp;agrave;o vinh quanh qu&amp;aacute; khứ của c&amp;ocirc; ta để thỏa m&amp;atilde;n dục vọng c&amp;aacute; nh&amp;acirc;n của m&amp;igrave;nh. Một kẻ phản bội. Ch&amp;iacute;nh c&amp;ocirc; ta l&amp;agrave; kẻ đ&amp;atilde; v&amp;agrave; đang g&amp;acirc;y nguy hiểm cho hệ thống trật tự truyền thừa của ch&amp;uacute;ng ta!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Đ&amp;uacute;ng l&amp;uacute;c ấy&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Anh thật can đảm khi n&amp;oacute;i ra điều đấy, Harley.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Cơ thể Harley lập tức đ&amp;oacute;ng băng khi nghe nhận x&amp;eacute;t ngẫu nhi&amp;ecirc;n đột ngột truyền v&amp;agrave;o b&amp;ecirc;n tai m&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hehehehee&amp;hellip;đứa trẻ th&amp;ograve; l&amp;ograve; mũi xanh ng&amp;agrave;y trước nay đ&amp;atilde; học c&amp;aacute;ch trở n&amp;ecirc;n tự cao tự đại rồi. T&amp;ocirc;i c&amp;oacute; n&amp;ecirc;n hạnh ph&amp;uacute;c kh&amp;ocirc;ng đ&amp;acirc;y?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Khi Harley quay lại, Celica đ&amp;atilde; đứng đ&amp;oacute;, ẩn trong một g&amp;oacute;c tối với nụ cười ma quỷ tr&amp;ecirc;n m&amp;ocirc;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;aacute;i g&amp;igrave;&amp;hellip;C&amp;ocirc;, c&amp;ocirc; ở đ&amp;oacute; từ khi n&amp;agrave;o? Celica Alfonia&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hmmm..L&amp;agrave; l&amp;uacute;c n&amp;agrave;o được nhỉ? T&amp;ocirc;i cũng kh&amp;ocirc;ng biết &amp;agrave; nha!? Cứ xem n&amp;oacute; giống như một c&amp;acirc;u hỏi của gi&amp;aacute;o sư d&amp;agrave;nh cho học sinh th&amp;agrave;nh t&amp;iacute;ch k&amp;eacute;m đi. Thử đo&amp;aacute;n xem.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;lt;Ma ph&amp;aacute;p dịch chuyển&amp;gt;&amp;hellip;Kh&amp;ocirc;ng đ&amp;uacute;ng, l&amp;agrave; &amp;lt;Thời gian thao t&amp;aacute;c&amp;gt;&amp;hellip;L&amp;agrave;m thế n&amp;agrave;o&amp;hellip;Kh&amp;ocirc;ng thể&amp;hellip;Vừa rồi kh&amp;ocirc;ng c&amp;oacute; bất k&amp;igrave; ma lực dao động hay quy tắc vặn vẹo&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;V&amp;acirc;ng, đ&amp;oacute; l&amp;agrave; sai. Một ph&amp;aacute;p sư hạng ba, v&amp;agrave; một chặng đường d&amp;agrave;i để đi, cậu b&amp;eacute; của t&amp;ocirc;i. Thuận tiện nếu anh đ&amp;atilde; rảnh rang như thế, h&amp;atilde;y l&amp;agrave;m đầu đề n&amp;agrave;y xem: viết b&amp;aacute;o c&amp;aacute;o về hiện tượng b&amp;iacute; ẩn n&amp;agrave;y trong 300 trang. Ah, đ&amp;acirc;y l&amp;agrave; một mệnh lệnh của gi&amp;aacute;o sư.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ugh&amp;hellip;C&amp;ocirc;!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Bỏ qua Harley, người đang run rẩy trong sự tức giận, xấu hổ bởi những lời sỉ nhục, Celica l&amp;agrave;m một động t&amp;aacute;c c&amp;uacute;i đầu duy&amp;ecirc;n d&amp;aacute;ng trước Rick.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Dạo n&amp;agrave;y ng&amp;agrave;i thế n&amp;agrave;o, Hiệu trưởng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Oh, qu&amp;yacute; c&amp;ocirc; Celica. C&amp;ocirc; vẫn trẻ trung v&amp;agrave; xinh đẹp như thường lệ, t&amp;ocirc;i rất ghen tị đ&amp;oacute;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Heheheehe, kh&amp;ocirc;ng phải ng&amp;agrave;i cũng trẻ v&amp;agrave; phong độ đ&amp;oacute; sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;H&amp;ocirc; h&amp;ocirc; h&amp;ocirc;, thật kh&amp;ocirc;ng? Nếu vậy, qu&amp;yacute; c&amp;ocirc; Celica th&amp;acirc;n mến? Một đ&amp;ecirc;m dạo m&amp;aacute;t với l&amp;atilde;o gi&amp;agrave; n&amp;agrave;y&amp;hellip;Đề nghị n&amp;agrave;y được chứ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hehe..Kh&amp;ocirc;ng, cảm ơn. Heck. Vị tr&amp;iacute; của ng&amp;agrave;i cần nhiều năng lượng đ&amp;oacute; nha. Đừng v&amp;ocirc; tr&amp;aacute;ch nhiệm m&amp;agrave; thiếu cẩn thận vậy chứ.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hahahaa! Kh&amp;ocirc;ng lo, kh&amp;ocirc;ng lo! Năng lượng của t&amp;ocirc;i kh&amp;ocirc;ng tr&amp;agrave;n đầy! Xem!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Harley đập b&amp;agrave;n, xua tan bầu kh&amp;ocirc;ng kh&amp;iacute; h&amp;ograve;a thuận giữa hai người.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i kh&amp;ocirc;ng chấp nhận, Celica Alfonia! Cho ph&amp;eacute;p một t&amp;ecirc;n ngốc như vậy l&amp;agrave;m giảng vi&amp;ecirc;n&amp;hellip;T&amp;ocirc;i sẽ kh&amp;ocirc;ng bao giờ thừa nhận điều n&amp;agrave;y. Nếu c&amp;oacute; chuyện g&amp;igrave; xảy ra, c&amp;ocirc; sẽ l&amp;agrave; kẻ phải chịu tr&amp;aacute;ch nhiệm&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;C&amp;acirc;m miệng.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Nhiệt độ căn ph&amp;ograve;ng giảm mạnh theo tiếng th&amp;igrave; thầm của c&amp;ocirc;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i kh&amp;ocirc;ng quan t&amp;acirc;m tới mấy lời n&amp;oacute;i xấu của bạn với t&amp;ocirc;i, hay vu khống &amp;ldquo;người ấy&amp;rdquo; sau lưng t&amp;ocirc;i. Tuy nhi&amp;ecirc;n, t&amp;ocirc;i sẽ kh&amp;ocirc;ng cho ph&amp;eacute;p bạn b&amp;ocirc;i nhọ cậu ta trước mặt t&amp;ocirc;i. R&amp;uacute;t lại lời vừa n&amp;oacute;i. B&amp;acirc;y giờ. V&amp;agrave; xin lỗi ngay lập tức.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Harley, bị &amp;aacute;p đảo bởi sự hiện diện của Celica, trở n&amp;ecirc;n hoảng loạn.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;ocirc;&amp;hellip;n&amp;oacute;i &amp;ndash;c-c&amp;aacute;i g&amp;igrave;&amp;hellip;T&amp;ocirc;i nghĩ&amp;hellip;Glen&amp;hellip;một ph&amp;aacute;p sư hạng 3&amp;hellip;v&amp;ocirc; gi&amp;aacute; trị&amp;hellip;!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Mồ h&amp;ocirc;i lạnh chảy dọc theo tr&amp;aacute;n Harley khi những lời từ cổ họng anh thốt ra.&lt;/p&gt;

&lt;p&gt;Celica h&amp;iacute;p mắt nh&amp;igrave;n thẳng v&amp;agrave;o Harley.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i tự hỏi, sức chịu đựng của bạn đến đ&amp;acirc;u?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Chiếc găng tr&amp;aacute;i của c&amp;ocirc; được cởi ra.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Hoảng sợ bật l&amp;ecirc;n trong mắt Harley trước cử động của Celica, gương mặt anh trắng bệch kh&amp;ocirc;ng c&amp;ograve;n ch&amp;uacute;t m&amp;aacute;u.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i, t&amp;ocirc;i hiểu&amp;hellip;T&amp;ocirc;i xin r&amp;uacute;t lại những lời ban n&amp;atilde;y&amp;hellip;T&amp;ocirc;i..T&amp;ocirc;i đ&amp;atilde; sai&amp;hellip;Xin lỗi&amp;hellip;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Lời cam kết nhanh ch&amp;oacute;ng khiến nụ cười của Celica nở rộ, c&amp;ocirc; đeo lại chiếc găng được th&amp;aacute;o một nửa của m&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chết tiệt&amp;hellip;T&amp;ocirc;i sẽ nhớ lần n&amp;agrave;y.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Harley rời khỏi ph&amp;ograve;ng sau khi bu&amp;ocirc;ng một lời đe dọa. Để lại Rick v&amp;agrave; Celica, c&amp;ugrave;ng một sự im lặng kh&amp;oacute; xử trước khi bị ph&amp;aacute; vỡ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Whew- C&amp;ocirc; vẫn như cũ. Ban n&amp;atilde;y đ&amp;aacute;ng sợ thật đấy, ngay cả t&amp;ocirc;i cũng chỉ muốn t&amp;igrave;m chỗ trốn&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Rick thở d&amp;agrave;i.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tuy nhi&amp;ecirc;n, Celica. Ban n&amp;atilde;y hơi qu&amp;aacute; trớn rồi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i biết&amp;hellip;T&amp;ocirc;i xin lỗi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Sẽ c&amp;oacute; một cuộc biểu t&amp;igrave;nh nếu ch&amp;uacute;ng ta tiếp tục cho ph&amp;eacute;p một ph&amp;aacute;p sư kh&amp;ocirc;ng c&amp;oacute; th&amp;agrave;nh t&amp;iacute;ch l&amp;agrave;m giảng vi&amp;ecirc;n. Kh&amp;ocirc;ng chỉ thầy Harley, sợ rằng phản ứng của mọi người trong học viện đều như vậy đi&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Phải mất một l&amp;uacute;c l&amp;acirc;u của sự im lặng, Celica mới trả lời kh&amp;ocirc;ng ch&amp;uacute;t do dự.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i sẽ chịu tr&amp;aacute;ch nhiệm. Cho mọi h&amp;agrave;nh động m&amp;agrave; cậu ta l&amp;agrave;m trong học viện n&amp;agrave;y.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ograve; m&amp;ograve;. Sao c&amp;ocirc; phải hết l&amp;ograve;ng tiến cử cậu ta vậy&amp;hellip;Quan hệ giữa hai người?...C&amp;oacute; thể n&amp;oacute;i cho t&amp;ocirc;i nghe một ch&amp;uacute;t sao?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hehhehee. Kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; như ng&amp;agrave;i nghĩ đ&amp;acirc;u. Chỉ c&amp;oacute; điều&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chỉ c&amp;oacute; điều&amp;hellip;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i chỉ hy vọng cậu ta c&amp;oacute; thể tiến về ph&amp;iacute;a trước. Đ&amp;uacute;ng vậy, chỉ l&amp;agrave; sự quan t&amp;acirc;m của t&amp;ocirc;i m&amp;agrave; th&amp;ocirc;i.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Oi, Rod, nh&amp;igrave;n giảng vi&amp;ecirc;n kia&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ay, kh&amp;ocirc;ng thể tin được&amp;hellip;đ&amp;ocirc;i mắt anh ta như đ&amp;atilde; chết vậy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Lần đầu ti&amp;ecirc;n m&amp;igrave;nh thấy người thiếu sức sống đến vậy đấy.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Tiếng b&amp;agrave;n luận x&amp;ocirc;n xao c&amp;oacute; thể được nghe ở khắp mọi nơi trong lớp học.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;V&amp;igrave; vậy ~ c&amp;oacute; lẽ l&amp;agrave; như vậy ~ tớ chắc chắn c&amp;aacute;i cảm gi&amp;aacute;c n&amp;agrave;y ~ v&amp;agrave; như vậy ~ đo&amp;aacute;n l&amp;agrave; thế&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;Aacute;nh mắt khinh mệt của sinh vi&amp;ecirc;n r&amp;otilde; r&amp;agrave;ng nhằm thẳng v&amp;agrave;o cục u tr&amp;ecirc;n đầu của người đ&amp;agrave;n &amp;ocirc;ng. Động t&amp;aacute;c giảng dậy uể oải của Glen chẳng kh&amp;aacute;c g&amp;igrave; động t&amp;aacute;c của lũ th&amp;acirc;y ma trong mắt bọn họ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ah, gi&amp;aacute;o sư Huey vẫn l&amp;agrave; tuyệt nhất&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tại sao thầy ấy lại nghỉ cơ chứ&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Thẳng thắn m&amp;agrave; n&amp;oacute;i, tiết học của Glen l&amp;agrave; thứ tồi tệ nhất trong những thứ tồi tệ m&amp;agrave; họ từng trải nghiệm.&lt;/p&gt;

&lt;p&gt;Ở mức n&amp;agrave;o đ&amp;oacute;, họ kh&amp;ocirc;ng thể hiểu được nội dung của b&amp;agrave;i học ngay cả khi chăm ch&amp;uacute;t lắng nghe từng lời. Kh&amp;ocirc;ng c&amp;oacute; giải th&amp;iacute;ch. Anh ta chỉ đọc to những b&amp;agrave;i giảng l&amp;yacute; thuyết bằng chất giọng chậm v&amp;agrave; buồn tẻ một c&amp;aacute;ch lan man. Đ&amp;ocirc;i khi anh ta sẽ viết một hai chữ l&amp;ecirc;n tấm bảng, nhưng họ ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc;ng thể nhận diện được những k&amp;iacute; tự như g&amp;agrave; bới ấy.&lt;/p&gt;

&lt;p&gt;V&amp;agrave; kh&amp;ocirc;ng ai trong số c&amp;aacute;c học vi&amp;ecirc;n kh&amp;ocirc;ng nhận ra rằng, Glen, giảng vi&amp;ecirc;n tạm thời của họ kh&amp;ocirc;ng hề c&amp;oacute; ch&amp;uacute;t động lực giảng dạy.&lt;/p&gt;

&lt;p&gt;Một sự l&amp;atilde;ng ph&amp;iacute; thời gian, khi m&amp;agrave; kh&amp;ocirc;ng ai c&amp;oacute; thể hiểu được nội dung, v&amp;agrave; chẳng bằng tự mở s&amp;aacute;ch v&amp;agrave; tự &amp;ocirc;n luyện.&lt;/p&gt;

&lt;p&gt;Song, vẫn c&amp;oacute; một học sinh dũng cảm v&amp;agrave; si&amp;ecirc;ng năng, người muốn t&amp;igrave;m ra được thứ g&amp;igrave; đ&amp;oacute; hữu &amp;iacute;ch trong đống r&amp;aacute;c n&amp;agrave;y.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ummm..Thưa thầy&amp;hellip;Em c&amp;oacute; một c&amp;acirc;u hỏi, nhưng&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Một nữ sinh c&amp;oacute; v&amp;oacute;c d&amp;aacute;ng nhỏ nhắn, rụt r&amp;egrave; giơ tay. T&amp;ecirc;n c&amp;ocirc; l&amp;agrave; Lynn. Một c&amp;ocirc; g&amp;aacute;i nh&amp;uacute;t nh&amp;aacute;t với bầu kh&amp;ocirc;ng kh&amp;iacute; giống như một số lo&amp;agrave;i động vật nhỏ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;oacute; l&amp;agrave; g&amp;igrave;?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Umm&amp;hellip;Vừa n&amp;atilde;y, thầy c&amp;oacute; giới thiệu v&amp;iacute; dụ về lỗi ch&amp;iacute;nh ta của chữ rune, viết tr&amp;ecirc;n d&amp;ograve;ng 3 trang 56, nhưng&amp;hellip;em kh&amp;ocirc;ng biết những từ phi&amp;ecirc;n dịch của c&amp;acirc;u ch&amp;uacute; ngữ đ&amp;oacute;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Huh, t&amp;ocirc;i cũng kh&amp;ocirc;ng biết.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hả?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Xin lỗi. C&amp;aacute;i đ&amp;oacute; em h&amp;atilde;y tự m&amp;igrave;nh nghi&amp;ecirc;n cứu đi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;acirc;u trả lời trắng trợn khiến Lynn đứng chết lặng tại chỗ.&lt;/p&gt;

&lt;p&gt;Sistina, người vốn tức giận, c&amp;agrave;ng kh&amp;oacute; kiềm chế hơn trước c&amp;acirc;u trả lời của Glen bật dậy.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Xin đợi một ch&amp;uacute;t, thưa thầy. L&amp;agrave;m sao một giảng vi&amp;ecirc;n cho thể trả lời học sinh của m&amp;igrave;nh như vậy được?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Tiếng thở d&amp;agrave;i từ tận đ&amp;aacute;y l&amp;ograve;ng Glen ph&amp;aacute;t ra trước lời tố cao cay độc của Sistina.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nghe n&amp;agrave;y. L&amp;agrave;m thế n&amp;agrave;o t&amp;ocirc;i c&amp;oacute; thể n&amp;oacute;i với bạn thứ m&amp;agrave; t&amp;ocirc;i kh&amp;ocirc;ng biết? L&amp;agrave;m thế n&amp;agrave;o t&amp;ocirc;i c&amp;oacute; thể dạy cho bạn thứ m&amp;agrave; t&amp;ocirc;i kh&amp;ocirc;ng hiểu?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Nếu thầy kh&amp;ocirc;ng thể trả lời, th&amp;igrave; &amp;iacute;t nhất phải hẹn trả lời v&amp;agrave;o tiết sau trong khi lưu &amp;yacute; nghi&amp;ecirc;n cứu n&amp;oacute; chứ? Đ&amp;oacute; mới l&amp;agrave; nghĩa vụ cần thiết của một giảng vi&amp;ecirc;n.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ugh&amp;hellip;Sao c&amp;aacute;c em kh&amp;ocirc;ng tự t&amp;igrave;m hiểu cho đỡ mất thời gian?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng phải như thế! &amp;Yacute; em l&amp;agrave;&amp;hellip;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ah, chẳng lẽ c&amp;aacute;c em kh&amp;ocirc;ng được dạy c&amp;aacute;c tra từ điển ng&amp;ocirc;n ngữ Rune sao? Hay c&amp;aacute;c em kh&amp;ocirc;ng thể tra?...Ai, kh&amp;ocirc;ng được rồi, nếu vậy t&amp;ocirc;i sẽ tự l&amp;agrave;m một ch&amp;uacute;t&amp;hellip;Ai, c&amp;ocirc;ng việc kh&amp;ocirc;ng cần thiết lại tăng l&amp;ecirc;n rồi.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Guh&amp;hellip;Em biết l&amp;agrave;m thế n&amp;agrave;o để tra! Đủ rồi, em sẽ tự l&amp;agrave;m, kh&amp;ocirc;ng cần thầy!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ngay cả vậy, Glen vẫn giữ vẻ thờ ơ của m&amp;igrave;nh, như thể anh ta kh&amp;ocirc;ng c&amp;oacute; ch&amp;uacute;t động lực để thay đổi. Trong khi Sistina gắt gỏng ngồi xuống ghế, đ&amp;ocirc;i vai run l&amp;ecirc;n từng đợt v&amp;igrave; giận dữ.&lt;/p&gt;

&lt;p&gt;Lumia ngồi b&amp;ecirc;n cạnh cảm thấy lo lắng khi nh&amp;igrave;n t&amp;igrave;nh h&amp;igrave;nh. Kh&amp;ocirc;ng kh&amp;iacute; trong lớp ng&amp;agrave;y c&amp;agrave;ng tệ hại với sự kh&amp;oacute; chịu bo tr&amp;ograve;n trong n&amp;oacute;. V&amp;agrave; thời gian cứ thế tr&amp;ocirc;i đi một c&amp;aacute;ch v&amp;ocirc; vọng.&lt;/p&gt;

&lt;p&gt;Vậy đấy, kỉ niệm lần đầu l&amp;ecirc;n bục giảng dạy học của Glen đ&amp;atilde; kết th&amp;uacute;c như một sự l&amp;atilde;ng ph&amp;iacute; thời gian v&amp;ocirc; &amp;iacute;ch.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Ph&amp;ograve;ng Thay đồ Nữ - Học viện Ma Ph&amp;aacute;p &amp;ndash; sau tiết học đầu ti&amp;ecirc;n của Glen.&lt;/p&gt;

&lt;p&gt;Sistina cởi đồng phục, chỉ để lại bộ &amp;aacute;o l&amp;oacute;t. C&amp;ocirc; n&amp;eacute;m quần &amp;aacute;o vừa thay v&amp;agrave;o tủ gỗ rồi than thở:&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thật đ&amp;aacute;ng gh&amp;eacute;t, rốt cuộc c&amp;oacute; g&amp;igrave; sai với anh ch&amp;agrave;ng đ&amp;oacute; vậy!?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hahaha&amp;hellip;b&amp;igrave;nh tĩnh n&amp;agrave;o.&amp;rdquo; Lumia cười, xoa dịu cơn giận dữ của Sistina.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cậu c&amp;oacute; nghĩ anh ta thật v&amp;ocirc; dụng kh&amp;ocirc;ng? L&amp;agrave;m thế n&amp;agrave;o anh ta c&amp;oacute; thể trở th&amp;agrave;nh giảng vi&amp;ecirc;n của học viện n&amp;agrave;y được cơ chứ? Cho d&amp;ugrave; l&amp;agrave; tạm thời cũng kh&amp;ocirc;ng đến mức&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ne, c&amp;oacute; lẽ cậu muốn thầy Glen dạy nghi&amp;ecirc;m t&amp;uacute;c hơn th&amp;ocirc;i.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Lớp học tiếp theo của Sistina l&amp;agrave; Gỉa Kim căn bản.&lt;/p&gt;

&lt;p&gt;Chắc chắn, đồng phục v&amp;agrave; &amp;aacute;o cho&amp;agrave;ng m&amp;agrave; Sistina thường mặc tr&amp;ecirc;n lớp c&amp;oacute; t&amp;aacute;c dụng điều h&amp;ograve;a nhiệt độ v&amp;agrave; độ ẩm dưới ảnh hưởng của Black Magic &amp;lt;Air Conditioning&amp;gt; cho ph&amp;eacute;p tạo ra một hiệu ứng t&amp;ugrave;y chỉnh nhiệt độ vĩnh cửu: đ&amp;ocirc;ng ấm v&amp;agrave; h&amp;egrave; m&amp;aacute;t. Đ&amp;oacute; l&amp;agrave; một trang phục rất tiện lợi.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng như nam giới, giới nữ thường được khuyến kh&amp;iacute;ch ăn mặc &amp;ldquo;m&amp;aacute;t mẻ&amp;rdquo; trong giai đoạn học việc như một c&amp;aacute;ch để tiếp x&amp;uacute;c với ma thuật tự nhi&amp;ecirc;n của thế giới, v&amp;agrave; đồng phục l&amp;agrave; một đồng minh của họ.&lt;/p&gt;

&lt;p&gt;Tuy nhi&amp;ecirc;n, trong qu&amp;aacute; tr&amp;igrave;nh th&amp;iacute; nghiệm v&amp;agrave; thực h&amp;agrave;nh giả kim, học vi&amp;ecirc;n sẽ phải xử l&amp;yacute; c&amp;aacute;c vật liệu ma ph&amp;aacute;p bằng tay, một nơi họ xử l&amp;yacute; c&amp;aacute;c chất phản ứng v&amp;agrave; x&amp;uacute;c t&amp;aacute;c. Quần &amp;aacute;o sau khi học thường c&amp;oacute; m&amp;agrave;u khủng khiếp, t&amp;ugrave;y thuộc v&amp;agrave;o nội dung th&amp;iacute; nghiệm. V&amp;agrave; đ&amp;ocirc;i khi, lưu lại cả m&amp;ugrave;i tr&amp;ecirc;n đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Bởi vậy, trước buổi học, c&amp;aacute;c c&amp;ocirc; g&amp;aacute;i trong lớp Sistina đều đi thay những chiếc &amp;aacute;o tr&amp;ugrave;m d&amp;agrave;nh ri&amp;ecirc;ng cho việc th&amp;iacute; nghiệm.&lt;/p&gt;

&lt;p&gt;Trong ph&amp;ograve;ng hiện n&amp;agrave;y đầy rẫy những c&amp;ocirc; g&amp;aacute;i trẻ trung b&amp;aacute;n nude. Những đường cong quyến rũ dần hiện ra cho thấy sự ph&amp;aacute;t triển của cơ thể, tử trẻ con dần chuyển sang người lớn. Ai ai cũng h&amp;agrave;o ph&amp;oacute;ng ph&amp;ocirc; b&amp;agrave;y tuổi trẻ của m&amp;igrave;nh. Thật đ&amp;aacute;ng tiếc v&amp;igrave; sắc xu&amp;acirc;n n&amp;agrave;y lại kh&amp;ocirc;ng c&amp;oacute; lấy một nam sinh n&amp;agrave;o c&amp;oacute; thể thưởng thức.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ha&amp;hellip;nếu kh&amp;ocirc;ng nhầm th&amp;igrave; anh ta cũng dạy m&amp;ocirc;n giả kim đ&amp;uacute;ng kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;uacute;ng vậy, thầy Glen dạy thay cho gi&amp;aacute;o sư Huey cả m&amp;agrave;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ư, ư ư&amp;hellip;dạ d&amp;agrave;y m&amp;igrave;nh kh&amp;oacute; chịu qu&amp;aacute;.&amp;rdquo; Sisitina cau m&amp;agrave;y, rồi đột nhi&amp;ecirc;n cười kh&amp;uacute;c kh&amp;iacute;ch như thể đang nghĩ về thứ g&amp;igrave; th&amp;uacute; vị. B&amp;ecirc;n cạnh c&amp;ocirc;, Lumia cũng tho&amp;aacute;t y, chỉ c&amp;ograve;n bộ quần &amp;aacute;o l&amp;oacute;t. &amp;ldquo;M&amp;igrave;nh muốn c&amp;oacute; điều trị&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;SISTI?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sistina tiến gần Lumia, người đang nhầm lẫn v&amp;agrave; đột nhi&amp;ecirc;n &amp;ocirc;m lấy c&amp;ocirc; từ ph&amp;iacute;a sau.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Gotcha!!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kyaaaa!?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;D&amp;aacute;n m&amp;igrave;nh v&amp;agrave;o ph&amp;iacute;a sau, đ&amp;ocirc;i tay của Sistina xoa phần ngực căng tr&amp;ograve;n được bọc trong chiếc &amp;aacute;o l&amp;oacute;t che chở của Lumia.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ah, cơ thể của Lumia vẫn l&amp;agrave; tốt nhất, trắng mịn v&amp;agrave; đ&amp;aacute;ng y&amp;ecirc;u, rất trơn tru nha.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đừ&amp;hellip;SIS..Dừ..Dừng lại đi.&amp;rdquo; Đỏ mặt, Lumia giẫy giụa như một ch&amp;uacute; m&amp;egrave;o con nhưng lại bị hai c&amp;aacute;nh tay của Sistina cuốn chặt lấy như lo&amp;agrave;i rắn b&amp;aacute;m mồi.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kyaa! SISTI, AH! Dừng lại!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hmmm&amp;hellip;&amp;hellip;Lumia, h&amp;igrave;nh như n&amp;oacute; to hơn rồi phải&amp;hellip;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sistina nh&amp;iacute;u m&amp;agrave;y khi cảm nhận sự mềm mại v&amp;agrave; thay đổi tế nhị của x&amp;uacute;c gi&amp;aacute;c truyền tới từ l&amp;ograve;ng b&amp;agrave;n tay. Ngực của Lumia kh&amp;ocirc;ng qu&amp;aacute; lớn hay qu&amp;aacute; nhỏ. Dường như được t&amp;iacute;nh to&amp;aacute;n ch&amp;iacute;nh với với tỉ lệ chiều cao v&amp;agrave; v&amp;oacute;c d&amp;aacute;ng c&amp;ocirc; sở hữu. Một ngọn đồi với tỉ lệ v&amp;agrave;ng của một h&amp;igrave;nh dạng l&amp;yacute; tưởng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Haaa..Thật thoải m&amp;aacute;i. Tại sao bộ ngực của m&amp;igrave;nh kh&amp;ocirc;ng ph&amp;aacute;t triển nhỉ&amp;hellip;Ooh, thay v&amp;igrave; chữa bệnh, ch&amp;uacute;ng l&amp;agrave;m m&amp;igrave;nh thấy ch&amp;aacute;n nản&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chờ đ&amp;atilde;..Dừng lại đi Sisti. Cậu b&amp;oacute;p mạnh qu&amp;aacute;!!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ahhh, m&amp;igrave;nh ghen tị đấy. Nh&amp;igrave;n n&amp;agrave;y, cảm gi&amp;aacute;c th&amp;iacute;ch chứ!! Huh? Huh?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hyaaan! Kh&amp;hellip;Kh&amp;ocirc;ng! Dừng lại!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Bằng c&amp;aacute;ch n&amp;agrave;o đ&amp;oacute;, c&amp;aacute;c c&amp;ocirc; g&amp;aacute;i trong ph&amp;ograve;ng đều c&amp;oacute; h&amp;agrave;nh động tương tự.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Cậu l&amp;agrave;m g&amp;igrave; thế, Theresa! Kể từ khi&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hehehe, h&amp;igrave;nh như cậu ng&amp;agrave;y c&amp;agrave;ng to nha.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tha cho m&amp;igrave;nh đi, đừng l&amp;agrave;m nữa m&amp;agrave;! Kh&amp;ocirc;ng! Đừng m&amp;agrave;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kyaaa! Bọn m&amp;igrave;nh&amp;hellip;Ah, Wendy?!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Cảnh tượng xịt m&amp;aacute;u mũi xảy ra khắp căn ph&amp;ograve;ng.&lt;/p&gt;

&lt;p&gt;Những nữ sinh tiếp tục đ&amp;ugrave;a nghịch với nhau trong tiếng cười vui vẻ.&lt;/p&gt;

&lt;p&gt;Đột nhi&amp;ecirc;n, c&amp;aacute;nh cửa ph&amp;ograve;ng thay đồ mở rộng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Aaa, thật phiền phức. Sao phải đổi quần &amp;aacute;o chứ? Mụ gi&amp;agrave; Celica&amp;hellip;Huh?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ngo&amp;agrave;i c&amp;aacute;nh cửa l&amp;agrave; một người đ&amp;aacute;ng &amp;ocirc;ng đ&amp;aacute;ng ngờ đứng sững, với bộ &amp;aacute;o cho&amp;agrave;ng th&amp;iacute; nghiệm tr&amp;ecirc;n tay.&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; l&amp;agrave; Glen.&lt;/p&gt;

&lt;p&gt;Glen, Sistina v&amp;agrave; Lumia, ba người đứng gần c&amp;aacute;nh cửa nhất, nh&amp;igrave;n nhau v&amp;agrave; đ&amp;ocirc;ng cứng.&lt;/p&gt;

&lt;p&gt;Thi&amp;ecirc;n đường vui vẻ của những c&amp;ocirc; g&amp;aacute;i nude bỗng nhi&amp;ecirc;n biến th&amp;agrave;nh địa ngục băng gi&amp;aacute;. Mọi người đều h&amp;oacute;a đ&amp;aacute; v&amp;agrave; im lặng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;Ah&amp;rdquo; Glen lướt qua căn ph&amp;ograve;ng. Khi x&amp;aacute;c định chỉ c&amp;oacute; nữ sinh ở trong, anh g&amp;atilde;i đầu bối rối v&amp;agrave; nh&amp;igrave;n l&amp;ecirc;n tấm biển. &amp;ldquo;C&amp;aacute;c em biết đấy. N&amp;oacute; đ&amp;atilde; thay đổi so với hồi t&amp;ocirc;i c&amp;ograve;n học ở đ&amp;acirc;y. H&amp;igrave;nh như ph&amp;ograve;ng thay đồ nam v&amp;agrave; nữ đổi chỗ cho nhau th&amp;igrave; phải. Đau đầu thật đấy, h&amp;igrave;nh như t&amp;ocirc;i l&amp;agrave;m một việc kh&amp;ocirc;ng hay ch&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;B&amp;ecirc;n trong căn ph&amp;ograve;ng, cơn b&amp;atilde;o kh&amp;aacute;t m&amp;aacute;u đ&amp;atilde; dần h&amp;igrave;nh th&amp;agrave;nh. Thay v&amp;igrave; bỏ trốn, Glen chỉ thở d&amp;agrave;i cam chịu.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chẹp, đ&amp;acirc;y ch&amp;iacute;nh l&amp;agrave; vận may của mấy anh ch&amp;agrave;ng tuổi dạy th&amp;igrave; trong số tiểu thuyết nhảm nh&amp;iacute; của Đế Quốc sao? Ha, t&amp;ocirc;i chưa bao giờ nghĩ m&amp;igrave;nh sẽ trải nghiệm n&amp;oacute;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Với Sistina dẫn đầu, c&amp;aacute;c c&amp;ocirc; g&amp;aacute;i bắt đầu tiến l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;Glen giơ tay như đầu h&amp;agrave;ng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ah, đợi ch&amp;uacute;t! C&amp;aacute;c em b&amp;igrave;nh tĩnh! H&amp;atilde;y cho t&amp;ocirc;i cơ hội giải th&amp;iacute;ch chuyện n&amp;agrave;y đi. C&amp;aacute;c em sẽ lắng nghe chứ? Xin h&amp;atilde;y để t&amp;ocirc;i n&amp;oacute;i thay cho bữa ăn cuối c&amp;ugrave;ng!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;aacute;c c&amp;ocirc; g&amp;aacute;i đ&amp;atilde; dừng lại. &amp;Acirc;n huệ cuối c&amp;ugrave;ng của tử t&amp;ugrave; lu&amp;ocirc;n được cấp ph&amp;eacute;p.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i, t&amp;ocirc;i nghĩ&amp;hellip;Đ&amp;aacute;m nh&amp;acirc;n vật ch&amp;iacute;nh trong tiểu thuyết to&amp;agrave;n một lũ yếu sinh l&amp;yacute;, phải kh&amp;ocirc;ng? Khi m&amp;agrave; vận may của anh ch&amp;agrave;ng dậy th&amp;igrave; diễn ra, th&amp;igrave; lu&amp;ocirc;n kết th&amp;uacute;c bởi nấm đấm của c&amp;aacute;c nữ anh h&amp;ugrave;ng. Vậy tại sao phải cố gắng quay đầu v&amp;agrave; bỏ chạy thật nhanh khỏi c&amp;ocirc; ấy nhưng vẫn bị đ&amp;aacute;nh đập to&amp;agrave;n bộ crap chỉ v&amp;igrave; liếc một ch&amp;uacute;t tr&amp;ecirc;n cơ thể phụ nữ kh&amp;ocirc;ng phải bất c&amp;ocirc;ng sao? Đ&amp;oacute; l&amp;agrave; những g&amp;igrave; t&amp;ocirc;i đ&amp;atilde; nghĩ, d&amp;ugrave; sao&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sau b&amp;agrave;i ph&amp;aacute;t biểu xỏ l&amp;aacute; nhất mọi thời đại, Glen lộ r&amp;otilde; bản chất.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Vậy n&amp;ecirc;n, t&amp;ocirc;i sẽ ghi nhớ cảnh n&amp;agrave;y v&amp;agrave;o từng tế b&amp;agrave;o trong bộ nhớ của t&amp;ocirc;i t&amp;ocirc;i.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Anh khoanh tay, đ&amp;ocirc;i mắt đỏ bừng mở to, tr&amp;ocirc;ng hệt như một kẻ từ v&amp;igrave; đạo khi nh&amp;igrave;n chăm chằm v&amp;agrave;o những cơ thể thanh xu&amp;acirc;n trước mắt.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;BIẾN TH&amp;Aacute;I IIIIIIIIII&amp;nbsp;!!!!!!!!!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;V&amp;agrave;o ng&amp;agrave;y h&amp;ocirc;m đ&amp;oacute;, một khung cảnh bạo lực đậm chất d&amp;atilde; man v&amp;agrave; đẫm m&amp;aacute;u được thực hiện bởi những nữ học vi&amp;ecirc;n năm thứ II với nạn nh&amp;acirc;n l&amp;agrave; g&amp;atilde; giảng vi&amp;ecirc;n tạm thời đ&amp;atilde; quyết định kh&amp;ocirc;ng quay đầu.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Đương nhi&amp;ecirc;n, lớp giả kim cơ bản h&amp;ocirc;m đ&amp;oacute; cũng bị ho&amp;atilde;n v&amp;igrave; gi&amp;aacute;o vi&amp;ecirc;n đ&amp;atilde; h&amp;ocirc;n m&amp;ecirc; tạm thời.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ouch&amp;hellip;Đau qu&amp;aacute;&amp;hellip;C&amp;oacute; cần mạnh tay đến thế kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Giờ đ&amp;atilde; qu&amp;aacute; trưa, v&amp;agrave; l&amp;agrave; thời gian để nghỉ ngơi.&lt;/p&gt;

&lt;p&gt;Quần &amp;aacute;o tr&amp;ecirc;n người Glen đều trở n&amp;ecirc;n r&amp;aacute;ch n&amp;aacute;t, cơ thể anh đầy vết trầy xước v&amp;agrave; bầm t&amp;iacute;m. Anh loạng choạng đi ngang h&amp;agrave;nh lang của Học viện như một th&amp;acirc;y ma với đ&amp;ocirc;i mắt đẫm lệ. Đ&amp;aacute;m học vi&amp;ecirc;n, giật m&amp;igrave;nh trước h&amp;igrave;nh d&amp;aacute;ng kh&amp;oacute; coi của Glen, nhưng anh lựa chọn bỏ qua những c&amp;aacute;i nh&amp;igrave;n của ch&amp;uacute;ng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ma, trẻ em ng&amp;agrave;y nay ph&amp;aacute;t triển nhanh qu&amp;aacute;&amp;hellip;Ouch, ch&amp;uacute;ng ăn g&amp;igrave; m&amp;agrave; ph&amp;aacute;t triển được vậy&amp;hellip;? Chỉ c&amp;oacute; m&amp;igrave;nh kh&amp;ocirc;ng đủ ph&amp;aacute;t triển tốt&amp;hellip;Ah, oh tốt, t&amp;ocirc;i cần thức ăn&amp;hellip;.!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;V&amp;agrave; Glen l&amp;ecirc; bước tới nh&amp;agrave; ăn của học viện, trong miệng vẫn lầm bầm những nhận x&amp;eacute;t m&amp;agrave; nếu để số nữ sinh c&amp;ograve;n lại nghe được, nửa đời c&amp;ograve;n lại của anh sẽ l&amp;agrave; địa ngục.&lt;/p&gt;

&lt;p&gt;Qu&amp;aacute;n c&amp;agrave; ph&amp;ecirc; của Học viện Ma Ph&amp;aacute;p Đế Quốc Alzano nằm ở tầng một của t&amp;ograve;a nh&amp;agrave; ch&amp;iacute;nh, nơi m&amp;agrave; giống một t&amp;ograve;a l&amp;acirc;u đ&amp;agrave;i hơn l&amp;agrave; một trường học. N&amp;oacute; cung cấp c&amp;aacute;c m&amp;oacute;n ăn ngon với gi&amp;aacute; cả phải chăng, v&amp;agrave; l&amp;agrave; địa điểm quen thuộc của phần lớn c&amp;aacute;c học vi&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Rất l&amp;acirc;u rồi m&amp;igrave;nh mới gh&amp;eacute; v&amp;agrave;o đ&amp;acirc;y.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Những bức tường trong nh&amp;agrave; ăn đều được sơn m&amp;agrave;u trắng, kết hợp với d&amp;acirc;y trang tr&amp;iacute; v&amp;agrave; những chiếc b&amp;agrave;n d&amp;agrave;i thắp nến.&lt;/p&gt;

&lt;p&gt;Về cơ bản, thực kh&amp;aacute;ch sẽ đặt thức ăn ở quầy ph&amp;iacute;a sau, nơi họ thanh to&amp;aacute;n chi ph&amp;iacute; v&amp;agrave; nhận đồ ăn. Sau đ&amp;oacute;, họ c&amp;oacute; thể lựa chọn một b&amp;agrave;n bất k&amp;igrave; v&amp;agrave; ngồi xuống thưởng thức bữa ăn của m&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; l&amp;agrave; hệ thống.&lt;/p&gt;

&lt;p&gt;Glen đi đến trước quầy v&amp;agrave; bắt đầu gọi m&amp;oacute;n.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Uhmm, một phần g&amp;agrave; nướng với rau thơm k&amp;egrave;m khoai tay chi&amp;ecirc;n. Một phần ph&amp;ocirc; mai Largo chi&amp;ecirc;n v&amp;agrave; salad mầm Elisha. Một phần đậu x&amp;agrave;o Kirua với sốt c&amp;agrave; chua. Sốt khoai t&amp;acirc;y. B&amp;aacute;nh m&amp;igrave; đen. V&amp;agrave; vui l&amp;ograve;ng cho một suất ăn lớn.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Glen l&amp;agrave; loại người t&amp;iacute;ch-trữ v&amp;agrave; ăn-nhiều-cũng-kh&amp;ocirc;ng-b&amp;eacute;o. Một nửa do sự thất nghiệp khiến anh từ chối ăn b&amp;aacute;m Cecila, bất chấp những lời than v&amp;atilde;n m&amp;agrave; c&amp;ocirc; từng n&amp;oacute;i với anh l&amp;uacute;c trước.&lt;/p&gt;

&lt;p&gt;Trong l&amp;uacute;c chờ đợi bữa trưa của m&amp;igrave;nh được ho&amp;agrave;n th&amp;agrave;nh, Glen r&amp;uacute;t v&amp;iacute; v&amp;agrave; lấy da một v&amp;agrave;i đồng Celt rồi đưa ch&amp;uacute;ng cho nh&amp;acirc;n vi&amp;ecirc;n trước khi nhận lấy khay thức ăn.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kiếm chỗ n&amp;agrave;o&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Qu&amp;aacute;n đang v&amp;agrave;o giở ăn trưa, bởi vậy chỗ ngồi đều k&amp;iacute;n người.&lt;/p&gt;

&lt;p&gt;Ngoại trừ hai ghế trống cạnh nhau ở b&amp;agrave;n ngo&amp;agrave;i c&amp;ugrave;ng ph&amp;iacute;a b&amp;ecirc;n phải.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng muốn bị mất chỗ, Glen nhanh ch&amp;oacute;ng tiến l&amp;ecirc;n. Thế nhưng ở đ&amp;oacute; đ&amp;atilde; c&amp;oacute; hai h&amp;igrave;nh b&amp;oacute;ng quen thuộc&amp;hellip;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Luận &amp;aacute;n về &amp;ldquo;L&amp;yacute; thuyết Ma Thuật cổ đại&amp;rdquo; của gi&amp;aacute;o sư Fouzelle xuất bản năm ngo&amp;aacute;i kh&amp;aacute; buồn cười đ&amp;uacute;ng kh&amp;ocirc;ng, Lumia?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Ngay trước ghế Glen định ngồi, l&amp;agrave; hai gương mặt quen thuộc.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Quan điểm của &amp;ocirc;ng cho rằng &amp;lt;Megalius Sky Castle&amp;gt; được x&amp;acirc;y dựng khoảng 4500 BHC (Before Holy Calender). Thế nhưng tớ chắc chắn nền văn minh cổ đại đ&amp;atilde; x&amp;acirc;y dựng th&amp;agrave;nh c&amp;ocirc;ng những kĩ thuật kiểu mẫu n&amp;agrave;y v&amp;agrave;o giữa thời k&amp;igrave; cổ đại, x&amp;eacute;t theo những di t&amp;iacute;ch khai quật v&amp;agrave; nhiều bức tranh được ph&amp;aacute;t hiện trong c&amp;aacute;c di chỉ khảo cổ ở Fejite. Vậy n&amp;ecirc;n &amp;lt;Megalius Sky Castle&amp;gt; phải được x&amp;acirc;y dựng v&amp;agrave;o những năm 5000 BHC mới đ&amp;uacute;ng. Ngay cả khi bỏ qua luận điểm n&amp;agrave;y, m&amp;igrave;nh cũng kh&amp;ocirc;ng tin năm 4500 BHC c&amp;oacute; thể sản xuất ra loại ma ph&amp;aacute;p nổi kh&amp;ocirc;ng tưởng n&amp;agrave;y. &amp;Ocirc;ng ấy tuy&amp;ecirc;n bố sở hữu một ma thuật đặc biệt c&amp;oacute; thể gi&amp;aacute;m định được ni&amp;ecirc;n đại, nhưng phải c&amp;oacute; c&amp;aacute;i g&amp;igrave; đ&amp;oacute; b&amp;oacute;p m&amp;eacute;o mới g&amp;acirc;y ch&amp;ecirc;nh lệch gần 500 năm như thế. To&amp;agrave;n l&amp;agrave; l&amp;yacute; thuyết cả, m&amp;agrave; thực tiễn th&amp;igrave; &amp;iacute;t Ph&amp;aacute;p sư để &amp;yacute;, phải kh&amp;ocirc;ng? Nếu kĩ thuật chiều k&amp;iacute;ch của thời k&amp;igrave; giữa cổ đại thực sự c&amp;oacute; thể che giấu b&amp;iacute; mật của &amp;lt;Megalius Sky Castle&amp;gt; th&amp;igrave; n&amp;oacute; phải hết hạn một thời gian d&amp;agrave;i trước đ&amp;acirc;y chứ? Đ&amp;aacute;nh gi&amp;aacute; mật độ mana trong kh&amp;iacute; quyển th&amp;igrave; giới hạn &amp;ndash;bla blab la- thời k&amp;igrave; m&amp;ugrave;a đ&amp;ocirc;ng mana thứ hai l&amp;agrave; thời k&amp;igrave; khiến nền văn minh cổ đại sụp đổ -bla bla bla- thậm ch&amp;iacute; chu k&amp;igrave; b&amp;aacute;n r&amp;atilde; của mana cũng m&amp;acirc;u thuẫn với n&amp;oacute; &amp;ndash;bla blab la bla- Hiển nhi&amp;ecirc;n rằng c&amp;oacute; ba lớp cơ bản trong hệ thống nh&amp;aacute;nh đ&amp;atilde; tiến h&amp;oacute;a theo thời gian dựa v&amp;agrave;o d&amp;ograve;ng ng&amp;ocirc;n ngữ cổ đại đầu ti&amp;ecirc;n &amp;ndash; bla bla bla- thậm ch&amp;iacute; c&amp;ograve;n c&amp;oacute; một cuộc tranh c&amp;atilde;i về nền văn minh Telex, mặc d&amp;ugrave; văn minh cổ đại lu&amp;ocirc;n được cho l&amp;agrave; một nền văn h&amp;oacute;a thống nhất &amp;ndash; bla blab la blab la abla blab la blab la bla&amp;hellip;&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;Agrave;, ừ&amp;hellip;ừ&amp;hellip;cậu n&amp;oacute;i đ&amp;uacute;ng.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; g&amp;aacute;i t&amp;oacute;c bạc gần như qu&amp;ecirc;n mất phần ăn trưa của m&amp;igrave;nh v&amp;agrave; chỉ n&amp;oacute;i chuyện kh&amp;ocirc;ng ngừng. C&amp;ograve;n Lumia, c&amp;ocirc; g&amp;aacute;i t&amp;oacute;c v&amp;agrave;ng vẫn chăm ch&amp;uacute; lắng nghe, thỉnh thoảng cười khổ v&amp;agrave; l&amp;eacute;n lau v&amp;agrave;i giọt mồ h&amp;ocirc;i chảy ra tr&amp;ecirc;n tr&amp;aacute;n.&lt;/p&gt;

&lt;p&gt;R&amp;otilde; r&amp;agrave;ng họ đang trong một cuộc thảo luận về đề t&amp;agrave;i Ma thuật cổ đại (d&amp;ugrave; n&amp;oacute; chỉ l&amp;agrave; một chiều).&lt;/p&gt;

&lt;p&gt;Ma thuật cổ đại, hay c&amp;ograve;n gọi l&amp;agrave; Khảo cổ học ma ph&amp;aacute;p, chuy&amp;ecirc;n nghi&amp;ecirc;n cứu lịch sử của nền văn minh Đại Kỳ Diệu từng tồn tại trước Lịch Th&amp;aacute;nh. Trong số c&amp;aacute;c nh&amp;agrave; khảo cổ ma ph&amp;aacute;p, c&amp;oacute; một nh&amp;oacute;m tập trung chủ yếu v&amp;agrave;o &amp;lt;Megalius Sky Caslte&amp;gt; với t&amp;ecirc;n Megalians.&lt;/p&gt;

&lt;p&gt;R&amp;otilde; r&amp;agrave;ng c&amp;ocirc; g&amp;aacute;i t&amp;oacute;c bạc l&amp;agrave; một Megalian điển h&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Xin lỗi!&amp;rdquo; Glen ch&amp;agrave;o c&amp;ocirc; g&amp;aacute;i t&amp;oacute;c v&amp;agrave;ng trước mặt v&amp;agrave; nhanh ch&amp;oacute;ng ngồi ch&amp;eacute;o với c&amp;ocirc; g&amp;aacute;i t&amp;oacute;c bạc.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; g&amp;aacute;i t&amp;oacute;c bạc cuối c&amp;ugrave;ng cũng được k&amp;eacute;o trở lại thực tại v&amp;agrave; nhận thấy Glen.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Yo-, yo-, thầy-&amp;hellip;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Em nhầm rồi. Em chỉ nhầm t&amp;ocirc;i với người kia!&amp;rdquo; Glen lẩm bẩm, bỏ qua c&amp;acirc;u n&amp;oacute;i của c&amp;ocirc; g&amp;aacute;i v&amp;agrave; bắt đầu đ&amp;aacute;nh ch&amp;eacute;n.&lt;/p&gt;

&lt;p&gt;Anh cắt phần g&amp;agrave; nướng rau thơm th&amp;agrave;nh từng l&amp;aacute;t mỏng v&amp;agrave; ăn k&amp;egrave;m với khoai tay r&amp;aacute;n, b&amp;aacute;nh m&amp;igrave; đen v&amp;agrave; salad ph&amp;ocirc; mai. Vị cay cay, lại c&amp;oacute; ch&amp;uacute;t đắng nhạt của mầm c&amp;acirc;y kết hợp với vị mềm b&amp;eacute;o của thịt g&amp;agrave; nướng khiến anh chỉ muốn ăn tất cả. M&amp;ugrave;i của c&amp;aacute;c loại thảo mộc v&amp;agrave; rau thơm l&amp;agrave;m nhột mũi thực sự k&amp;iacute;ch th&amp;iacute;ch vị gi&amp;aacute;c của thực kh&amp;aacute;ch.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Tuyệt vời! T&amp;ocirc;i c&amp;oacute; thể n&amp;oacute;i được điều g&amp;igrave; đ&amp;acirc;y? Đ&amp;acirc;y quả thực l&amp;agrave; đặc trưng của đế quốc&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;M&amp;uacute;c một th&amp;igrave;a đậu Kirua sốt c&amp;agrave; chua v&amp;agrave; ngậm v&amp;agrave;o miệng. Ớt v&amp;agrave; tỏi thực sự l&amp;agrave; sự kết hợp ho&amp;agrave;n hảo với sốt c&amp;agrave; chua. Mặc d&amp;ugrave; vừa bị đ&amp;aacute;nh đập c&amp;aacute;ch đ&amp;acirc;y &amp;iacute;t l&amp;acirc;u, Glen đ&amp;atilde; nhanh ch&amp;oacute;ng vui vẻ trở lại. Nh&amp;igrave;n g&amp;atilde; đ&amp;aacute;ng gh&amp;eacute;t đang thưởng thức đồ ăn một c&amp;aacute;ch ngon l&amp;agrave;nh trước mắt, miệng của Sistina đ&amp;oacute;ng mở như thể bị sốc.&lt;/p&gt;

&lt;p&gt;Những &amp;acirc;m thanh dao nĩa l&amp;aacute;ch c&amp;aacute;ch vang l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;Một ch&amp;uacute;t ngạc nhi&amp;ecirc;n, sau đ&amp;oacute; l&amp;agrave; sự im lặng k&amp;eacute;o d&amp;agrave;i.&lt;/p&gt;

&lt;p&gt;Một cảnh tượng kh&amp;oacute; xử.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Umm&amp;hellip;Thầy Glen ăn được thật đ&amp;oacute;. Thầy th&amp;iacute;ch ăn đ&amp;uacute;ng kh&amp;ocirc;ng ạ?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hở? Ờ, ăn uống l&amp;agrave; một trong số &amp;iacute;t th&amp;uacute; vui của t&amp;ocirc;i trong cuộc sống.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sự xuất hiện của Glen khiến Sistina trở n&amp;ecirc;n im lặng v&amp;agrave; lộ r&amp;otilde; vẻ kh&amp;ocirc;ng h&amp;agrave;i l&amp;ograve;ng của m&amp;igrave;nh, vậy n&amp;ecirc;n v&amp;igrave; một số l&amp;yacute; do n&amp;agrave;o đ&amp;oacute;, Lumia bắt đầu tiếp chuyện với anh.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng giống Sisitina, người trần sự th&amp;ugrave; địch của m&amp;igrave;nh một c&amp;aacute;ch c&amp;ocirc;ng khai, Lumia dường như kh&amp;ocirc;ng cho sự cố ban n&amp;atilde;y thực sự l&amp;agrave; xấu. Ph&amp;aacute;t biểu trong đ&amp;oacute;, c&amp;oacute; vẻ Lumia l&amp;agrave; người duy nhất kh&amp;ocirc;ng tham gia vụ đuổi đ&amp;aacute;nh tập thể kia.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;N&amp;agrave;y em biết kh&amp;ocirc;ng? Hiện tại l&amp;agrave; thời điểm c&amp;aacute;c loại đậu mới được chuyển đến trường. Đặc biệt l&amp;agrave; đậu Kirua với m&amp;ugrave;i cực tốt. Em n&amp;ecirc;n ăn n&amp;oacute; thử xem.&amp;rdquo; Glen kh&amp;ocirc;ng phải loại người chủ động n&amp;oacute;i, nhưng nếu c&amp;oacute; ai bắt chuyện, anh sẽ trả lời. V&amp;agrave; r&amp;otilde; r&amp;agrave;ng Lumia đ&amp;atilde; bắt đầu tốt với Glen.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Thật sao? Em muốn ăn thử m&amp;oacute;n đậu Kirua x&amp;agrave;o!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ch&amp;agrave; thầy khuy&amp;ecirc;n em n&amp;ecirc;n l&amp;agrave;m thế. Nếu th&amp;iacute;ch, em c&amp;oacute; muốn ăn thử một miếng kh&amp;ocirc;ng?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Eh, ổn chứ ạ? Liệu c&amp;oacute; phải l&amp;agrave; một nụ h&amp;ocirc;n gi&amp;aacute;n tiếp kh&amp;ocirc;ng thầy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Lumia nghi&amp;ecirc;ng đầu một c&amp;aacute;ch ranh m&amp;atilde;nh v&amp;agrave; đặt một ng&amp;oacute;n tay tr&amp;ecirc;n m&amp;ocirc;i c&amp;ocirc;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;HMP&amp;hellip;em c&amp;oacute; phải đứa trẻ nữa đ&amp;acirc;u!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Glen ngạc nhi&amp;ecirc;n nh&amp;uacute;n vai, v&amp;agrave; đưa c&amp;ocirc; đĩa đậu x&amp;agrave;o.&lt;/p&gt;

&lt;p&gt;Lumia vui vẻ m&amp;uacute;c một th&amp;igrave;a v&amp;agrave; ăn n&amp;oacute;.&lt;/p&gt;

&lt;p&gt;Vẻ th&amp;acirc;n thiện v&amp;agrave; dễ gần của Lumia l&amp;agrave;m mềm đi bầu kh&amp;ocirc;ng kh&amp;iacute;. V&amp;agrave; trước khi Glen nhận ra, đ&amp;ocirc;i m&amp;ocirc;i anh đ&amp;atilde; nở một nụ cười vui vẻ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;&amp;hellip;&amp;hellip;.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Tuy nhi&amp;ecirc;n, tr&amp;ecirc;n b&amp;agrave;n vẫn c&amp;oacute; một người kh&amp;ocirc;ng nhận ra sự thay đổi m&amp;agrave; tiếp tục ngột ngạt.&lt;/p&gt;

&lt;p&gt;Đ&amp;oacute; l&amp;agrave; Sistina.&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; kh&amp;ocirc;ng tham gia cuộc tr&amp;ograve; chuyện dễ chịu giữa Glen v&amp;agrave; Lumia m&amp;agrave; thay v&amp;agrave;o đ&amp;oacute; l&amp;agrave; tiếp tục gườm gườm Glen.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;Bằng c&amp;aacute;ch n&amp;agrave;y, em cũng thử một miếng chứ? Ăn &amp;iacute;t như vậy c&amp;oacute; đủ cho em kh&amp;ocirc;ng đấy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Cảm thấy kh&amp;oacute; nuốt khi bị soi m&amp;oacute;i khiến Glen buộc phải quay đầu n&amp;oacute;i chuyện với Sistina với một tiếng thở d&amp;agrave;i. Trước khi c&amp;ocirc; mở miệng đ&amp;aacute;p trả, sự kh&amp;oacute; chịu quay lại nhưng c&amp;ocirc; dẹp n&amp;oacute; đi để lấy lại sự b&amp;igrave;nh tĩnh của m&amp;igrave;nh v&amp;agrave; trả lời với một nhận x&amp;eacute;t khắc nghiệt.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Loại giảng vi&amp;ecirc;n n&amp;agrave;o đang ph&amp;agrave;n n&amp;agrave;n về bữa ăn của t&amp;ocirc;i vậy?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Sao cậu lại n&amp;oacute;i thế&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Glen nh&amp;igrave;n v&amp;agrave;o bữa trưa của hai c&amp;ocirc; g&amp;aacute;i.&lt;/p&gt;

&lt;p&gt;Khay của Lumia tương đối đầy đủ, với ch&amp;aacute;o l&amp;uacute;a m&amp;igrave;, bồ c&amp;acirc;u hầm cay v&amp;agrave; salad, trong khi đĩa ăn của Sisitina chỉ c&amp;oacute; hai l&amp;aacute;t b&amp;aacute;nh m&amp;igrave; mỏng k&amp;egrave;m mứt d&amp;acirc;u đỏ.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Em đang tuổi lớn đ&amp;uacute;ng kh&amp;ocirc;ng? Nếu ăn uống thiếu chất em sẽ kh&amp;ocirc;ng ph&amp;aacute;t triển được đ&amp;acirc;u.&amp;rdquo; Glen chủ động bỏ qua sự &amp;aacute;m chỉ của m&amp;igrave;nh.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng phải việc của thầy. T&amp;ocirc;i sẽ buồn ngủ nếu ăn trưa qu&amp;aacute; nhiều. Nghi&amp;ecirc;m t&amp;uacute;c đấy. C&amp;ograve;n thầy, từ &amp;ldquo;nghi&amp;ecirc;m t&amp;uacute;c&amp;rdquo; kh&amp;ocirc;ng c&amp;oacute; trong từ điển của thầy th&amp;igrave; phải!&amp;rdquo; Sisitina liếc nh&amp;igrave;n c&amp;aacute;i khay to&amp;agrave;n thức ăn của Glen.&lt;/p&gt;

&lt;p&gt;Sau c&amp;acirc;u n&amp;oacute;i khi&amp;ecirc;u kh&amp;iacute;ch ấy, kh&amp;ocirc;ng kh&amp;iacute; giữa Glen v&amp;agrave; Sisitina trở n&amp;ecirc;n căng thẳng rất nhiều.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;Thay v&amp;igrave; n&amp;oacute;i b&amp;oacute;ng gi&amp;oacute;.&amp;rdquo; Glen tiếp tục ăn. Anh đủ nhạy cảm để nhận thấy sự căng thẳng chạy qua biểu hiện của Sisitina. &amp;ldquo;Sao em kh&amp;ocirc;ng n&amp;oacute;i thẳng ra điều em muốn?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;&amp;hellip;T&amp;ocirc;i hiểu. T&amp;ocirc;i biết ch&amp;uacute;ng ta đ&amp;atilde; kh&amp;ocirc;ng c&amp;oacute; ấn tượng ban đầu tốt về nhau. V&amp;igrave; vậy t&amp;ocirc;i sẽ n&amp;oacute;i r&amp;otilde;, t&amp;ocirc;i&amp;hellip;&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sisitina cau c&amp;oacute; khi lựa từ, nhưng Glen đột ngột ngắt qu&amp;atilde;ng.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;T&amp;ocirc;i biết, t&amp;ocirc;i biết. T&amp;ocirc;i từ bỏ. Biểu hiện đi&amp;ecirc;n cuồng như vậy kh&amp;ocirc;ng th&amp;iacute;ch hợp với em ch&amp;uacute;t n&amp;agrave;o đ&amp;acirc;u!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Hả?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Glen giơ hai tay. &amp;ldquo;Ngay cả khi t&amp;ocirc;i kh&amp;ocirc;ng muốn em tự h&amp;agrave;nh hạ bản th&amp;acirc;n m&amp;igrave;nh&amp;hellip;T&amp;ocirc;i thừa nh&amp;acirc;n!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sisitina chết lặng nh&amp;igrave;n Glen m&amp;uacute;c một th&amp;igrave;a đậu Kirua v&amp;agrave; đặt n&amp;oacute; v&amp;agrave;o đĩa ăn của c&amp;ocirc;.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Th&amp;ocirc;i n&amp;agrave;o, t&amp;ocirc;i biết em muốn ăn n&amp;oacute; phải kh&amp;ocirc;ng? Em muốn n&amp;oacute;i t&amp;ocirc;i ăn qu&amp;aacute; nhiều v&amp;agrave; n&amp;ecirc;n biết chia sẻ, đ&amp;uacute;ng chứ?...Chẹp, m&amp;igrave;nh tham ăn thật!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Sisitina nh&amp;igrave;n Glen tiếp tục bữa ăn trong niềm đam m&amp;ecirc; kinh dị.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Đ&amp;oacute;, đ&amp;oacute;&amp;hellip;kh&amp;ocirc;ng phải! T&amp;ocirc;i kh&amp;ocirc;ng c&amp;oacute; &amp;yacute; đ&amp;oacute;!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Glen đ&amp;atilde; c&amp;oacute; một sự hiểu lầm khủng khiếp.&lt;/p&gt;

&lt;p&gt;Sistina run rẩy khi cảm thấy bị sỉ nhục v&amp;agrave; đập mạnh b&amp;agrave;n đứng l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;Tuy nhi&amp;ecirc;n, Glen ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc;ng quan t&amp;acirc;m.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;oacute; lẽ ch&amp;uacute;ng ta n&amp;ecirc;n trao đổi đồ ăn, t&amp;ocirc;i sẽ lấy c&amp;aacute;i n&amp;agrave;y.&amp;rdquo; Anh xọc chiếc nĩa v&amp;agrave;o l&amp;aacute;t b&amp;aacute;nh m&amp;igrave; trong đĩa Sistina v&amp;agrave; nhấc l&amp;ecirc;n.&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Chẹp, thỉnh thoảng ăn b&amp;aacute;nh m&amp;igrave; nướng cũng ngon phết!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Ahhh?! Thầy lấy do m&amp;agrave; kh&amp;ocirc;ng c&amp;oacute; sự cho ph&amp;eacute;p của t&amp;ocirc;i.!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Kh&amp;ocirc;ng, kh&amp;ocirc;ng, đ&amp;acirc;y l&amp;agrave; trao đổi c&amp;ocirc;ng bằng.&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;C&amp;ocirc;ng bằng đ&amp;acirc;u ra?! Ở đ&amp;acirc;u?! R&amp;otilde; r&amp;agrave;ng t&amp;ocirc;i chưa cho ph&amp;eacute;p! Quay lại bệnh x&amp;aacute; đi&amp;nbsp;!!!!!&amp;rdquo;&lt;/p&gt;

&lt;p&gt;&amp;ldquo;Aaargh!! N&amp;agrave;y, nguy hiểm! Em kh&amp;ocirc;ng thể y&amp;ecirc;n tĩnh trong giờ ăn được hả?&amp;rdquo;&lt;/p&gt;

&lt;p&gt;Glen v&amp;agrave; Sisitina bắt đầu một cuộc chiến bằng dao v&amp;agrave; nĩa của họ.&lt;/p&gt;

&lt;p&gt;Những người xung quanh nh&amp;igrave;n họ với vẻ kinh ho&amp;agrave;ng.&lt;/p&gt;

&lt;p&gt;Lumia kh&amp;ocirc;ng l&amp;agrave;m bất k&amp;igrave; điều g&amp;igrave; kh&amp;aacute;c ngo&amp;agrave;i việc ngồi nh&amp;igrave;n với một nụ cười cay đắng tr&amp;ecirc;n m&amp;ocirc;i.&lt;/p&gt;
', 1, CAST(0x0000ADE401748EAA AS DateTime), CAST(0x0000ADE401748EAA AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2100, 2096, 1039, N'Chương 1: Tử nạn và phục sinh ', N'&lt;p&gt;&amp;quot;Vậy n&amp;ecirc;n giờ th&amp;igrave;... cậu đ&amp;atilde; chết. Ta rất lấy l&amp;agrave;m tiếc...&amp;quot;&lt;br /&gt;
&amp;quot;Phải rồi...&amp;quot;&lt;br /&gt;
&amp;Ocirc;ng gi&amp;agrave; ph&amp;iacute;a trước c&amp;uacute;i m&amp;igrave;nh thấp nhất c&amp;oacute; thể, những cụm m&amp;acirc;y tỏa s&amp;aacute;ng ph&amp;iacute;a sau &amp;ocirc;ng ta cũng bắt đầu gi&amp;atilde;n đều ra b&amp;ecirc;n cạnh, tỏa ra mọi ph&amp;iacute;a như một tấm thảm trải d&amp;agrave;i bất tận.&lt;br /&gt;
C&amp;ograve;n t&amp;ocirc;i th&amp;igrave; đang đang ngồi tr&amp;ecirc;n một tấm chiếu của một căn ph&amp;ograve;ng đơn giản với diện t&amp;iacute;ch của khoảng 4, 5 tấm chiếu tatami gom lại.&lt;br /&gt;
Tuy n&amp;oacute;i đ&amp;acirc;y l&amp;agrave; một căn ph&amp;ograve;ng nhưng ng&amp;oacute; xung quanh cũng chẳng thấy bất cứ thứ n&amp;agrave;o giống như một bức tường hay trần nh&amp;agrave; cả, đ&amp;atilde; vậy b&amp;ecirc;n trong c&amp;ograve;n c&amp;oacute; kh&amp;oacute;i m&amp;acirc;y mịt m&amp;ugrave; tr&amp;ocirc;i lềnh bềnh nữa chứ.&lt;br /&gt;
Thứ duy nhất l&amp;agrave;m cho chỗ n&amp;agrave;y giống như một &amp;quot;căn ph&amp;ograve;ng&amp;quot; l&amp;agrave; chiếc b&amp;agrave;n tr&amp;ograve;n nằm cho&amp;aacute;ng ngay giữa ph&amp;ograve;ng với một c&amp;aacute;i tủ đựng tr&amp;agrave;, một c&amp;aacute;i ti-vi đời cũ v&amp;agrave; một c&amp;aacute;i điện thoại quay số m&amp;agrave;u đen.&lt;br /&gt;
Trong căn ph&amp;ograve;ng n&amp;agrave;y ngo&amp;agrave;i t&amp;ocirc;i ra cũng c&amp;ograve;n một con người nữa... hay kh&amp;ocirc;ng phải l&amp;agrave; người nhỉ? M&amp;agrave; n&amp;oacute;i g&amp;igrave; th&amp;igrave; n&amp;oacute;i, trước mắt t&amp;ocirc;i b&amp;acirc;y giờ đang l&amp;agrave; Thượng đế... hay &amp;iacute;t nhất l&amp;agrave; &amp;ocirc;ng ta n&amp;oacute;i m&amp;igrave;nh như thế.&lt;br /&gt;
Ngo&amp;agrave;i ra &amp;ocirc;ng ta cũng &amp;quot;rất thương tiếc b&amp;aacute;o tin&amp;quot;: T&amp;ocirc;i đ&amp;atilde; bị chết oan bởi một sai lầm ngớ ngẩn n&amp;agrave;o đ&amp;oacute;, d&amp;ugrave; t&amp;ocirc;i chẳng c&amp;oacute; cảm gi&amp;aacute;c g&amp;igrave; l&amp;agrave; m&amp;igrave;nh đ&amp;atilde; chết cả.&lt;br /&gt;
Nếu như t&amp;ocirc;i nhớ kh&amp;ocirc;ng lầm th&amp;igrave; l&amp;uacute;c đ&amp;oacute; l&amp;agrave; t&amp;ocirc;i đang tr&amp;ecirc;n đường từ trường về nh&amp;agrave; nhưng đột ngột trời lại bắt đầu trở mưa. T&amp;ocirc;i vừa định đi đường tắt v&amp;agrave;o c&amp;ocirc;ng vi&amp;ecirc;n b&amp;ecirc;n cạnh th&amp;igrave;... Ầmmm!!!... V&amp;agrave; thứ duy nhất m&amp;agrave; t&amp;ocirc;i nhớ l&amp;agrave; những gi&amp;aacute;c quan của m&amp;igrave;nh đ&amp;atilde; nổ tung sau khi mắt nh&amp;igrave;n thấy một tia chớp s&amp;aacute;ng ch&amp;oacute;i v&amp;agrave; tai nghe thấy một tiếng sấm nổ kinh thi&amp;ecirc;n động địa.&lt;br /&gt;
&amp;quot;Đ&amp;aacute;ng lẽ ta n&amp;ecirc;n kiểm tra xem c&amp;oacute; người ở đ&amp;oacute; kh&amp;ocirc;ng trước khi thả sấm s&amp;eacute;t xuống dưới... Ta th&amp;agrave;nh thật xin lỗi. Cũng c&amp;oacute; một bộ phận nhỏ con người chết bởi s&amp;eacute;t đ&amp;aacute;nh nhưng m&amp;agrave; lần n&amp;agrave;y th&amp;igrave;... lại ho&amp;agrave;n to&amp;agrave;n l&amp;agrave; do lỗi của ta m&amp;agrave; tạo ra c&amp;aacute;i tai nạn kh&amp;ocirc;ng mong muốn n&amp;agrave;y.&amp;quot;&lt;/p&gt;

&lt;p&gt;&amp;quot;Vậy ch&amp;iacute;nh x&amp;aacute;c l&amp;agrave; t&amp;ocirc;i ngỏm l&amp;agrave; do bị trời đ&amp;aacute;nh sao... Theo lời &amp;ocirc;ng th&amp;igrave; chắc l&amp;agrave; vậy rồi. Vậy... chỗ n&amp;agrave;y l&amp;agrave; Thi&amp;ecirc;n đường sao?&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Kh&amp;ocirc;ng, chỗ n&amp;agrave;y thậm ch&amp;iacute; c&amp;ograve;n xa x&amp;ocirc;i hơn cả Thi&amp;ecirc;n đường cơ, đ&amp;acirc;y l&amp;agrave; nơi m&amp;agrave; Thượng đế hiện diện... hay c&amp;oacute; thể gọi đ&amp;acirc;y l&amp;agrave; nh&amp;agrave; của Thượng đế l&amp;agrave; ta đ&amp;acirc;y. Con người lẽ ra kh&amp;ocirc;ng thể đến được đ&amp;acirc;y đ&amp;acirc;u, chỉ c&amp;oacute; cậu l&amp;agrave; ngoại lệ đặc biệt khi được ch&amp;iacute;nh ta triệu hồi đến đ&amp;acirc;y... M&amp;agrave; cậu t&amp;ecirc;n g&amp;igrave; nhỉ? Ermm... Mo...Mochizuki nhỉ?&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Touya. Mochizuki Touya.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;&amp;Agrave; phải rồi, Mochizuki Touya-kun.&amp;quot;&lt;br /&gt;
Vừa n&amp;oacute;i &amp;ocirc;ng ta vừa đổ nước n&amp;oacute;ng v&amp;agrave;o trong c&amp;aacute;i ấm v&amp;agrave; r&amp;oacute;t ch&amp;uacute;ng v&amp;agrave;o hai t&amp;aacute;ch tr&amp;agrave;.&lt;br /&gt;
&amp;quot;Với c&amp;aacute;i ho&amp;agrave;n cảnh &amp;eacute;o le như vậy, sao cậu lại c&amp;oacute; thể b&amp;igrave;nh thản thế? Ta đ&amp;atilde; những tưởng rằng cậu sẽ rối bời hay hốt hoảng hơn cơ.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Chắc c&amp;oacute; lẽ... t&amp;ocirc;i kh&amp;ocirc;ng thể &amp;yacute; thức được g&amp;igrave; về c&amp;aacute;i thực tại n&amp;agrave;y. T&amp;ocirc;i c&amp;oacute; cứ c&amp;oacute; cảm gi&amp;aacute;c rằng m&amp;igrave;nh đang ch&amp;igrave;m trong một giấc mơ cơ, ngo&amp;agrave;i ra cũng chẳng g&amp;igrave; c&amp;oacute; thể chứng minh được c&amp;aacute;i cuộc n&amp;oacute;i chuyện n&amp;agrave;y v&amp;agrave; c&amp;aacute;i chết kia của t&amp;ocirc;i l&amp;agrave; kh&amp;ocirc;ng phải l&amp;agrave; do bộ n&amp;atilde;o n&amp;agrave;y của t&amp;ocirc;i hư cấu n&amp;ecirc;n cả.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Vậy n&amp;ecirc;n cậu mới c&amp;oacute; một c&amp;aacute;i nh&amp;igrave;n b&amp;igrave;nh thản như thế... &amp;agrave;, hmm.&amp;quot;&lt;br /&gt;
Đến t&amp;ocirc;i t&amp;ocirc;i cũng kh&amp;ocirc;ng nghĩ rằng m&amp;igrave;nh sẽ chết trẻ như thế ở c&amp;aacute;i tuổi 15 n&amp;agrave;y... Sụp, t&amp;ocirc;i nhấp thử một ngụm tr&amp;agrave;... ngon đến kh&amp;ocirc;ng ngờ.&lt;br /&gt;
&amp;quot;Vậy giờ t&amp;iacute;nh sao đ&amp;acirc;y, Thi&amp;ecirc;n Đ&amp;agrave;ng hay Địa Ngục, t&amp;ocirc;i sẽ bị đ&amp;agrave;y tới chỗ n&amp;agrave;o đ&amp;acirc;y?&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;&amp;Agrave; kh&amp;ocirc;ng, cậu chết l&amp;agrave; v&amp;igrave; bất cẩn của ta, vậy n&amp;ecirc;n ta c&amp;oacute; thể hồi sinh cậu lại ngay tắp lự.&amp;quot;&lt;br /&gt;
Tuy n&amp;oacute;i thế những trong giọng n&amp;oacute;i của &amp;ocirc;ng ta c&amp;oacute; pha ch&amp;uacute;t... lưỡng lự. C&amp;aacute;i qu&amp;aacute;i g&amp;igrave; thế n&amp;agrave;y? Đ&amp;atilde; chết rồi m&amp;agrave; vẫn c&amp;ograve;n gặp rắc rối sao?&lt;br /&gt;
&amp;quot;Kh&amp;ocirc;ng c&amp;oacute; c&amp;aacute;ch n&amp;agrave;o để ta c&amp;oacute; thể hồi sinh cậu trong thế giới trước m&amp;agrave; cậu sinh ra. Ta rất tiếc những đ&amp;acirc;y đ&amp;atilde; th&amp;agrave;nh luật rồi. Th&amp;agrave;nh thật xin lỗi cậu khi để cậu rơi v&amp;agrave;o c&amp;aacute;i t&amp;igrave;nh thế n&amp;agrave;y. Vậy n&amp;ecirc;n- &amp;quot;&lt;br /&gt;
&amp;quot;V&amp;acirc;ng- &amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;-Cậu sẽ được phục sinh tại một thế giới kh&amp;aacute;c, hay n&amp;oacute;i c&amp;aacute;ch kh&amp;aacute;c l&amp;agrave; như một cuộc sống thứ hai. Về phần cậu th&amp;igrave; ta hiểu, ta hiểu cậu sẽ kh&amp;ocirc;ng thể đồng &amp;yacute; nhưn- &amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Được m&amp;agrave;.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;........&amp;#39;Được m&amp;agrave;&amp;#39; &amp;aacute;?&amp;quot;&lt;br /&gt;
Bị c&amp;acirc;u trả lời ngay lập tức của t&amp;ocirc;i l&amp;agrave;m gi&amp;aacute;n đoạn c&amp;aacute;i mẩu độc thoại ngắn ngủi của m&amp;igrave;nh, &amp;ocirc;ng ta quay sang nh&amp;igrave;n t&amp;ocirc;i với một vẻ mặt lơ đễnh k&amp;igrave; lạ.&lt;br /&gt;
&amp;quot;T&amp;ocirc;i hiểu vị thế của &amp;ocirc;ng v&amp;agrave; kh&amp;ocirc;ng &amp;yacute; định bắt &amp;eacute;p đền b&amp;ugrave; hay g&amp;igrave; cả. T&amp;ocirc;i h&amp;agrave;i l&amp;ograve;ng khi được t&amp;aacute;i sinh, như thế l&amp;agrave; đủ rồi.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;T-Thật sao? Một con người tuyệt với một nh&amp;acirc;n c&amp;aacute;ch đ&amp;aacute;ng qu&amp;yacute; như thế n&amp;agrave;y m&amp;agrave; lại phải sống trong c&amp;aacute;i thế giới đ&amp;oacute;... thật đ&amp;aacute;ng tiếc.&amp;quot;&lt;br /&gt;
Nh&amp;igrave;n &amp;ocirc;ng Thượng Đế c&amp;oacute; đ&amp;ocirc;i ch&amp;uacute;t ch&amp;aacute;n nản, c&amp;ograve;n t&amp;ocirc;i th&amp;igrave; lại c&amp;oacute; phần hơi lung t&amp;uacute;ng khi bị n&amp;oacute;i như vậy, nghe cứ như t&amp;ocirc;i l&amp;agrave; một thằng cụ non ấy.&lt;br /&gt;
Nhưng d&amp;ugrave; sao th&amp;igrave; t&amp;ocirc;i cũng chẳng thấy phiền lắm v&amp;igrave; mấy thứ đ&amp;oacute;.&lt;/p&gt;

&lt;p&gt;&amp;quot;&amp;Iacute;t ra h&amp;atilde;y để ta l&amp;agrave;m c&amp;aacute;i g&amp;igrave; đ&amp;oacute; để chuộc lỗi. Chắc chắn ta sẽ gi&amp;uacute;p được cậu nếu như điều đ&amp;oacute; kh&amp;ocirc;ng qu&amp;aacute; đ&amp;aacute;ng.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Ờ th&amp;igrave;, nếu như Ng&amp;agrave;i đ&amp;atilde; n&amp;oacute;i thế...&amp;quot;&amp;nbsp;&lt;br /&gt;
Thứ đầu ti&amp;ecirc;n t&amp;ocirc;i muốn l&amp;agrave; được t&amp;aacute;i sinh về thế giới cũ, nhưng điều đ&amp;oacute; vốn dĩ l&amp;agrave; kh&amp;ocirc;ng thể n&amp;agrave;o. Đ&amp;atilde; vậy th&amp;igrave;... c&amp;oacute; lẽ sẽ tốt hơn nếu như mang theo thứ g&amp;igrave; đ&amp;oacute; hữu dụng...&amp;nbsp;&lt;br /&gt;
&amp;quot;Sau c&amp;ugrave;ng th&amp;igrave;, c&amp;aacute;i thế giới m&amp;agrave; t&amp;ocirc;i sắp đến rốt cuộc l&amp;agrave; nơi như thế n&amp;agrave;o?&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;C&amp;oacute; v&amp;agrave;i n&amp;eacute;t kh&amp;aacute; tương đồng với thế giới trước kia của cậu nhưng lại kh&amp;ocirc;ng ph&amp;aacute;t triển bằng. Nếu như phải n&amp;oacute;i th&amp;igrave; c&amp;aacute;i chốn đ&amp;oacute; vốn thường được người của thế giới của cậu gọi với c&amp;aacute;i t&amp;ecirc;n l&amp;agrave; &amp;quot;thời Trung cổ&amp;quot; g&amp;igrave; đ&amp;oacute; ấy, d&amp;ugrave; cũng kh&amp;ocirc;ng hẳn l&amp;agrave; c&amp;oacute; c&amp;ugrave;ng tr&amp;igrave;nh độ.&amp;quot;&amp;nbsp;&lt;br /&gt;
Hmm, c&amp;oacute; vẻ như mức sống đ&amp;atilde; giảm đi đ&amp;aacute;ng kể rồi.&amp;nbsp;&lt;br /&gt;
Giờ th&amp;igrave; t&amp;ocirc;i lại lo lắng rằng m&amp;igrave;nh c&amp;oacute; thể xoay sở được trong c&amp;aacute;i thế giới như thế kh&amp;ocirc;ng. Sẽ ổn kh&amp;ocirc;ng nếu như bay đến đ&amp;oacute; m&amp;agrave; chẳng c&amp;oacute; bất k&amp;igrave; kiến thức n&amp;agrave;o? V&amp;agrave; ... Hể...?&amp;nbsp;&lt;br /&gt;
&amp;quot;Umm, t&amp;ocirc;i c&amp;oacute; một điều ước.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;H&amp;ocirc;, n&amp;oacute; l&amp;agrave; c&amp;aacute;i g&amp;igrave; n&amp;agrave;o? Ta c&amp;oacute; thể ban cho cậu mọi thứ cậu muốn.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;C&amp;aacute;i thứ n&amp;agrave;y đ&amp;acirc;y, Ng&amp;agrave;i c&amp;oacute; thể l&amp;agrave;m cho n&amp;oacute; c&amp;oacute; thể hoạt động trong c&amp;aacute;i thế giới đ&amp;oacute; chứ?&amp;quot;&amp;nbsp;&lt;br /&gt;
Vừa n&amp;oacute;i t&amp;ocirc;i r&amp;uacute;t n&amp;oacute; từ trong t&amp;uacute;i ra. &amp;quot;N&amp;oacute;&amp;quot; l&amp;agrave; một c&amp;aacute;i điện thoại di động đa chức năng c&amp;oacute; vẻ ngo&amp;agrave;i nh&amp;igrave;n giống như một tấm kim loại nhỏ m&amp;agrave; người ta hay gọi l&amp;agrave; smart phone.&amp;nbsp;&lt;br /&gt;
&amp;quot;C&amp;aacute;i n&amp;agrave;y sao? ...Được th&amp;ocirc;i. Tuy rằng n&amp;oacute; sẽ bị giới hạn đ&amp;ocirc;i ch&amp;uacute;t nhưng c&amp;oacute; lẽ sẽ vẫn c&amp;oacute; &amp;iacute;ch...&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;V&amp;iacute; dụ?&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Phần lớn cậu kh&amp;ocirc;ng thể sử dụng được những chức năng li&amp;ecirc;n lạc giữa điện thoại với nhau, đăng tin tức l&amp;ecirc;n trang web hay v&amp;agrave;i thứ như thế, ngo&amp;agrave;i ra chẳng c&amp;oacute; vấn đề g&amp;igrave; khi cậu chỉ đọc cả. &amp;Agrave; phải rồi, ta sẽ l&amp;agrave;m cho c&amp;aacute;i điện thoại n&amp;agrave;y &amp;iacute;t nhất c&amp;oacute; thể gọi được cho ta.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Như thế đủ rồi.&amp;quot;&amp;nbsp;&lt;br /&gt;
Nếu như t&amp;ocirc;i c&amp;oacute; thể giữ lại được những kiến thức trong thế giới trước, chắc chắn n&amp;oacute; sẽ trở th&amp;agrave;nh một m&amp;oacute;n vũ kh&amp;iacute; lợi hại. Kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; để nghi ngờ cả, đ&amp;acirc;y quả l&amp;agrave; thứ cực kỳ hữu dụng cho d&amp;ugrave; sau n&amp;agrave;y c&amp;oacute; gặp phải thứ g&amp;igrave; đi chăng nữa.&amp;nbsp;&lt;br /&gt;
&amp;quot;Cậu c&amp;oacute; thể sạc pin cho c&amp;aacute;i n&amp;agrave;y với Ma lực c&amp;oacute; trong người hay v&amp;agrave;i thứ tương tự như thế. Vậy n&amp;ecirc;n cậu khỏi cần lo lắng về việc pin cạn đ&amp;acirc;u.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;M-Ma lực? &amp;Yacute; Ng&amp;agrave;i l&amp;agrave; Ma thuật &amp;aacute;? C&amp;oacute; những thứ như thế tồn tại trong thế giới đ&amp;oacute; sao?&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Phải. V&amp;agrave; cậu biết đấy, cậu cũng c&amp;oacute; thể sử dụng được ch&amp;uacute;ng ngay l&amp;uacute;c n&amp;agrave;y đ&amp;acirc;y.&amp;quot;&amp;nbsp;&lt;br /&gt;
T&amp;ocirc;i c&amp;oacute; thể sử dụng Ph&amp;eacute;p thuật... nghe c&amp;oacute; vẻ th&amp;uacute; vị đấy.&amp;nbsp;&lt;br /&gt;
Đến một thế giới mới c&amp;oacute; lẽ kh&amp;ocirc;ng phải l&amp;agrave; một quyết định sai lầm. Đ&amp;atilde; thế m&amp;igrave;nh sẽ tận hưởng n&amp;oacute; vậy.&amp;nbsp;&lt;br /&gt;
&amp;quot;Giờ th&amp;igrave;, kh&amp;ocirc;ng c&amp;ograve;n l&amp;acirc;u nữa trước khi cậu hồi sinh đ&amp;acirc;u.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;C&amp;aacute;m ơn Ng&amp;agrave;i về mọi thứ.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;L&amp;agrave;m g&amp;igrave; c&amp;oacute; chứ, ngay từ đầu người đ&amp;aacute;ng tr&amp;aacute;ch mới phải l&amp;agrave; ta. V&amp;agrave; lần cuối c&amp;ugrave;ng... ta th&amp;agrave;nh thật xin lỗi cậu.&amp;quot;&amp;nbsp;&lt;br /&gt;
Trong một khoảnh khắc vị Thượng Đế nhẹ nh&amp;agrave;ng giơ c&amp;aacute;nh tay l&amp;ecirc;n, những luồng &amp;aacute;nh s&amp;aacute;ng ấm &amp;aacute;p bắt đầu bao bọc xung quanh cơ thể t&amp;ocirc;i.&amp;nbsp;&lt;br /&gt;
&amp;quot;Thật sự l&amp;agrave; kh&amp;aacute; v&amp;ocirc; nghĩa khi cậu hồi sinh rồi lại chết lần nữa n&amp;ecirc;n ta sẽ tăng cho cậu một v&amp;agrave;i chỉ số, sức mạnh vật l&amp;yacute; v&amp;agrave; v&amp;agrave;i thứ kh&amp;aacute;c. Với những thứ n&amp;agrave;y th&amp;igrave; cậu sẽ sống kh&amp;aacute; dai đấy,trừ phi c&amp;oacute; &amp;ocirc;ng thần n&amp;agrave;o đ&amp;oacute; ngu ngốc giống ta lại thả sấm tr&amp;uacute;ng cậu lần nữa th&amp;igrave; chịu th&amp;ocirc;i, qu&amp;aacute; mức giới hạn rồi.&amp;quot;&amp;nbsp;&lt;br /&gt;
Vừa n&amp;oacute;i &amp;ocirc;ng ta vừa cười một m&amp;igrave;nh, theo bản năng th&amp;igrave; t&amp;ocirc;i cũng mỉm cười theo...&amp;nbsp;&lt;br /&gt;
&amp;quot;Một khi m&amp;agrave; ta đ&amp;atilde; gửi cậu đi th&amp;igrave; ta sẽ kh&amp;ocirc;ng thể n&amp;agrave;o can thiệp v&amp;agrave;o chuyện của cậu được nữa, điều đ&amp;oacute; đ&amp;atilde; c&amp;oacute; trong luật rồi. Điều cuối c&amp;ugrave;ng m&amp;agrave; ta n&amp;oacute;i cho cậu đấy.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;C&amp;aacute;m ơn Ng&amp;agrave;i.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;D&amp;ugrave; cho kh&amp;ocirc;ng thể trực tiếp nh&amp;uacute;ng tay v&amp;agrave;o nhưng &amp;iacute;t nhất ta c&amp;oacute; thể đưa ra lời khuy&amp;ecirc;n. Gọi cho ta nếu gặp phải bất trắc n&amp;agrave;o nh&amp;eacute;.&amp;quot;&amp;nbsp;&lt;br /&gt;
Vừa n&amp;oacute;i &amp;ocirc;ng vừa chỉ v&amp;agrave;o chiếc điện thoại tr&amp;ecirc;n tay t&amp;ocirc;i.&amp;nbsp;&lt;br /&gt;
T&amp;ocirc;i biết rằng sẽ chẳng thể n&amp;agrave;o gọi điện cho một người l&amp;agrave; Thượng Đế một c&amp;aacute;ch dễ d&amp;agrave;ng được n&amp;ecirc;n t&amp;ocirc;i đ&amp;atilde; quyết định rằng sẽ chỉ gọi khi thực sự đang gặp rắc rối.&amp;nbsp;&lt;br /&gt;
&amp;quot;Vậy nh&amp;eacute;, hẹn ng&amp;agrave;y t&amp;aacute;i ngộ.&amp;quot;&amp;nbsp;&lt;br /&gt;
Vị Thượng Đế mỉm cười v&amp;agrave; t&amp;acirc;m tr&amp;iacute; t&amp;ocirc;i bắt đầu ch&amp;igrave;m dần v&amp;agrave;o b&amp;oacute;ng tối...&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;
', 1, CAST(0x0000ADE401760392 AS DateTime), CAST(0x0000ADE401760392 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2101, 2096, 1039, N'Chương 2: Thức tỉnh và một chân trời mới ', N'&lt;p&gt;Khi t&amp;ocirc;i bừng tỉnh giấc, thứ đầu ti&amp;ecirc;n m&amp;agrave; t&amp;ocirc;i thấy l&amp;agrave; bầu trời.&lt;br /&gt;
Bầu trời trong xanh c&amp;ugrave;ng với những đ&amp;aacute;m m&amp;acirc;y tr&amp;ocirc;i chạp, v&amp;agrave; đ&amp;acirc;u đ&amp;oacute; l&amp;agrave; những tiếng h&amp;oacute;t l&amp;iacute;u lo của v&amp;agrave;i ch&amp;uacute; chim trong bay quanh đ&amp;acirc;y.&lt;br /&gt;
T&amp;ocirc;i vận m&amp;igrave;nh đứng dậy, người kh&amp;ocirc;ng một ch&amp;uacute;t đau đớn.&lt;br /&gt;
Nh&amp;igrave;n xung quanh l&amp;agrave; một h&amp;agrave;ng d&amp;agrave;i c&amp;aacute;c ngọn n&amp;uacute;i v&amp;agrave; đồng cỏ xanh mướt trải d&amp;agrave;i ng&amp;uacute;t ng&amp;aacute;t. C&amp;oacute; vẻ như t&amp;ocirc;i đang ở một v&amp;ugrave;ng qu&amp;ecirc; n&amp;agrave;o đ&amp;oacute;.&lt;br /&gt;
Vậy ra đ&amp;acirc;y l&amp;agrave;... thế giới kh&amp;aacute;c sao?&lt;/p&gt;

&lt;p&gt;(Trans Eng: Hayate, ch&amp;uacute; đấy &amp;agrave;? L&amp;agrave;m g&amp;igrave; ở đ&amp;acirc;y thế? Lại c&amp;atilde;i nhau với Nagi &amp;agrave;?)&lt;br /&gt;
(Trans Viet: &amp;Ocirc;ng n&amp;agrave;y l&amp;agrave; ai thế :v)&lt;br /&gt;
(Edit: H&amp;igrave;nh như thấy &amp;ocirc;ng n&amp;agrave;y đ&amp;acirc;u đ&amp;oacute; rồi :v)&lt;br /&gt;
Ở ph&amp;iacute;a đằng xa, t&amp;ocirc;i thấy c&amp;oacute; một gốc c&amp;acirc;y đại thụ, chắc hẳn phải c&amp;oacute; một con đường ở gần đ&amp;oacute;.&lt;br /&gt;
&amp;quot;C&amp;oacute; khi n&amp;agrave;o m&amp;igrave;nh sẽ gặp được ai đ&amp;oacute; ở đấy kh&amp;ocirc;ng nhỉ?&amp;quot;&lt;br /&gt;
Vừa nghĩ t&amp;ocirc;i vừa chạy về ph&amp;iacute;a c&amp;aacute;i c&amp;acirc;y. Kh&amp;ocirc;ng qu&amp;aacute; l&amp;acirc;u sau t&amp;ocirc;i đ&amp;atilde; thấy cạnh n&amp;oacute; c&amp;oacute; một con đường... chắc chắn l&amp;agrave; thế...&lt;br /&gt;
&amp;quot;Hmm, n&amp;ecirc;n đi về ph&amp;iacute;a n&amp;agrave;o đ&amp;acirc;y....&amp;quot;&lt;br /&gt;
T&amp;ocirc;i gặp ch&amp;uacute;t vấn đề khi phải quyết định xem n&amp;ecirc;n rẽ phải hay rẽ tr&amp;aacute;i tại c&amp;aacute;i gốc c&amp;acirc;y ấy. Hm, nếu rẽ phải th&amp;igrave; t&amp;ocirc;i mất một tiếng đồng hồ để đến thị trấn gần nhất, nếu đi hướng ngược lại th&amp;igrave; sẽ tốn đến t&amp;aacute;m tiếng cơ. Nếu đ&amp;oacute; l&amp;agrave; sự thật, t&amp;ocirc;i sẽ c&amp;oacute; v&amp;agrave;i điều để lo đ&amp;acirc;y.&lt;br /&gt;
Trong khi đang ch&amp;igrave;m trong d&amp;ograve;ng suy nghĩ, chiếc smartphone trong t&amp;uacute;i bất ngờ đổ chu&amp;ocirc;ng.&lt;br /&gt;
M&amp;oacute;c c&amp;aacute;i điện thoại ra khỏi t&amp;uacute;i, d&amp;ograve;ng chữ &amp;quot;Thượng đế đang chờ m&amp;aacute;y&amp;quot; đập v&amp;agrave;o mắt t&amp;ocirc;i.&lt;br /&gt;
&amp;quot;Alo?&amp;quot;&lt;br /&gt;
『&amp;Ocirc;, kết nối được rồi, c&amp;oacute; vẻ cậu đ&amp;atilde; đến nơi an to&amp;agrave;n rồi nhỉ.』&lt;br /&gt;
Giọng của Ng&amp;agrave;i Thượng Đế vang ra từ c&amp;aacute;i loa điện thoại. Cho d&amp;ugrave; mới chỉ vừa mới chia tay nhưng t&amp;ocirc;i đ&amp;atilde; cảm thấy nhơ nhớ &amp;ocirc;ng ta rồi.&lt;br /&gt;
『Ta qu&amp;ecirc;n kh&amp;ocirc;ng n&amp;oacute;i cho cậu hay rằng bản đồ v&amp;agrave; phương hướng trong thế giới n&amp;agrave;y đều đ&amp;atilde; được cập nhật trong điện thoại rồi đấy. Cứ việc d&amp;ugrave;ng n&amp;oacute; đi nh&amp;eacute;』&lt;br /&gt;
&amp;quot;Thế &amp;agrave;, tốt qu&amp;aacute;. T&amp;ocirc;i đang bị lạc đ&amp;acirc;y.&amp;quot;&lt;br /&gt;
『Ta đ&amp;atilde; định thả cậu v&amp;agrave;o giữa một thị trấn n&amp;agrave;o đ&amp;oacute;. Nhưng n&amp;oacute; sẽ kh&amp;aacute; l&amp;agrave; lộn xộn v&amp;agrave; rắc rối khi l&amp;agrave;m vậy. Thế n&amp;ecirc;n ta mới phải cho cậu ở c&amp;aacute;i chốn khỉ ho c&amp;ograve; g&amp;aacute;y n&amp;agrave;y, n&amp;oacute;i lu&amp;ocirc;n l&amp;agrave; mấy chỗ như thế n&amp;agrave;y hơi kh&amp;oacute; t&amp;igrave;m đấy.』&lt;br /&gt;
&amp;quot;Hmm, T&amp;ocirc;i cũng đo&amp;aacute;n vậy.&amp;quot;&lt;br /&gt;
T&amp;ocirc;i cười nhăn nh&amp;oacute; trả lời.&lt;br /&gt;
Giờ th&amp;igrave; t&amp;ocirc;i chẳng biết m&amp;igrave;nh phải đi đ&amp;acirc;u cả, ngay cả một người quen t&amp;ocirc;i c&amp;ograve;n kh&amp;ocirc;ng c&amp;oacute; ở đ&amp;acirc;y,...&lt;br /&gt;
『Cậu sẽ chẳng gặp phải vấn đề n&amp;agrave;o nếu coi qua c&amp;aacute;i bản đồ đ&amp;acirc;u. Vậy th&amp;ocirc;i nh&amp;eacute;, cố l&amp;ecirc;n』&lt;br /&gt;
&amp;quot;Kh&amp;ocirc;ng th&amp;agrave;nh vấn đề.&amp;quot;&lt;br /&gt;
Dập m&amp;aacute;y, l&amp;agrave;m v&amp;agrave;i thao t&amp;aacute;c tr&amp;ecirc;n c&amp;aacute;i điện thoại, t&amp;ocirc;i nhấp v&amp;agrave;o ứng dụng &amp;lt;&amp;gt;. Một bản đồ ảo được thể hiện với t&amp;ocirc;i nằm ở ch&amp;iacute;nh giữa. Con đường ở gần đ&amp;oacute; được k&amp;eacute;o d&amp;agrave;i. T&amp;ocirc;i đo&amp;aacute;n đ&amp;oacute; l&amp;agrave; con đường m&amp;agrave; t&amp;ocirc;i đang đứng tr&amp;ecirc;n đ&amp;oacute;. K&amp;eacute;o xuống ph&amp;iacute;a dưới, t&amp;ocirc;i thấy c&amp;oacute; một thị trấn ở ph&amp;iacute;a T&amp;acirc;y. Xem n&amp;agrave;o... rifuretto? Phải, Thị trấn Refuretto.&lt;br /&gt;
&amp;quot;Được rồi, đi hướng n&amp;agrave;y vậy.&amp;quot;&lt;/p&gt;

&lt;p&gt;Kiểm tra phương hướng với chiếc la b&amp;agrave;n mini tr&amp;ecirc;n tay, t&amp;ocirc;i tiến về ph&amp;iacute;a T&amp;acirc;y.&amp;nbsp;&lt;br /&gt;
Cuốc bộ được một hồi...&amp;nbsp;&lt;br /&gt;
&lt;em&gt;&amp;ndash; Thế n&amp;agrave;y quả thực kh&amp;ocirc;ng tốt ch&amp;uacute;t n&amp;agrave;o.&lt;/em&gt;&amp;nbsp;&lt;br /&gt;
Vấn đề đầu ti&amp;ecirc;n, tr&amp;ecirc;n người t&amp;ocirc;i kh&amp;ocirc;ng c&amp;oacute; thức ăn, cũng chẳng c&amp;oacute; nước uống. Thậm ch&amp;iacute; nếu như t&amp;ocirc;i c&amp;oacute; lết m&amp;ocirc;ng được tới thị trấn đi chăng nữa, những việc sau đ&amp;oacute; th&amp;igrave; t&amp;iacute;nh sao? T&amp;ocirc;i c&amp;oacute; mang theo v&amp;iacute;, b&amp;ecirc;n trong c&amp;oacute; chứa ch&amp;uacute;t tiền l&amp;agrave; một chuyện, nhưng mấy đồng Y&amp;ecirc;n Nhật n&amp;agrave;y c&amp;oacute; x&amp;agrave;i được ở c&amp;aacute;i thế giới n&amp;agrave;y kh&amp;ocirc;ng l&amp;agrave; một chuyện kh&amp;aacute;c.&amp;nbsp;&lt;br /&gt;
Nghĩ một c&amp;aacute;ch logic th&amp;igrave; c&amp;aacute;i c&amp;acirc;u trả lời bao giờ cũng sẽ l&amp;agrave; kh&amp;ocirc;ng thể n&amp;agrave;o.&amp;nbsp;&lt;br /&gt;
Vậy giờ... m&amp;igrave;nh n&amp;ecirc;n l&amp;agrave;m g&amp;igrave; đ&amp;acirc;y?&amp;nbsp;&lt;br /&gt;
Trong khi đang cuốc bộ đến nỗi đờ người ra, t&amp;ocirc;i nghe một v&amp;agrave;i &amp;acirc;m thanh ph&amp;aacute;t ra từ ph&amp;iacute;a sau.&amp;nbsp;&lt;br /&gt;
T&amp;ocirc;i quay lại v&amp;agrave; thấy một thứ g&amp;igrave; đ&amp;oacute; từ đằng xa đang tiến lại gần đ&amp;acirc;y, một... c&amp;aacute;i xe ngựa &amp;aacute;?&amp;nbsp;&lt;br /&gt;
Kh&amp;aacute; th&amp;iacute;ch th&amp;uacute; khi nh&amp;igrave;n một c&amp;aacute;i xe ngựa lần đầu ti&amp;ecirc;n, mong rằng người ta sẽ cho t&amp;ocirc;i được qu&amp;aacute; giang đ&amp;ocirc;i ch&amp;uacute;t.&amp;nbsp;&lt;br /&gt;
Tiếp x&amp;uacute;c với con người ngay vừa khi mới đến thế thế giới n&amp;agrave;y, việc cần l&amp;agrave;m đầu ti&amp;ecirc;n l&amp;agrave; g&amp;igrave; đ&amp;acirc;y nhỉ? C&amp;aacute;i xe đi chậm lại &amp;agrave;? L&amp;agrave;m ơn cho t&amp;ocirc;i l&amp;ecirc;n vớ&amp;ndash;&amp;nbsp;&lt;br /&gt;
.......&amp;nbsp;&lt;br /&gt;
Dường như ngay lập tức, t&amp;ocirc;i quay g&amp;oacute;t đi v&amp;agrave; quyết định bỏ cuộc...&amp;nbsp;&lt;br /&gt;
C&amp;ograve;n về l&amp;yacute; do &amp;aacute;? Nếu như ai đ&amp;oacute; nh&amp;igrave;n thấy một c&amp;aacute;i xe ngựa n&amp;agrave;o đ&amp;oacute; đang tiến lại gần v&amp;agrave; ph&amp;aacute;t hiện ra c&amp;aacute;i xe đ&amp;oacute; chỉ c&amp;oacute; thể được sử dụng bởi mấy &amp;ocirc;ng l&amp;atilde;nh đạo cấp cao th&amp;igrave; chắc cũng như t&amp;ocirc;i th&amp;ocirc;i. C&amp;ograve;n cỗ xe n&amp;agrave;y th&amp;igrave; hơn thế nữa, n&amp;oacute; mang một vẻ ngo&amp;agrave;i cứng c&amp;aacute;p được khắc họa lộng lẫy chắc chắn bởi những b&amp;agrave;n tay nghệ nh&amp;acirc;n l&amp;agrave;nh nghề, được đ&amp;oacute;ng chỉ c&amp;oacute; thể cho những Qu&amp;yacute; tộc hoặc những nh&amp;agrave; quyền thế.&amp;nbsp;&lt;br /&gt;
Đời n&amp;agrave;o t&amp;ocirc;i lại d&amp;aacute;m ng&amp;aacute;n đường một tay tai to mặt lớn như thế chứ, nếu kh&amp;ocirc;ng cẩn thận th&amp;igrave; tệ nhất c&amp;oacute; thể t&amp;ocirc;i sẽ bị đối xử như kiểu &amp;quot;T&amp;ecirc;n xấc l&amp;aacute;o! M&amp;agrave;y phải bị trừng phạt!&amp;quot;, với t&amp;ocirc;i th&amp;igrave; kh&amp;ocirc;ng chịu được mấy thứ đ&amp;oacute; đ&amp;acirc;u.&amp;nbsp;&lt;br /&gt;
Vậy n&amp;ecirc;n t&amp;ocirc;i tr&amp;aacute;nh s&amp;aacute;ng ph&amp;iacute;a lề đường v&amp;agrave; để cho cỗ xe từ ph&amp;iacute;a sau đi l&amp;ecirc;n.&amp;nbsp;&lt;br /&gt;
Chiếc xe ph&amp;oacute;ng qua, để lại một l&amp;agrave;n bụi mịt m&amp;ugrave;. Thấy vậy, t&amp;ocirc;i tiếp tục cuộc h&amp;agrave;nh tr&amp;igrave;nh của m&amp;igrave;nh... V&amp;agrave; khi ấy, t&amp;ocirc;i nhận ra rằng chiếc xe bỗng dừng lại&amp;nbsp;&lt;br /&gt;
&amp;quot;N&amp;agrave;y! Cậu kia!&amp;quot;&amp;nbsp;&lt;br /&gt;
Cửa xe bật mở v&amp;agrave; một qu&amp;yacute; &amp;ocirc;ng t&amp;oacute;c trắng c&amp;ugrave;ng bộ r&amp;acirc;u vĩ đại bước ra. &amp;Ocirc;ng ta kho&amp;aacute;c tr&amp;ecirc;n m&amp;igrave;nh một chiếc khăn cho&amp;agrave;ng v&amp;agrave; &amp;aacute;o cho&amp;agrave;ng hợp thời, đ&amp;iacute;nh tr&amp;ecirc;n ngực c&amp;ograve;n l&amp;agrave; một chiếc đinh ghim c&amp;oacute; h&amp;igrave;nh hoa hồng.&amp;nbsp;&lt;br /&gt;
&amp;quot;Chuyện g&amp;igrave; vậy?&amp;quot;&amp;nbsp;&lt;br /&gt;
Ơn giời, &amp;iacute;t nhất m&amp;igrave;nh vẫn hiểu được ng&amp;ocirc;n ngữ của nơi n&amp;agrave;y.&amp;nbsp;&lt;br /&gt;
&amp;Ocirc;ng ta nắm chặt lấy vai rồi nh&amp;igrave;n chằm chằm l&amp;ecirc;n người t&amp;ocirc;i.&amp;nbsp;&lt;br /&gt;
&amp;quot;N&amp;oacute;i cho ta biết cậu lấy bộ quần &amp;aacute;o n&amp;agrave;y ở đ&amp;acirc;u vậy?&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Hể?&amp;quot;&amp;nbsp;&lt;br /&gt;
Trong tho&amp;aacute;ng chốc, t&amp;ocirc;i bị đớ người v&amp;agrave; kh&amp;ocirc;ng hiểu &amp;ocirc;ng ta đang n&amp;oacute;i g&amp;igrave; cả. Thế nhưng qu&amp;yacute; ng&amp;agrave;i r&amp;acirc;u quai n&amp;oacute;n đi v&amp;ograve;ng quanh t&amp;ocirc;i, với một phong th&amp;aacute;i chẳng th&amp;egrave;m ki&amp;ecirc;ng nể điều g&amp;igrave;, &amp;ocirc;ng ta tiếp tục chi&amp;ecirc;m ngưỡng bộ đồng phục m&amp;agrave; t&amp;ocirc;i đang mặc.&amp;nbsp;&lt;br /&gt;
&amp;quot;Ta chưa hề thấy thiết kế n&amp;agrave;y trước đ&amp;acirc;y... L&amp;agrave;m thế n&amp;agrave;o m&amp;agrave;...&amp;quot;&amp;nbsp;&lt;br /&gt;
T&amp;ocirc;i đ&amp;atilde; lờ mờ hiểu ra. N&amp;oacute;i ngắn gọn, bộ đồng phục n&amp;agrave;y l&amp;agrave; h&amp;agrave;ng hiếm. C&amp;oacute; lẽ thế giới n&amp;agrave;y kh&amp;ocirc;ng c&amp;oacute; trang phục n&amp;agrave;o như vậy. Nếu vậy th&amp;igrave;...&amp;nbsp;&lt;br /&gt;
&amp;quot;Nếu &amp;ocirc;ng th&amp;iacute;ch th&amp;igrave; t&amp;ocirc;i tặng n&amp;oacute; cho &amp;ocirc;ng nh&amp;eacute;?&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Thật ư?&amp;quot;&amp;nbsp;&lt;br /&gt;
Đ&amp;aacute;p trả lại lời ch&amp;agrave;o h&amp;agrave;ng, &amp;ocirc;ng ta đ&amp;atilde; cắn c&amp;acirc;u, một c&amp;aacute;ch nồng liệt.&amp;nbsp;&lt;br /&gt;
&amp;quot;Bộ đồ n&amp;agrave;y l&amp;agrave; t&amp;ocirc;i mua từ một người b&amp;aacute;n h&amp;agrave;ng rong, t&amp;ocirc;i sẽ đưa n&amp;oacute; cho &amp;ocirc;ng nếu &amp;ocirc;ng muốn. Tuy nhi&amp;ecirc;n sẽ kh&amp;aacute; rắc rối nếu t&amp;ocirc;i cho hết đi những g&amp;igrave; đang mặc. V&amp;igrave; thế, ở thị trấn tiếp theo, t&amp;ocirc;i sẽ rất vui l&amp;ograve;ng nếu c&amp;oacute; một bộ kh&amp;aacute;c...&amp;quot;&amp;nbsp;&lt;br /&gt;
T&amp;ocirc;i kh&amp;ocirc;ng thể n&amp;oacute;i bộ đồ n&amp;agrave;y đến từ thế giới kh&amp;aacute;c được n&amp;ecirc;n phải tự bịa ra một c&amp;aacute;i l&amp;iacute; do kh&amp;aacute;c. Nếu t&amp;ocirc;i c&amp;oacute; thể b&amp;aacute;n n&amp;oacute; đi, t&amp;ocirc;i vừa c&amp;oacute; thể kiếm ch&amp;uacute;t đỉnh tiền, lại vừa c&amp;oacute; thể tr&amp;aacute;nh đi sự ch&amp;uacute; &amp;yacute; của người kh&amp;aacute;c. Một mũi t&amp;ecirc;n tr&amp;uacute;ng hai đ&amp;iacute;ch.&amp;nbsp;&lt;br /&gt;
&amp;quot;Được th&amp;ocirc;i! Cậu l&amp;ecirc;n xe đi, t&amp;ocirc;i sẽ đưa cậu đến thị trấn tiếp theo. Tại đ&amp;oacute; t&amp;ocirc;i sẽ cho cậu v&amp;agrave;i bộ đồ mới v&amp;agrave; cậu sẽ b&amp;aacute;n bộ đồ đang mặc cho t&amp;ocirc;i nh&amp;eacute;&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Đồng &amp;yacute;.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;Ocirc;ng gi&amp;agrave; r&amp;acirc;u quai n&amp;oacute;n v&amp;agrave; t&amp;ocirc;i bắt tay nhau thật chặt...&amp;nbsp;&lt;br /&gt;
Sau ba giờ ngồi chịu trận rung lắc tr&amp;ecirc;n chiếc xe ngựa, cuối c&amp;ugrave;ng th&amp;igrave; t&amp;ocirc;i cũng đ&amp;atilde; đặt ch&amp;acirc;n được đến thị trấn Rifuretto. Trong l&amp;uacute;c đ&amp;oacute; th&amp;igrave; người đ&amp;agrave;n &amp;ocirc;ng nọ (c&amp;oacute; vẻ được gọi với c&amp;aacute;i t&amp;ecirc;n Zanakku-san) nhận lấy chiếc &amp;aacute;o kho&amp;aacute;c đồng phục m&amp;agrave; t&amp;ocirc;i cởi ra v&amp;agrave; th&amp;iacute;ch th&amp;uacute; m&amp;agrave; tận hưởng từng đường chỉ được kh&amp;acirc;u.&amp;nbsp;&lt;br /&gt;
Zanakku-san l&amp;agrave; thương nh&amp;acirc;n chuy&amp;ecirc;n kinh doanh ng&amp;agrave;nh thời trang v&amp;agrave; đang tr&amp;ecirc;n đường trở về từ một cuộc họp. T&amp;ocirc;i c&amp;oacute; thể hiểu được điều đ&amp;oacute; khi nh&amp;igrave;n thấy phản ứng của &amp;ocirc;ng ta l&amp;uacute;c nh&amp;igrave;n thấy quần &amp;aacute;o của t&amp;ocirc;i.&amp;nbsp;&lt;br /&gt;
N&amp;oacute;i về t&amp;ocirc;i th&amp;igrave; t&amp;ocirc;i đang tận hưởng khung cảnh b&amp;ecirc;n ngo&amp;agrave;i c&amp;aacute;nh cửa xe, khung cảnh của một thế giới kh&amp;aacute;c...&amp;nbsp;&lt;br /&gt;
Kể từ gi&amp;acirc;y ph&amp;uacute;t l&amp;uacute;c n&amp;agrave;y đ&amp;acirc;y, nơi n&amp;agrave;y cũng sẽ l&amp;agrave; thế giới mới của t&amp;ocirc;i.&amp;nbsp;&lt;/p&gt;
', 1, CAST(0x0000ADE401764243 AS DateTime), CAST(0x0000ADE401764243 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2102, 2096, 1039, N'Chương 3: Y phục mới và mười đồng vàng', N'&lt;p&gt;Sau ba tiếng đồng hồ chịu cảnh rung, lắc, x&amp;oacute;c, nẩy tr&amp;ecirc;n xe ngựa kể từ l&amp;uacute;c gặp Zanakku-san, cuối c&amp;ugrave;ng t&amp;ocirc;i cũng đ&amp;atilde; đến được thị trấn Refuretto n&amp;agrave;y.&lt;br /&gt;
[Trans Việt: Sao kh&amp;ocirc;ng gọi anh? Anh đang học về hệ thống giảm x&amp;oacute;c đ&amp;acirc;y.]&lt;/p&gt;

&lt;p&gt;Người l&amp;iacute;nh g&amp;aacute;c đứng ngo&amp;agrave;i cửa thị trấn ra đ&amp;oacute;n ch&amp;uacute;ng t&amp;ocirc;i, chỉ hỏi v&amp;agrave;i c&amp;acirc;u ngắn gọn rồi cho qua. Nh&amp;igrave;n c&amp;aacute;ch anh ta n&amp;oacute;i chuyện với Zanakku-san, người bạn đồng h&amp;agrave;nh của t&amp;ocirc;i c&amp;oacute; vẻ l&amp;agrave; một người kh&amp;aacute; nổi tiếng tại nơi n&amp;agrave;y.&lt;br /&gt;
Xe ngựa cứ thế m&amp;agrave; tiến v&amp;agrave;o b&amp;ecirc;n trong thị trấn. Mỗi lần b&amp;aacute;nh xe gỗ quay m&amp;ograve;ng m&amp;ograve;ng băng qua một vỉa h&amp;egrave; đ&amp;aacute; kiểu cổ th&amp;igrave; l&amp;agrave; mỗi khi c&amp;aacute;i th&amp;acirc;n xe h&amp;igrave;nh hộp ph&amp;iacute;a tr&amp;ecirc;n rung l&amp;ecirc;n bần bật. Chả bao l&amp;acirc;u sau, chiếc xe đ&amp;atilde; dừng lại trước một cửa h&amp;agrave;ng tr&amp;ecirc;n một con phố mua sắm tấp nập.&lt;br /&gt;
&amp;quot;Ừm, mời cậu xuống. Ch&amp;uacute;ng ta sẽ mua quần &amp;aacute;o ở đ&amp;acirc;y.&amp;quot;&lt;br /&gt;
Zanakku-san n&amp;oacute;i vậy v&amp;agrave; bước xuống khỏi xe. Nh&amp;igrave;n l&amp;ecirc;n, t&amp;ocirc;i thấy một biển hiệu c&amp;oacute; h&amp;igrave;nh kim chỉ c&amp;ugrave;ng một h&amp;agrave;ng chữ b&amp;ecirc;n dưới. Một tin xấu chợt đến với t&amp;ocirc;i... &amp;quot;M&amp;igrave;nh kh&amp;ocirc;ng đọc được...&amp;quot;&lt;br /&gt;
T&amp;ocirc;i kh&amp;ocirc;ng c&amp;oacute; c&amp;aacute;ch n&amp;agrave;o đọc những chữ c&amp;aacute;i tr&amp;ecirc;n biển hiệu. Tệ thật, c&amp;oacute; thể n&amp;oacute;i m&amp;agrave; lại kh&amp;ocirc;ng thể đọc... Bởi t&amp;ocirc;i c&amp;oacute; thể tr&amp;ograve; chuyện b&amp;igrave;nh thường, chắc t&amp;ocirc;i sẽ phải nhờ ai đ&amp;oacute; dạy t&amp;ocirc;i đọc vậy.&lt;/p&gt;

&lt;p&gt;Zanakku-san dẫn t&amp;ocirc;i v&amp;agrave;o b&amp;ecirc;n trong v&amp;agrave; v&amp;agrave;i nh&amp;acirc;n vi&amp;ecirc;n ra đ&amp;oacute;n ch&amp;agrave;o ch&amp;uacute;ng t&amp;ocirc;i.&amp;nbsp;&lt;br /&gt;
&amp;quot;Mừng ng&amp;agrave;i về nh&amp;agrave;, thưa &amp;ocirc;ng chủ.&amp;quot;&amp;nbsp;&lt;br /&gt;
Trong tho&amp;aacute;ng chốc, lời n&amp;oacute;i của họ khiến t&amp;ocirc;i v&amp;ocirc; c&amp;ugrave;ng ngạc nhi&amp;ecirc;n.&amp;nbsp;&lt;br /&gt;
&amp;quot;&amp;Ocirc;ng chủ?&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Dĩ nhi&amp;ecirc;n, đ&amp;acirc;y l&amp;agrave; cửa hiệu của t&amp;ocirc;i m&amp;agrave;. Bỏ qua điều đ&amp;oacute; đi, ch&amp;uacute;ng ta thay đồ cho cậu... N&amp;agrave;y! Ai đ&amp;oacute; chọn cho cậu ta một bộ đồ vừa vặn đi!&amp;quot;&amp;nbsp;&lt;br /&gt;
Zanakku-san hối th&amp;uacute;c t&amp;ocirc;i bước v&amp;agrave;o ph&amp;ograve;ng thay đồ &amp;ndash; Ở đ&amp;acirc;y, kh&amp;ocirc;ng c&amp;oacute; một tấm m&amp;agrave;n n&amp;agrave;o để chia ph&amp;ograve;ng, m&amp;agrave; n&amp;oacute;i lại l&amp;agrave; một căn ph&amp;ograve;ng thực sự lu&amp;ocirc;n &amp;ndash; v&amp;agrave; đẩy t&amp;ocirc;i v&amp;agrave;o b&amp;ecirc;n trong. Theo sau đ&amp;oacute; l&amp;agrave; v&amp;agrave;i bộ đồ được mang đến. T&amp;ocirc;i lần lượt cởi bỏ chiếc &amp;aacute;o kho&amp;aacute;c b&amp;ecirc;n ngo&amp;agrave;i, tiếp theo l&amp;agrave; c&amp;agrave; vạt v&amp;agrave; &amp;aacute;o sơ mi. T&amp;ocirc;i c&amp;oacute; mặc cả một chiếc &amp;aacute;o ph&amp;ocirc;ng đen ở b&amp;ecirc;n trong nhưng... &amp;aacute;nh mắt của Zanakku-san lại thay đổi một lần nữa khi thấy n&amp;oacute;.&amp;nbsp;&lt;br /&gt;
&amp;quot;N&amp;agrave;y cậu!... cậu sẽ b&amp;aacute;n số đồ l&amp;oacute;t đ&amp;oacute; chứ!?&amp;quot;&amp;nbsp;&lt;br /&gt;
Một t&amp;ecirc;n cướp...&amp;nbsp;&lt;br /&gt;
[Trans Việt: D&amp;acirc;n bu&amp;ocirc;n b&amp;aacute;n tư sản m&amp;agrave;, giờ ch&amp;uacute; mới biết &amp;agrave;?] Cuối c&amp;ugrave;ng th&amp;igrave; Zanakku-san đ&amp;atilde; khiến t&amp;ocirc;i b&amp;aacute;n mọi thứ m&amp;agrave; t&amp;ocirc;i c&amp;oacute;. Mọi thứ, bao gồm cả b&amp;iacute;t tất v&amp;agrave; đ&amp;ocirc;i gi&amp;agrave;y v&amp;agrave;... đồ l&amp;oacute;t... Đến giờ t&amp;ocirc;i c&amp;ograve;n cảm thấy ph&amp;aacute;t mệt khi &amp;ocirc;ng ta thậm ch&amp;iacute; c&amp;ograve;n hỏi mua c&amp;aacute;i pantsu của t&amp;ocirc;i nữa cơ. T&amp;ocirc;i biết &amp;ocirc;ng muốn c&amp;aacute;i g&amp;igrave; nhưng m&amp;agrave;... &amp;iacute;t ra &amp;ocirc;ng phải hiểu cho t&amp;ocirc;i chứ!&amp;nbsp;&lt;br /&gt;
Quần &amp;aacute;o v&amp;agrave; gi&amp;agrave;y d&amp;eacute;p đ&amp;atilde; được chuẩn bị xong. Ch&amp;uacute;ng kh&amp;aacute; dễ d&amp;agrave;ng để di chuyển v&amp;agrave; kh&amp;aacute; bền n&amp;ecirc;n t&amp;ocirc;i kh&amp;ocirc;ng hề c&amp;oacute; bất k&amp;igrave; điều g&amp;igrave; để ph&amp;agrave;n n&amp;agrave;n cả. Kh&amp;ocirc;ng những vậy, tr&amp;ocirc;ng ch&amp;uacute;ng lại kh&amp;ocirc;ng hề h&amp;agrave;o nho&amp;aacute;ng một t&amp;iacute; n&amp;agrave;o cả. Thật tuyệt, t&amp;ocirc;i sẽ kh&amp;ocirc;ng hề nổi trội trong bộ đồ n&amp;agrave;y.&amp;nbsp;&lt;br /&gt;
&amp;quot;Vậy, cậu t&amp;iacute;nh sẽ b&amp;aacute;n chỗ đ&amp;oacute; với gi&amp;aacute; bao nhi&amp;ecirc;u đ&amp;acirc;y? Dĩ nhi&amp;ecirc;n l&amp;agrave; cậu kh&amp;ocirc;ng thể t&amp;iacute;nh tiền theo khối lượng của vải v&amp;oacute;c hay chỉ may rồi, t&amp;ocirc;i hy vọng cậu đ&amp;atilde; c&amp;oacute; một c&amp;aacute;i gi&amp;aacute; trong đầu rồi chứ?&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Kể cả khi &amp;ocirc;ng n&amp;oacute;i vậy... Bởi v&amp;igrave; t&amp;ocirc;i kh&amp;ocirc;ng hề biết gi&amp;aacute; cả thị trường n&amp;ecirc;n t&amp;ocirc;i chả thể n&amp;oacute;i được điều g&amp;igrave; cả. Nhưng m&amp;agrave; t&amp;ocirc;i biết n&amp;oacute; cũng kh&amp;aacute; l&amp;agrave; đắt đỏ đấy... V&amp;agrave; n&amp;oacute;i thật th&amp;igrave; t&amp;ocirc;i đang kh&amp;ocirc;ng một xu d&amp;iacute;nh t&amp;uacute;i.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Vậy ư, tiếc thật... Th&amp;ocirc;i được rồi, vậy 10 xu v&amp;agrave;ng th&amp;igrave; sao?&amp;quot;&amp;nbsp;&lt;br /&gt;
T&amp;ocirc;i chỉ c&amp;oacute; thể gật đầu bởi t&amp;ocirc;i kh&amp;ocirc;ng biết đến gi&amp;aacute; trị của 10 xu v&amp;agrave;ng&amp;nbsp;&lt;br /&gt;
&amp;quot;Nghe cũng được đấy.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Vậy &amp;agrave;? Nếu vậy th&amp;igrave; tiền của cậu n&amp;agrave;y.&amp;quot;&amp;nbsp;&lt;br /&gt;
T&amp;ocirc;i nhận lấy 10 đồng xu v&amp;agrave;ng. Mỗi đồng c&amp;oacute; k&amp;iacute;ch cỡ ngang ngửa một đồng 500 y&amp;ecirc;n với h&amp;igrave;nh chạm khắc của một con sư tử. Đ&amp;acirc;y l&amp;agrave; to&amp;agrave;n bộ số tiền t&amp;ocirc;i c&amp;oacute;. Phải sử dụng ch&amp;uacute;ng thật cẩn thận th&amp;ocirc;i.&amp;nbsp;&lt;br /&gt;
&amp;quot;Nh&amp;acirc;n tiện, trong thị trấn c&amp;oacute; ph&amp;ograve;ng trọ kh&amp;ocirc;ng vậy? T&amp;ocirc;i muốn c&amp;oacute; một nơi ngả lưng trước khi đ&amp;ecirc;m xuống.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;C&amp;oacute; một ph&amp;ograve;ng trọ ở ph&amp;iacute;a trước, b&amp;ecirc;n tay phải, c&amp;aacute;ch đ&amp;acirc;y một d&amp;atilde;y nh&amp;agrave;,『Mặt trăng bạc』. Nếu cậu nh&amp;igrave;n l&amp;ecirc;n tr&amp;ecirc;n biển t&amp;ecirc;n, cậu sẽ sớm hiểu th&amp;ocirc;i.&amp;quot;&amp;nbsp;&lt;br /&gt;
Kể cả nếu t&amp;ocirc;i kh&amp;ocirc;ng thể đọc biển t&amp;ecirc;n, t&amp;ocirc;i c&amp;oacute; thể hỏi nhờ một ai đ&amp;oacute;. D&amp;ugrave; g&amp;igrave; th&amp;igrave; t&amp;ocirc;i vẫn c&amp;oacute; thể n&amp;oacute;i tiếng bản ngữ m&amp;agrave;.&amp;nbsp;&lt;br /&gt;
&amp;quot;T&amp;ocirc;i hiểu rồi.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;&amp;Agrave;, nếu cậu t&amp;igrave;m được mấy bộ quần &amp;aacute;o như vậy nữa, cứ việc mang đến cho t&amp;ocirc;i nh&amp;eacute;.&amp;quot;&amp;nbsp;&lt;br /&gt;
T&amp;ocirc;i ch&amp;agrave;o tạm biệt Zanakku-san khi bước ra ngo&amp;agrave;i. B&amp;oacute;ng nắng vẫn c&amp;ograve;n kh&amp;aacute; cao. T&amp;ocirc;i l&amp;ocirc;i chiếc smartphone từ t&amp;uacute;i trong ra v&amp;agrave; bật nguồn l&amp;ecirc;n. L&amp;uacute;c n&amp;agrave;y c&amp;ograve;n chưa đến 2 giờ chiều&amp;nbsp;&lt;br /&gt;
&amp;quot;M&amp;igrave;nh đ&amp;atilde; nghĩ về điều n&amp;agrave;y l&amp;uacute;c c&amp;ograve;n tr&amp;ecirc;n xe... liệu n&amp;oacute; c&amp;oacute; chỉ đ&amp;uacute;ng giờ kh&amp;ocirc;ng nhỉ?&amp;quot;&amp;nbsp;&lt;br /&gt;
Hừm, nh&amp;igrave;n v&amp;agrave;o b&amp;oacute;ng nắng, t&amp;ocirc;i kh&amp;ocirc;ng nghĩ rằng sự sai s&amp;oacute;t l&amp;agrave; qu&amp;aacute; lớn.&amp;nbsp;&lt;br /&gt;
Bỗng nhận ra một điều hiển nhi&amp;ecirc;n, t&amp;ocirc;i mở ứng dụng bản đồ. Liền đ&amp;oacute;, bản đồ của cả thị trấn được b&amp;agrave;y ra, vị tr&amp;iacute; hiện tại của t&amp;ocirc;i v&amp;agrave; thậm ch&amp;iacute; l&amp;agrave; cả t&amp;ecirc;n của c&amp;aacute;c cửa hiệu đểu được ghi r&amp;otilde;. Với c&amp;aacute;i n&amp;agrave;y, t&amp;ocirc;i kh&amp;oacute; c&amp;oacute; thể bị lạc được. Qu&amp;aacute;n trọ 『Mặt trăng bạc』được đ&amp;aacute;nh dấu một c&amp;aacute;ch r&amp;otilde; r&amp;agrave;ng. Nhưng m&amp;agrave;...&amp;nbsp;&lt;br /&gt;
&amp;quot;Tấm biển n&amp;agrave;y...『Vua Thời trang Zanakku』&amp;aacute;???&amp;quot;&amp;nbsp;&lt;br /&gt;
Bước về qu&amp;aacute;n trọ, t&amp;ocirc;i kh&amp;ocirc;ng rũ bỏ được cảm gi&amp;aacute;c thất vọng về khả năng đặt t&amp;ecirc;n của Zanakku-san.&amp;nbsp;&lt;/p&gt;
', 1, CAST(0x0000ADE4017672A5 AS DateTime), CAST(0x0000ADE4017672A5 AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2103, 2096, 1039, N'Chương 4: Nhà trọ và bữa ăn đầu tiên ', N'&lt;p&gt;Sau một chuyến tản bộ ngắn, biển hiệu của qu&amp;aacute;n trọ Mặt trăng bạc xuất hiện trong tầm mắt của t&amp;ocirc;i. H&amp;igrave;nh ảnh của qu&amp;aacute;n trọ quả thực rất dễ nhận ra với một vầng trăng lưỡi liềm được chạm khắc tr&amp;ecirc;n đ&amp;oacute;. Nh&amp;igrave;n sơ qua, t&amp;ograve;a nh&amp;agrave; c&amp;oacute; vẻ c&amp;oacute; ba tầng lầu. Được x&amp;acirc;y từ gỗ v&amp;agrave; gạch n&amp;ecirc;n chắc n&amp;oacute; cũng tương đối chắc chắn.&lt;br /&gt;
Khi t&amp;ocirc;i bước qua c&amp;aacute;nh cửa đ&amp;ocirc;i, tầng trệt nh&amp;igrave;n tho&amp;aacute;ng qua c&amp;oacute; vẻ đ&amp;acirc;y l&amp;agrave; một qu&amp;aacute;n rượu nhưng thực chất lại ch&amp;iacute;nh l&amp;agrave; ph&amp;ograve;ng ăn tối với ph&amp;iacute;a b&amp;ecirc;n phải l&amp;agrave; quầy t&amp;iacute;nh tiền c&amp;ograve;n b&amp;ecirc;n tr&amp;aacute;i l&amp;agrave; cầu thang dẫn l&amp;ecirc;n tầng tr&amp;ecirc;n.&lt;br /&gt;
&amp;quot;Ch&amp;agrave;o mừng qu&amp;yacute; kh&amp;aacute;ch. Cho hỏi l&amp;agrave; cậu muốn d&amp;ugrave;ng bữa hay thu&amp;ecirc; ph&amp;ograve;ng vậy?&amp;quot;&lt;br /&gt;
B&amp;agrave; chị ở quầy thu ng&amp;acirc;n hỏi t&amp;ocirc;i mang một vẻ ngo&amp;agrave;i kh&amp;aacute; ưa nh&amp;igrave;n với m&amp;aacute;i t&amp;oacute;c đu&amp;ocirc;i ngựa đỏ ch&amp;oacute;t. C&amp;oacute; vẻ l&amp;agrave; một người s&amp;ocirc;i nổi. Ngo&amp;agrave;i ra, tr&amp;ocirc;ng c&amp;ocirc; ấy c&amp;oacute; vẻ chỉ mới khoảng đ&amp;ocirc;i mươi l&amp;agrave; c&amp;ugrave;ng.&lt;br /&gt;
&amp;quot;Umm... t&amp;ocirc;i muốn thu&amp;ecirc; ph&amp;ograve;ng. Cơ m&amp;agrave; gi&amp;aacute; cả thu&amp;ecirc; ph&amp;ograve;ng bao nhi&amp;ecirc;u thế chị?&amp;quot;&lt;br /&gt;
&amp;quot;Hai đồng mỗi đ&amp;ecirc;m, c&amp;oacute; bao cả bữa s&amp;aacute;ng v&amp;agrave; tối... &amp;Agrave; m&amp;agrave; nhớ trả trước nh&amp;eacute;.&amp;quot;&lt;br /&gt;
Hai xu đồng &amp;agrave;?... T&amp;ocirc;i cũng chả biết nhi&amp;ecirc;u đ&amp;oacute; l&amp;agrave; rẻ hay đắt nữa. Chắc l&amp;agrave; phải rẻ hơn một đồng v&amp;agrave;ng rồi nhể? Nhưng vấn đề ở đ&amp;acirc;y l&amp;agrave; t&amp;ocirc;i kh&amp;ocirc;ng hề biết tỉ gi&amp;aacute; quy đổi giữa hai loại tiền n&amp;agrave;y.&lt;br /&gt;
Th&amp;ocirc;i kệ, t&amp;ocirc;i vơ lấy một đồng v&amp;agrave;ng trong v&amp;iacute; ra v&amp;agrave; đặt l&amp;ecirc;n quầy t&amp;iacute;nh tiền&lt;br /&gt;
&amp;quot;Với cỡ n&amp;agrave;y, t&amp;ocirc;i c&amp;oacute; thể ở bao nhi&amp;ecirc;u đ&amp;ecirc;m thế?&amp;quot;&lt;br /&gt;
&amp;quot;Ba... Bao nhi&amp;ecirc;u ư? Chắc... cỡ 50 nhỉ?&amp;quot;&lt;br /&gt;
&amp;quot;Năm mươi?&amp;quot;&lt;br /&gt;
Chế kh&amp;ocirc;ng biết t&amp;iacute;nh sao? &amp;Yacute; t&amp;ocirc;i l&amp;agrave;, nh&amp;igrave;n mắt b&amp;agrave; chị k&amp;igrave;a. Hừm... c&amp;oacute; lẽ một đồng v&amp;agrave;ng c&amp;oacute; gi&amp;aacute; bằng 100 xu đồng? Bởi nếu 10 xu v&amp;agrave;ng l&amp;agrave; 500 ng&amp;agrave;y, bạn c&amp;oacute; thể sống gần cả năm rưỡi m&amp;agrave; chả phải l&amp;agrave;m g&amp;igrave; cả. Chắc đ&amp;acirc;y l&amp;agrave; một n&amp;uacute;i tiền nhỉ?&lt;em&gt;(Trans Việt: đặc trưng của main trong LN: h&amp;ecirc;n đếu thể tả)&lt;/em&gt;&lt;br /&gt;
&amp;quot;Vậy, cậu đ&amp;atilde; quyết định chưa?&amp;quot;&lt;br /&gt;
&amp;quot;Hừm, vậy th&amp;igrave;... t&amp;ocirc;i muốn thu&amp;ecirc; ph&amp;ograve;ng trong một th&amp;aacute;ng.&amp;quot;&lt;br /&gt;
&amp;quot;Được rồi, một th&amp;aacute;ng. Ơn trời, dạo n&amp;agrave;y chả c&amp;oacute; mấy kh&amp;aacute;ch n&amp;ecirc;n cậu thu&amp;ecirc; ph&amp;ograve;ng ở đ&amp;acirc;y thật đỡ qu&amp;aacute;. &amp;Agrave;, đợi ch&amp;uacute;t, t&amp;ocirc;i chẳng c&amp;ograve;n bạc n&amp;agrave;o nữa n&amp;agrave;o n&amp;ecirc;n t&amp;ocirc;i sẽ trả tiền thừa bằng xu đồng, cậu kh&amp;ocirc;ng phiền chứ?&amp;quot;&lt;br /&gt;
Khi đưa ra một xu v&amp;agrave;ng, t&amp;ocirc;i nhận lại 40 đồng sau khi b&amp;agrave; chị thu ng&amp;acirc;n đ&amp;atilde; trừ đi 60 đồng tiền thu&amp;ecirc; ph&amp;ograve;ng. Xem ra một th&amp;aacute;ng ở đ&amp;acirc;y cũng c&amp;oacute; 30 ng&amp;agrave;y &amp;agrave;? Chả kh&amp;aacute;c ng&amp;agrave;y trước l&amp;agrave; bao.&lt;br /&gt;
C&amp;ocirc; ta l&amp;ocirc;i từ dưới quầy ra một c&amp;aacute;i g&amp;igrave; đ&amp;oacute; giống như sổ đăng k&amp;yacute;, mở ra v&amp;agrave;i trang v&amp;agrave; ch&amp;igrave;a về ph&amp;iacute;a t&amp;ocirc;i một chiếc b&amp;uacute;t l&amp;ocirc;ng ngỗng đ&amp;atilde; chấm mực.&lt;br /&gt;
&amp;quot;Vậy, mời cậu k&amp;yacute; v&amp;agrave;o đ&amp;acirc;y.&amp;quot;&lt;br /&gt;
&amp;quot;Ơ... xin lỗi. T&amp;ocirc;i chưa biết viết, c&amp;ocirc; c&amp;oacute; thể viết hộ t&amp;ocirc;i được kh&amp;ocirc;ng vậy?&amp;quot;&lt;br /&gt;
&amp;quot;Vậy ư... T&amp;ocirc;i hiểu rồi. Vậy t&amp;ecirc;n cậu l&amp;agrave; g&amp;igrave; nhỉ?&amp;quot;&lt;br /&gt;
&amp;quot;Mochizuki. Mochizuki Touya.&amp;quot;&lt;br /&gt;
&amp;quot;Mochizuki &amp;agrave;? C&amp;aacute;i t&amp;ecirc;n lạ thật đấy.&amp;quot;&lt;br /&gt;
&amp;quot;Kh&amp;ocirc;ng phải, t&amp;ecirc;n t&amp;ocirc;i l&amp;agrave; Touya, Mochizuki chỉ l&amp;agrave; c&amp;aacute;i họ th&amp;ocirc;i.&amp;quot;&lt;br /&gt;
&amp;quot;&amp;Ocirc;, t&amp;ecirc;n ri&amp;ecirc;ng v&amp;agrave; họ của cậu đảo chỗ cho nhau sao? Cậu sinh ra ở Ishen &amp;agrave;?&amp;quot;&lt;br /&gt;
&amp;quot;Ờ th&amp;igrave;... chắc cũng ở đ&amp;acirc;u đ&amp;oacute; gần đấy...&amp;quot;&lt;br /&gt;
Cho d&amp;ugrave; t&amp;ocirc;i kh&amp;ocirc;ng biết Ishen ở đ&amp;acirc;u, t&amp;ocirc;i vẫn c&amp;oacute; thể n&amp;oacute;i như vậy bởi t&amp;ocirc;i ho&amp;agrave;n to&amp;agrave;n c&amp;oacute; đủ khả năng định vị n&amp;oacute; tr&amp;ecirc;n bản đồ.&lt;br /&gt;
&amp;quot;Vậy, ch&amp;igrave;a kh&amp;oacute;a ph&amp;ograve;ng đ&amp;acirc;y. Đừng c&amp;oacute; m&amp;agrave; đ&amp;aacute;nh mất n&amp;oacute; đ&amp;oacute;. Ph&amp;ograve;ng cậu ở tr&amp;ecirc;n tầng ba, ph&amp;iacute;a trong c&amp;ugrave;ng, ph&amp;ograve;ng hướng nắng tốt nhất đấy. C&amp;ograve;n nh&amp;agrave; vệ sinh v&amp;agrave; ph&amp;ograve;ng tắm ở tầng một, ăn uống g&amp;igrave; cũng ở đ&amp;oacute; lu&amp;ocirc;n. &amp;Agrave;, cậu c&amp;oacute; định l&amp;agrave;m g&amp;igrave; kh&amp;ocirc;ng? Ăn trưa nh&amp;eacute;?&amp;quot;&lt;br /&gt;
&lt;em&gt;(Trans Việt: c&amp;aacute;ch chia tầng ở t&amp;acirc;y hơi kh&amp;aacute;c VN một ch&amp;uacute;t, n&amp;oacute; l&amp;agrave; tầng trệt &amp;ndash; tầng một &amp;ndash; tầng hai... N&amp;oacute;i như vậy th&amp;igrave; nh&amp;agrave; trọ n&amp;agrave;y c&amp;oacute; 4 tầng &amp;agrave;?) (Edit: Theo b&amp;ecirc;n Bắc Mỹ th&amp;igrave; tầng 1 trong Eng sẽ được coi l&amp;agrave; tầng trệt nh&amp;eacute; b&amp;aacute;c :v)&lt;/em&gt;&lt;br /&gt;
&amp;quot;Nếu vậy th&amp;igrave; c&amp;aacute;m ơn c&amp;ocirc; lắm, từ s&amp;aacute;ng đến giờ t&amp;ocirc;i chưa c&amp;oacute; g&amp;igrave; bỏ bụng cả.&amp;quot;&lt;br /&gt;
&amp;quot;Vậy th&amp;igrave; t&amp;ocirc;i sẽ l&amp;agrave;m v&amp;agrave;i m&amp;oacute;n ăn nhẹ nh&amp;eacute;. Cậu cũng n&amp;ecirc;n xem qua ph&amp;ograve;ng v&amp;agrave; nghỉ ngơi ch&amp;uacute;t đi.&amp;quot;&lt;br /&gt;
&amp;quot;Được th&amp;ocirc;i.&amp;quot;&lt;br /&gt;
T&amp;ocirc;i đi l&amp;ecirc;n lầu sau khi nhận lấy chiếc ch&amp;igrave;a kh&amp;oacute;a v&amp;agrave; mở cửa ph&amp;ograve;ng. Căn ph&amp;ograve;ng rộng khoảng 6 tấm tatami&amp;nbsp;&lt;em&gt;(Trans Việt: Khoảng 9 m&amp;eacute;t vu&amp;ocirc;ng)&lt;/em&gt;&amp;nbsp;c&amp;ugrave;ng với một chiếc giường, một bộ b&amp;agrave;n b&amp;agrave;n ghế v&amp;agrave; một c&amp;aacute;i tủ. Đẩy tay mở cửa sổ, t&amp;ocirc;i c&amp;oacute; thể quan s&amp;aacute;t con phố băng ngang trước mặt qu&amp;aacute;n trọ. Kể ra th&amp;igrave; khung cảnh cũng kh&amp;aacute; đẹp với một đ&amp;aacute;m trẻ hăng m&amp;aacute;u n&amp;ocirc; đ&amp;ugrave;a ph&amp;iacute;a trước.&lt;br /&gt;
Vui vẻ rời căn ph&amp;ograve;ng, t&amp;ocirc;i bước xuống tầng trệt v&amp;agrave; một hương thơm lừng t&amp;igrave;m đến mũi t&amp;ocirc;i&lt;br /&gt;
&amp;quot;Của cậu n&amp;agrave;y, xin lỗi đ&amp;atilde; khiến cậu phải đợi l&amp;acirc;u.&amp;quot;&lt;/p&gt;

&lt;p&gt;Khi t&amp;ocirc;i ngồi xuống b&amp;agrave;n, b&amp;agrave; chị chủ qu&amp;aacute;n b&amp;agrave;y ra cho t&amp;ocirc;i v&amp;agrave;i m&amp;oacute;n ăn, tr&amp;ocirc;ng kh&amp;aacute; giống b&amp;aacute;nh m&amp;igrave; thịt v&amp;agrave; rau trộn. Cho d&amp;ugrave; đ&amp;acirc;y l&amp;agrave; bữa ăn đầu ti&amp;ecirc;n ở thế giới n&amp;agrave;y, t&amp;ocirc;i cũng phải c&amp;ocirc;ng nhận l&amp;agrave; n&amp;oacute; ăn kh&amp;aacute; ngon.&amp;nbsp;&lt;br /&gt;
Ăn xong, t&amp;ocirc;i tự hỏi&amp;nbsp;&lt;em&gt;&amp;quot;M&amp;igrave;nh n&amp;ecirc;n l&amp;agrave;m g&amp;igrave; đ&amp;acirc;y?&amp;quot;&lt;/em&gt;&amp;nbsp;&lt;br /&gt;
Từ giờ ph&amp;uacute;t n&amp;agrave;y, t&amp;ocirc;i sẽ phải sống ở nơi đ&amp;acirc;y, chắc t&amp;ocirc;i cũng n&amp;ecirc;n đi quanh thị trấn một v&amp;ograve;ng nhỉ?&amp;nbsp;&lt;br /&gt;
&amp;quot;T&amp;ocirc;i ra ngo&amp;agrave;i ch&amp;uacute;t nh&amp;eacute;.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Được th&amp;ocirc;i, đi đứng cẩn thận đấy anh bạn.&amp;quot;&amp;nbsp;&lt;br /&gt;
Chị chủ qu&amp;aacute;n (h&amp;igrave;nh như được gọi l&amp;agrave; Mika-san) tiễn t&amp;ocirc;i ra ngo&amp;agrave;i. Đ&amp;acirc;y l&amp;agrave; thị trấn của một thế giới kh&amp;aacute;c, kh&amp;ocirc;ng đi thăm th&amp;uacute; th&amp;igrave; ph&amp;iacute; lắm. Bất k&amp;igrave; thứ g&amp;igrave; với t&amp;ocirc;i cũng lạ lẫm hết. Cứ việc đi xung quanh m&amp;agrave; ngắm cảnh th&amp;ocirc;i.&amp;nbsp;&lt;br /&gt;
...Cơ m&amp;agrave; tự dưng mọi người xung quanh cứ nh&amp;igrave;n t&amp;ocirc;i với &amp;aacute;nh mắt h&amp;igrave;nh vi&amp;ecirc;n đạn mới ngại chứ. Cũng phải th&amp;ocirc;i, t&amp;ocirc;i l&amp;agrave; một kẻ lạ mặt, lại th&amp;ecirc;m cặp mắt cứ l&amp;aacute;o li&amp;ecirc;n liếc nh&amp;igrave;n đủ tr&amp;ograve; đủ kiểu, tr&amp;ocirc;ng c&amp;oacute; kh&amp;aacute;c g&amp;igrave; một kẻ đ&amp;aacute;ng nghi kh&amp;ocirc;ng? Cứ như một v&amp;ograve;ng lặp v&amp;ocirc; hạn vậy, tệ thật.&amp;nbsp;&lt;br /&gt;
Khi quan s&amp;aacute;t mọi người trong thị trấn, t&amp;ocirc;i nhận ra rằng c&amp;oacute; kh&amp;aacute; nhiều người mang theo &amp;quot;h&amp;agrave;ng n&amp;oacute;ng&amp;quot; với nhiều loại kh&amp;aacute;c nhau; từ gươm gi&amp;aacute;o kiếm r&amp;igrave;u đến đủ loại roi v&amp;agrave; dao găm.&amp;nbsp;&lt;em&gt;(Trans Việt: Sao m&amp;igrave;nh lại nghĩ đến BDSM nhể?)&lt;/em&gt;&amp;nbsp;Cho d&amp;ugrave; tr&amp;ocirc;ng ch&amp;uacute;ng v&amp;ocirc; c&amp;ugrave;ng nguy hiểm nhưng chả ai lại tr&amp;ocirc;ng c&amp;oacute; vẻ l&amp;agrave; để &amp;yacute; cả. Chắc đ&amp;acirc;y l&amp;agrave; chuyện thường ng&amp;agrave;y ở huyện.&amp;nbsp;&lt;em&gt;&amp;quot;M&amp;igrave;nh c&amp;oacute; n&amp;ecirc;n mua một m&amp;oacute;n kh&amp;ocirc;ng nhỉ?&amp;quot;&lt;/em&gt;&amp;nbsp;&lt;br /&gt;
&amp;quot;Trước hết, m&amp;igrave;nh phải t&amp;igrave;m c&amp;aacute;ch kiếm ra tiền đ&amp;atilde;. D&amp;ugrave; g&amp;igrave; th&amp;igrave; đầu ti&amp;ecirc;n vẫn l&amp;agrave; tiền đ&amp;acirc;u.&amp;quot;&amp;nbsp;&lt;br /&gt;
T&amp;ocirc;i kh&amp;ocirc;ng nghĩ l&amp;agrave; m&amp;igrave;nh n&amp;ecirc;n bắt đầu với nghề săn bắn sớm v&amp;agrave;o l&amp;uacute;c n&amp;agrave;y. Nhưng... nếu t&amp;ocirc;i biết được m&amp;igrave;nh giỏi m&amp;oacute;n g&amp;igrave; th&amp;igrave; tốt qu&amp;aacute;... T&amp;ocirc;i giỏi nhất l&amp;agrave; m&amp;ocirc;n Lịch sử... Nhưng ai biết được l&amp;agrave; những kiến thức từ thế giới kh&amp;aacute;c c&amp;oacute; thể c&amp;oacute; t&amp;aacute;c dụng ở đ&amp;acirc;y kh&amp;ocirc;ng chứ?&amp;nbsp;&lt;br /&gt;
&amp;quot;Hể?&amp;quot;&amp;nbsp;&lt;br /&gt;
C&amp;aacute;i g&amp;igrave; vậy? Ồn &amp;agrave;o qu&amp;aacute;. N&amp;oacute; ph&amp;aacute;t ra từ một con hẻm nhỏ t&amp;aacute;ch ra từ đường ch&amp;iacute;nh... Một v&amp;agrave;i giọng n&amp;oacute;i đang tranh luận v&amp;agrave; cướp lời nhau.&amp;nbsp;&lt;br /&gt;
&amp;quot;M&amp;igrave;nh... c&amp;oacute; n&amp;ecirc;n đi xem kh&amp;ocirc;ng nhỉ?&amp;quot;&amp;nbsp;&lt;br /&gt;
V&amp;agrave; chẳng biết ma xui quỷ khiến thế n&amp;agrave;o m&amp;agrave; ch&amp;acirc;n t&amp;ocirc;i cứ tiếp tục rẽ v&amp;agrave;o c&amp;aacute;i ng&amp;otilde; đ&amp;oacute;...&amp;nbsp;&lt;/p&gt;
', 1, CAST(0x0000ADE40176925E AS DateTime), CAST(0x0000ADE40176925E AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2104, 2096, 1039, N'Chương 5: Cặp song sinh và khoảnh khắc ngày tàn', N'&lt;p&gt;Sau khi đặt ch&amp;acirc;n v&amp;agrave;o con hẻm nhỏ, t&amp;ocirc;i tiếp bước theo một con đường nhỏ b&amp;eacute; đến một ng&amp;otilde; cụt, nơi ph&amp;aacute;t ra tiếng bốn con người đang to tiếng c&amp;atilde;i v&amp;atilde;.&lt;br /&gt;
Một b&amp;ecirc;n l&amp;agrave; hai g&amp;atilde; đực rựa thối khắm, c&amp;ograve;n b&amp;ecirc;n kia l&amp;agrave; hai n&amp;agrave;ng c&amp;ocirc; g&amp;aacute;i xinh đẹp.&lt;br /&gt;
&lt;em&gt;&amp;#39;Hai thằng n&amp;agrave;y cũng bằng tuổi m&amp;igrave;nh &amp;agrave;?&amp;#39;&amp;nbsp;&lt;/em&gt;T&amp;ocirc;i tự hỏi vậy.&lt;br /&gt;
Nhưng n&amp;oacute;i g&amp;igrave; th&amp;igrave; n&amp;oacute;i, hai c&amp;ocirc; b&amp;eacute; n&amp;agrave;y tr&amp;ocirc;ng kh&amp;aacute; giống... hay c&amp;oacute; thể n&amp;oacute;i l&amp;agrave; thậm ch&amp;iacute; c&amp;ograve;n y hệt... một cặp sinh đ&amp;ocirc;i &amp;agrave;? D&amp;ugrave; cho họ c&amp;oacute; cho ri&amp;ecirc;ng m&amp;igrave;nh hai sắc th&amp;aacute;i c&amp;ugrave;ng kiểu t&amp;oacute;c d&amp;agrave;i ngắn kh&amp;aacute;c nhau, m&amp;aacute;i t&amp;oacute;c của mỗi người lại mang m&amp;agrave;u bạc giống nhau y s&amp;igrave; đ&amp;uacute;c.&lt;br /&gt;
Mặc d&amp;ugrave; cả hai đều đang kho&amp;aacute;c tr&amp;ecirc;n m&amp;igrave;nh chiếc &amp;aacute;o kho&amp;aacute;c đen v&amp;agrave; &amp;aacute;o trắng giống nhau, c&amp;ocirc; g&amp;aacute;i thấp hơn với m&amp;aacute;i t&amp;oacute;c d&amp;agrave;i đang mặc một chiếc quần sooc rộng đi với đ&amp;ocirc;i vớ d&amp;agrave;i ngang đầu gối trong khi người chị em t&amp;oacute;c ngắn của c&amp;ocirc; lại đang mặc quần tất đen dưới gấu v&amp;aacute;y ngắn.&lt;br /&gt;
&amp;quot;N&amp;agrave;y, đ&amp;acirc;y đ&amp;acirc;u phải l&amp;agrave; điều anh đ&amp;atilde; hứa. Đ&amp;aacute;ng lẽ gi&amp;aacute; của n&amp;oacute; phải l&amp;agrave; một xu v&amp;agrave;ng chứ!&amp;quot;&lt;br /&gt;
C&amp;ocirc; b&amp;eacute; với m&amp;aacute;i t&amp;oacute;c ngắn cao giọng gắt gỏng với hai t&amp;ecirc;n đ&amp;agrave;n &amp;ocirc;ng, nhưng hai t&amp;ecirc;n ấy một kẻ th&amp;igrave; đang mỉm cười toe to&amp;eacute;t tỏ &amp;yacute; coi thường với một phong th&amp;aacute;i kh&amp;aacute; chi l&amp;agrave; đểu c&amp;aacute;ng, c&amp;ograve;n t&amp;ecirc;n kia th&amp;igrave; đang cầm trong tay một c&amp;aacute;i g&amp;igrave; đ&amp;oacute; giống như l&amp;agrave; sừng hươu l&amp;agrave;m từ những mảnh thủy tinh s&amp;aacute;ng lấp la lấp l&amp;aacute;nh.&lt;br /&gt;
&amp;quot;C&amp;ocirc; đang n&amp;oacute;i c&amp;aacute;i qu&amp;aacute;i g&amp;igrave; vậy? Chắc chắn t&amp;ocirc;i đ&amp;atilde; n&amp;oacute;i rằng m&amp;igrave;nh sẽ mua c&amp;aacute;i sừng , nhưng với điều kiện l&amp;agrave; n&amp;oacute; c&amp;ograve;n nguy&amp;ecirc;n vẹn. C&amp;ocirc; nh&amp;igrave;n đ&amp;acirc;y n&amp;agrave;y, chỗ n&amp;agrave;y bị rạn rồi. V&amp;igrave; thế, n&amp;oacute; chỉ đ&amp;aacute;ng gi&amp;aacute; một xu bạc m&amp;agrave; th&amp;ocirc;i, nhận lấy n&amp;agrave;y.&amp;quot;&lt;br /&gt;
Đồng xu bạc lanh canh lăn đến ch&amp;acirc;n của c&amp;ocirc; g&amp;aacute;i.&lt;br /&gt;
&amp;quot;Chỉ với một vết xước m&amp;agrave; m&amp;agrave;y cũng đ** th&amp;egrave;m trả sao? Chẳng lẽ ngay tư đầu m&amp;agrave;y đ&amp;atilde;...&amp;quot;&lt;br /&gt;
C&amp;ocirc; g&amp;aacute;i t&amp;oacute;c d&amp;agrave;i liếc nh&amp;igrave;n hai t&amp;ecirc;n đ&amp;agrave;n &amp;ocirc;ng với sự bất lực trong khi người chị em t&amp;oacute;c ngắn đang nấp sau lưng lại cắn m&amp;ocirc;i m&amp;agrave; n&amp;oacute;i trong sự ch&amp;aacute;n nản:&lt;br /&gt;
&amp;quot;... Th&amp;ocirc;i đủ rồi. Ch&amp;uacute;ng t&amp;ocirc;i kh&amp;ocirc;ng cần số tiền đ&amp;oacute; nữa. C&amp;aacute;c anh trả lại ch&amp;uacute;ng t&amp;ocirc;i c&amp;aacute;i sừng đ&amp;oacute; đi.&amp;quot;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;C&amp;ocirc; g&amp;aacute;i t&amp;oacute;c d&amp;agrave;i tiến l&amp;ecirc;n ph&amp;iacute;a trước với nắm đấm đ&amp;atilde; bị siết chặt trong đ&amp;ocirc;i găng tay kh&amp;ocirc;ng khớp cặp.&lt;br /&gt;
&amp;quot;Xin lỗi nh&amp;eacute;, kh&amp;ocirc;ng được. Chỗ n&amp;agrave;y đ&amp;atilde; vốn dĩ l&amp;agrave; của t&amp;ocirc;i rồi. Sao t&amp;ocirc;i phải giao n&amp;oacute; cho...&amp;quot;&lt;br /&gt;
&amp;quot;C&amp;oacute; vẻ như mọi người đang bận rộn nhưng m&amp;agrave;... cho t&amp;ocirc;i l&amp;agrave;m phiền t&amp;iacute; nh&amp;eacute;?&amp;quot;&lt;br /&gt;
Bốn người giật m&amp;igrave;nh v&amp;agrave; nh&amp;igrave;n về ph&amp;iacute;a ph&amp;aacute;t ra tiếng n&amp;oacute;i ấy (l&amp;agrave; t&amp;ocirc;i chứ c&amp;ograve;n ai). Trong khi hai c&amp;ocirc; g&amp;aacute;i c&amp;ograve;n đang ng&amp;acirc;y ra th&amp;igrave; hai t&amp;ecirc;n đ&amp;agrave;n &amp;ocirc;ng đ&amp;atilde; trở lại với &amp;aacute;nh mắt nghi&amp;ecirc;m t&amp;uacute;c ngay tức khắc.&lt;br /&gt;
&amp;quot;Hở? Ch&amp;uacute; m&amp;agrave;y l&amp;agrave; ai đ&amp;acirc;y? C&amp;oacute; việc với bọn ta &amp;agrave;?&amp;quot;&lt;br /&gt;
&amp;quot;&amp;Agrave;, kh&amp;ocirc;ng, t&amp;ocirc;i c&amp;oacute; việc với c&amp;ocirc; g&amp;aacute;i đằng kia cơ.&amp;quot;&lt;br /&gt;
&amp;quot;Hể? T&amp;ocirc;i &amp;aacute;?&amp;quot;&lt;br /&gt;
Tảng lờ đ&amp;aacute;m đực rựa với &amp;aacute;nh mắt h&amp;igrave;nh vi&amp;ecirc;n đạn, t&amp;ocirc;i cất tiếng hỏi c&amp;ocirc; g&amp;aacute;i t&amp;oacute;c d&amp;agrave;i:&lt;br /&gt;
&amp;quot;C&amp;ocirc; sẽ b&amp;aacute;n t&amp;ocirc;i chiếc sừng n&amp;agrave;y với gi&amp;aacute; một đồng v&amp;agrave;ng chứ?&amp;quot;&lt;br /&gt;
Trong chốc l&amp;aacute;t, c&amp;ocirc; ta c&amp;oacute; vẻ như bị đơ ra nhưng cũng nhanh ch&amp;oacute;ng hiểu &amp;yacute; định của t&amp;ocirc;i v&amp;agrave; trả lời với một nụ cười:&lt;br /&gt;
&amp;quot;C&amp;oacute; chứ!&amp;quot;&lt;br /&gt;
&amp;quot;Ch&amp;uacute;ng m&amp;agrave;y n&amp;oacute;i c&amp;aacute;i g&amp;igrave; vậy? C&amp;aacute;i sừng na...&amp;quot;&lt;br /&gt;
Ngay khi t&amp;ecirc;n đ&amp;agrave;n &amp;ocirc;ng n&amp;acirc;ng chiếc sừng thủy tinh l&amp;ecirc;n qu&amp;aacute; đầu, n&amp;oacute; tan th&amp;agrave;nh từng mảnh với một tiếng &amp;quot;Rắc&amp;quot; r&amp;otilde; to. Vi&amp;ecirc;n đ&amp;aacute; m&amp;agrave; t&amp;ocirc;i n&amp;eacute;m đ&amp;atilde; tr&amp;uacute;ng đ&amp;iacute;ch.&lt;br /&gt;
&amp;quot;Ớ??? M&amp;agrave;y... M&amp;agrave;y vừa l&amp;agrave;m c&amp;aacute;i qu&amp;aacute;i g&amp;igrave; vậy?&amp;quot;&lt;br /&gt;
&amp;quot;C&amp;aacute;i sừng đ&amp;oacute; l&amp;agrave; của t&amp;ocirc;i rồi, t&amp;ocirc;i l&amp;agrave;m g&amp;igrave; m&amp;agrave; chả được. L&amp;iacute; do &amp;aacute;? T&amp;ocirc;i đ&amp;atilde; trả tiền rồi m&amp;agrave;.&amp;quot;&lt;br /&gt;
&amp;quot;Thằng khốn!&amp;quot;&lt;br /&gt;
Một t&amp;ecirc;n l&amp;ocirc;i dao từ trong t&amp;uacute;i ra v&amp;agrave; lao dến ph&amp;iacute;a t&amp;ocirc;i. T&amp;ocirc;i quan s&amp;aacute;t hắn một l&amp;uacute;c v&amp;agrave; l&amp;aacute;ch ra khỏi đường dao đ&amp;acirc;m một c&amp;aacute;ch dễ d&amp;agrave;ng. V&amp;igrave; một l&amp;iacute; do n&amp;agrave;o đ&amp;oacute; m&amp;agrave; t&amp;ocirc;i ho&amp;agrave;n to&amp;agrave;n tự tin rằng m&amp;igrave;nh c&amp;oacute; thể l&amp;agrave;m điều đ&amp;oacute; ngay từ những gi&amp;acirc;y ph&amp;uacute;t đầu ti&amp;ecirc;n. Từ những bước ch&amp;acirc;n đến quỹ đạo của con dao, t&amp;ocirc;i c&amp;oacute; thể ho&amp;agrave;n to&amp;agrave;n c&amp;oacute; thể nh&amp;igrave;n thấy ch&amp;uacute;ng.&lt;br /&gt;
Liệu đ&amp;acirc;y c&amp;oacute; phải l&amp;agrave; khả năng tăng cường sức mạnh m&amp;agrave; Thượng đế trao cho t&amp;ocirc;i kh&amp;ocirc;ng nhỉ? Hơi ngả người về đằng sau v&amp;agrave; quẹt v&amp;agrave;o ch&amp;acirc;n hắn v&amp;agrave; rồi thả hết ga m&amp;agrave; tống v&amp;agrave;o giữa người t&amp;ecirc;n n&amp;agrave;y một c&amp;uacute; đấm đầy chất One-punch Man.&lt;br /&gt;
&amp;quot;Ughhhh!!!&amp;quot;&lt;br /&gt;
V&amp;agrave; thế l&amp;agrave; hắn ta gục tại chỗ m&amp;agrave; ch&amp;igrave;m trong v&amp;ocirc; thức.&lt;br /&gt;
Khi t&amp;ocirc;i quay đầu lại, t&amp;ecirc;n kia vẫn c&amp;ograve;n đang tẩn nhau với c&amp;ocirc; em t&amp;oacute;c d&amp;agrave;i. Hắn vung r&amp;igrave;u nhưng đ&amp;ograve;n đ&amp;aacute;nh lại thiếu hẳn sức mạnh cần c&amp;oacute; v&amp;agrave; bị chặn lại bởi đ&amp;ocirc;i găng của c&amp;ocirc;. Cuối c&amp;ugrave;ng, c&amp;ocirc; g&amp;aacute;i tung ra một c&amp;uacute; đấm nhanh như chớp v&amp;agrave;o giữa mặt đối phương, mắt hắn trở n&amp;ecirc;n trắng d&amp;atilde; v&amp;agrave; đổ nho&amp;agrave;i xuống mặt đường.&lt;br /&gt;
Hừ, nếu mọi chuyện dễ ăn thế n&amp;agrave;y th&amp;igrave; kể ra việc n&amp;eacute;m vỡ chiếc gạc c&amp;oacute; vẻ l&amp;agrave; hơi thừa th&amp;atilde;i... D&amp;ugrave; g&amp;igrave; th&amp;igrave; t&amp;ocirc;i cũng đ&amp;atilde; nghĩ rằng c&amp;oacute; thể can bọn họ nếu ph&amp;aacute; hủy đi c&amp;aacute;i nguy&amp;ecirc;n nh&amp;acirc;n của cuộc c&amp;atilde;i v&amp;atilde; n&amp;agrave;y. Đứng trước con g&amp;aacute;i m&amp;agrave;, phải lấy le hay kun ngầu t&amp;iacute; ch&amp;uacute;t chứ... Mỗi tội t&amp;ocirc;i lại cảm thấy m&amp;igrave;nh thật ngu ngốc v&amp;agrave; hối tiếc ngay sau đ&amp;oacute;, chẳng tr&amp;aacute;ch được. Đi l&amp;agrave;m việc tốt nhưng lại bị phản dame ạ. T&amp;ocirc;i l&amp;ocirc;i một xu v&amp;agrave;ng từ trong t&amp;uacute;i ra v&amp;agrave; đưa cho c&amp;ocirc; g&amp;aacute;i t&amp;oacute;c d&amp;agrave;i.&lt;br /&gt;
&amp;quot;Của c&amp;ocirc; đ&amp;acirc;y, một đồng v&amp;agrave;ng.&amp;quot;&lt;/p&gt;

&lt;p&gt;&amp;quot;Anh chắc chứ? Anh vừa gi&amp;uacute;p ch&amp;uacute;ng t&amp;ocirc;i m&amp;agrave;...&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Hừm, t&amp;ocirc;i l&amp;agrave; người đ&amp;atilde; ph&amp;aacute; c&amp;aacute;i sừng m&amp;agrave;. Chuyện đ&amp;oacute; kh&amp;ocirc;ng quan trọng đ&amp;acirc;u, c&amp;ocirc; cứ nhận lấy đi.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Nếu vậy th&amp;igrave; em xin ph&amp;eacute;p.&amp;quot;&amp;nbsp;&lt;br /&gt;
N&amp;oacute;i xong, c&amp;ocirc; g&amp;aacute;i nhận lấy đồng xu khi vẫn đang mang tr&amp;ecirc;n tay đ&amp;ocirc;i găng chiến.&amp;nbsp;&lt;br /&gt;
&amp;quot;C&amp;aacute;m ơn anh v&amp;igrave; đ&amp;atilde; gi&amp;uacute;p, t&amp;ocirc;i l&amp;agrave; Elsie Shilueska v&amp;agrave; đ&amp;acirc;y l&amp;agrave; đứa em g&amp;aacute;i sinh đ&amp;ocirc;i của t&amp;ocirc;i, Lindsey Shilueska.&amp;quot;&amp;nbsp;&lt;br /&gt;
&lt;em&gt;(Trans Eng: Rất k&amp;eacute;m khi đặt t&amp;ecirc;n)&lt;/em&gt;&amp;nbsp;&lt;br /&gt;
&amp;quot;C&amp;aacute;m... c&amp;aacute;m ơn anh.&amp;quot;&amp;nbsp;&lt;br /&gt;
C&amp;ocirc; b&amp;eacute; t&amp;oacute;c ngắn đứng sau lưng c&amp;uacute;i đầu với một nụ cười mỉm tr&amp;ecirc;n m&amp;ocirc;i.&amp;nbsp;&lt;br /&gt;
Vậy ra bọn họ l&amp;agrave; chị em sinh đ&amp;ocirc;i thật &amp;agrave;. Em t&amp;oacute;c d&amp;agrave;i l&amp;agrave; Elsie c&amp;ograve;n t&amp;oacute;c ngắn l&amp;agrave; Lindsey&amp;nbsp;&lt;em&gt;(Trans Việt: Th&amp;uacute; nhận đ&amp;ecirc;, c&amp;aacute;c bố cũng từng l&amp;agrave;m thế)&lt;/em&gt;&amp;nbsp;O-k&amp;ecirc; con d&amp;ecirc;, t&amp;ocirc;i nhớ rồi, chẳng thể n&amp;agrave;o ph&amp;acirc;n biệt bọn họ chỉ với kiểu t&amp;oacute;c v&amp;agrave; trang phục cả.&amp;nbsp;&lt;br /&gt;
&amp;quot;T&amp;ocirc;i l&amp;agrave; Mochiuzki Touya. &amp;Agrave; m&amp;agrave; n&amp;oacute;i lu&amp;ocirc;n Touya mới l&amp;agrave; t&amp;ecirc;n nh&amp;eacute;.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Hmmm, họ v&amp;agrave; t&amp;ecirc;n ri&amp;ecirc;ng của anh đảo chỗ cho nhau &amp;agrave;. Bộ anh l&amp;agrave; d&amp;acirc;n Ishen hả?&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Ờ... đại loại thế.&amp;quot;&amp;nbsp;&lt;br /&gt;
T&amp;ocirc;i d&amp;ugrave;ng lại c&amp;acirc;u m&amp;agrave; t&amp;ocirc;i đ&amp;atilde; n&amp;oacute;i với b&amp;agrave; chị Mika-san tại qu&amp;aacute;n trọ khi c&amp;ocirc; ta cũng hỏi một c&amp;acirc;u tương tự như thế. Cơ m&amp;agrave; Ishen l&amp;agrave; nước như thế n&amp;agrave;o vậy. T&amp;ocirc;i hứng th&amp;uacute; rồi đ&amp;acirc;y.&amp;nbsp;&lt;br /&gt;
&amp;quot;Vậy sao, chắc anh Touya cũng mới đến thị trấn n&amp;agrave;y nhỉ?&amp;quot;&amp;nbsp;&lt;br /&gt;
Elise đột ngột hỏi trong khi đang nhấp nh&amp;aacute;p cốc nước hoa quả. Mới đến thị trấn... mới đến thế giới n&amp;agrave;y th&amp;igrave; đ&amp;uacute;ng hơn.&amp;nbsp;&lt;br /&gt;
Sau vụ l&amp;ugrave;m x&amp;ugrave;m đ&amp;oacute;, ch&amp;uacute;ng t&amp;ocirc;i trở về qu&amp;aacute;n trọ&amp;nbsp;&lt;em&gt;Mặt trăng bạc&lt;/em&gt;. Họ cũng đang t&amp;igrave;m ph&amp;ograve;ng trọ n&amp;ecirc;n t&amp;ocirc;i cũng tiện tay m&amp;agrave; đưa họ theo lu&amp;ocirc;n. Thấy t&amp;ocirc;i mang th&amp;ecirc;m kh&amp;aacute;ch h&amp;agrave;ng về, Mika-san mừng qu&amp;yacute;nh cả l&amp;ecirc;n. Kể ra th&amp;igrave; b&amp;agrave; chị n&amp;agrave;y cũng kh&amp;aacute; dễ đo&amp;aacute;n. Bọn t&amp;ocirc;i b&amp;agrave;n về đủ thứ tr&amp;ecirc;n đời chuyện trong khi đang d&amp;ugrave;ng bữa tối b&amp;agrave; chủ qu&amp;aacute;n chuẩn bị cho. Sau đ&amp;oacute; th&amp;igrave; tận hưởng ly tr&amp;agrave; ấm của buổi tối. Ch&amp;uacute;ng t&amp;ocirc;i đến đ&amp;acirc;y bởi đ&amp;aacute;m đ&amp;agrave;n &amp;ocirc;ng kia đ&amp;atilde; y&amp;ecirc;u cầu vận chuyển chiếc sừng tinh thể, v&amp;agrave; bọn t&amp;ocirc;i đ&amp;atilde; phải ăn h&amp;agrave;nh. Nhưng m&amp;agrave; ngẫm lại th&amp;igrave; đ&amp;uacute;ng l&amp;agrave; c&amp;oacute; điều g&amp;igrave; đ&amp;oacute; kh&amp;ocirc;ng đ&amp;uacute;ng cho lắm.&amp;nbsp;&lt;br /&gt;
&amp;quot;Đ&amp;oacute; l&amp;agrave; l&amp;iacute; do tại sao m&amp;agrave; em phản đối v&amp;agrave; muốn chị dừng lại... Onee-chan. Chỉ v&amp;igrave; chị kh&amp;ocirc;ng nghe em đấy.&amp;quot;&amp;nbsp;&lt;br /&gt;
C&amp;ocirc; em g&amp;aacute;i Lindsey liếc x&amp;eacute;o b&amp;agrave; chị Elsie của m&amp;igrave;nh. Ồ, h&amp;oacute;a ra đ&amp;uacute;ng l&amp;agrave; c&amp;oacute; một người em g&amp;aacute;i đ&amp;aacute;ng tin cậy gh&amp;igrave;m lại b&amp;agrave; chị xốc nổi của m&amp;igrave;nh thật. Elsie l&amp;agrave; dạng người chẳng biết sợ ai cả, trong khi đ&amp;oacute; Lindsey lại mang một vẻ hay ngượng ng&amp;ugrave;ng trước người lạ.&amp;nbsp;&lt;br /&gt;
&amp;quot;Vậy tại sao hai đứa lại nhận y&amp;ecirc;u cầu từ bọn ch&amp;uacute;ng chứ?&amp;quot;&amp;nbsp;&lt;br /&gt;
T&amp;ocirc;i muốn nghe xem họ nghĩ g&amp;igrave; khi m&amp;agrave; lại đi l&amp;agrave;m ăn với mấy kẻ tr&amp;ocirc;ng c&amp;oacute; vẻ v&amp;ocirc; c&amp;ugrave;ng mờ &amp;aacute;m như vậy.&amp;nbsp;&lt;br /&gt;
&amp;quot;Chỉ l&amp;agrave; chốn quen biết sơ qua th&amp;ocirc;i. Trước khi bọn em thịt con hươu đ&amp;oacute;, c&amp;oacute; nguồn tin n&amp;oacute;i rằng c&amp;oacute; người muốn chiếc sừng. Em cứ nghĩ đ&amp;oacute; l&amp;agrave; vận may hiếm c&amp;oacute;, nhưng... đ&amp;uacute;ng l&amp;agrave; ch&amp;uacute;ng ta sẽ gặp rắc rối khi kh&amp;ocirc;ng c&amp;oacute; lấy một y&amp;ecirc;u cầu ch&amp;iacute;nh thức từ hội.&amp;quot;&amp;nbsp;&lt;br /&gt;
Elsie thở d&amp;agrave;i, c&amp;uacute;i gằm mặt.&amp;nbsp;&lt;br /&gt;
&amp;quot;Lindsey, hay nh&amp;acirc;n cơ hội n&amp;agrave;y ch&amp;uacute;ng ta đăng k&amp;yacute; một chỗ trong đ&amp;oacute; đi.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Cũng hay đấy, an to&amp;agrave;n l&amp;agrave; tr&amp;ecirc;n hết m&amp;agrave;. Vậy mai đi nh&amp;eacute;.&amp;quot;&amp;nbsp;&lt;br /&gt;
Hội đo&amp;agrave;n. Nếu t&amp;ocirc;i kh&amp;ocirc;ng nhầm th&amp;igrave; thứ đấy cũng hay c&amp;oacute; trong game khi họ đứng ra trung gian cho nhưng người đang t&amp;igrave;m một c&amp;ocirc;ng việc n&amp;agrave;o đ&amp;oacute; tại một c&amp;aacute;i văn ph&amp;ograve;ng giới thiệu việc l&amp;agrave;m cỡ lớn.&amp;nbsp;&lt;br /&gt;
Tại đ&amp;oacute; c&amp;oacute; kh&amp;aacute; nhiều loại nhiệm vụ m&amp;agrave; bạn c&amp;oacute; thể ho&amp;agrave;n th&amp;agrave;nh ch&amp;uacute;ng để kiếm tiền thưởng.&amp;nbsp;&lt;br /&gt;
&amp;quot;Nếu như ổn th&amp;igrave; ng&amp;agrave;y mai cho t&amp;ocirc;i đi c&amp;ugrave;ng được chứ? T&amp;ocirc;i cũng muốn đăng k&amp;yacute; nữa.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Tốt qu&amp;aacute;. Vậy mai ch&amp;uacute;ng ta đi chung đi.&amp;quot;&amp;nbsp;&lt;br /&gt;
&amp;quot;Được, được... Đi c&amp;ugrave;ng nhau.&amp;quot;&amp;nbsp;&lt;br /&gt;
Cả hai chị em đều vui vẻ đồng &amp;yacute; ngay lắp tự. Nếu như đi đăng k&amp;yacute; v&amp;agrave;o đ&amp;oacute; c&amp;oacute; khi t&amp;ocirc;i cũng c&amp;oacute; thể kiếm ch&amp;uacute;t tiền ti&amp;ecirc;u. Thậm ch&amp;iacute; nếu được th&amp;igrave; t&amp;ocirc;i cũng c&amp;oacute; thể c&amp;oacute; một cuộc sống ổn định tại thế giới n&amp;agrave;y.&amp;nbsp;&lt;br /&gt;
Cuộc tr&amp;ograve; chuyện kết th&amp;uacute;c, t&amp;ocirc;i chia tay hai người v&amp;agrave; trở về ph&amp;ograve;ng. Cuối c&amp;ugrave;ng ng&amp;agrave;y cũng đ&amp;atilde; t&amp;agrave;n rồi... d&amp;agrave;i qu&amp;aacute; cũng lắm chuyện xảy ra nhể?&amp;nbsp;&lt;br /&gt;
Bị s&amp;eacute;t đ&amp;aacute;nh, chết, đến thế giới kh&amp;aacute;c, b&amp;aacute;n quần &amp;aacute;o, thu&amp;ecirc; ph&amp;ograve;ng trọ v&amp;agrave; đ&amp;aacute;nh nhau lấy le với g&amp;aacute;i. V&amp;acirc;ng kính thưa qu&amp;yacute; vị, một ng&amp;agrave;y d&amp;agrave;i lắm chuyện.&amp;nbsp;&lt;br /&gt;
Ngồi tr&amp;ecirc;n tấm nệm &amp;ecirc;m &amp;aacute;i m&amp;agrave; ghi nhật k&amp;yacute; tr&amp;ecirc;n c&amp;aacute;i ứng dụng của smarphone. T&amp;ocirc;i cũng xem qua mấy trang b&amp;aacute;o mạng nữa. Ồ, đội Người khổng lồ vừa chiến thắng. V&amp;agrave; ban nhạc kia sắp giải thể. Tệ thật.&amp;nbsp;&lt;br /&gt;
Coi thế đủ rồi, t&amp;ocirc;i tắt chiếc điện thoại v&amp;agrave; trườn l&amp;ecirc;n giường. Ng&amp;agrave;y mai t&amp;ocirc;i sẽ đến hội v&amp;agrave; đăng k&amp;yacute;. Cơ m&amp;agrave; chỗ đ&amp;oacute; l&amp;agrave; như thế n&amp;agrave;o nhỉ...?&amp;nbsp;&lt;br /&gt;
Liền sau đ&amp;oacute;, tiếng ng&amp;aacute;y đ&amp;atilde; lấn &amp;aacute;t tất cả &amp;acirc;m thanh xung quanh...&amp;nbsp;&lt;/p&gt;
', 1, CAST(0x0000ADE40176CF3F AS DateTime), CAST(0x0000ADE40176CF3F AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2105, 1068, 1039, N'Chương 1: ep1', N'&lt;p&gt;&lt;iframe frameborder=&quot;0&quot; height=&quot;720&quot; name=&quot;M&#232;o m&#225;y Kuro&quot; scrolling=&quot;no&quot; src=&quot;https://www.youtube.com/embed/_SmLJmQ3Le0&quot; title=&quot;Youtube video player &quot; width=&quot;1240&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;
', 1, CAST(0x0000ADE40178859A AS DateTime), CAST(0x0000ADE40178859A AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2106, 1068, 1039, N'Chương 2:  ep 2', N'&lt;p&gt;&lt;iframe frameborder=&quot;0&quot; height=&quot;720&quot; scrolling=&quot;no&quot; src=&quot;https://www.youtube.com/embed/_ndWbXTWNXk&quot; width=&quot;1240&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;
', 1, CAST(0x0000ADE4017A49EB AS DateTime), CAST(0x0000ADE4017A49EB AS DateTime))
INSERT [dbo].[DB_CHUONG] ([id_chuong], [id_truyen], [id_user], [ten_chuong], [noidung_chuong], [status_], [created_at], [updated_at]) VALUES (2107, 1068, 1039, N'Chương 3: ep3', N'&lt;p&gt;&lt;iframe frameborder=&quot;0&quot; height=&quot;720&quot; scrolling=&quot;no&quot; src=&quot;https://www.youtube.com/embed/gLCl2fB1elo&quot; width=&quot;1240&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;
', 1, CAST(0x0000ADE4017A9C6E AS DateTime), CAST(0x0000ADE4017A9C6E AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_CHUONG] OFF
SET IDENTITY_INSERT [dbo].[DB_COMMENT] ON 

INSERT [dbo].[DB_COMMENT] ([id_cmt], [id_user], [id_truyen], [id_chuong], [noidung_cmt], [status_], [created_at], [updated_at]) VALUES (2058, 7, 1068, 2105, N'1234', 1, CAST(0x0000ADE40184AE92 AS DateTime), CAST(0x0000ADE40184AE92 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_COMMENT] OFF
SET IDENTITY_INSERT [dbo].[DB_LUOTXEM] ON 

INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (1, 1034, 2096, 2100, CAST(0x0000ADED010BF4B1 AS DateTime), CAST(0x0000ADED010BF4B1 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2, 1034, 2096, 2101, CAST(0x0000ADED010C03E8 AS DateTime), CAST(0x0000ADED010C03E8 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3, 1034, 1076, 2098, CAST(0x0000ADED01121900 AS DateTime), CAST(0x0000ADED01121900 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (4, 1034, 2096, 2104, CAST(0x0000ADED01123C25 AS DateTime), CAST(0x0000ADED01123C25 AS DateTime))
INSERT [dbo].[DB_LUOTXEM] ([id], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (5, 1034, 2096, 2103, CAST(0x0000ADED0115D4B9 AS DateTime), CAST(0x0000ADED0115D4B9 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_LUOTXEM] OFF
SET IDENTITY_INSERT [dbo].[DB_THELOAI] ON 

INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (4, N'Hài Hước', N'Vui nhộn', 1, CAST(0x0000ADD60084AD9E AS DateTime), CAST(0x0000ADD60084AD9E AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (5, N'Phiêu Lưu', N'Hành trình chu du khắp thế giới', 1, CAST(0x0000ADD60084D8A8 AS DateTime), CAST(0x0000ADD60084D8A8 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (6, N'Harem', N'Hậu cung', 1, CAST(0x0000ADD60087C155 AS DateTime), CAST(0x0000ADD60087C155 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (7, N'Đời thường', N'Cuộc sống hàng ngày', 1, CAST(0x0000ADD60087EE7D AS DateTime), CAST(0x0000ADD60087EE7D AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (8, N'Siêu nhiên', N'Hiện tượng kỳ ảo giả tưởng', 1, CAST(0x0000ADD60089680C AS DateTime), CAST(0x0000ADD60089680C AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (9, N'Siêu năng lực', N'Nhân vật có khả năng đặc biệt', 1, CAST(0x0000ADD600899562 AS DateTime), CAST(0x0000ADD600899562 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (10, N'Lịch sử', N'Đề tài có liên quan tới lịch sử', 1, CAST(0x0000ADD60089CBE1 AS DateTime), CAST(0x0000ADD60089CBE1 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (12, N'Mecha', N'Cỗ máy chiến đấu', 1, CAST(0x0000ADD60089E16F AS DateTime), CAST(0x0000ADD60089E16F AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (13, N'Trinh thám', N'Điều tra phá những vụ án không lời giải', 1, CAST(0x0000ADD6008A1B6C AS DateTime), CAST(0x0000ADD6008A1B6C AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (14, N'Lãng mạn', N'Tình cảm ướt át', 1, CAST(0x0000ADD6008AE3F2 AS DateTime), CAST(0x0000ADD6008AE3F2 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (15, N'Âm nhạc', N'Ca hát nhảy múa', 1, CAST(0x0000ADD6008B5924 AS DateTime), CAST(0x0000ADD6008B5924 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (16, N'Oneshot', N'Truyện ngắn 1 chương', 1, CAST(0x0000ADD6008CFC18 AS DateTime), CAST(0x0000ADD6008CFC18 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (17, N'Kinh dị', N'Rùng rợn máu me', 1, CAST(0x0000ADD6008D5DE4 AS DateTime), CAST(0x0000ADD6008D5DE4 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (18, N'Drama', N'Chính kịch', 1, CAST(0x0000ADD6008D9416 AS DateTime), CAST(0x0000ADD6008D9416 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (20, N'Shounen', N'Nói về nv nam chủ yếu ở tuổi vị thành niên', 1, CAST(0x0000ADD6008ECB73 AS DateTime), CAST(0x0000ADD6008ECB73 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (21, N'Shoujo', N'Nói về nv nữ chủ yếu ở tuổi vị thành niên', 1, CAST(0x0000ADD6008EF769 AS DateTime), CAST(0x0000ADD6008EF769 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (22, N'Thể thao', N'Hoạt động tăng cường sức khỏe', 1, CAST(0x0000ADD6008F67C9 AS DateTime), CAST(0x0000ADD6008F67C9 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (26, N'Khoa học Viễn tưởng', N'KH tiên tiến vượt xa KH hiện nay', 1, CAST(0x0000ADD600904BC6 AS DateTime), CAST(0x0000ADD600904BC6 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (27, N'Yaoi', N'Đam mĩ nam x nam', 1, CAST(0x0000ADD60090B5D5 AS DateTime), CAST(0x0000ADD60090B5D5 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (28, N'Yuri', N'Đam mĩ nữ x nữ', 1, CAST(0x0000ADD60090DA6A AS DateTime), CAST(0x0000ADD60090DA6A AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (29, N'Chuyển sinh', N'Tái sinh ở 1 thế giới khác', 1, CAST(0x0000ADD6009501E6 AS DateTime), CAST(0x0000ADD6009501E6 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (31, N'Xuyên không', N'Du hành thời gian', 1, CAST(0x0000ADD6009511EA AS DateTime), CAST(0x0000ADD6009511EA AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (32, N'Phép thuật', N'Ma thuật ', 1, CAST(0x0000ADD600D94139 AS DateTime), CAST(0x0000ADD600D94139 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (33, N'Fantasy', N'Vùng đất thần tiên mơ mộng', 1, CAST(0x0000ADD600D9F624 AS DateTime), CAST(0x0000ADD600D9F624 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (34, N'Demons', N'Ác quỷ.', 1, CAST(0x0000ADD600DA2B7F AS DateTime), CAST(0x0000ADD600DA2B7F AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (35, N'Game', N'Trò chơi', 1, CAST(0x0000ADD600DA4430 AS DateTime), CAST(0x0000ADD600DA4430 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (36, N'Space', N'Ngoài không gian vũ trụ', 1, CAST(0x0000ADD600DA6E2B AS DateTime), CAST(0x0000ADD600DA6E2B AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (37, N'Tragedy', N'Kết cục mất mát hay sự rủi ro to lớn ', 1, CAST(0x0000ADD600DAF790 AS DateTime), CAST(0x0000ADD600DAF790 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (38, N'Bí ẩn', N'Những sự việc không thể lý giải được.', 1, CAST(0x0000ADD600DB6AEF AS DateTime), CAST(0x0000ADD600DB6AEF AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (39, N'Học đường', N'Nói về những hoạt động ở trường học', 1, CAST(0x0000ADD6014E7227 AS DateTime), CAST(0x0000ADD6014E7227 AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (40, N'Ecchi', N'Độ tuổi từ 16+ trở lên', 1, CAST(0x0000ADE20161C30D AS DateTime), CAST(0x0000ADE20161C30D AS DateTime), NULL)
INSERT [dbo].[DB_THELOAI] ([id_theloai], [ten_theloai], [mota_theloai], [status_], [created_at], [updated_at], [id_user]) VALUES (41, N'Quân đội', N'Chiến tranh quân đội', 1, CAST(0x0000ADE201629DB8 AS DateTime), CAST(0x0000ADE201629DB8 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[DB_THELOAI] OFF
SET IDENTITY_INSERT [dbo].[DB_THUVIEN] ON 

INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2054, 7, 1078, 1072, CAST(0x0000ADDF00A56F1E AS DateTime), CAST(0x0000ADDF00A5E478 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2061, 7, 1099, 1077, CAST(0x0000ADE000509118 AS DateTime), CAST(0x0000ADE000509692 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2062, 7, 1073, 1084, CAST(0x0000ADE0014DE6E5 AS DateTime), CAST(0x0000ADE0014F83A6 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2063, 7, 1088, 1093, CAST(0x0000ADE001588AB4 AS DateTime), CAST(0x0000ADE0016A930E AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (2064, 1034, 1088, 1092, CAST(0x0000ADE1008D6D01 AS DateTime), CAST(0x0000ADE1008D873A AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3056, 1034, 1102, 1091, CAST(0x0000ADE201506546 AS DateTime), CAST(0x0000ADE4015CB997 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3057, 1026, 1073, 1084, CAST(0x0000ADE2015563BE AS DateTime), CAST(0x0000ADE201556971 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3058, 1026, 1102, 2082, CAST(0x0000ADE40158A359 AS DateTime), CAST(0x0000ADE40158BBBF AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3059, 1034, 1073, 1079, CAST(0x0000ADE401638D1F AS DateTime), CAST(0x0000ADE401645D1C AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3060, 1039, 1073, 1079, CAST(0x0000ADE4016B63B4 AS DateTime), CAST(0x0000ADE4016B6D52 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3061, 1039, 1049, 2084, CAST(0x0000ADE4016D4F30 AS DateTime), CAST(0x0000ADE4016D5284 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3062, 1034, 1049, 2084, CAST(0x0000ADE40171C7C1 AS DateTime), CAST(0x0000ADE40171C7C1 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3063, 1034, 1076, 2098, CAST(0x0000ADE4017546FC AS DateTime), CAST(0x0000ADED011218FC AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3064, 1034, 1071, 2099, CAST(0x0000ADE40175BF79 AS DateTime), CAST(0x0000ADE401778169 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3065, 1039, 1068, 2107, CAST(0x0000ADE401789782 AS DateTime), CAST(0x0000ADE4017AB7CF AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3066, 7, 1068, 2105, CAST(0x0000ADE4017A52E9 AS DateTime), CAST(0x0000ADE40184AF09 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3067, 1034, 2096, 2103, CAST(0x0000ADED00F58E8E AS DateTime), CAST(0x0000ADED0115DAF8 AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3068, 7, 2096, 2100, CAST(0x0000ADED00F5BA2A AS DateTime), CAST(0x0000ADED00F5BA2A AS DateTime))
INSERT [dbo].[DB_THUVIEN] ([id_thuvien], [id_user], [id_truyen], [id_chuong], [created_at], [updated_at]) VALUES (3069, 1034, 1068, 2105, CAST(0x0000ADED0115F847 AS DateTime), CAST(0x0000ADED0115F847 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_THUVIEN] OFF
SET IDENTITY_INSERT [dbo].[DB_TRUYEN] ON 

INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (19, 7, N'Thám tử lừng danh Conan', N'Aoyama Gosho', N'<p>Th&aacute;m Tử Lừng Danh Conan được mua bản quyền v&agrave; được cập nhật ph&aacute;t s&oacute;ng mới nhất tr&ecirc;n ứng dụng giải tr&iacute; POPS. Đ&acirc;y l&agrave; bộ phim hoạt h&igrave;nh chuyển thể từ truyện tranh hấp dẫn nhất: Th&aacute;m Tử Lừng Danh Conan của t&aacute;c giả Aoyama Gosho. Phim Conan kể về thần đồng 17 tuổi Shinichi Kudo - c&ograve;n được biết đến với biệt danh &ldquo;Cứu tinh của Sở Cảnh s&aacute;t Nhật Bản&rdquo; - người thường xuy&ecirc;n gi&uacute;p lực lượng cảnh s&aacute;t giải quyết c&aacute;c vụ &aacute;n phức tạp.</p>
', 1, N'7885Nhan_vat_Tham_tu_lung_danh_Conan.jpg', N'100000', CAST(0x0000ADDC00A61150 AS DateTime), CAST(0x0000ADDC00A73FFF AS DateTime), N'Tham-tu-lung-danh-conan-7885', 84)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (21, 2, N'Thám tử đã chết', N'Nigojuu', N'&lt;p&gt;Kimihiko Kimitduka, một thanh ni&amp;ecirc;n đ&amp;atilde; trở th&amp;agrave;nh trợ thủ của một th&amp;aacute;m tử được gọi l&amp;agrave; Siesta trong một vụ tấn c&amp;ocirc;ng m&amp;aacute;y bay tr&amp;ecirc;n kh&amp;ocirc;ng v&amp;agrave;o bốn năm trước. Kimihiko v&amp;agrave; Siesta đ&am', 1, N'2484tantei.jpg', N'1500000', CAST(0x0000ADDC00AB31A3 AS DateTime), CAST(0x0000ADDC00AD17E0 AS DateTime), N'Tham-tu-da-chet-2484', 119)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (24, 7, N'TRỞ THÀNH KẺ VÔ LẠI CỦA NHÀ BÁ TƯỚC', N'Yoo Ryeo Han', N'&lt;p&gt;Khi mở mắt ra, l&amp;agrave; thế giới trong 1 cuốn tiểu thuyết&lt;/p&gt;

&lt;p&gt;&amp;lsquo;Sự ra đời của anh h&amp;ugrave;ng&amp;rsquo;&lt;/p&gt;

&lt;p&gt;V&amp;agrave; lại c&amp;ograve;n l&amp;agrave; trong cơ thể của t&amp;ecirc;n v&amp;ocirc; lại nổi tiếng của gia đ&amp;igrave;nh', 1, N'1439iw3cgs.jpg', N'0', CAST(0x0000ADDC01742860 AS DateTime), CAST(0x0000ADDC018819D4 AS DateTime), N'TRO-THANH-KE-VO-LAI-CUA-NHA-BA-TUOC-1439', 11)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (28, 2, N'Cô em gái bướng bỉnh', N'Khương Duy', N'&lt;p&gt;C&amp;ocirc; em g&amp;aacute;i cứng đầu bướng bỉnh của t&amp;ocirc;i&lt;/p&gt;
', 1, N'4156coemgaibuongbinh.jpg', N'1000000', CAST(0x0000ADDD0085A2FB AS DateTime), CAST(0x0000ADDD0085A2FB AS DateTime), N'Co-em-gai-buong-binh-4156', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (29, 2, N'Bắt đầu lại ở thế giới khác từ con số 0', N'Tappei Nagatsuki', N'&lt;p&gt;Trong phim Subaru Natsuki l&amp;agrave; một học sinh Trung học b&amp;igrave;nh thường, cậu bị triệu hồi đến một thế giới kh&amp;aacute;c v&amp;agrave; được cứu bởi một c&amp;ocirc; g&amp;aacute;i xinh đẹp.&amp;nbsp;&lt;/p&gt;
', 1, N'5982rezero_kara_hajimeru_isekai_seikatsu_memory_snow_anime_movie_dvd_1563252493_3a7bf666b_progressive.jpg', N'30000', CAST(0x0000ADDD0087235A AS DateTime), CAST(0x0000ADDD0087235A AS DateTime), N'Bat-dau-lai-o-the-gioi-khac-tu-con-so-0-4138', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1029, 7, N'Game thủ trở lại', N'Đang cập nhật', N'<p>V&agrave;o thời kỳ đầu của game thực tế ảo đ&atilde; xuất hiện một nh&acirc;n vật bất bại. Tuy nhi&ecirc;n, anh ta đột nhi&ecirc;n biến mất m&agrave; kh&ocirc;ng ai r&otilde; l&yacute; do. Giờ đ&acirc;y, anh ta đ&atilde; quay lại sau một thời gian vắng b&oacute;ng.</p>
', 1, N'2767gamer.jpg', N'0', CAST(0x0000ADDD008FD2FC AS DateTime), CAST(0x0000ADDD008FD2FC AS DateTime), N'Game-thu-tro-lai-2767', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1042, 2, N'7 viên ngọc rồng', N'khang', N'&lt;p&gt;&lt;strong&gt;Bảy vi&amp;ecirc;n ngọc rồng&amp;nbsp;&lt;/strong&gt;kh&amp;ocirc;ng chỉ d&amp;agrave;nh cho trẻ em, ngay cả ở độ tuổi đ&amp;atilde; trưởng th&amp;agrave;nh.&lt;/p&gt;

&lt;p&gt;Kh&amp;ocirc;ng &amp;iacute;t người trong ch&amp;uacute;ng ta vẫn c&amp;oacute; thể kể t&amp;ecir', 1, N'48847vienngocrongjpg.jpg', N'200000', CAST(0x0000ADDD00A8AC32 AS DateTime), CAST(0x0000ADDD00A8AC32 AS DateTime), N'7-vien-ngoc-rong-4884', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1045, 7, N'Bạn gái thuê', N'Kiên', N'&lt;p&gt;...&lt;/p&gt;
', 1, N'7427Bạn gái thuê.jpg', N'20000', CAST(0x0000ADDD00A9CB8A AS DateTime), CAST(0x0000ADDD00A9CB8A AS DateTime), N'Ban-gai-thue-7427', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1047, 7, N'Cô gái văn chương', N'Duy Anh', N'&lt;p&gt;...&lt;/p&gt;
', 1, N'7932Co_gai_van_chuong.jpeg', N'100000', CAST(0x0000ADDD00AA3FB5 AS DateTime), CAST(0x0000ADDD00AA3FB5 AS DateTime), N'Co-gai-van-chuong-7932', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1048, 7, N'Cô hầu gái rồng', N'khang', N'&lt;p&gt;...&lt;/p&gt;
', 1, N'2772Cô hầu gái rồng.jpg', N'100000', CAST(0x0000ADDD00AA864A AS DateTime), CAST(0x0000ADDD00AA864A AS DateTime), N'Co-hau-gai-rong-2772', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1049, 7, N'Công cuộc tái thiết lập vương quốc của anh hùng chủ nghĩa hiện tượng', N'Watanabe Takashi', N'&lt;p&gt;&amp;quot;&amp;Uacute;m ba la x&amp;igrave; b&amp;ugrave;a, người anh h&amp;ugrave;ng!&amp;quot;. Với c&amp;acirc;u thoại x&amp;agrave;m x&amp;iacute; đ&amp;oacute;, Kazuya Souma đ&amp;atilde; thấy m&amp;igrave;nh được triệu hồi tới một thế giới mới v&amp;agrave; cuộc phi&amp;ecirc;u lưu củ', 1, N'7076Công cuộc tái thiết lập vương quốc.png', N'200000', CAST(0x0000ADDD00AAC613 AS DateTime), CAST(0x0000ADE4016E7580 AS DateTime), N'Cong-cuoc-tai-thiet-lap-vuong-quoc-7076', 1)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1050, 7, N'Cuộc chiến chén thánh', N'duy võ', N'&lt;p&gt;...&lt;/p&gt;
', 1, N'7332Cuộc chiến chén thánh.jpg', N'300000', CAST(0x0000ADDD00AAEF41 AS DateTime), CAST(0x0000ADDD00AAEF41 AS DateTime), N'Cuoc-chien-chen-thanh-7332', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1051, 7, N'Cuộc hẹn sống còn', N'Kiên', N'&lt;p&gt;...&lt;/p&gt;
', 1, N'3151Cuộc hẹn sống còn.jpg', N'100000', CAST(0x0000ADDD00AB25B5 AS DateTime), CAST(0x0000ADDD00AB25B5 AS DateTime), N'Cuoc-hen-song-con-3151', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1052, 7, N'Chào mừng tới lớp học biết tuốt', N'Kinugasa Syohgo', N'<p>Thanh ni&ecirc;n hack game nhưng kh&ocirc;ng th&iacute;ch thể hiện nhưng lại h&uacute;t g&aacute;i do&nbsp;nổi bật v&igrave; cố&nbsp;tỏ ra kh&ocirc;ng nổi bật.</p>
', 1, N'2241chao-mung-toi-tiet-hoc-biet-tuot-19727.jpg', N'120000', CAST(0x0000ADDD00AB594F AS DateTime), CAST(0x0000ADDD00AB594F AS DateTime), N'Chao-mung-toi-tiet-hoc-2241', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1054, 7, N'Diệt slime 300 năm tôi level max lúc nào chẳng hay', N'Kisetsu Morita', N'&lt;p&gt;Sau khi sống một cuộc đời nh&amp;agrave;m ch&amp;aacute;n với tư c&amp;aacute;ch l&amp;agrave; nh&amp;acirc;n vi&amp;ecirc;n văn ph&amp;ograve;ng. L&amp;agrave; một kẻ cuồng việc, kh&amp;ocirc;ng y&amp;ecirc;u đương, kh&amp;ocirc;ng bạn b&amp;egrave;, kh&amp;ocirc;ng niềm vui v&amp;agrave; ', 1, N'4259Diệt slime 300 năm tôi level max lúc nào chẳng hay.jpg', N'300000', CAST(0x0000ADDD00ABB157 AS DateTime), CAST(0x0000ADDD00ABB157 AS DateTime), N'Diet-slime-4259', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1057, 7, N'Đừng chọc anh nữa mà,Nagatoro', N'Nanashi', N'<p>Học sinh trung học Hayase Nagatoro rất th&iacute;ch d&agrave;nh thời gian rảnh để l&agrave;m một việc, đ&oacute; l&agrave; bắt nạt Senpai của c&ocirc; ấy! Sau khi Nagatoro v&agrave; những người bạn của c&ocirc; t&igrave;nh cờ nh&igrave;n thấy những bức vẽ của một họa sĩ đầy tham vọng, họ cảm thấy th&iacute;ch th&uacute; khi bắt nạt Senpai nh&uacute;t nh&aacute;t một c&aacute;ch kh&ocirc;ng thương tiếc. Nagatoro quyết t&acirc;m tiếp tục tr&ograve; chơi t&agrave;n &aacute;c của m&igrave;nh v&agrave; đến thăm anh h&agrave;ng ng&agrave;y để c&ocirc; c&oacute; thể buộc Senpai l&agrave;m bất cứ điều g&igrave; c&oacute; lợi cho c&ocirc; v&agrave;o thời điểm đ&oacute;, đặc biệt nếu điều đ&oacute; khiến anh kh&ocirc;ng thoải m&aacute;i. Hơi bị k&iacute;ch th&iacute;ch v&agrave; c&oacute; phần sợ h&atilde;i Nagatoro, Senpai li&ecirc;n tục bị cuốn v&agrave;o những tr&ograve; hề của c&ocirc; khi sở th&iacute;ch, sở th&iacute;ch, ngoại h&igrave;nh v&agrave; thậm ch&iacute; cả t&iacute;nh c&aacute;ch của anh đều bị lợi dụng để chống lại anh khi c&ocirc; giải tr&iacute; với chi ph&iacute; của anh. Thời gian tr&ocirc;i qua, Senpai nhận ra rằng anh ấy kh&ocirc;ng th&iacute;ch sự hiện diện của Nagatoro.</p>
', 1, N'9664Đừng chọc anh nữa mà.jpg', N'100000', CAST(0x0000ADDD00AC4467 AS DateTime), CAST(0x0000ADDD00AC4467 AS DateTime), N'Dung-choc-anh-nua-ma-9664', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1058, 7, N'Hàng xóm của tôi là Toro', N'Duy Anh', N'&lt;p&gt;...&lt;/p&gt;
', 1, N'6104Hàng xóm của tôi là Toro.jpg', N'100000', CAST(0x0000ADDD00AC772B AS DateTime), CAST(0x0000ADDD00AC772B AS DateTime), N'Hang-xom-cua-toi-la-Toro-6104', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1060, 7, N'Kancolle', N'West Ground', N'<p>Lấy bối cảnh thế giới nơi nh&acirc;n loại mất quyền kiểm so&aacute;t đại dương v&agrave;o tay hạm đội biển s&acirc;u, hi vọng duy nhất chống lại hiểm họa n&agrave;y l&agrave; những Kanmusu, một nh&oacute;m những c&ocirc; g&aacute;i mang trong m&igrave;nh linh hồn chiến hạm Nhật Bản. C&acirc;u truyện xoay quanh Fubuki, một b&eacute; khu trục tới Quận Cảng để c&ugrave;ng tập luyện với Kanmusu kh&aacute;c. H&atilde;y c&ugrave;ng kh&aacute;m ph&aacute; c&acirc;u truyện của họ!</p>
', 1, N'3379KanColle_anime_PI.jpg', N'100000', CAST(0x0000ADDD00ACDECF AS DateTime), CAST(0x0000ADDD00ACDECF AS DateTime), N'Kancolle-3379', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1061, 7, N'Kiếm sĩ đen', N'duy võ', N'&lt;p&gt;...&lt;/p&gt;
', 1, N'8412Kiếm sĩ đen.jpg', N'100000', CAST(0x0000ADDD00AD0AD1 AS DateTime), CAST(0x0000ADDD00AD0AD1 AS DateTime), N'Kiem-si-den-8412', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1063, 7, N'Kuruko tuyển thủ vô hình', N'Fujimaki Tadatoshi', N'<p>Đội b&oacute;ng rổ trường Sơ Trung Teikou l&agrave; một đội b&oacute;ng huyền thoại với th&agrave;nh t&iacute;ch đ&aacute;nh bại c&aacute;c đối thủ m&agrave; họ chạm tr&aacute;n. C&aacute;c tuyển thủ của đội được biết đến với c&aacute;i t&ecirc;n &ldquo;Generation of Miracles&rdquo; (tạm dịch, thế hệ của những ph&eacute;p lạ). Sau khi tốt nghiệp, năm ng&ocirc;i sao n&agrave;y chuyển đến c&aacute;c trường Cao Trung kh&aacute;c nhau nổi tiếng về b&oacute;ng rổ. Tuy nhi&ecirc;n, c&oacute; một sự thật được &iacute;t người biết đến về cầu thủ số 6 &ndash; the phantom (tạm dịch: b&oacute;ng ma) - Kuroko Tetsuya. Cầu thủ n&agrave;y chuyển đến một ng&ocirc;i trường với đội b&oacute;ng rổ vừa mới được th&agrave;nh lập năm ngo&aacute;i. Kuroko Tetsuya v&agrave; Kagami Taiga &ndash; một cầu thủ t&agrave;i năng chuyển về từ Hoa Kỳ, với mục ti&ecirc;u l&agrave; c&ugrave;ng trường Seirin hướng đến chức v&ocirc; địch Nhật Bản, đồng thời đ&aacute;nh bại từng người một trong &ldquo;Generation of Miracles&rdquo; &ndash; đồng đội cũ của Kuroko. Trận chiến của &aacute;nh s&aacute;ng (Kagami) v&agrave; chiếc b&oacute;ng (Kuroko) bắt đầu!</p>
', 1, N'3466Kuroko tuyển thủ vô hình.jpg', N'250000', CAST(0x0000ADDD00AD79BB AS DateTime), CAST(0x0000ADDD00AD79BB AS DateTime), N'Kuruko-tuyen-thu-vo-hinh-5317', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1064, 7, N'Lũ ngốc bài kiểm tra và triệu hồi linh thú', N'Duy Anh', N'&lt;p&gt;...&lt;/p&gt;
', 1, N'488Lũ ngốc bài kiểm tra và triệu hồi linh thú.jpg', N'100000', CAST(0x0000ADDD00ADDD4C AS DateTime), CAST(0x0000ADDD00ADDD4C AS DateTime), N'Lu-ngoc-bai-kiem-tra-va-trieu-hoi-linh-thu-488', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1065, 7, N'Ma pháp thiếu nữa Madoka', N'khang', N'&lt;p&gt;...&lt;/p&gt;
', 1, N'7528Ma pháp thiếu nữ Madoka.jpg', N'120000', CAST(0x0000ADDD00AE12B3 AS DateTime), CAST(0x0000ADDD00AE12B3 AS DateTime), N'Ma-phap-thieu-nua-Madoka-7528', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1066, 7, N'Ma vương đi làm', N'khang', N'&lt;p&gt;....&lt;/p&gt;
', 1, N'446Ma vương đi làm.jpg', N'120000', CAST(0x0000ADDD00AE4353 AS DateTime), CAST(0x0000ADDD00AE4353 AS DateTime), N'Ma-vuong-di-lam-446', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1067, 7, N'Cô dâu pháp sư', N'Kore Yamazaki', N'<p>Bộ n&agrave;y&nbsp;n&oacute;i về&nbsp;Chise Hatori, một c&ocirc; g&aacute;i mới 15 tuổi đ&atilde; mất gia đ&igrave;nh v&agrave; phải sống lang thang. C&ocirc; đ&atilde; bị bắt v&agrave; b&aacute;n trong một phi&ecirc;n đấu gi&aacute; n&ocirc; lệ. Với gi&aacute; 5 triệu Bảng, c&ocirc; đ&atilde; bị', 1, N'1116manga_co_dau_phap_su1.jpg', N'250000', CAST(0x0000ADDD00AE6B76 AS DateTime), CAST(0x0000ADDD00AE6B76 AS DateTime), N'Manga-co-dau-phap-su-1116', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1068, 7, N'Mèo máy Kuro', N'Yokouchi Naoki,', N'<p>&quot;M&egrave;o M&aacute;y Kuro&quot; l&agrave; bộ phim hoạt h&igrave;nh kể về c&acirc;u chuyện của 1 ch&uacute; m&egrave;o bị 1 người tiến sĩ xấu xa biến th&agrave;nh 1 ch&uacute; m&egrave;o m&aacute;y được c&agrave;i đặt rất nhiều vũ kh&iacute; lợi hại b&ecirc;n trong cơ thể c&oacute; thể hủy diệt cả thế giới.</p>
', 1, N'1689Mèo máy Kuro.jpg', N'100000', CAST(0x0000ADDD00AE9781 AS DateTime), CAST(0x0000ADE4017A9C6F AS DateTime), N'Meo-may-Kuro-1689', 11)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1069, 7, N'Nguyệt đạo dị giới', N'Azumi Kei ', N'<p>Misumi Makoto vốn chỉ l&agrave; một học sinh trung học b&igrave;nh thường, giỏi cung đạo v&agrave; đam m&ecirc; phim lịch sử. Nhưng rồi một ng&agrave;y kia khi cậu tỉnh lại, th&igrave; bỗng ph&aacute;t hiện ra m&igrave;nh đang ở một nơi kỳ qu&aacute;i kh&ocirc;ng để đ&acirc;u cho hết! Một thế giới xa lạ, một nơi thậm ch&iacute; c&ograve;n kh&ocirc;ng thuộc về Tr&aacute;i Đất?!</p>
', 1, N'8521Nguyệt đạo dị giới.jpg', N'100000', CAST(0x0000ADDD00AECED0 AS DateTime), CAST(0x0000ADE40172222B AS DateTime), N'Nguyet-dao-di-gioi-8521', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1070, 7, N'Oan gia chung nhà', N'Đang cập nhật', N'<p>Đang cập nhật!!!</p>
', 1, N'8777oan-gia-chung-nha_1624985484.jpg', N'120000', CAST(0x0000ADDD00AEF966 AS DateTime), CAST(0x0000ADDD00AEF966 AS DateTime), N'Oan-gia-chung-nha-8777', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1071, 7, N'Ông thầy vi diệu', N'Hitsuji Tarō và minh họa bởi Mishima Kurone. Fujimi Shobo ', N'<p>Sisti bước v&agrave;o học viện ma ph&aacute;p nhằm trau dồi kĩ năng ma thuật của của bản th&acirc;n c&ugrave;ng với hi vọng giải đ&aacute;p b&iacute; ẩn của L&acirc;u đ&agrave;i tr&ecirc;n m&acirc;y. Sau khi giảng vi&ecirc;n y&ecirc;u th&iacute;ch của c&ocirc; rời bỏ c&ocirc;ng việc th&igrave; thay thế v&agrave;o vị tr&iacute; đ&oacute;, Glenn h&oacute;a ra lại l&agrave; t&ecirc;n lười biếng, chậm chạp, xem ra l&agrave; một t&ecirc;n khốn giảng vi&ecirc;n v&ocirc; năng. L&agrave;m sao m&agrave; Glenn lại l&agrave; người được ph&aacute;p sư mạnh nhất học viện đ&iacute;ch th&acirc;n đề cử cơ chứ?</p>
', 1, N'7649ong-Thay-Vi-Dieu-Akashic-records-of-bastard-magic-instructor.jpg', N'100000', CAST(0x0000ADDD00AF290B AS DateTime), CAST(0x0000ADE401748EAA AS DateTime), N'Ong-thay-vi-dieu-7649', 7)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1073, 7, N'Sekai Saikou no Ansatsusha, Isekai Kizoku ni Tensei suru', N'Tsukiyo Rui', N'<p>&ldquo;T&ocirc;i sẽ sống cho ch&iacute;nh m&igrave;nh!&rdquo; S&aacute;t thủ vĩ đại nhất tr&ecirc;n tr&aacute;i đất chỉ biết sống như một c&ocirc;ng cụ cho chủ nh&acirc;n&ndash; cho đến khi họ quyết định giết &ocirc;ng. Được t&aacute;i sinh bởi &acirc;n sủng của một nữ thần v&agrave;o thế giới của kiếm v&agrave; ph&eacute;p thuật, lần n&agrave;y &ocirc;ng ta c&oacute; cơ hội để l&agrave;m những điều kh&aacute;c đi, nhưng c&oacute; một y&ecirc;u cầu&hellip; &Ocirc;ng ta phải loại bỏ một anh h&ugrave;ng si&ecirc;u mạnh, người nếu kh&ocirc;ng bị ngăn chặn th&igrave; sẽ khiến thế giới diệt vong. Anh h&ugrave;ng được biết đến với c&aacute;i t&ecirc;n Lugh Tuatha D&eacute;, người khiến cả s&aacute;t thủ bậc thầy cũng phải bất lực, nhất l&agrave; v&igrave; những c&ocirc; g&aacute;i xinh đẹp mạnh mẽ lu&ocirc;n v&acirc;y quanh anh ta. D&ugrave; l&agrave; một s&aacute;t thủ bậc thầy, nhưng &ocirc;ng ta sẽ xử tr&iacute; thế n&agrave;o tại thế giới chỉ c&oacute; kiếm v&agrave; ph&eacute;p thuật?</p>
', 1, N'728Sát Thủ Số Một Chuyển Sinh Thành Quý Tộc Tại Dị Giới.jpg', N'950000', CAST(0x0000ADDD00AF9AED AS DateTime), CAST(0x0000ADE0014F6FB8 AS DateTime), N'Sat-thu-so1-chuyen-sinh-thanh-quy-toc-tai-di-gioi-728', 80)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1074, 7, N'Goodbye Otherworld, See You Tomorrow', N'Kamamidori/Nimoshi', N'<p>The world he woke up in is long dead, dusted in ashen powder, and yet Keisuke still sees splashes of color as he travels through it. For the longest time, he&rsquo;s wandered alone across the deserted landscape, clinging to the hope that something&mdash;or someone&mdash;might be out there in the emptiness. When he finally stumbles across that someone, even more threads of color start to seep into the ashen world around them. This time, when Keisuke sets off down the road, someone sits beside him in the passenger seat. The first acquaintance he&rsquo;s ever made here, his first companion in this barren world. They&rsquo;re both traveling in search of something, and after searching alone for so long, maybe they&rsquo;ll have better luck working together? Their only lead is a witch who can answer any question&mdash;for a price. What will the two ask her, and what will she be able to tell them? More importantly, what will it cost them, and will they be willing to pay the price?</p>
', 1, N'3831Tạm thời thế giới khác, hẹn gặp bạn vào ngày mai.jpg', N'2000000', CAST(0x0000ADDD00AFD14D AS DateTime), CAST(0x0000ADDD015412C7 AS DateTime), N'Tam-thoi-the-gioi-khac,hen-gap-ban-vao-ngay-mai-3831', 7)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1076, 7, N'Kumo Desu ga, Nani ka?', N'Baba Okina', N'<p>Một thế giới m&agrave; Anh h&ugrave;ng v&agrave; Ma vương li&ecirc;n tục đối đầu nhau. Sức mạnh ma thuật khổng lồ của trận chiến g&acirc;y ra đ&atilde; xuy&ecirc;n qua một thế giới kh&aacute;c v&agrave; l&agrave;m nổ chết tất cả học sinh trong một lớp học. Những học sinh đ&oacute; được hồi sinh l', 1, N'7345Tôi là nhện đấy thì sao nào.jpg', N'1500000', CAST(0x0000ADDD00B03B2E AS DateTime), CAST(0x0000ADE40173411B AS DateTime), N'Toi-la-nhen-day-thi-sao-nao-7345', 7)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1079, 7, N'Thanh gươm diệt quỷ', N'Gotouge Koyoharu', N'&lt;p&gt;Demon Slayer: Thanh Gươm Diệt Quỷ c&amp;ograve;n c&amp;oacute; t&amp;ecirc;n gọi kh&amp;aacute;c l&amp;agrave; Lưỡi Gươm Diệt Quỷ hay Yaiba Kimetsu. Phim Thanh Gươm Diệt Quỷ: Kimetsu No Yaiba lấy bối cảnh v&amp;agrave;o thời Taisho tại Nhật Bản, c&amp;oacute; một gia đ&amp;igrave;nh hai anh', 1, N'637Thanh Gươm Diệt Quỷ.jpg', N'100000', CAST(0x0000ADDD00B0C32B AS DateTime), CAST(0x0000ADDD00B0C32B AS DateTime), N'Thanh-guom-diet-quy-2662', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1080, 7, N'Thất nghiệp chuyển sinh tôi hứa sẽ nghiêm túc', N'Rifujin na Magonote - Fujikawa Yuka', N'<p>Đại kh&aacute;i l&agrave; một thanh ni&ecirc;n neet kh&ocirc;ng trẻ mấy sau c&oacute; cơ hội được l&agrave;m lại cuộc đời v&agrave; trong lốt một thằng nh&oacute;c, anh ấy bắt đầu x&acirc;y dựng.... harem cho tương lai trong th&acirc;n x&aacute;c&nbsp;thằng nh&oacute;c đ&oacute;</p>
', 1, N'2931Thất nghiệp chuyển sinh tôi hứa sẽ nghiêm túc.jpg', N'120000', CAST(0x0000ADDD00B105BD AS DateTime), CAST(0x0000ADE4017004E3 AS DateTime), N'That-nghiep-chuyen-sinh-toi-hua-se-nghiem-tuc-2931', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1082, 7, N'Shin cậu bé bút chì', N'Hongo Mitsuru, Hara Keiichi, Muto Yuji ', N'<p>L&agrave; c&acirc;u chuyện của cậu b&eacute; năm tuổi Shinosuke trong một gia đ&igrave;nh trung lưu Nhật Bản th&ocirc;ng thường. Gia đ&igrave;nh gồm c&oacute; ba, mẹ, Shin, em g&aacute;i v&agrave; một ch&uacute; ch&oacute;. C&aacute;ch vẽ v&agrave; kể c&acirc;u chuyện của Shin &ndash; Cậu b&eacute; b&uacute;t ch&igrave; vừa gần gũi, vui vẻ lại mang lại c&aacute;ch nh&igrave;n con trẻ v&ocirc; c&ugrave;ng độc đ&aacute;o.</p>
', 1, N'5377truyen-tranh-shin.jpg', N'10000', CAST(0x0000ADDD00B1761E AS DateTime), CAST(0x0000ADDD00B1761E AS DateTime), N'Truyen-tranh-Shin-5377', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1083, 7, N'Vì con gái tôi có thể đánh bại cả ma vương', N'Chirolu', N'&lt;p&gt;C&amp;acirc;u chuyện về anh ch&amp;agrave;ng Dale trẻ tuổi, đẹp trai l&amp;agrave; một mạo hiểm giả t&amp;agrave;i giỏi với kỹ năng chiến đấu mạnh mẽ. Dale rất nổi tiếng v&amp;agrave; . Một ng&amp;agrave;y nọ, khi đang đ&amp;aacute;nh qu&amp;aacute;i, Dale t&amp;igrave;nh cờ cứu được c&amp;', 1, N'5502Vì_con_gái,_tôi_có_thể_đánh_bại_cả_Ma_vương.jpg', N'250000', CAST(0x0000ADDD00B1A501 AS DateTime), CAST(0x0000ADDD00B1A501 AS DateTime), N'Vi-con-gai-toi-co-the-danh-bai-ca-ma-vuong-5502', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1084, 7, N'Tonikaku Kawaii', N'Ikehata Hiroshi', N'&lt;p&gt;Lớn l&amp;ecirc;n bị chế giễu v&amp;igrave; c&amp;aacute;i t&amp;ecirc;n kỳ lạ của m&amp;igrave;nh, Nasa Yuzaki cố gắng để được mọi người nhớ đến v&amp;igrave; điều g&amp;igrave; đ&amp;oacute; nhiều hơn. May mắn thay, c&amp;oacute; vẻ như anh ấy đang đi đ&amp;uacute;ng hướng, đứng nhất tron', 1, N'5965Vợ tôi rất dễ thương.jpg', N'125000', CAST(0x0000ADDD00B1CCF9 AS DateTime), CAST(0x0000ADE00150BF02 AS DateTime), N'Vo-toi-rat-de-thuong-5965', 2)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (1088, 7, N'Your name?', N'Shinkai Makoto', N'<p>Miyamizu Mitsuha,&nbsp;một học sinh trung học sinh sống tại thị trấn hư cấu Itomori,c&ocirc;&nbsp;đ&atilde; ch&aacute;n ngấy cuộc sống dưới qu&ecirc; của m&igrave;nh v&agrave; c&ocirc; muốn trở th&agrave;nh một ch&agrave;ng trai đẹp sống ở Tokyo v&agrave;o kiếp sau.&nbsp;Ngay sau đ&oacute;,Tachibana Taki,&nbsp;một cậu học sinh trung học đang sinh sống ở Tokyo nhận ra rằng m&igrave;nh l&agrave; Mitsuha khi cậu thức dậy,&nbsp;c&ograve;n Mistuha v&igrave; một l&yacute; do n&agrave;o đ&oacute; l&agrave; Taki.Hai người sau đ&oacute; đ&atilde; ph&aacute;t hiện ra rằng đ&atilde; ho&aacute;n đổi cơ thể cho nhau.&nbsp;Họ bắt đầu li&ecirc;n lạc với nhau bằng c&aacute;ch viết ra giấy hay viết thư tr&ecirc;n điện thoại cho nhau....</p>
', 1, N'6979Your_Name_novel.jpg', N'100000', CAST(0x0000ADDD0148530C AS DateTime), CAST(0x0000ADE0015878F2 AS DateTime), N'Your-name--6979', 19)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (2096, 1026, N'Đến với thế giới khác với chiếc Smartphone', N'Fuyuhara Patora', N'<p>Nội dung kể về một anh main giống như bao anh main kh&aacute;c khi đang tr&ecirc;n đường về nh&agrave; lại bị&hellip; s&eacute;t đ&aacute;nh lăn đ&ugrave;ng ra chết :v.Điều đ&aacute;ng n&oacute;i ở đ&acirc;y l&agrave; sau khi chết anh main lại bị triệu tập đến trước mặt Thượng đế với l&yacute; do: Ổng v&ocirc; t&igrave;nh&hellip; hại chết anh main m&agrave; kh&ocirc;ng hay biết. V&agrave; để đền b&ugrave; th&igrave; ảnh đ&atilde; được hồi sinh sang một thế giới song song kh&aacute;c với 1 c&aacute;i S&igrave; m&aacute;t ph&ocirc;n (Smartphone :v).</p>
', 1, N'5010isekaismartphone.jpg', N'2750000', CAST(0x0000ADE201549FA7 AS DateTime), CAST(0x0000ADE40176CF3F AS DateTime), N'DenvoithegioikhacvoichiecSmartphone-5010', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (2097, 1026, N'Cuộc Sống Chậm Rãi Của Dược Sĩ Gian Lận', N'Kennoji', N'<p>Đ&acirc;y l&agrave; một c&acirc;u chuyện kể về một người b&igrave;nh thường, l&agrave;m việc chăm chỉ, tận hưởng một cuộc sống thư gi&atilde;n ở thị trấn th&ocirc;n qu&ecirc; nơi thế giới kh&aacute;c. Thất vọng với c&ocirc;ng việc v&agrave; cuộc sống bế tắc của m&igrave;nh, Reiji chợt nhận ra một ng&agrave;y n&agrave;o đ&oacute; m&igrave;nh sẽ được chuyển đến thế giới kh&aacute;c. Kỹ năng m&agrave; cậu ta học được ch&iacute;nh l&agrave; kỹ năng l&agrave;m thuốc. Qu&aacute; thất vọng v&igrave; chả c&oacute; kỹ năng chiến đấu, nhưng những lọ thuốc m&agrave; cậu ta tạo ra đ&atilde; trở n&ecirc;n nổi tiếng chỉ sau một đ&ecirc;m, mang về cho cậu ta bộn tiền. V&agrave; v&igrave; thế, Reiji đ&atilde; tận hưởng một cuộc sống chầm chậm với kỹ năng của m&igrave;nh, phục vụ cho c&aacute;c kh&aacute;ch h&agrave;ng đến tiệm thuốc.</p>
', 1, N'437610789940b.jpg', N'120000', CAST(0x0000ADE20156A560 AS DateTime), CAST(0x0000ADE20156A560 AS DateTime), N'CuocSongChamRaiCuaDuocSiGianLan-4376', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (2098, 1026, N'Akame ga kill', N'Tashiro Tetsuya - Takahiro', N'<p>C&acirc;u chuyện Akame ga Kill&nbsp;xoay quanh Tatsumi, một thanh ni&ecirc;n trẻ tuổi đầy nhiệt huyết.Vốn xuất th&acirc;n từ n&ocirc;ng th&ocirc;n nhưng c&oacute; ch&uacute;t &iacute;t năng lực v&otilde; nghệ, cậu l&ecirc;n thủ đ&ocirc; với mục đ&iacute;ch kiếm tiền gầy dựng lại ng&ocirc;i l&agrave;ng của m&igrave;nh. Chỉ để rồi kh&aacute;m ph&aacute; ra c&aacute;i x&atilde; hội mục n&aacute;t đang ăn s&acirc;u v&agrave;o con người v&agrave; đất nước,&nbsp;ẩn chứa qua vẻ đẹp h&agrave;o nho&aacute;ng của chốn phồn hoa đ&ocirc; thị. Trong ho&agrave;n cảnh bế tắc của&nbsp;Akame ga Kill,&nbsp;l&agrave;m cậu mất định hướng cho tương lai, th&igrave; một nh&oacute;m s&aacute;t thủ với t&ecirc;n gọi &ldquo;Night Raid&rdquo; c&oacute; lời mời kết nạp. V&agrave; cuộc chiến chống lại đế chế thối n&aacute;t nhằm mang đến c&ocirc;ng l&yacute; b&ecirc;n cạnh những người bạn s&aacute;t thủ diễn ra trong&nbsp;Akame ga Kill</p>
', 1, N'108YEN_PRESS-Akame_ga_KILL_Vol_2_Manga-1633197_grande (1).jpg', N'75000', CAST(0x0000ADE2015C7038 AS DateTime), CAST(0x0000ADE2015C7038 AS DateTime), N'Akamegakill-108', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (2099, 1026, N'Thủ Lĩnh Thẻ Bài', N'CLAMP', N'<p>Cardcaptor Sakura bắt đầu khi một c&ocirc; b&eacute; 10 tuổi học lớp 4 t&ecirc;n l&agrave; Kinomoto Sakura t&igrave;nh cờ ph&aacute;t hiện ra một bộ thẻ b&agrave;i ma thuật gọi l&agrave; Clow trong quyển s&aacute;ch Clow, ch&uacute;ng được tạo ra v&agrave; đặt t&ecirc;n nửa tiếng Anh-nửa tiếng Trung bởi ph&aacute;p sư Clow Reed. Thần th&uacute; gi&aacute;m hộ bộ b&agrave;i l&agrave; Kerberos tho&aacute;t ra khỏi cuốn s&aacute;ch c&ugrave;ng với c&aacute;c thẻ b&agrave;i v&agrave; giao cho c&ocirc; trọng tr&aacute;ch thu phục những thẻ b&agrave;i đ&atilde; mất t&iacute;ch. Saukura phải chiến đấu v&agrave; đ&aacute;nh bại những thuộc t&iacute;nh ma thuật của từng thẻ b&agrave;i một mỗi khi t&igrave;m thấy để thu phục n&oacute;. Kerberos đ&oacute;ng vai tr&ograve; l&agrave; người hướng dẫn của c&ocirc;, trong khi người bạn th&acirc;n nhất v&agrave; c&oacute; họ h&agrave;ng với c&ocirc; l&agrave; Daidouji Tomoyo quay phim, ghi h&igrave;nh lại to&agrave;n bộ qu&aacute; tr&igrave;nh chiến đấu v&agrave; thiết kế trang phục cho Sakura. Phần III kể về h&agrave;nh tr&igrave;nh sau khi được ph&aacute;t quyết trở th&agrave;nh chủ nh&acirc;n những thẻ b&agrave;i , vẵn tưởng mọi chuyện sẽ kết th&uacute;c tại đ&acirc;y n&agrave;o ngờ kiếp sau của Clow reed l&agrave; Eriol xuất hiện v&agrave; 1 lần nữa Sakura phải đối trội v&agrave; c&oacute; nhiệm vụ biến đổi thẻ b&agrave;i clow th&agrave;nh thẻ b&agrave;i sakura với sự gi&uacute;p đỡ của Kero , Li Shaoran ,Yue ,Tomoyo.</p>
', 1, N'9970sakurakinomoto.jpg', N'250000', CAST(0x0000ADE2015DFD73 AS DateTime), CAST(0x0000ADE2015DFD73 AS DateTime), N'ThuLinhTheBai-9970', NULL)
INSERT [dbo].[DB_TRUYEN] ([id_truyen], [id_user], [ten_truyen], [tac_gia], [tomtat_truyen], [status_], [img_truyen], [coin_truyen], [created_at], [updated_at], [link_raw], [LuotXem]) VALUES (2100, 1026, N'Mewkledreamy Mix!', N'Hiroko Kanasugi', N'<p>C&acirc;u chuyện bắt đầu khi một nữ sinh trung cấp t&ecirc;n Yume nh&igrave;n thấy một thứ g&igrave; đ&oacute; từ tr&ecirc;n trời rơi xuống v&agrave; rồi gặp một ch&uacute; m&egrave;o m&agrave;u t&iacute;m mộng mơ t&ecirc;n l&agrave; Mew. H&oacute;a ra Mew c&oacute; sức mạnh của &quot;Yume Synchro&quot;, một sức mạnh để đi v&agrave;o giấc mơ. Trong thế giới giấc mơ, c&ocirc; ấy c&ugrave;ng với Mew thu thập Mộng Thạch.</p>
', 1, N'6376Mewkledreamy Mix!.jpg', N'65000', CAST(0x0000ADE201603AAA AS DateTime), CAST(0x0000ADE201603AAA AS DateTime), N'MewkledreamyMix!-6376', NULL)
SET IDENTITY_INSERT [dbo].[DB_TRUYEN] OFF
SET IDENTITY_INSERT [dbo].[DB_TRUYEN_THELOAI] ON 

INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (65, 18, 39, 1, CAST(0x0000ADDC00A5C62E AS DateTime), CAST(0x0000ADDC00A5C62E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (66, 18, 38, 1, CAST(0x0000ADDC00A5C630 AS DateTime), CAST(0x0000ADDC00A5C630 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (67, 18, 31, 1, CAST(0x0000ADDC00A5C632 AS DateTime), CAST(0x0000ADDC00A5C632 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (68, 18, 10, 1, CAST(0x0000ADDC00A5C633 AS DateTime), CAST(0x0000ADDC00A5C633 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (69, 18, 9, 1, CAST(0x0000ADDC00A5C635 AS DateTime), CAST(0x0000ADDC00A5C635 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (81, 21, 38, 1, CAST(0x0000ADDC00AB31AC AS DateTime), CAST(0x0000ADDC00AB31AC AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (82, 21, 18, 1, CAST(0x0000ADDC00AB31C9 AS DateTime), CAST(0x0000ADDC00AB31C9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (83, 21, 14, 1, CAST(0x0000ADDC00AB31CA AS DateTime), CAST(0x0000ADDC00AB31CA AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (84, 21, 13, 1, CAST(0x0000ADDC00AB31CD AS DateTime), CAST(0x0000ADDC00AB31CD AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (85, 21, 9, 1, CAST(0x0000ADDC00AB31CE AS DateTime), CAST(0x0000ADDC00AB31CE AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (86, 21, 7, 1, CAST(0x0000ADDC00AB31CF AS DateTime), CAST(0x0000ADDC00AB31CF AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (87, 21, 4, 1, CAST(0x0000ADDC00AB31D2 AS DateTime), CAST(0x0000ADDC00AB31D2 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (93, 23, 32, 1, CAST(0x0000ADDC01732B2B AS DateTime), CAST(0x0000ADDC01732B2B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (94, 23, 31, 1, CAST(0x0000ADDC01732B2C AS DateTime), CAST(0x0000ADDC01732B2C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (95, 23, 29, 1, CAST(0x0000ADDC01732B2D AS DateTime), CAST(0x0000ADDC01732B2D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (96, 23, 28, 1, CAST(0x0000ADDC01732B2E AS DateTime), CAST(0x0000ADDC01732B2E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (97, 23, 27, 1, CAST(0x0000ADDC01732B2F AS DateTime), CAST(0x0000ADDC01732B2F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (98, 24, 15, 1, CAST(0x0000ADDC01742862 AS DateTime), CAST(0x0000ADDC01742862 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (99, 24, 14, 1, CAST(0x0000ADDC01742863 AS DateTime), CAST(0x0000ADDC01742863 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (100, 24, 13, 1, CAST(0x0000ADDC01742864 AS DateTime), CAST(0x0000ADDC01742864 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (101, 24, 12, 1, CAST(0x0000ADDC01742866 AS DateTime), CAST(0x0000ADDC01742866 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (102, 24, 10, 1, CAST(0x0000ADDC01742867 AS DateTime), CAST(0x0000ADDC01742867 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (108, 26, 38, 1, CAST(0x0000ADDC01752C4E AS DateTime), CAST(0x0000ADDC01752C4E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (109, 26, 37, 1, CAST(0x0000ADDC01752C4F AS DateTime), CAST(0x0000ADDC01752C4F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (110, 26, 36, 1, CAST(0x0000ADDC01752C50 AS DateTime), CAST(0x0000ADDC01752C50 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (111, 26, 31, 1, CAST(0x0000ADDC01752C51 AS DateTime), CAST(0x0000ADDC01752C51 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (112, 26, 29, 1, CAST(0x0000ADDC01752C52 AS DateTime), CAST(0x0000ADDC01752C52 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (113, 26, 20, 1, CAST(0x0000ADDC01752C54 AS DateTime), CAST(0x0000ADDC01752C54 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (124, 28, 39, 1, CAST(0x0000ADDD0085EC19 AS DateTime), CAST(0x0000ADDD0085EC19 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (125, 28, 18, 1, CAST(0x0000ADDD0085EC1A AS DateTime), CAST(0x0000ADDD0085EC1A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (126, 28, 14, 1, CAST(0x0000ADDD0085EC1B AS DateTime), CAST(0x0000ADDD0085EC1B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (127, 28, 7, 1, CAST(0x0000ADDD0085EC1B AS DateTime), CAST(0x0000ADDD0085EC1B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (128, 28, 4, 1, CAST(0x0000ADDD0085EC1C AS DateTime), CAST(0x0000ADDD0085EC1C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (129, 29, 33, 1, CAST(0x0000ADDD0087256A AS DateTime), CAST(0x0000ADDD0087256A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (130, 29, 32, 1, CAST(0x0000ADDD0087256B AS DateTime), CAST(0x0000ADDD0087256B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (131, 29, 31, 1, CAST(0x0000ADDD0087256B AS DateTime), CAST(0x0000ADDD0087256B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (132, 29, 29, 1, CAST(0x0000ADDD0087256D AS DateTime), CAST(0x0000ADDD0087256D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (133, 29, 18, 1, CAST(0x0000ADDD0087256E AS DateTime), CAST(0x0000ADDD0087256E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (134, 29, 14, 1, CAST(0x0000ADDD0087256E AS DateTime), CAST(0x0000ADDD0087256E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1118, 1029, 39, 1, CAST(0x0000ADDD008FD304 AS DateTime), CAST(0x0000ADDD008FD304 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1119, 1029, 38, 1, CAST(0x0000ADDD008FD307 AS DateTime), CAST(0x0000ADDD008FD307 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1120, 1029, 29, 1, CAST(0x0000ADDD008FD30C AS DateTime), CAST(0x0000ADDD008FD30C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1121, 1029, 20, 1, CAST(0x0000ADDD008FD30C AS DateTime), CAST(0x0000ADDD008FD30C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1122, 1029, 18, 1, CAST(0x0000ADDD008FD30D AS DateTime), CAST(0x0000ADDD008FD30D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1144, 1033, 39, 1, CAST(0x0000ADDD0090BFA6 AS DateTime), CAST(0x0000ADDD0090BFA6 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1145, 1033, 31, 1, CAST(0x0000ADDD0090BFA7 AS DateTime), CAST(0x0000ADDD0090BFA7 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1146, 1033, 20, 1, CAST(0x0000ADDD0090BFA8 AS DateTime), CAST(0x0000ADDD0090BFA8 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1147, 1033, 17, 1, CAST(0x0000ADDD0090BFA9 AS DateTime), CAST(0x0000ADDD0090BFA9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1148, 1033, 10, 1, CAST(0x0000ADDD0090BFAB AS DateTime), CAST(0x0000ADDD0090BFAB AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1149, 1033, 9, 1, CAST(0x0000ADDD0090BFAC AS DateTime), CAST(0x0000ADDD0090BFAC AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1150, 1034, 39, 1, CAST(0x0000ADDD0090E07C AS DateTime), CAST(0x0000ADDD0090E07C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1151, 1034, 38, 1, CAST(0x0000ADDD0090E07C AS DateTime), CAST(0x0000ADDD0090E07C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1152, 1034, 37, 1, CAST(0x0000ADDD0090E07D AS DateTime), CAST(0x0000ADDD0090E07D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1153, 1034, 31, 1, CAST(0x0000ADDD0090E07F AS DateTime), CAST(0x0000ADDD0090E07F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1154, 1034, 29, 1, CAST(0x0000ADDD0090E07F AS DateTime), CAST(0x0000ADDD0090E07F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1165, 1031, 39, 1, CAST(0x0000ADDD0093D41E AS DateTime), CAST(0x0000ADDD0093D41E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1166, 1031, 21, 1, CAST(0x0000ADDD0093D41F AS DateTime), CAST(0x0000ADDD0093D41F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1167, 1031, 18, 1, CAST(0x0000ADDD0093D41F AS DateTime), CAST(0x0000ADDD0093D41F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1168, 1031, 14, 1, CAST(0x0000ADDD0093D420 AS DateTime), CAST(0x0000ADDD0093D420 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1169, 1031, 7, 1, CAST(0x0000ADDD0093D422 AS DateTime), CAST(0x0000ADDD0093D422 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1170, 1031, 4, 1, CAST(0x0000ADDD0093D422 AS DateTime), CAST(0x0000ADDD0093D422 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1187, 1030, 39, 1, CAST(0x0000ADDD009666D4 AS DateTime), CAST(0x0000ADDD009666D4 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1188, 1030, 15, 1, CAST(0x0000ADDD009666D5 AS DateTime), CAST(0x0000ADDD009666D5 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1189, 1030, 7, 1, CAST(0x0000ADDD009666D6 AS DateTime), CAST(0x0000ADDD009666D6 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1190, 1030, 4, 1, CAST(0x0000ADDD009666D7 AS DateTime), CAST(0x0000ADDD009666D7 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1213, 1041, 33, 1, CAST(0x0000ADDD00A89C5E AS DateTime), CAST(0x0000ADDD00A89C5E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1214, 1041, 32, 1, CAST(0x0000ADDD00A89C65 AS DateTime), CAST(0x0000ADDD00A89C65 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1215, 1041, 31, 1, CAST(0x0000ADDD00A89C6E AS DateTime), CAST(0x0000ADDD00A89C6E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1216, 1041, 29, 1, CAST(0x0000ADDD00A89C71 AS DateTime), CAST(0x0000ADDD00A89C71 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1217, 1041, 18, 1, CAST(0x0000ADDD00A89C74 AS DateTime), CAST(0x0000ADDD00A89C74 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1218, 1041, 14, 1, CAST(0x0000ADDD00A89C77 AS DateTime), CAST(0x0000ADDD00A89C77 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1219, 1041, 6, 1, CAST(0x0000ADDD00A89C7A AS DateTime), CAST(0x0000ADDD00A89C7A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1220, 1041, 5, 1, CAST(0x0000ADDD00A89C7B AS DateTime), CAST(0x0000ADDD00A89C7B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1221, 1041, 4, 1, CAST(0x0000ADDD00A89C7D AS DateTime), CAST(0x0000ADDD00A89C7D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1223, 1042, 39, 1, CAST(0x0000ADDD00A8AC47 AS DateTime), CAST(0x0000ADDD00A8AC47 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1224, 1042, 31, 1, CAST(0x0000ADDD00A8AC4A AS DateTime), CAST(0x0000ADDD00A8AC4A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1225, 1042, 10, 1, CAST(0x0000ADDD00A8AC4D AS DateTime), CAST(0x0000ADDD00A8AC4D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1226, 1042, 9, 1, CAST(0x0000ADDD00A8AC50 AS DateTime), CAST(0x0000ADDD00A8AC50 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1227, 1042, 8, 1, CAST(0x0000ADDD00A8AC53 AS DateTime), CAST(0x0000ADDD00A8AC53 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1233, 1044, 39, 1, CAST(0x0000ADDD00A9A0A9 AS DateTime), CAST(0x0000ADDD00A9A0A9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1234, 1044, 38, 1, CAST(0x0000ADDD00A9A0AF AS DateTime), CAST(0x0000ADDD00A9A0AF AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1235, 1044, 31, 1, CAST(0x0000ADDD00A9A0B4 AS DateTime), CAST(0x0000ADDD00A9A0B4 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1236, 1045, 39, 1, CAST(0x0000ADDD00A9CB97 AS DateTime), CAST(0x0000ADDD00A9CB97 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1237, 1045, 38, 1, CAST(0x0000ADDD00A9CB99 AS DateTime), CAST(0x0000ADDD00A9CB99 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1238, 1045, 18, 1, CAST(0x0000ADDD00A9CB9A AS DateTime), CAST(0x0000ADDD00A9CB9A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1239, 1045, 10, 1, CAST(0x0000ADDD00A9CB9C AS DateTime), CAST(0x0000ADDD00A9CB9C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1240, 1046, 39, 1, CAST(0x0000ADDD00AA104B AS DateTime), CAST(0x0000ADDD00AA104B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1241, 1046, 31, 1, CAST(0x0000ADDD00AA104D AS DateTime), CAST(0x0000ADDD00AA104D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1242, 1046, 29, 1, CAST(0x0000ADDD00AA104F AS DateTime), CAST(0x0000ADDD00AA104F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1243, 1046, 17, 1, CAST(0x0000ADDD00AA1050 AS DateTime), CAST(0x0000ADDD00AA1050 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1244, 1046, 10, 1, CAST(0x0000ADDD00AA1051 AS DateTime), CAST(0x0000ADDD00AA1051 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1245, 1046, 9, 1, CAST(0x0000ADDD00AA1053 AS DateTime), CAST(0x0000ADDD00AA1053 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1246, 1046, 8, 1, CAST(0x0000ADDD00AA1054 AS DateTime), CAST(0x0000ADDD00AA1054 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1248, 1047, 39, 1, CAST(0x0000ADDD00AA3FBE AS DateTime), CAST(0x0000ADDD00AA3FBE AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1249, 1047, 38, 1, CAST(0x0000ADDD00AA3FC1 AS DateTime), CAST(0x0000ADDD00AA3FC1 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1250, 1047, 31, 1, CAST(0x0000ADDD00AA3FC4 AS DateTime), CAST(0x0000ADDD00AA3FC4 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1251, 1047, 29, 1, CAST(0x0000ADDD00AA3FC8 AS DateTime), CAST(0x0000ADDD00AA3FC8 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1252, 1047, 20, 1, CAST(0x0000ADDD00AA3FCB AS DateTime), CAST(0x0000ADDD00AA3FCB AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1253, 1047, 18, 1, CAST(0x0000ADDD00AA3FD1 AS DateTime), CAST(0x0000ADDD00AA3FD1 AS DateTime))
GO
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1254, 1048, 39, 1, CAST(0x0000ADDD00AA864F AS DateTime), CAST(0x0000ADDD00AA864F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1255, 1048, 38, 1, CAST(0x0000ADDD00AA8651 AS DateTime), CAST(0x0000ADDD00AA8651 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1256, 1048, 31, 1, CAST(0x0000ADDD00AA8652 AS DateTime), CAST(0x0000ADDD00AA8652 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1257, 1048, 29, 1, CAST(0x0000ADDD00AA8653 AS DateTime), CAST(0x0000ADDD00AA8653 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1258, 1048, 17, 1, CAST(0x0000ADDD00AA8655 AS DateTime), CAST(0x0000ADDD00AA8655 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1263, 1050, 39, 1, CAST(0x0000ADDD00AAF153 AS DateTime), CAST(0x0000ADDD00AAF153 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1264, 1050, 31, 1, CAST(0x0000ADDD00AAF15A AS DateTime), CAST(0x0000ADDD00AAF15A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1265, 1050, 18, 1, CAST(0x0000ADDD00AAF15C AS DateTime), CAST(0x0000ADDD00AAF15C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1266, 1051, 39, 1, CAST(0x0000ADDD00AB25BA AS DateTime), CAST(0x0000ADDD00AB25BA AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1267, 1051, 31, 1, CAST(0x0000ADDD00AB25DF AS DateTime), CAST(0x0000ADDD00AB25DF AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1268, 1051, 17, 1, CAST(0x0000ADDD00AB25E0 AS DateTime), CAST(0x0000ADDD00AB25E0 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1279, 1055, 38, 1, CAST(0x0000ADDD00ABDDD6 AS DateTime), CAST(0x0000ADDD00ABDDD6 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1280, 1055, 26, 1, CAST(0x0000ADDD00ABDE50 AS DateTime), CAST(0x0000ADDD00ABDE50 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1281, 1056, 39, 1, CAST(0x0000ADDD00AC0C70 AS DateTime), CAST(0x0000ADDD00AC0C70 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1282, 1056, 38, 1, CAST(0x0000ADDD00AC0C71 AS DateTime), CAST(0x0000ADDD00AC0C71 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1283, 1056, 31, 1, CAST(0x0000ADDD00AC0C72 AS DateTime), CAST(0x0000ADDD00AC0C72 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1284, 1056, 29, 1, CAST(0x0000ADDD00AC0C73 AS DateTime), CAST(0x0000ADDD00AC0C73 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1285, 1056, 17, 1, CAST(0x0000ADDD00AC0C74 AS DateTime), CAST(0x0000ADDD00AC0C74 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1286, 1057, 39, 1, CAST(0x0000ADDD00AC446C AS DateTime), CAST(0x0000ADDD00AC446C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1287, 1057, 38, 1, CAST(0x0000ADDD00AC446E AS DateTime), CAST(0x0000ADDD00AC446E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1288, 1057, 18, 1, CAST(0x0000ADDD00AC446F AS DateTime), CAST(0x0000ADDD00AC446F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1289, 1058, 39, 1, CAST(0x0000ADDD00AC7730 AS DateTime), CAST(0x0000ADDD00AC7730 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1290, 1058, 38, 1, CAST(0x0000ADDD00AC77A9 AS DateTime), CAST(0x0000ADDD00AC77A9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1296, 1061, 38, 1, CAST(0x0000ADDD00AD0CEC AS DateTime), CAST(0x0000ADDD00AD0CEC AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1297, 1061, 31, 1, CAST(0x0000ADDD00AD0CF4 AS DateTime), CAST(0x0000ADDD00AD0CF4 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1298, 1061, 9, 1, CAST(0x0000ADDD00AD0CF9 AS DateTime), CAST(0x0000ADDD00AD0CF9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1306, 1064, 38, 1, CAST(0x0000ADDD00ADDD5A AS DateTime), CAST(0x0000ADDD00ADDD5A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1307, 1064, 17, 1, CAST(0x0000ADDD00ADDD5F AS DateTime), CAST(0x0000ADDD00ADDD5F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1308, 1064, 9, 1, CAST(0x0000ADDD00ADDD60 AS DateTime), CAST(0x0000ADDD00ADDD60 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1310, 1065, 38, 1, CAST(0x0000ADDD00AE12B8 AS DateTime), CAST(0x0000ADDD00AE12B8 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1311, 1065, 9, 1, CAST(0x0000ADDD00AE12B9 AS DateTime), CAST(0x0000ADDD00AE12B9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1313, 1066, 38, 1, CAST(0x0000ADDD00AE4359 AS DateTime), CAST(0x0000ADDD00AE4359 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1314, 1066, 9, 1, CAST(0x0000ADDD00AE43D2 AS DateTime), CAST(0x0000ADDD00AE43D2 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1322, 1069, 38, 1, CAST(0x0000ADDD00AED0E9 AS DateTime), CAST(0x0000ADDD00AED0E9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1323, 1069, 9, 1, CAST(0x0000ADDD00AED0EA AS DateTime), CAST(0x0000ADDD00AED0EA AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1325, 1070, 38, 1, CAST(0x0000ADDD00AEF96B AS DateTime), CAST(0x0000ADDD00AEF96B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1326, 1070, 18, 1, CAST(0x0000ADDD00AEF96C AS DateTime), CAST(0x0000ADDD00AEF96C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1327, 1071, 38, 1, CAST(0x0000ADDD00AF290F AS DateTime), CAST(0x0000ADDD00AF290F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1328, 1071, 9, 1, CAST(0x0000ADDD00AF2910 AS DateTime), CAST(0x0000ADDD00AF2910 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1330, 1072, 38, 1, CAST(0x0000ADDD00AF582B AS DateTime), CAST(0x0000ADDD00AF582B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1331, 1072, 18, 1, CAST(0x0000ADDD00AF582E AS DateTime), CAST(0x0000ADDD00AF582E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1332, 1072, 9, 1, CAST(0x0000ADDD00AF5831 AS DateTime), CAST(0x0000ADDD00AF5831 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1389, 1073, 33, 1, CAST(0x0000ADDD01448410 AS DateTime), CAST(0x0000ADDD01448410 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1390, 1073, 32, 1, CAST(0x0000ADDD01448411 AS DateTime), CAST(0x0000ADDD01448411 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1391, 1073, 31, 1, CAST(0x0000ADDD01448411 AS DateTime), CAST(0x0000ADDD01448411 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1392, 1073, 29, 1, CAST(0x0000ADDD01448411 AS DateTime), CAST(0x0000ADDD01448411 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1393, 1073, 6, 1, CAST(0x0000ADDD01448411 AS DateTime), CAST(0x0000ADDD01448411 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1394, 1073, 5, 1, CAST(0x0000ADDD01448412 AS DateTime), CAST(0x0000ADDD01448412 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1396, 1084, 14, 1, CAST(0x0000ADDD01460ED0 AS DateTime), CAST(0x0000ADDD01460ED0 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1397, 1084, 4, 1, CAST(0x0000ADDD01460ED0 AS DateTime), CAST(0x0000ADDD01460ED0 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1398, 1082, 39, 1, CAST(0x0000ADDD0146B12D AS DateTime), CAST(0x0000ADDD0146B12D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1399, 1082, 7, 1, CAST(0x0000ADDD0146B12E AS DateTime), CAST(0x0000ADDD0146B12E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1400, 1082, 4, 1, CAST(0x0000ADDD0146B12E AS DateTime), CAST(0x0000ADDD0146B12E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1401, 1081, 38, 1, CAST(0x0000ADDD01471769 AS DateTime), CAST(0x0000ADDD01471769 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1402, 1081, 5, 1, CAST(0x0000ADDD01471769 AS DateTime), CAST(0x0000ADDD01471769 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1403, 1081, 4, 1, CAST(0x0000ADDD01471769 AS DateTime), CAST(0x0000ADDD01471769 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1405, 1083, 33, 1, CAST(0x0000ADDD0148474B AS DateTime), CAST(0x0000ADDD0148474B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1406, 1083, 32, 1, CAST(0x0000ADDD0148474B AS DateTime), CAST(0x0000ADDD0148474B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1407, 1083, 5, 1, CAST(0x0000ADDD0148474B AS DateTime), CAST(0x0000ADDD0148474B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1408, 1083, 4, 1, CAST(0x0000ADDD0148474C AS DateTime), CAST(0x0000ADDD0148474C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1409, 1088, 39, 1, CAST(0x0000ADDD01485312 AS DateTime), CAST(0x0000ADDD01485312 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1410, 1088, 31, 1, CAST(0x0000ADDD01485313 AS DateTime), CAST(0x0000ADDD01485313 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1411, 1088, 14, 1, CAST(0x0000ADDD01485314 AS DateTime), CAST(0x0000ADDD01485314 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1412, 1088, 8, 1, CAST(0x0000ADDD01485315 AS DateTime), CAST(0x0000ADDD01485315 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1413, 1088, 7, 1, CAST(0x0000ADDD01485316 AS DateTime), CAST(0x0000ADDD01485316 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1414, 1088, 4, 1, CAST(0x0000ADDD01485316 AS DateTime), CAST(0x0000ADDD01485316 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1415, 1079, 38, 1, CAST(0x0000ADDD01489D62 AS DateTime), CAST(0x0000ADDD01489D62 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1416, 1079, 34, 1, CAST(0x0000ADDD01489D62 AS DateTime), CAST(0x0000ADDD01489D62 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1417, 1079, 20, 1, CAST(0x0000ADDD01489D63 AS DateTime), CAST(0x0000ADDD01489D63 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1418, 1079, 8, 1, CAST(0x0000ADDD01489D63 AS DateTime), CAST(0x0000ADDD01489D63 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1419, 1079, 5, 1, CAST(0x0000ADDD01489D63 AS DateTime), CAST(0x0000ADDD01489D63 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1420, 1079, 4, 1, CAST(0x0000ADDD01489D64 AS DateTime), CAST(0x0000ADDD01489D64 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1422, 1078, 39, 1, CAST(0x0000ADDD0149B6B5 AS DateTime), CAST(0x0000ADDD0149B6B5 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1423, 1078, 22, 1, CAST(0x0000ADDD0149B6B5 AS DateTime), CAST(0x0000ADDD0149B6B5 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1424, 1078, 7, 1, CAST(0x0000ADDD0149B6B5 AS DateTime), CAST(0x0000ADDD0149B6B5 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1425, 1077, 26, 1, CAST(0x0000ADDD014A985F AS DateTime), CAST(0x0000ADDD014A985F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1426, 1077, 18, 1, CAST(0x0000ADDD014A9860 AS DateTime), CAST(0x0000ADDD014A9860 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1427, 1077, 14, 1, CAST(0x0000ADDD014A9860 AS DateTime), CAST(0x0000ADDD014A9860 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1428, 1052, 39, 1, CAST(0x0000ADDD014D29C8 AS DateTime), CAST(0x0000ADDD014D29C8 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1429, 1052, 7, 1, CAST(0x0000ADDD014D29C8 AS DateTime), CAST(0x0000ADDD014D29C8 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1430, 1054, 33, 1, CAST(0x0000ADDD014D5D1A AS DateTime), CAST(0x0000ADDD014D5D1A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1431, 1054, 32, 1, CAST(0x0000ADDD014D5D1B AS DateTime), CAST(0x0000ADDD014D5D1B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1432, 1054, 31, 1, CAST(0x0000ADDD014D5D1C AS DateTime), CAST(0x0000ADDD014D5D1C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1433, 1054, 29, 1, CAST(0x0000ADDD014D5D1D AS DateTime), CAST(0x0000ADDD014D5D1D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1434, 1054, 4, 1, CAST(0x0000ADDD014D5D20 AS DateTime), CAST(0x0000ADDD014D5D20 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1435, 1049, 33, 1, CAST(0x0000ADDD014E6635 AS DateTime), CAST(0x0000ADDD014E6635 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1436, 1049, 32, 1, CAST(0x0000ADDD014E6635 AS DateTime), CAST(0x0000ADDD014E6635 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1437, 1049, 31, 1, CAST(0x0000ADDD014E6635 AS DateTime), CAST(0x0000ADDD014E6635 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1438, 1049, 6, 1, CAST(0x0000ADDD014E6635 AS DateTime), CAST(0x0000ADDD014E6635 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1439, 1049, 4, 1, CAST(0x0000ADDD014E6635 AS DateTime), CAST(0x0000ADDD014E6635 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1441, 1076, 33, 1, CAST(0x0000ADDD0151A3AB AS DateTime), CAST(0x0000ADDD0151A3AB AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1442, 1076, 32, 1, CAST(0x0000ADDD0151A3AC AS DateTime), CAST(0x0000ADDD0151A3AC AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1443, 1076, 31, 1, CAST(0x0000ADDD0151A3AD AS DateTime), CAST(0x0000ADDD0151A3AD AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1444, 1076, 29, 1, CAST(0x0000ADDD0151A3AD AS DateTime), CAST(0x0000ADDD0151A3AD AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1445, 1076, 5, 1, CAST(0x0000ADDD0151A3AD AS DateTime), CAST(0x0000ADDD0151A3AD AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1446, 1076, 4, 1, CAST(0x0000ADDD0151A3AE AS DateTime), CAST(0x0000ADDD0151A3AE AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1448, 1090, 20, 1, CAST(0x0000ADDD01521BF0 AS DateTime), CAST(0x0000ADDD01521BF0 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1449, 1090, 9, 1, CAST(0x0000ADDD01521BF1 AS DateTime), CAST(0x0000ADDD01521BF1 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1450, 1090, 5, 1, CAST(0x0000ADDD01521BF1 AS DateTime), CAST(0x0000ADDD01521BF1 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1452, 1074, 8, 1, CAST(0x0000ADDD0153825D AS DateTime), CAST(0x0000ADDD0153825D AS DateTime))
GO
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1453, 1074, 5, 1, CAST(0x0000ADDD0153825D AS DateTime), CAST(0x0000ADDD0153825D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1462, 1067, 38, 1, CAST(0x0000ADDD0155EB79 AS DateTime), CAST(0x0000ADDD0155EB79 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1463, 1067, 34, 1, CAST(0x0000ADDD0155EB79 AS DateTime), CAST(0x0000ADDD0155EB79 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1464, 1067, 32, 1, CAST(0x0000ADDD0155EB79 AS DateTime), CAST(0x0000ADDD0155EB79 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1465, 1067, 14, 1, CAST(0x0000ADDD0155EB79 AS DateTime), CAST(0x0000ADDD0155EB79 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1466, 1067, 8, 1, CAST(0x0000ADDD0155EB79 AS DateTime), CAST(0x0000ADDD0155EB79 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1481, 19, 39, 1, CAST(0x0000ADDE014D1C04 AS DateTime), CAST(0x0000ADDE014D1C04 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1482, 19, 13, 1, CAST(0x0000ADDE014D1C04 AS DateTime), CAST(0x0000ADDE014D1C04 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1483, 19, 7, 1, CAST(0x0000ADDE014D1C04 AS DateTime), CAST(0x0000ADDE014D1C04 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1484, 1080, 33, 1, CAST(0x0000ADDE014DE774 AS DateTime), CAST(0x0000ADDE014DE774 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1485, 1080, 32, 1, CAST(0x0000ADDE014DE774 AS DateTime), CAST(0x0000ADDE014DE774 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1486, 1080, 31, 1, CAST(0x0000ADDE014DE774 AS DateTime), CAST(0x0000ADDE014DE774 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1487, 1080, 29, 1, CAST(0x0000ADDE014DE775 AS DateTime), CAST(0x0000ADDE014DE775 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1488, 1080, 6, 1, CAST(0x0000ADDE014DE775 AS DateTime), CAST(0x0000ADDE014DE775 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1489, 1080, 5, 1, CAST(0x0000ADDE014DE775 AS DateTime), CAST(0x0000ADDE014DE775 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1490, 1080, 4, 1, CAST(0x0000ADDE014DE775 AS DateTime), CAST(0x0000ADDE014DE775 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1492, 1063, 39, 1, CAST(0x0000ADDE0151E3CD AS DateTime), CAST(0x0000ADDE0151E3CD AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1493, 1063, 22, 1, CAST(0x0000ADDE0151E3CD AS DateTime), CAST(0x0000ADDE0151E3CD AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1494, 1063, 20, 1, CAST(0x0000ADDE0151E3CD AS DateTime), CAST(0x0000ADDE0151E3CD AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1495, 1063, 7, 1, CAST(0x0000ADDE0151E3CE AS DateTime), CAST(0x0000ADDE0151E3CE AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1496, 1060, 39, 1, CAST(0x0000ADDF007ED4BA AS DateTime), CAST(0x0000ADDF007ED4BA AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1497, 1060, 26, 1, CAST(0x0000ADDF007ED4BA AS DateTime), CAST(0x0000ADDF007ED4BA AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1499, 1094, 26, 1, CAST(0x0000ADDF00A2DF3E AS DateTime), CAST(0x0000ADDF00A2DF3E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1500, 1094, 22, 1, CAST(0x0000ADDF00A2DF41 AS DateTime), CAST(0x0000ADDF00A2DF41 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1501, 1094, 21, 1, CAST(0x0000ADDF00A2DF44 AS DateTime), CAST(0x0000ADDF00A2DF44 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1502, 1094, 20, 1, CAST(0x0000ADDF00A2DF48 AS DateTime), CAST(0x0000ADDF00A2DF48 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1503, 1095, 39, 1, CAST(0x0000ADDF00A65C30 AS DateTime), CAST(0x0000ADDF00A65C30 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1504, 1095, 18, 1, CAST(0x0000ADDF00A65C34 AS DateTime), CAST(0x0000ADDF00A65C34 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1505, 1095, 14, 1, CAST(0x0000ADDF00A65C34 AS DateTime), CAST(0x0000ADDF00A65C34 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1506, 1095, 4, 1, CAST(0x0000ADDF00A65C35 AS DateTime), CAST(0x0000ADDF00A65C35 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1507, 1096, 39, 1, CAST(0x0000ADE00047B18F AS DateTime), CAST(0x0000ADE00047B18F AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1508, 1096, 38, 1, CAST(0x0000ADE00047B192 AS DateTime), CAST(0x0000ADE00047B192 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1509, 1097, 18, 1, CAST(0x0000ADE000485691 AS DateTime), CAST(0x0000ADE000485691 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1510, 1097, 17, 1, CAST(0x0000ADE000485693 AS DateTime), CAST(0x0000ADE000485693 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1511, 1097, 16, 1, CAST(0x0000ADE000485697 AS DateTime), CAST(0x0000ADE000485697 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1512, 1098, 31, 1, CAST(0x0000ADE00048D76E AS DateTime), CAST(0x0000ADE00048D76E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1513, 1099, 29, 1, CAST(0x0000ADE000492C30 AS DateTime), CAST(0x0000ADE000492C30 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1514, 1099, 26, 1, CAST(0x0000ADE000492CA0 AS DateTime), CAST(0x0000ADE000492CA0 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1515, 1099, 22, 1, CAST(0x0000ADE000492CA5 AS DateTime), CAST(0x0000ADE000492CA5 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1516, 1100, 39, 1, CAST(0x0000ADE0013239AE AS DateTime), CAST(0x0000ADE0013239AE AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1517, 1100, 33, 1, CAST(0x0000ADE0013239B1 AS DateTime), CAST(0x0000ADE0013239B1 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1518, 1100, 27, 1, CAST(0x0000ADE0013239B4 AS DateTime), CAST(0x0000ADE0013239B4 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1519, 1101, 39, 1, CAST(0x0000ADE0013FC8FB AS DateTime), CAST(0x0000ADE0013FC8FB AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1520, 1101, 35, 1, CAST(0x0000ADE0013FC8FE AS DateTime), CAST(0x0000ADE0013FC8FE AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1521, 1101, 33, 1, CAST(0x0000ADE0013FC901 AS DateTime), CAST(0x0000ADE0013FC901 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (1522, 1102, 38, 1, CAST(0x0000ADE00157D958 AS DateTime), CAST(0x0000ADE00157D958 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2507, 2096, 33, 1, CAST(0x0000ADE201549FB0 AS DateTime), CAST(0x0000ADE201549FB0 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2508, 2096, 32, 1, CAST(0x0000ADE201549FB3 AS DateTime), CAST(0x0000ADE201549FB3 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2509, 2096, 31, 1, CAST(0x0000ADE201549FB7 AS DateTime), CAST(0x0000ADE201549FB7 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2510, 2096, 29, 1, CAST(0x0000ADE201549FB9 AS DateTime), CAST(0x0000ADE201549FB9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2511, 2096, 6, 1, CAST(0x0000ADE201549FBB AS DateTime), CAST(0x0000ADE201549FBB AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2512, 2096, 5, 1, CAST(0x0000ADE201549FBD AS DateTime), CAST(0x0000ADE201549FBD AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2513, 2096, 4, 1, CAST(0x0000ADE201549FC2 AS DateTime), CAST(0x0000ADE201549FC2 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2514, 2097, 33, 1, CAST(0x0000ADE20156A568 AS DateTime), CAST(0x0000ADE20156A568 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2515, 2097, 32, 1, CAST(0x0000ADE20156A569 AS DateTime), CAST(0x0000ADE20156A569 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2516, 2097, 31, 1, CAST(0x0000ADE20156A56A AS DateTime), CAST(0x0000ADE20156A56A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2517, 2097, 29, 1, CAST(0x0000ADE20156A56B AS DateTime), CAST(0x0000ADE20156A56B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2518, 2097, 4, 1, CAST(0x0000ADE20156A56C AS DateTime), CAST(0x0000ADE20156A56C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2519, 2098, 37, 1, CAST(0x0000ADE2015C703D AS DateTime), CAST(0x0000ADE2015C703D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2520, 2098, 33, 1, CAST(0x0000ADE2015C70B7 AS DateTime), CAST(0x0000ADE2015C70B7 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2521, 2098, 20, 1, CAST(0x0000ADE2015C70B8 AS DateTime), CAST(0x0000ADE2015C70B8 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2522, 2098, 18, 1, CAST(0x0000ADE2015C70B9 AS DateTime), CAST(0x0000ADE2015C70B9 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2523, 2098, 17, 1, CAST(0x0000ADE2015C70BA AS DateTime), CAST(0x0000ADE2015C70BA AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2524, 2098, 5, 1, CAST(0x0000ADE2015C70BB AS DateTime), CAST(0x0000ADE2015C70BB AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2526, 2099, 39, 1, CAST(0x0000ADE2015DFD79 AS DateTime), CAST(0x0000ADE2015DFD79 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2527, 2099, 32, 1, CAST(0x0000ADE2015DFD7A AS DateTime), CAST(0x0000ADE2015DFD7A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2528, 2099, 21, 1, CAST(0x0000ADE2015DFD7B AS DateTime), CAST(0x0000ADE2015DFD7B AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2529, 2099, 18, 1, CAST(0x0000ADE2015DFD7C AS DateTime), CAST(0x0000ADE2015DFD7C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2530, 2099, 14, 1, CAST(0x0000ADE2015DFD7D AS DateTime), CAST(0x0000ADE2015DFD7D AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2531, 2099, 4, 1, CAST(0x0000ADE2015DFD7E AS DateTime), CAST(0x0000ADE2015DFD7E AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2532, 2100, 32, 1, CAST(0x0000ADE201603CCC AS DateTime), CAST(0x0000ADE201603CCC AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2533, 2100, 21, 1, CAST(0x0000ADE201603CCE AS DateTime), CAST(0x0000ADE201603CCE AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2534, 2100, 5, 1, CAST(0x0000ADE201603CCE AS DateTime), CAST(0x0000ADE201603CCE AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2535, 2100, 4, 1, CAST(0x0000ADE201603CD0 AS DateTime), CAST(0x0000ADE201603CD0 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2536, 2101, 35, 1, CAST(0x0000ADE201624881 AS DateTime), CAST(0x0000ADE201624881 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2537, 2101, 20, 1, CAST(0x0000ADE201624883 AS DateTime), CAST(0x0000ADE201624883 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2538, 2101, 5, 1, CAST(0x0000ADE201624885 AS DateTime), CAST(0x0000ADE201624885 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2539, 1068, 18, 1, CAST(0x0000ADE40177855A AS DateTime), CAST(0x0000ADE40177855A AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2540, 1068, 12, 1, CAST(0x0000ADE401778563 AS DateTime), CAST(0x0000ADE401778563 AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2541, 1068, 7, 1, CAST(0x0000ADE40177856C AS DateTime), CAST(0x0000ADE40177856C AS DateTime))
INSERT [dbo].[DB_TRUYEN_THELOAI] ([id_truyen_theloai], [id_truyen], [id_theloai], [status_], [created_at], [updated_at]) VALUES (2542, 1068, 4, 1, CAST(0x0000ADE401778575 AS DateTime), CAST(0x0000ADE401778575 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_TRUYEN_THELOAI] OFF
SET IDENTITY_INSERT [dbo].[DB_USER] ON 

INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (2, N'Kamisato Ayaka', N'travinhcity6x', N'ankhang024@gmail.com', N'e1adc3949ba59abbe56e057f2f883e', N'0', 100000, N'eed43195ec7c6a93855d2b0d0f46fb9', N'747191545056_p0_master1200.jpg', 1, CAST(0x0000ADD8009A7E8B AS DateTime), CAST(0x0000ADD8009A7E8B AS DateTime))
INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (7, N'admin', N'admin', N'a@a.cmt', N'e1adc3949ba59abbe56e057f2f883e', N'2', 992493999, N'a66abb5684c45962d887564f8346e8d', N'38461540Hutao.jpg', 1, CAST(0x0000ADDC00A45E97 AS DateTime), CAST(0x0000ADDC00A45E97 AS DateTime))
INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (1016, N'city2008', N'city2008', N'kpi@mail.com', N'e1adc3949ba59abbe56e057f2f883e', N'0', 0, N'bce9869bfd4844cf9204dd5196c4b9', NULL, 1, CAST(0x0000ADDF00912984 AS DateTime), CAST(0x0000ADDF00912984 AS DateTime))
INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (1025, N'city2007', N'city2007', N'city2007@a.c', N'e1adc3949ba59abbe56e057f2f883e', N'0', 0, N'c043db60da62ad0ed7ad634429c8026', NULL, 1, CAST(0x0000ADDF00A804D5 AS DateTime), CAST(0x0000ADDF00A804D5 AS DateTime))
INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (1026, N'Kamisato Ayaya', N'travinhcity7x', N'ayaya@mail.com', N'e1adc3949ba59abbe56e057f2f883e', N'2', 99049999, N'1b68993c7ec1f5ffeef245be43fdb6', N'7087243316096_1020335945445414_4164233053372659426_n.jpg', 1, CAST(0x0000ADDF00A8BEEC AS DateTime), CAST(0x0000ADDF00A8BEEC AS DateTime))
INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (1034, N'khuong duy', N'duyvo', N'a@a.c', N'7a8fbde2e8c919527d2f8a29e6acd32', N'2', 94299999, N'68dbaf636013deb0333d5e6c67add19', N'25394780254670215_2027417017438182_1348023752140029869_n.jpg', 1, CAST(0x0000ADE001479E7D AS DateTime), CAST(0x0000ADE001479E7D AS DateTime))
INSERT [dbo].[DB_USER] ([id_user], [fullname], [ten_dangnhap], [mail], [matkhau_user], [quyen_han], [coin], [ma_khoa], [img_user], [status_], [created_at], [updated_at]) VALUES (1039, N'Dy Nhỏ nè', N'Dyno0511', N'shadofst0511@gmail.com', N'b59c67bf196a4758191e42f76670ceba', N'1', 98749999, N'54bc8daef69aa8b6dbb77f41de11c', NULL, 1, CAST(0x0000ADE0015C9E34 AS DateTime), CAST(0x0000ADE0015C9E34 AS DateTime))
SET IDENTITY_INSERT [dbo].[DB_USER] OFF
SET IDENTITY_INSERT [dbo].[DB_VOTE] ON 

INSERT [dbo].[DB_VOTE] ([id], [giatri], [id_user], [id_truyen], [created_at], [updated_at]) VALUES (1, 2, 7, 2096, CAST(0x0000ADED00FE8A35 AS DateTime), CAST(0x0000ADED00FE8A35 AS DateTime))
INSERT [dbo].[DB_VOTE] ([id], [giatri], [id_user], [id_truyen], [created_at], [updated_at]) VALUES (2, 5, 1034, 2096, CAST(0x0000ADED00FEAA20 AS DateTime), CAST(0x0000ADED0116735D AS DateTime))
INSERT [dbo].[DB_VOTE] ([id], [giatri], [id_user], [id_truyen], [created_at], [updated_at]) VALUES (1002, 1, 1034, 1071, CAST(0x0000ADED0111D72B AS DateTime), CAST(0x0000ADED0111D72B AS DateTime))
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
ALTER TABLE [dbo].[DB_VOTE] ADD  CONSTRAINT [DF_DB_VOTE_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[DB_VOTE] ADD  CONSTRAINT [DF_DB_VOTE_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[DB_CHUONG]  WITH CHECK ADD  CONSTRAINT [fk_Chuong_User] FOREIGN KEY([id_user])
REFERENCES [dbo].[DB_USER] ([id_user])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DB_CHUONG] CHECK CONSTRAINT [fk_Chuong_User]
GO
ALTER TABLE [dbo].[DB_COMMENT]  WITH CHECK ADD  CONSTRAINT [FK_DB_COMMENT_DB_CHUONG] FOREIGN KEY([id_chuong])
REFERENCES [dbo].[DB_CHUONG] ([id_chuong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DB_COMMENT] CHECK CONSTRAINT [FK_DB_COMMENT_DB_CHUONG]
GO
ALTER TABLE [dbo].[DB_LUOTXEM]  WITH CHECK ADD  CONSTRAINT [FK_DB_LUOTXEM_DB_CHUONG] FOREIGN KEY([id_chuong])
REFERENCES [dbo].[DB_CHUONG] ([id_chuong])
ON UPDATE CASCADE
ON DELETE CASCADE
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
GO
ALTER TABLE [dbo].[DB_LUOTXEM] CHECK CONSTRAINT [FK_DB_LUOTXEM_DB_USER]
GO
ALTER TABLE [dbo].[DB_THELOAI]  WITH CHECK ADD  CONSTRAINT [FK_DB_THELOAI_DB_USER] FOREIGN KEY([id_user])
REFERENCES [dbo].[DB_USER] ([id_user])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DB_THELOAI] CHECK CONSTRAINT [FK_DB_THELOAI_DB_USER]
GO
ALTER TABLE [dbo].[DB_THUVIEN]  WITH CHECK ADD  CONSTRAINT [fk_THUVIEN_User] FOREIGN KEY([id_user])
REFERENCES [dbo].[DB_USER] ([id_user])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DB_THUVIEN] CHECK CONSTRAINT [fk_THUVIEN_User]
GO
ALTER TABLE [dbo].[DB_TRUYEN]  WITH CHECK ADD  CONSTRAINT [fk_Truyen_User_id] FOREIGN KEY([id_user])
REFERENCES [dbo].[DB_USER] ([id_user])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DB_TRUYEN] CHECK CONSTRAINT [fk_Truyen_User_id]
GO
ALTER TABLE [dbo].[DB_TRUYEN_THELOAI]  WITH CHECK ADD  CONSTRAINT [fk_T_THELOAI_theloai] FOREIGN KEY([id_theloai])
REFERENCES [dbo].[DB_THELOAI] ([id_theloai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DB_TRUYEN_THELOAI] CHECK CONSTRAINT [fk_T_THELOAI_theloai]
GO
ALTER TABLE [dbo].[DB_VOTE]  WITH CHECK ADD  CONSTRAINT [FK_DB_VOTE_DB_TRUYEN] FOREIGN KEY([id_truyen])
REFERENCES [dbo].[DB_TRUYEN] ([id_truyen])
GO
ALTER TABLE [dbo].[DB_VOTE] CHECK CONSTRAINT [FK_DB_VOTE_DB_TRUYEN]
GO
ALTER TABLE [dbo].[DB_VOTE]  WITH CHECK ADD  CONSTRAINT [FK_DB_VOTE_DB_USER] FOREIGN KEY([id_user])
REFERENCES [dbo].[DB_USER] ([id_user])
GO
ALTER TABLE [dbo].[DB_VOTE] CHECK CONSTRAINT [FK_DB_VOTE_DB_USER]
GO
USE [master]
GO
ALTER DATABASE [WEB_TRUYEN] SET  READ_WRITE 
GO
