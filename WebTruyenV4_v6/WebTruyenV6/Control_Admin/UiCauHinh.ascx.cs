﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV6.Code;

namespace WebTruyenV6.Control_Admin
{
    public partial class UiCauHinh : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static DB_USER NguoiDungs = new DB_USER();
        public static DB_CAUHINH HeThongs = new DB_CAUHINH();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (NguoiDung.CheckLogin() != true) // kiem tra dang nhap cua nguoi dung
            {
                string scriptText = "modal.style.display = 'block'; noti.innerHTML = 'Bạn vui lòng đăng nhập !'; window.onclick = function(event) { window.location='" + Request.ApplicationPath + "dangnhap' }";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
            }

           try
            {
             if (!IsPostBack)
               {

                    LoadThongTinNguoiDung();
                    NguoiDung.CheckAdmin(Convert.ToInt32(NguoiDungs.quyen_han));
                    LoadHeThong();
                    LoadCapNhat();
                }
            }
           catch (Exception err)
           {
               string url = "/404?err=true&&vitri="+ this.GetType().Name + "&&tenloi=" + err.Message;
               Response.Redirect(url);
           }
        }

        //load thong tin nguoi dung
        public void LoadThongTinNguoiDung()
        {

            String MaKhoa = Request.Cookies["log"].Value;

            var dt = (from q in dl.DB_USERs where q.ma_khoa == MaKhoa select q);

            if (dt != null)
            {
                NguoiDungs = dt.First();
            }
        }

        public void LoadHeThong()
        {

            var dt = (from q in dl.DB_CAUHINHs select q);

            if (dt != null)
            {
                HeThongs = dt.First();
            }

        }

        public void LoadCapNhat()
        {
            string FileLogo = "";
            string FileThanhToan = "";
            string File404 = "";
            string FileNhanVat = "";
            string FileNen = "";
            string FileChu= "";
            try
            {
                if (HttpContext.Current.Request.Files["UploadedFileLogo"] != null)
                {
                    HttpPostedFile MyFile = HttpContext.Current.Request.Files["UploadedFileLogo"];
                    string TargetLocation = HttpContext.Current.Server.MapPath("/public/img/www/logo/");
                    if (MyFile.ContentLength > 2)
                    {
                        FileLogo = HeThong.LaySoNgauNhien().ToString() + MyFile.FileName;
                        int FileSize = MyFile.ContentLength;
                        byte[] FileByteArray = new byte[FileSize];
                        MyFile.InputStream.Read(FileByteArray, 0, FileSize);     
                        MyFile.SaveAs(TargetLocation + FileLogo);
                    }
                }

                if (HttpContext.Current.Request.Files["UploadedFileFavicon"] != null)
                {
                    HttpPostedFile MyFile = HttpContext.Current.Request.Files["UploadedFileFavicon"];
                    string TargetLocation = HttpContext.Current.Server.MapPath("/public/img/www/favicon/");
                    if (MyFile.ContentLength > 2)
                    {
                        FileThanhToan = HeThong.LaySoNgauNhien().ToString() + MyFile.FileName;
                        int FileSize = MyFile.ContentLength;
                        byte[] FileByteArray = new byte[FileSize];
                        MyFile.InputStream.Read(FileByteArray, 0, FileSize);
                        MyFile.SaveAs(TargetLocation + FileThanhToan);
                    }
                }

                // up anh 404
                if (HttpContext.Current.Request.Files["UploadedFile404"] != null)
                {
                    HttpPostedFile MyFile = HttpContext.Current.Request.Files["UploadedFile404"];
                    string TargetLocation = HttpContext.Current.Server.MapPath("/public/img/www/404/");
                    if (MyFile.ContentLength > 2)
                    {
                        File404 = HeThong.LaySoNgauNhien().ToString() + MyFile.FileName;
                        int FileSize = MyFile.ContentLength;
                        byte[] FileByteArray = new byte[FileSize];
                        MyFile.InputStream.Read(FileByteArray, 0, FileSize);
                        MyFile.SaveAs(TargetLocation + File404);
                    }
                }
                // up anh nhan vat
                if (HttpContext.Current.Request.Files["UploadedFileNhanVat"] != null)
                {
                    HttpPostedFile MyFile = HttpContext.Current.Request.Files["UploadedFileNhanVat"];
                    string TargetLocation = HttpContext.Current.Server.MapPath("/public/img/www/noti/");
                    if (MyFile.ContentLength > 2)
                    {
                        FileNhanVat = HeThong.LaySoNgauNhien().ToString() + MyFile.FileName;
                        int FileSize = MyFile.ContentLength;
                        byte[] FileByteArray = new byte[FileSize];
                        MyFile.InputStream.Read(FileByteArray, 0, FileSize);
                        MyFile.SaveAs(TargetLocation + FileNhanVat);
                    }
                }
                //up load anh nen thong bao

                if (HttpContext.Current.Request.Files["UploadedFileNen"] != null)
                {
                    HttpPostedFile MyFile = HttpContext.Current.Request.Files["UploadedFileNen"];
                    string TargetLocation = HttpContext.Current.Server.MapPath("/public/img/www/noti/");
                    if (MyFile.ContentLength > 2)
                    {
                        FileNen = HeThong.LaySoNgauNhien().ToString() + MyFile.FileName;
                        int FileSize = MyFile.ContentLength;
                        byte[] FileByteArray = new byte[FileSize];
                        MyFile.InputStream.Read(FileByteArray, 0, FileSize);
                        MyFile.SaveAs(TargetLocation + FileNen);
                    }
                }

                //up load anh chu thong bao

                if (HttpContext.Current.Request.Files["UploadedFileChu"] != null)
                {
                    HttpPostedFile MyFile = HttpContext.Current.Request.Files["UploadedFileChu"];
                    string TargetLocation = HttpContext.Current.Server.MapPath("/public/img/www/noti/");
                    if (MyFile.ContentLength > 2)
                    {
                        FileChu = HeThong.LaySoNgauNhien().ToString() + MyFile.FileName;
                        int FileSize = MyFile.ContentLength;
                        byte[] FileByteArray = new byte[FileSize];
                        MyFile.InputStream.Read(FileByteArray, 0, FileSize);
                        MyFile.SaveAs(TargetLocation + FileChu);
                    }
                }



            }
            catch
            {
                noti.Text = "Có lỗi xảy ra, upload ảnh ko thành công !";
            }

            if (FileLogo == "")
            {
                FileLogo = HeThongs.logo_web;
            }
            if (FileThanhToan == "")
            {
                FileThanhToan = HeThongs.thanhtoan_online;
            }
            if (File404 == "")
            {
                File404 = HeThongs.img_404;
            }
            if (FileNhanVat == "")
            {
                FileNhanVat = HeThongs.img_nhanvat;
            }
            if (FileNen == "")
            {
                FileNen = HeThongs.img_nen;
            }
            if (FileChu == "")
            {
                FileChu = HeThongs.img_chu;
            }
            




            if (!string.IsNullOrEmpty(Request.Form["capnhat"]))
            {
                string tenweb = Request.Form["tenweb"].ToString();
                string diachi = Request.Form["diachi"].ToString();
                string mail = Request.Form["mail"].ToString();
                string sdt_lh = Request.Form["sdt_lh"].ToString();
                string lh_fb = Request.Form["lh_fb"].ToString();
                string lh_zalo = Request.Form["lh_zalo"].ToString();
                string copyright = Request.Form["copyright"].ToString();
                string lh_itg = Request.Form["lh_itg"].ToString();
                string event_noel = Request.Form["event_noel"].ToString();
                string event_tet = Request.Form["event_tet"].ToString();
                string fb_chat = Request.Form["fb_chat"].ToString();
                string fb_page = Request.Form["fb_page"].ToString();
                
                if (tenweb != "" || diachi != "" || mail != "" || sdt_lh != "" || lh_itg != "" || lh_fb != "" || lh_zalo != "" || copyright != "")
                {
                    if (event_noel == "true")
                    {
                        event_tet = "false";
                    }
                    if (event_tet == "true")
                    {
                        event_noel = "false";
                    }                   
                    //dl.CapNhatCauHinh(tenweb, FileLogo, FileThanhToan, mail, diachi, sdt_lh, lh_fb, lh_zalo, lh_itg, copyright);

           
                    DB_CAUHINH chdb = dl.DB_CAUHINHs.Single(q => q.id_cauhinh == 0);

                    chdb.ten_web = tenweb;
                    chdb.diachi_lh = diachi;
                    chdb.email_lh = mail;
                    chdb.sdt_lh = sdt_lh;
                    chdb.lh_fb = lh_fb;
                    chdb.lh_zalo = lh_zalo;
                    chdb.lh_itg = lh_itg;
                    chdb.copyright = copyright;
                    chdb.logo_web = FileLogo;
                    chdb.thanhtoan_online = FileThanhToan;
                    chdb.img_404 = File404;
                    chdb.img_nhanvat = FileNhanVat;
                    chdb.img_nen = FileNen;
                    chdb.img_chu = FileChu;
                    chdb.event_noel = event_noel;
                    chdb.event_tet = event_tet;
                    chdb.Fb_mess = fb_chat;
                    chdb.Fb_page = fb_page;
                    dl.SubmitChanges();  

                    string scriptText = "alert('Cập nhật thành công !');  window.location='" + Request.ApplicationPath + "cp-admin/cauhinh'";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
                }
            }

        }



    } //
}