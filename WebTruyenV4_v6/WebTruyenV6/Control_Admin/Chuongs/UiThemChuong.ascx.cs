using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV6.Code;

namespace WebTruyenV6.Control_Admin.Chuongs
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
                string scriptText = "alert('Bạn vui lòng đăng nhập !');  window.location='" + Request.ApplicationPath + "dangnhap'";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
            }
            try
            {
                if (!IsPostBack)
                {
                    LoadThongTinNguoiDung(); // lay thong tin nguoi dung ra theo cookie
                    LoadThongTinTruyen(); // load thong tin truyen len
                }
                    LoadThemChuong();
            }
            catch (Exception err)
            {
                string url = "/404?err=true&&vitri="+ this.GetType().Name + "&&tenloi=" + err.Message;
                Response.Redirect(url);
            }
        }

        //load thong tin truyen
        public void LoadThongTinTruyen()
        {
            int id_truyen = Convert.ToInt32(Page.RouteData.Values["IdTruyen"]);
            var dt = (from q in dl.DB_TRUYENs where q.id_truyen == id_truyen select q);

            if (dt != null)
            {
                infoTruyen = dt.First();
                //LoadChuong(infoTruyen.id_truyen); // goi danh sach chuong theo id
            }
        } //

        public void LoadThemChuong()
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

                   
                    //thong bao cap nhat chuong
                    string noidung = NguoiDungs.fullname + " đã cập nhật " + infoTruyen.ten_truyen + " chương " + tenchuong;
                    var chuongss = (from q in dl.DB_CHUONGs where q.id_truyen == infoTruyen.id_truyen && q.ten_chuong == tenchuong && q.noidung_chuong == chuong select q.id_chuong).First();
                    string urls = "truyen/" + infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "/" + chuongss;
                    var thuvien = (from q in dl.DB_THUVIENs where q.id_truyen == infoTruyen.id_truyen select q);
                    foreach (var a in thuvien)
                    {
                         if(a.id_user != infoTruyen.id_user){
                             NguoiDung.ThemThongBao(Convert.ToInt32(a.id_user), NguoiDungs.id_user, noidung, urls);
                         }
                        
                    }

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thêm chương " + tenchuong + " Thành Công')", true);
                }

            }
        } //
        public void LoadThongTinNguoiDung()
        {

            String MaKhoa = Request.Cookies["Log"].Value;

            var dt = (from q in dl.DB_USERs where q.ma_khoa == MaKhoa select q);

            if (dt != null)
            {
                NguoiDungs = dt.First();
            }
        }

    } //
}