using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV6.Code;

namespace WebTruyenV6.Control_Admin
{
    public partial class UiIndex : System.Web.UI.UserControl
    {

        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static DB_CAUHINH HeThongs = new DB_CAUHINH();
        public static List<DB_VOTE> DsDanhGia = new List<DB_VOTE>();
        public static List<DB_THUVIEN> DSThuVien = new List<DB_THUVIEN>();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                LoadDsDanhGia();
                DanhSachTV();
            }
            catch (Exception err)
            {
                string url = "/404?err=true&&vitri="+ this.GetType().Name + "&&tenloi=" + err.Message;
                Response.Redirect(url);
            }

        }

        public string SumNguoiDung()
        {
            var dt = (from q in dl.DB_USERs select q).Count();
            return dt.ToString();
        }
        public string SumBinhLuan()
        {
            var dt = (from q in dl.DB_COMMENTs select q).Count();
            return dt.ToString();
        }
        public string SumTruyen()
        {
            var dt = (from q in dl.DB_TRUYENs select q).Count();
            return dt.ToString();
        }
        public string SumChuong()
        {
            var dt = (from q in dl.DB_CHUONGs select q).Count();
            return dt.ToString();
        }
        public void LoadDsDanhGia(){
            DsDanhGia = null;
            var dt = (from q in dl.DB_VOTEs select q).OrderByDescending(q => q.created_at).Take(5);
            if (dt.Count() > 0)
            {
                DsDanhGia = dt.ToList();
            }
        }
        public string LoadNameTruyen(int id) {
            var dt = (from q in dl.DB_TRUYENs where q.id_truyen == id select q).FirstOrDefault();
            if (dt != null)
            {
                return dt.ten_truyen; 
            }
            else
            {
                return "";
            }
            
        }
        public string LoadTaiKhoan(int id)
        {
            var dt = (from q in dl.DB_USERs where q.id_user == id select q).FirstOrDefault();
            if (dt != null)
            {
                return dt.ten_dangnhap;
            }
            else
            {
                return "";
            }
        }

        public void DanhSachTV() // danh sach thu vien
        {
            DSThuVien = null;
            var dt = (from q in dl.DB_THUVIENs select q).Take(5).OrderByDescending(q => q.created_at);
            if (dt.Count() > 0)
            {
                DSThuVien = dt.ToList();
            }
        }

    }//
}