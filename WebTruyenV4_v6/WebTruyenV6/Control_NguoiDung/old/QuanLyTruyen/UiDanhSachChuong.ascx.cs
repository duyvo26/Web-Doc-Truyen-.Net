using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV4.Code;

namespace WebTruyenV4.Control_NguoiDung.QuanLyTruyen
{
    public partial class UiDanhSachChuong : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static DB_TRUYEN infoTruyen = new DB_TRUYEN(); // thong tin truyen
        public static List<DB_CHUONG> DSC = new List<DB_CHUONG>(); //DS Chuong
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
                        LoadThongTinNguoiDung(); // lay thong tin nguoi dung ra theo cookie
                        LoadThongTinTruyen(); // load thong tin truyen len
                        LoadDSChuong();
                        LoadXoaChuong();
                    }

                }
                catch
                {
                    Response.Redirect("/404");
                }
            }

        }

        protected void RutGon_TieuDe(string a, int b)
        {
            Response.Write(Truyen.RutGon(a, b));
        }

        //load thong tin truyen
        private void LoadThongTinTruyen()
        {
            infoTruyen = null;
            int id_truyen = Convert.ToInt32(Page.RouteData.Values["IdTruyen"]);
            var dt = (from q in dl.DB_TRUYENs where q.id_truyen == id_truyen && q.id_user == NguoiDungs.id_user select q);

            if (dt != null)
            {
                infoTruyen = dt.First();
                if (infoTruyen.status_ == 0)
                {
                    string scriptText = "alert('Bộ truyện này tạm khoá vui lòng liên hệ admin để biết thêm chi tiết !'); window.location='" + Request.ApplicationPath + "'";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
                }
            }
        } //

        private void LoadDSChuong()
        {
            DSC = null;
            var dt = (from q in dl.DB_CHUONGs where q.id_truyen == infoTruyen.id_truyen select q

            ).OrderByDescending(q => q.created_at);
            if (dt != null)
            {
                DSC = dt.ToList();
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

        private void LoadXoaChuong()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["XoaChuong"]))
            {

                int ID = Convert.ToInt32(Request.QueryString["XoaChuong"]);
                var chuong = (from q in dl.DB_CHUONGs where q.id_chuong == ID && q.id_user == NguoiDungs.id_user select q).FirstOrDefault();

                var thuvien = (from q in dl.DB_THUVIENs where q.id_chuong == ID select q).FirstOrDefault();

                var luotxem = (from q in dl.DB_LUOTXEMs where q.id_chuong == ID select q).FirstOrDefault();

                var comment = (from q in dl.DB_COMMENTs where q.id_chuong == ID select q).FirstOrDefault();

                dl.CapNhatThuVien(NguoiDungs.id_user, infoTruyen.id_truyen, null);

                if (luotxem != null) dl.DB_LUOTXEMs.DeleteOnSubmit(luotxem);

                if (comment != null) dl.DB_COMMENTs.DeleteOnSubmit(comment);

                if (chuong != null) dl.DB_CHUONGs.DeleteOnSubmit(chuong);


                dl.SubmitChanges();

                

                string scriptText = "alert('Đã xóa thành công chương !'); window.location='" + Request.ApplicationPath + "taikhoan/danhsachchuong-" + infoTruyen.id_truyen + "'";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);

            }
        }

    }//
}