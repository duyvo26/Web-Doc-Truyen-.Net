using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV6.Code;

namespace WebTruyenV6.Control_Admin.Truyens
{
    public partial class UiThuVien : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static DB_USER NguoiDungs = new DB_USER();
        public static List<DB_THUVIEN> thuvien = new List<DB_THUVIEN>();
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
                    LoadDsThuVien();

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
        public void LoadDsThuVien()
        {
            var dt = (from q in dl.DB_THUVIENs select q).OrderByDescending(q => q.created_at);

            if (dt != null)
            {
                thuvien = dt.ToList();
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

        //load ten truyen
        public string LoadNameTruyen(int id_truyen)
        {
            var dt = (from q in dl.DB_TRUYENs where q.id_truyen == id_truyen select q);

            if (dt.Count() > 0)
            {
                var ten = dt.First();
                return ten.ten_truyen.ToString();
            }
            else
            {
                return "";
            }
        }

                //load ten truyen
        public string LoadCoin(int id_truyen)
        {
            var dt = (from q in dl.DB_TRUYENs where q.id_truyen == id_truyen select q);

            if (dt.Count() > 0)
            {
                var ten = dt.First();
                return ten.coin_truyen.ToString();
            }
            else
            {
                return "";
            }
        }
        

    }//
}