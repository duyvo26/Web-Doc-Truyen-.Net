using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV4.Code;

namespace WebTruyenV4.Control_NguoiDung.TaiKhoan
{
    public partial class UiThongTinNguoiDung : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static DB_USER NguoiDungs = new DB_USER();

        public static List<DB_TRUYEN> TruyenDaDang = new List<DB_TRUYEN>();
        public static List<DB_COMMENT> BinhLuanNguoiDung = new List<DB_COMMENT>();
        public static int page_number = 0; // trang thu n
        public static int SumPage = 0;

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
                        LoadTruyenDaDang();
                        LoadBinhLuanNguoiDung();
                        XoaTruyen_Click();
                        DangXuat();
                        XoaBinhLuan();
                    }
                }
                catch
                {
                    Response.Redirect("/404");
                }
                
            }

        }

        //load thong tin nguoi dung
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

        //dang xuat
        private void DangXuat()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["DangXuat"]))
            {
                NguoiDung.DelCookie();
                string scriptText = "alert('Đăng xuất thành công !'); window.location='" + Request.ApplicationPath + "'";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
            }
        }

        //Load danh sach truyen da dang 
        private void LoadTruyenDaDang()
        {
            TruyenDaDang = null;
            string tentruyen = "";

            if (!string.IsNullOrEmpty(Request.QueryString["page"]))
            {
                page_number = Convert.ToInt32(Request.QueryString["page"]);
            }
            else
            {
                page_number = 0;
            }
            int take = 12; // lay n phan tu
            int skip = page_number * take; // bo qua trang thu n
            if (!string.IsNullOrEmpty(Request.QueryString["timtruyen"]))
            {
                tentruyen = Request.QueryString["timtruyen"].ToString();
            }
            SumPage = (from q in dl.DB_TRUYENs where q.id_user == NguoiDungs.id_user select q).Where(q => q.ten_truyen.Contains(tentruyen)).Count() / take;

            var dt = (from q in dl.DB_TRUYENs where q.id_user == NguoiDungs.id_user select q).OrderByDescending(q => q.updated_at).Skip(skip).Where(q => q.ten_truyen.Contains(tentruyen)).Take(take);

            if (dt != null)
            {
                TruyenDaDang = dt.ToList();
            }

        }

        // lay ten cua truyen
        public string tentruyen(int idtruyen)
        {
            var dt = (from q in dl.DB_TRUYENs where q.id_truyen == idtruyen select q).FirstOrDefault();
            if (dt != null)
            {
                return dt.ten_truyen.ToString();
            }
            else
            {
                return "";
            }

        }

        // lay link raw cua truyen
        public string LinkRaw(int idtruyen)
        {
            var dt = (from q in dl.DB_TRUYENs where q.id_truyen == idtruyen select q).FirstOrDefault();
            if (dt != null)
            {
                return dt.link_raw.ToString();
            }
            else
            {
                return "";
            }

        }

        // load binh luan cua nguoi dung
        private void LoadBinhLuanNguoiDung()
        {
            BinhLuanNguoiDung = null;
            var dt = (from q in dl.DB_COMMENTs where q.id_user == NguoiDungs.id_user select q).OrderByDescending(q => q.created_at).Take(20);

            if (dt != null)
            {
                BinhLuanNguoiDung = dt.ToList();
            }
        }

        private void XoaTruyen_Click()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["xoa-truyen"]))
            {

                int ID = Convert.ToInt32(Request.QueryString["xoa-truyen"]);

                var truyen = (from q in dl.DB_TRUYENs where q.id_truyen == ID && q.id_user == NguoiDungs.id_user select q).FirstOrDefault();
                var vote = (from q in dl.DB_VOTEs where q.id_truyen == ID select q);
                var luotxem = (from q in dl.DB_LUOTXEMs where q.id_truyen == ID select q);
                var thuvien = (from q in dl.DB_THUVIENs where q.id_truyen == ID select q);
                var comment = (from q in dl.DB_COMMENTs where q.id_truyen == ID select q);
                var chuong = (from q in dl.DB_CHUONGs where q.id_truyen == ID select q);

                if (thuvien != null) dl.DB_THUVIENs.DeleteAllOnSubmit(thuvien);
                if (luotxem != null) dl.DB_LUOTXEMs.DeleteAllOnSubmit(luotxem);
                if (vote != null) dl.DB_VOTEs.DeleteAllOnSubmit(vote);
                if (comment != null) dl.DB_COMMENTs.DeleteAllOnSubmit(comment);
                if (chuong != null) dl.DB_CHUONGs.DeleteAllOnSubmit(chuong);
                //
                if (truyen != null) {
                     dl.DB_TRUYENs.DeleteOnSubmit(truyen);
                    dl.SubmitChanges(); 
                }
                string scriptText = "alert('Xoá truyện thành công !'); window.location='" + Request.ApplicationPath + "taikhoan/info/?page=" + page_number + "'";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
            }
        }

        private void XoaBinhLuan()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["XoaBinhLuan"]))
            {
                int ID = Convert.ToInt32(Request.QueryString["XoaBinhLuan"]);
                var dt = (from q in dl.DB_COMMENTs where q.id_cmt == ID && q.id_user == NguoiDungs.id_user select q).FirstOrDefault();

                if (dt != null)
                {
                    dl.DB_COMMENTs.DeleteOnSubmit(dt);
                    dl.SubmitChanges();
                    string scriptText = "alert('Xóa bình luận thành công'); window.location='" + Request.ApplicationPath + "taikhoan/info/" + "'";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
                }
                else
                {

                    string scriptText = "alert('Có lỗi xảy ra '); window.location='" + Request.ApplicationPath + "taikhoan/info/" + "'";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
                }
            }
        }

    } //
}