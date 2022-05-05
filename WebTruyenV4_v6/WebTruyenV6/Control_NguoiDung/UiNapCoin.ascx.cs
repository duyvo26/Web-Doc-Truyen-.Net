using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV6.Code;

namespace WebTruyenV6.Control_NguoiDung
{
    public partial class UiNapCoin : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static DB_USER NguoiDungs = new DB_USER();
        public static DB_CAUHINH HeThongs = new DB_CAUHINH();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (NguoiDung.CheckLogin() != true) // kiem tra dang nhap cua nguoi dung
            {
                string scriptText = "alert('Bạn vui lòng đăng nhập !');  window.location='" + Request.ApplicationPath + "dangnhap'";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
            }
            else
            {
                 try
                   {

                LoadThongTinNguoiDung();
                LoadHeThong();
                 }
                 catch (Exception err)
                 {
                     string url = "/404?err=true&&vitri="+ this.GetType().Name + "&&tenloi=" + err.Message;
                     Response.Redirect(url);
                 }
            }

        }



        //load thong tin nguoi dung
        private void LoadThongTinNguoiDung()
        {

            String MaKhoa = Request.Cookies["log"].Value;

            var dt = (from q in dl.DB_USERs where q.ma_khoa == MaKhoa select q);

            if (dt != null)
            {
                NguoiDungs = dt.First();
            }
        }


        private void LoadHeThong()
        {

            var dt = (from q in dl.DB_CAUHINHs select q);

            if (dt != null)
            {
                HeThongs = dt.First();
            }

        }

        
    }
}