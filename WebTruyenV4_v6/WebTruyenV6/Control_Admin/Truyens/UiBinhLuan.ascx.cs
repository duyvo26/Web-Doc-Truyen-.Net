using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV6.Code;

namespace WebTruyenV6.Control_Admin.Truyens
{
    public partial class UiBinhLuan : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static DB_USER NguoiDungs = new DB_USER();
        public static List<DB_COMMENT> DSBinhLuan = new List<DB_COMMENT>();

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
                    LoadDsBL();
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

            var dt = (from q in dl.DB_USERs
                      where q.ma_khoa == MaKhoa
                      select q);

            if (dt != null)
            {
                NguoiDungs = dt.First();
            }
        }

        //load thong tin nguoi dung
        public void LoadDsBL()
        {
            var dt = (from q in dl.DB_COMMENTs
                      select q).OrderByDescending(q => q.updated_at);

            if (dt != null)
            {
                DSBinhLuan = dt.ToList();
            }
        }


        //load thong tin nguoi dung
        public string LoadName(int id_user)
        {
            var dt = (from q in dl.DB_USERs
                      where q.id_user == id_user
                      select q).FirstOrDefault();

            if (dt != null)
            {
                return dt.ten_dangnhap.ToString();
            }
            else
            {
                return "";
            }
        }
        public string LoadNameTruyen(int id_truyen)
        {
            var dt = (from q in dl.DB_TRUYENs
                      where q.id_truyen == id_truyen
                      select q).FirstOrDefault();

            if (dt != null)
            {
                return dt.ten_truyen.ToString();
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
                try
                {
                    int ID = Convert.ToInt32(Request.QueryString["Xoa"]);

                    var dt = (from q in dl.DB_COMMENTs where q.id_cmt == ID select q).FirstOrDefault();
                    dl.DB_COMMENTs.DeleteOnSubmit(dt);
                    var dts = (from q in dl.DB_COMMENTs where q.id_phanhoi == ID select q);
                    dl.DB_COMMENTs.DeleteAllOnSubmit(dts);
                    dl.SubmitChanges();

                    string scriptText = "alert('Xoá bình luận thành công !'); window.location='" + Request.ApplicationPath + "cp-admin/truyen/binhluan" + "'";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);

                }
                catch
                {

                }
            }
        }






    }//
}