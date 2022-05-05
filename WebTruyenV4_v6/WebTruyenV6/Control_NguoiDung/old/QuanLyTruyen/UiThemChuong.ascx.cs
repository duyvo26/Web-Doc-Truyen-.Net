using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV4.Code;

namespace WebTruyenV4.Control_NguoiDung.QuanLyTruyen
{

    public partial class UiThemChuong : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static DB_TRUYEN infoTruyen = new DB_TRUYEN(); // thong tin truyen
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
                        LoadThongTinTruyen(); // load thong tin truyen len
                        LoadThemChuong();
                        LoadThongTinNguoiDung(); // lay thong tin nguoi dung ra theo cookie
                    }
                }
                catch
                {
                    Response.Redirect("/404");
                }
            }

        }
        //load thong tin truyen
        private void LoadThongTinTruyen()
        {
            int id_truyen = Convert.ToInt32(Page.RouteData.Values["IdTruyen"]);
            var dt = (from q in dl.DB_TRUYENs where q.id_truyen == id_truyen select q);

            if (dt != null)
            {
                infoTruyen = dt.First();
                //LoadChuong(infoTruyen.id_truyen); // goi danh sach chuong theo id
            }
        } //

        private void LoadThemChuong()
        {
            if (!string.IsNullOrEmpty(Request.Form["btn"]))
            {

                // lap lay danh sach the loai

                string tenchuong = Request.Form["ten_chuong"].ToString();

                string chuong = Request.Form["input_chuong"].ToString();
                chuong = HttpUtility.HtmlEncode(chuong); // ma hoa html

                //check du lieu bi trong
                if (tenchuong == null || chuong == null)
                {
                    noti.Text = "Vui lòng nhập đầy đủ thông tin!";
                    return;
                }
                else
                {
                    dl.ThemChuong(infoTruyen.id_truyen, NguoiDungs.id_user, tenchuong, chuong);

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thêm chương " + tenchuong + " Thành Công')", true);
                }

            }
        } //
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

    } //
}