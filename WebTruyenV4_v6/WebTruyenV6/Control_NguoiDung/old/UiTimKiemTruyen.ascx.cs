using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq.SqlClient;

using WebTruyenV4.Code;

namespace WebTruyenV4.Control_NguoiDung
{
    public partial class UiTimKiemTruyen : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static List<DB_TRUYEN> timKiem = new List<DB_TRUYEN>();
        public static List<TimKiemTheoTenResult> timKiemTheoTen = new List<TimKiemTheoTenResult>();
        public static List<TimKiemTheoTheLoaiResult> timKiemTheLoai = new List<TimKiemTheoTheLoaiResult>();
        public static List<DB_TRUYEN> timKiemCoin = new List<DB_TRUYEN>();
        public static List<DB_THELOAI> TheLoai = new List<DB_THELOAI>();
        public static int page_number = 0; // trang thu n
        public static int SumPage = 0;
        public static int min = 0;
        public static int max = 0;
        public static string nametruyen = "";

        protected void RutGon_TieuDe(string a, int b)
        {
            Response.Write(Truyen.RutGon(a, b));
        }

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
                        Xemthem();
                        LoadSearch();
                        LoadTheLoai();
                    }
                }
                catch(Exception err)
                {
                    string url = "/404?err=true&&vitri=" + this.GetType().Name + "&&tenloi=" + err.Message;
                }
            }
        }

        private void Xemthem()
        {
            timKiem = null;
            if (!string.IsNullOrEmpty(Request.QueryString["xemthem"]))
            {
                if (!string.IsNullOrEmpty(Request.QueryString["page"]))
                {
                    page_number = Convert.ToInt32(Request.QueryString["page"]);

                    int take = 16; // lay n phan tu
                    int skip = page_number * take; // bo qua trang thu n
                    SumPage = (from q in dl.DB_TRUYENs select q).Count() / take;

                    var dt = (from q in dl.DB_TRUYENs select q).OrderByDescending(q => q.updated_at).Skip(skip).Take(take);

                    if (dt.Count() > 0)
                    {
                        timKiem = dt.ToList();
                    }
                }
            }

        }
        private void LoadTheLoai()
        {
            TheLoai = null;
            var dt = (from q in dl.DB_THELOAIs select q).OrderBy(q => q.ten_theloai);
            if (dt.Count() > 0)
            {
                TheLoai = dt.ToList();
            }
        }

        private void LoadSearch()
        {
            timKiemTheoTen = null;
            timKiemTheLoai = null;
            timKiemCoin = null;
            if (!string.IsNullOrEmpty(Request.QueryString["TenTruyen"]))
            {
                if (!string.IsNullOrEmpty(Request.QueryString["page"]))
                {
                    page_number = Convert.ToInt32(Request.QueryString["page"]);
                    string data = Request.QueryString["TenTruyen"].ToString();
                    nametruyen = data;
                    int take = 16; // lay n phan tu
                    int skip = page_number * take; // bo qua trang thu n
                    SumPage = (from q in dl.TimKiemTheoTen(data) select q).Count() / take;

                    var dt = (from q in dl.TimKiemTheoTen(data) select q).OrderByDescending(q => q.updated_at).Skip(skip).Take(take);
                    if (dt != null)
                    {
                        timKiemTheoTen = dt.ToList();
                    }
                }
            }

            if (!string.IsNullOrEmpty(Request.QueryString["TheLoai"]))
            {
                if (!string.IsNullOrEmpty(Request.QueryString["page"]))
                {
                    // DeleData(); // xóa dât cua bang
                    string data = Request.QueryString["TheLoai"].ToString();
                    page_number = Convert.ToInt32(Request.QueryString["page"]);

                    int take = 16; // lay n phan tu
                    int skip = page_number * take; // bo qua trang thu n
                    SumPage = (from q in dl.TimKiemTheoTheLoai(Convert.ToInt32(data)) select q).Count() / take;

                    //string[] arrListStr = data.Split(',');
                    var dt = (from q in dl.TimKiemTheoTheLoai(Convert.ToInt32(data)) select q).OrderByDescending(q => q.updated_at).Skip(skip).Take(take);
                    if (dt != null)
                    {
                        timKiemTheLoai = dt.ToList();
                    }
                }
            }

            if (!string.IsNullOrEmpty(Request.QueryString["coin"]))
            {
                if (!string.IsNullOrEmpty(Request.QueryString["page"]))
                {
                    max = Convert.ToInt32(Request.QueryString["max"]);
                    min = Convert.ToInt32(Request.QueryString["min"]);
                    page_number = Convert.ToInt32(Request.QueryString["page"]);

                    int take = 16; // lay n phan tu
                    int skip = page_number * take; // bo qua trang thu n
                    SumPage = (from q in dl.DB_TRUYENs where Convert.ToInt64(q.coin_truyen) >= min && Convert.ToInt64(q.coin_truyen) <= max select q).Count() / take;

                    var dt = (from q in dl.DB_TRUYENs where Convert.ToInt64(q.coin_truyen) >= min && Convert.ToInt64(q.coin_truyen) <= max select q).OrderByDescending(q => q.updated_at).Skip(skip).Take(take);
                    if (dt != null)
                    {
                        timKiemCoin = dt.ToList();
                    }

                }
            }

            // set title
            string scriptText = "document.title =  'Tìm kiếm - Page " + page_number + "'";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);

        }

    } //
}