using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing; // them thu vien vao

namespace WebTruyenV6
{
    public class Global : System.Web.HttpApplication
    {
       
        // cau hinh url
        void GhiUrl(RouteCollection routes)
        {
            // trang nguoi dung
            routes.MapPageRoute("TrangChu", "", "~/Index.aspx"); // trang chu
            routes.MapPageRoute("NapCoin", "napcoin", "~/NapCoin.aspx"); // NapCoin
            routes.MapPageRoute("ThongTin", "thongtin", "~/ThongTin.aspx"); // NapCoin
            routes.MapPageRoute("TimKiemTruyen", "TimKiemTruyen", "~/TimKiemTruyen.aspx"); // NapCoin

            //login
            routes.MapPageRoute("DangNhap", "DangNhap", "~/taikhoan/DangNhap.aspx"); // dang nhap 
            routes.MapPageRoute("DangKy", "DangKy", "~/taikhoan/DangKy.aspx"); // dang ky
            // tai khoản
            routes.MapPageRoute("ThongTinNguoiDung", "TaiKhoan/Info", "~/taikhoan/ThongTinNguoiDung.aspx"); // thong tin tai khoan
            routes.MapPageRoute("CapNhatNguoiDung", "TaiKhoan/CapNhat", "~/taikhoan/CapNhatNguoiDung.aspx"); // cap nhat thong tin
            routes.MapPageRoute("ThuVienDoc", "TaiKhoan/ThuVienDoc", "~/taikhoan/ThuVienDoc.aspx"); // thu vien doc
            routes.MapPageRoute("Thongbao", "TaiKhoan/Thongbao", "~/taikhoan/Thongbao.aspx"); // thong bao
            // QuanLyTruyen
            routes.MapPageRoute("ThemTruyen", "TaiKhoan/ThemTruyen", "~/QuanLyTruyen/ThemTruyen.aspx"); // them truyen
            routes.MapPageRoute("ThemChuong", "TaiKhoan/ThemChuong-{IdTruyen}", "~/QuanLyTruyen/ThemChuong.aspx"); // Them Chuong
            routes.MapPageRoute("Danhsachchuong", "TaiKhoan/Danhsachchuong-{IdTruyen}", "~/QuanLyTruyen/Danhsachchuong.aspx"); // Danh sach chuong
            routes.MapPageRoute("CapNhatTruyen", "TaiKhoan/CapNhatTruyen-{IdTruyen}", "~/QuanLyTruyen/CapNhatTruyen.aspx"); // Cap Nhat Truyen
            routes.MapPageRoute("CapNhatChuong", "TaiKhoan/CapNhatChuong-{IdChuong}", "~/QuanLyTruyen/CapNhatChuong.aspx"); // Cap Nhat Truyen

            // trang truyen
            routes.MapPageRoute("Thong tin truyen", "Truyen/{LinkRawTruyen}-{IdTruyen}", "~/TrangTruyen/ThongTinTruyen.aspx"); // DocTruyen
            routes.MapPageRoute("DocTruyen", "Truyen/{LinkRawTruyen}-{IdTruyen}/{IdChuong}", "~/TrangTruyen/DocTruyens.aspx"); // Chuong
            routes.MapPageRoute("LoadDanhSachChuong", "LoadDanhSachChuong/{LinkRawTruyen}/{IdTruyen}", "~/TrangTruyen/LoadDanhSachChuong.aspx"); // Chuong
            

             //trang 505
            routes.MapPageRoute("404", "404", "~/404.aspx"); 

            // admin
                 // index
            routes.MapPageRoute("index_ad", "cp-admin", "~/admin/index.aspx"); // 
            routes.MapPageRoute("cauhinh_ad", "cp-admin/Cauhinh", "~/admin/cauhinh.aspx"); // 
            routes.MapPageRoute("log404_ad", "cp-admin/Log-404", "~/admin/log-404.aspx"); // 
            routes.MapPageRoute("loggd_ad", "cp-admin/Log-gd", "~/admin/log-giaodich.aspx"); // 
                  // nguoi dung
                        // them moi
            routes.MapPageRoute("ThemNguoiDung_ad", "cp-admin/Nguoidung/Them", "~/admin/nguoidungs/ThemNguoiDung.aspx"); // 
                        //danhsach
            routes.MapPageRoute("DanhSachNGUOIDUNG_ad", "cp-admin/Nguoidung/DanhSach", "~/admin/nguoidungs/DanhSach.aspx"); // 
                         //capnhat
            routes.MapPageRoute("CapNhatNGUOIDUNG_ad", "cp-admin/Nguoidung/CapNhat-{id_user}", "~/admin/nguoidungs/capnhat.aspx"); // 
                       // nap coin
            routes.MapPageRoute("CapNhatCoinNGUOIDUNG_ad", "cp-admin/Nguoidung/NapCoin-{id_user}", "~/admin/nguoidungs/napcoin.aspx"); // 
                 //truyen
                         //danhsach
            routes.MapPageRoute("DanhSachtruyen_ad", "cp-admin/truyen/DanhSach", "~/admin/truyens/DanhSach.aspx"); // 
                        // them truyen
            routes.MapPageRoute("Themtruyen_ad", "cp-admin/truyen/themtruyen", "~/admin/truyens/themtruyen.aspx"); // 
                       // cap nhat truyen
            routes.MapPageRoute("capnhattruyen_ad", "cp-admin/truyen/capnhat-{IdTruyen}", "~/admin/truyens/capnhat.aspx"); // 
                        // binh luan
            routes.MapPageRoute("dnhsachbinhluan_ad", "cp-admin/truyen/binhluan", "~/admin/truyens/binhluan.aspx"); // 
                        // thu vien
            routes.MapPageRoute("danhsachthuvien_ad", "cp-admin/truyen/thuvien", "~/admin/truyens/thuvien.aspx"); // 
                        // danh gia
            routes.MapPageRoute("danhsachdanhgia_ad", "cp-admin/truyen/danhgia", "~/admin/truyens/danhgia.aspx"); // 
                //chuong
                      //danhsach
            routes.MapPageRoute("DanhSachChuong_ad", "cp-admin/chuong/DanhSach-{IdTruyen}", "~/admin/chuongs/DanhSach.aspx"); // 
                     // them chuong
            routes.MapPageRoute("ThemChuong_ad", "cp-admin/chuong/ThemChuong-{IdTruyen}", "~/admin/chuongs/ThemChuong.aspx"); // 
                      //capnhat
            routes.MapPageRoute("capnhatchuong_ad", "cp-admin/chuong/capnhat-{IdChuong}", "~/admin/chuongs/capnhat.aspx"); // 
               // the loai
            routes.MapPageRoute("DanhSachTheLoai_ad", "cp-admin/theloai/DanhSach", "~/admin/theloais/DanhSach.aspx"); // 
        }

        protected void Application_Start(object sender, EventArgs e)
        {
            GhiUrl(RouteTable.Routes);// goi ham cau hinh duong dan
        }

        

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            Exception exc = Server.GetLastError();

            if (exc is HttpUnhandledException)
            {
                // Pass the error on to the error page.
                Server.Transfer("404", true);
            }
        }


        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }


    }
}