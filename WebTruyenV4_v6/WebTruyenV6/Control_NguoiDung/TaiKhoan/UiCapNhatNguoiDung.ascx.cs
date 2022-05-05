﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV6.Code;

namespace WebTruyenV6.Control_NguoiDung.TaiKhoan
{
    public partial class UiCapNhatNguoiDung : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static DB_USER NguoiDungs = new DB_USER();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (NguoiDung.CheckLogin() != true) // kiem tra dang nhap cua nguoi dung
            {
                string scriptText = "modal.style.display = 'block'; noti.innerHTML = 'Bạn vui lòng đăng nhập !'; window.onclick = function(event) { window.location='" + Request.ApplicationPath + "dangnhap' }";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
            }
            else
            {
                try
                {
                    if (!IsPostBack)
                    {
                        LoadThongTinNguoiDung();
                    }  CapNhatNguoiDung();
                }
                catch (Exception err)
                {
                    string url = "/404?err=true&&vitri="+ this.GetType().Name + "&&tenloi=" + err.Message;
                    Response.Redirect(url);
                }
            }

        }

        //load thong tin người dùng
        private void LoadThongTinNguoiDung()
        {
            String MaKhoa = "";
            MaKhoa = Request.Cookies["Log"].Value;
            NguoiDungs = null;
            var dt = (from q in dl.DB_USERs where q.ma_khoa == MaKhoa select q);

            if (dt != null)
            {
                NguoiDungs = dt.FirstOrDefault();
            }
            else
            {
                NguoiDungs = null;
            }
        }
        private void CapNhatNguoiDung()
        {
            if (!string.IsNullOrEmpty(Request.Form["capnhat"]))
            {
                string fullname = Request.Form["fullname"];
                string email = Request.Form["email"];

                if (fullname == "" || email == "")
                {
                    string scriptText = "alert('Vui lòng nhập đầy đủ thông tin !');";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
                }
                else
                {

                    string Img_Url = null;
                    if (FileUpload1.HasFile)
                    {
                        Img_Url = HeThong.LaySoNgauNhien().ToString() + FileUpload1.FileName;
                        string filePath = MapPath("/public/img/www/avatar/" + Img_Url);
                        FileUpload1.SaveAs(filePath);
                        // up vao csdl
                        dl.Capnhatnguoidung(NguoiDungs.id_user, fullname, email, Img_Url);

                    }
                    else
                    {
                        // up vao csdl
                        string IMG = NguoiDungs.img_user;
                        dl.Capnhatnguoidung(NguoiDungs.id_user, fullname, email, IMG);
                    }

                    string scriptText = "alert('Cập nhật thông tin thành công !'); window.location='" + Request.ApplicationPath + "taikhoan/capnhat'";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
                }
            }
            // doi mat khau
            if (!string.IsNullOrEmpty(Request.Form["doimatkhau"]))
            {
                string pass_old = Request.Form["pass_old"];
                string pass_new = Request.Form["pass_new"];
                // ma hoa lay pass goc
                string pass_goc = HeThong.MH_MD5(HeThong.LocDauTiengViet(pass_old));
                // truy cap sql
                var dt = (from q in dl.DB_USERs where q.ten_dangnhap == NguoiDungs.ten_dangnhap && q.matkhau_user == pass_goc select q).FirstOrDefault();
                if (dt == null)
                {
                    string scriptText = "alert('Mật khẩu cũ không đúng !'); ";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
                }
                else
                {
                    DB_USER DTK = dl.DB_USERs.Single(q => q.ten_dangnhap == NguoiDungs.ten_dangnhap && q.matkhau_user == pass_goc);
                    DTK.matkhau_user = HeThong.MH_MD5(HeThong.LocDauTiengViet(pass_new));
                    string ma_khoa = HeThong.MH_MD5(HeThong.LocDauTiengViet(NguoiDungs.ten_dangnhap + pass_new));
                    DTK.ma_khoa = ma_khoa;
                    dl.SubmitChanges();
                    NguoiDung.SetCookie(ma_khoa);
                    string scriptText = "alert('Cập nhật tài khoản thành công !'); window.location='" + Request.ApplicationPath + "taikhoan/info'";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
                }

            }

        }



    } //
}