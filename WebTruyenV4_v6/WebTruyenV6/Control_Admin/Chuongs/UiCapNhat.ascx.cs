using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebTruyenV6.Code;

namespace WebTruyenV6.Control_Admin.Chuongs
{
    public partial class UiCapNhat : System.Web.UI.UserControl
    {

        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static DB_USER NguoiDungs = new DB_USER();
        public static DB_CHUONG Chuongs = new DB_CHUONG();

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
                }
                    LoadSuaChuong(); // sua chuong 
            }
            catch (Exception err)
            {
                string url = "/404?err=true&&vitri="+ this.GetType().Name + "&&tenloi=" + err.Message;
                Response.Redirect(url);
            }
        }

        public void ThongBao()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["noti"]))
            {
                string Thongbao = Request.QueryString["noti"].ToString();
                noti.Text = Thongbao;
            }
        }

        public void LoadThongTinNguoiDung()
        {

            String MaKhoa = Request.Cookies["Log"].Value;

            var dt = (from q in dl.DB_USERs where q.ma_khoa == MaKhoa select q);

            if (dt != null)
            {
                NguoiDungs = dt.First();
            }
        }

        public void LoadSuaChuong()
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

                         var dt = from q in dl.DB_CHUONGs where q.id_chuong ==  id_Chuong select q;
                        DB_CHUONG dbchuong = dt.First();
                        dbchuong.ten_chuong = ten_Chuong;
                        dbchuong.noidung_chuong = ndchuong;
                        dl.SubmitChanges();


                        string scriptText = "alert(' Chỉnh sửa chương " + ten_Chuong + " Thành Công'); window.location='" + Request.ApplicationPath + "cp-admin/chuong/capnhat-" + Chuongs.id_chuong + "'";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);

                    }
                    catch
                    {
                        noti.Text = "Đã có lỗi xảy ra !!!!";
                    }

                }

            }
        }

    } //
}