using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV6.Code;

namespace WebTruyenV6.Control_Admin.Truyens
{
    public partial class UiDanhSach : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static DB_USER NguoiDungs = new DB_USER();
        public static List<DB_TRUYEN> dstruyen = new List<DB_TRUYEN>();
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

                    LoadThongTinNguoiDung();
                    NguoiDung.CheckMod(Convert.ToInt32(NguoiDungs.quyen_han));
                    LoadDsTruyen();
                   XoaTruyen();

                }
            }
            catch (Exception err)
            {
                string url = "/404?err=true&&vitri="+ this.GetType().Name + "&&tenloi=" + err.Message;
                Response.Redirect(url);
            }
            
        }

        //load thong tin nguoi dung
        public void LoadThongTinNguoiDung()
        {
            String MaKhoa = Request.Cookies["log"].Value;

            var dt = (from q in dl.DB_USERs where q.ma_khoa == MaKhoa select q);

            if (dt != null)
            {
                NguoiDungs = dt.First();
            }
        }

        //load thong tin nguoi dung
        public void LoadDsTruyen()
        {
            var dt = (from q in dl.DB_TRUYENs select q).OrderByDescending(q => q.updated_at);

            if (dt != null)
            {
                dstruyen = dt.ToList();
            }
        }

        //load thong tin nguoi dung
        public string LoadName(int id_user)
        {
            var dt = (from q in dl.DB_USERs where q.id_user == id_user select q);

            if (dt.Count() > 0)
            {
                var ten = dt.First();
                return ten.ten_dangnhap.ToString();
            }
            else
            {
                return "";
            }
        }

        public void XoaTruyen()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["Xoa"]))
            {
               
                    int ID = Convert.ToInt32(Request.QueryString["Xoa"]);

                //dl.XoaTruyen(ID);

                var truyen = (from q in dl.DB_TRUYENs where q.id_truyen == ID  select q).FirstOrDefault();
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

                    string scriptText = "alert('Xoá truyện thành công !'); window.location='" + Request.ApplicationPath + "cp-admin/truyen/danhsach" + "'";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);

            }
        }

        public int LuotXemTruyen(int id_truyen)
        {
            int kq = 0;
            var dt = (from q in dl.DB_LUOTXEMs where q.id_truyen == id_truyen select q).Count();
            if (dt == null)
            {
                return kq;
            }
            else
            {
                return dt;
            }

        }
        public int TongChuong(int id_truyen)
        {
            var dt = (from q in dl.DB_CHUONGs where q.id_truyen == id_truyen select q).Count();
            if (dt != null)
            {
                return dt;
            }
            else
            {
                return 0;
            }
        }


    } //
}