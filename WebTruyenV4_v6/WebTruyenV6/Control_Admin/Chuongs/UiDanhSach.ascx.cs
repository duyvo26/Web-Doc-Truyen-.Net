using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV6.Code;

namespace WebTruyenV6.Control_Admin.Chuongs
{
    public partial class UiDanhSach : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static DB_TRUYEN infoTruyen = new DB_TRUYEN(); // thong tin truyen
        public static List<DB_CHUONG> DSC = new List<DB_CHUONG>(); //DS Chuong
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
                    LoadDSChuong();
                    LoadXoaChuong();
                }

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

        public void LoadDSChuong()
        {
            var dt = (from q in dl.DB_CHUONGs where q.id_truyen == infoTruyen.id_truyen select q).OrderByDescending(q => q.created_at);
            if (dt != null)
            {
                DSC = dt.ToList();
            }
        }

        public void LoadThongTinNguoiDung()
        {

            String MaKhoa = Request.Cookies["Log"].Value;

            var dt = (from q in dl.DB_USERs where q.ma_khoa == MaKhoa select q);

            try
            {
                NguoiDungs = dt.First();
            }
            catch
            {
                Response.Redirect("/404");
            }
        }

        public void LoadXoaChuong()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["XoaChuong"]))
            {

                int ID = Convert.ToInt32(Request.QueryString["XoaChuong"]);
                var chuong = (from q in dl.DB_CHUONGs where q.id_chuong == ID select q).FirstOrDefault();

                var thuvien = (from q in dl.DB_THUVIENs where q.id_chuong == ID select q).FirstOrDefault();

                var luotxem = (from q in dl.DB_LUOTXEMs where q.id_chuong == ID select q);

                var comment = (from q in dl.DB_COMMENTs where q.id_chuong == ID select q);

                dl.CapNhatThuVien(NguoiDungs.id_user, infoTruyen.id_truyen, null);

                if (luotxem != null) dl.DB_LUOTXEMs.DeleteAllOnSubmit(luotxem);

                if (comment != null) dl.DB_COMMENTs.DeleteAllOnSubmit(comment);

                if (chuong != null) dl.DB_CHUONGs.DeleteOnSubmit(chuong);

                dl.SubmitChanges();

                string scriptText = "alert('Đã xóa thành công chương: '); window.location='" + Request.ApplicationPath + "cp-admin/chuong/danhsach-" + infoTruyen.id_truyen + "'";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);

            }
        }
        public int LuotXemChuong(int id_chuong)
        {
            int kq = 0;
            var dt = (from q in dl.DB_LUOTXEMs where q.id_chuong == id_chuong select q).Count();
            if (dt == null)
            {
                return kq;
            }
            else
            {
                return dt;
            }

        }
    } //
}