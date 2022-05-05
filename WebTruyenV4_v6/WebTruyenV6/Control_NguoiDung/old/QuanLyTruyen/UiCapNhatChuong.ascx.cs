using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV4.Code;

namespace WebTruyenV4.Control_NguoiDung.QuanLyTruyen
{
    public partial class UiCapNhatChuong : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static DB_USER NguoiDungs = new DB_USER();
        public static DB_CHUONG Chuongs = new DB_CHUONG();

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
                        LoadSuaChuong(); // sua chuong
                        LoadThongTinNguoiDung(); // lay thong tin nguoi dung ra theo cookie
                    }
                }
                catch
                {
                    Response.Redirect("/404");
                }
            }
        }


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

        private void LoadSuaChuong()
        {
            if (!string.IsNullOrEmpty(Page.RouteData.Values["IdChuong"].ToString()))
            {

                int id_Chuong = Convert.ToInt32(Page.RouteData.Values["IdChuong"]);
                var dt = (from q in dl.DB_CHUONGs where q.id_chuong == id_Chuong select q);
                Chuongs = dt.First();

            }
            if (!string.IsNullOrEmpty(Request.Form["btn"]))
            {
                string ten_Chuong = Request.Form["input_tenchuong"].ToString();

                string ndchuong = Request.Form["input_ndchuong"].ToString();

                ndchuong = HttpUtility.HtmlEncode(ndchuong); // ma hoa html
                int id_Chuong = Convert.ToInt32(Page.RouteData.Values["IdChuong"]);

                //check du lieu bi trong
                if (ten_Chuong == "" || ndchuong == "" && ndchuong.Length < 8)
                {
                    noti.Text = "Vui lòng nhập đầy đủ thông tin!";
                    return;
                }
                else
                {
                    try
                    {

                        dl.CapnhatChuong(id_Chuong, NguoiDungs.id_user, ten_Chuong, ndchuong);

                        string scriptText = "alert(' Chỉnh sửa chương " + ten_Chuong + " Thành Công'); window.location='" + Request.ApplicationPath + "taikhoan/capnhatchuong-" + Chuongs.id_chuong + "'";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);

                    }
                    catch
                    {
                        noti.Text = "Đã có lỗi xảy ra !!!!!!!!";
                    }

                }

            }
        }

    } //

}