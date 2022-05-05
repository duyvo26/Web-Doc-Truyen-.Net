USE [master]
GO
/****** Object:  Database [WEB_TRUYEN]    Script Date: 02/12/2021 6:16:50 CH ******/
CREATE DATABASE [WEB_TRUYEN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WEB_TRUYEN', FILENAME = N'D:\HOCLAPTRINH\database\truyenv6\WEB_TRUYEN_dat.mdf' , SIZE = 10240KB , MAXSIZE = 20971520KB , FILEGROWTH = 10240KB )
 LOG ON 
( NAME = N'WEB_TRUYEN_log', FILENAME = N'D:\HOCLAPTRINH\database\truyenv6\WEB_TRUYEN_log.ldf' , SIZE = 5120KB , MAXSIZE = 204800KB , FILEGROWTH = 10240KB )
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
/****** Object:  User [webtruyens]    Script Date: 02/12/2021 5:18:55 CH ******/
CREATE USER [webtruyens] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [webtruyen]    Script Date: 02/12/2021 5:18:55 CH ******/
CREATE USER [webtruyen] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [webtruyens]
GO
ALTER ROLE [db_owner] ADD MEMBER [webtruyen]
GO
/****** Object:  StoredProcedure [dbo].[CapNhatCauHinh]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[CapnhatChuong]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[CapNhatCoinUser]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[Capnhatnguoidung]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[CapNhatQuyenHan]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[CapNhatThuVien]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[CapNhatThuVienDoc]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[CapNhatTruyen]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[DangKyNguoiDung]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[DelUser]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[LayLuotXem]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[LayThongTinBinhLuan]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[LayThongTinBinhLuanChuong]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[LayThuVienDoc]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[LayTruyenRand]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[LayTruyenTheLoai]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[NangLuotXem]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[Them_cmt]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[ThemChuong]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[ThemThuVien]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[ThemTruyen]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[ThemTruyenTheLoai]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[TimKiem]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[TimKiemTheoTen]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[TimKiemTheoTheLoai]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[XoaChuong]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[XoaChuongAdmin]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[XoaThuVien]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[XoaTruyen]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  StoredProcedure [dbo].[XoaTruyenTL]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  Table [dbo].[DB_CAUHINH]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  Table [dbo].[DB_CHUONG]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  Table [dbo].[DB_COMMENT]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  Table [dbo].[DB_LUOTXEM]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  Table [dbo].[DB_THELOAI]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  Table [dbo].[DB_THUVIEN]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  Table [dbo].[DB_TRUYEN]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  Table [dbo].[DB_TRUYEN_THELOAI]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  Table [dbo].[DB_USER]    Script Date: 02/12/2021 5:18:56 CH ******/
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
/****** Object:  Table [dbo].[DB_VOTE]    Script Date: 02/12/2021 5:18:56 CH ******/
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
	[update_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_vote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[DB_CAUHINH] ([id_cauhinh], [ten_web], [logo_web], [favicon_web], [email_lh], [diachi_lh], [sdt_lh], [lh_fb], [lh_zalo], [lh_itg], [copyright], [created_at], [updated_at]) VALUES (0, N'KDA Website Đọc Truyện', N'204612.png', N'KDA STUDIO_logo.png', N'mail@gm.com', N'Cần thơ', N'0123456789', N'fb.com', N'zl.com', N'ig.com', N'a@b.com', CAST(0x0000ADD800965C00 AS DateTime), CAST(0x0000ADD800965C00 AS DateTime))


SET IDENTITY_INSERT [dbo].[DB_USER] OFF
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
ALTER TABLE [dbo].[DB_VOTE] ADD  DEFAULT (getdate()) FOR [update_at]
GO

USE [master]
GO
ALTER DATABASE [WEB_TRUYEN] SET  READ_WRITE 

