using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV4.Code;

namespace WebTruyenV4.Control_NguoiDung.TaiKhoan
{
    public partial class UiThuVienDoc : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static DB_USER NguoiDungs = new DB_USER();
        public static int page_number = 0; // trang thu n
        public static int SumPage = 0;

        public static List<LayThuVienDocResult> ThuVien = new List<LayThuVienDocResult>();
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
                        LoadThongTinNguoiDung();
                        LoadThuVien();
                        XoaThuVien();
                    }
                }
                catch
                {
                    Response.Redirect("/404");
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

        public DateTime GetDateTimeTV(int id_chuong)
        {
           var dt = (from q in dl.DB_THUVIENs where q.id_chuong == id_chuong && q.id_user == NguoiDungs.id_user select q.updated_at).FirstOrDefault();
           if (dt != null)
           {
               return dt;
           }
           else
           {
               return DateTime.ParseExact("", "d", null);
           }
        }

        public DateTime GetDateTimeTruyen(int id_truyen)
        {
            var dt = (from q in dl.DB_TRUYENs where q.id_truyen == id_truyen  select q.updated_at).FirstOrDefault();
            if (dt != null)
            {
                return dt;
            }
            else
            {
                return DateTime.ParseExact("", "d", null);
            }
        }

        private void LoadThuVien()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["page"]))
            {
                page_number = Convert.ToInt32(Request.QueryString["page"]);

                int take = 30; // lay n phan tu
                int skip = page_number * take; // bo qua trang thu n
                SumPage = (from q in dl.LayThuVienDoc(NguoiDungs.id_user) select q).Count() / take;

                var dt = (from q in dl.LayThuVienDoc(NguoiDungs.id_user) select q).Skip(skip).Take(take);

                try
                {
                    ThuVien = dt.ToList();
                }
                catch
                {
                    noti.Text = "Chưa có thông tin !";
                }
            }
            else
            {
                page_number = Convert.ToInt32(Request.QueryString["page"]);

                int take = 30; // lay n phan tu
                int skip = 0 * take; // bo qua trang thu n
                SumPage = (from q in dl.LayThuVienDoc(NguoiDungs.id_user) select q).Count() / take;

                var dt = (from q in dl.LayThuVienDoc(NguoiDungs.id_user) select q).Skip(skip).Take(take);

                try
                {
                    ThuVien = dt.ToList();
                }
                catch
                {
                    noti.Text = "Chưa có thông tin !";
                }
            }

        }

        private void XoaThuVien()
        {
            try
            {
                if (!string.IsNullOrEmpty(Request.QueryString["XoaTruyen"]))
                {
                    int idThuVien = Convert.ToInt32(Request.QueryString["XoaTruyen"]);

                    dl.XoaThuVien(NguoiDungs.id_user, idThuVien);
                    string scriptText = "alert('Xoá thành công !'); window.location='" + Request.ApplicationPath + "taikhoan/thuviendoc'";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
                }
            }
            catch
            {
                Response.Redirect("/404");
            }
        }

        public string TenChuong(int idchuong)
        {
            var dt = (from q in dl.DB_CHUONGs where q.id_chuong == idchuong select q).FirstOrDefault();
            if (dt != null)
            {
                return dt.ten_chuong;
            }
            else
            {
                return "";
            }
        }

    } //
}