using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV6.Code;

namespace WebTruyenV6.Control_NguoiDung
{
    public partial class UiIndex : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static List<LayTruyenRandResult> listGoiyDoc = new List<LayTruyenRandResult>();
        public static List<DB_TRUYEN> TruyenMoiCN = new List<DB_TRUYEN>();
        public static List<DB_TRUYEN> DanhSachTruyen = new List<DB_TRUYEN>();
        // code comment
        public static List<LayThongTinBinhLuanResult> BinhLuan = new List<LayThongTinBinhLuanResult>();
        public static List<LayLuotXemResult> LuotXem = new List<LayLuotXemResult>();

        public static DB_CAUHINH HeThongs = new DB_CAUHINH();


        protected void RutGon_TieuDe(string a, int b)
        {
            Response.Write(Truyen.RutGon(a, b));
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                if (!IsPostBack)
                {
                    LoadHeThong();
                    LoadlistGoiyDoc(); // goi goi goi y goi y doc len treang chu
                    LoadTruyenMoiCN(); // goi truyen moi cap nhat
                    LoadDanhSachTruyen(); // goi danh sach truyuyen
                    LoadDSBinhLuan(0); // load binh luan
                    LoadLuotXem();
                }

            }
            catch (Exception err)
            {
                string url = "/404?err=true&&vitri="+ this.GetType().Name + "&&tenloi=" + err.Message;
                Response.Redirect(url);
            }
        }

        // load cau hinh
        public void LoadHeThong()
        {

            var dt = (from q in dl.DB_CAUHINHs select q);

            if (dt != null)
            {
                HeThongs = dt.First();
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

        // load goi y doc
        private void LoadlistGoiyDoc()
        {
            listGoiyDoc = null;
            var dt = from q in dl.LayTruyenRand() select q;
            if (dt != null)
            {
                listGoiyDoc = dt.ToList();
            }
        }
        //
        // load truyen moi cap nhat
        private void LoadTruyenMoiCN()
        {
            TruyenMoiCN = null;
            var dt = (from q in dl.DB_TRUYENs select q).Take(5).OrderByDescending(q => q.created_at);
            if (dt.Count() > 0)
            {
                TruyenMoiCN = dt.ToList();
            }
        }
        //
        // load DanhSachTruyen
        private void LoadDanhSachTruyen()
        {
            DanhSachTruyen = null;
            var dt = (from q in dl.DB_TRUYENs select q).Take(15).OrderByDescending(q => q.updated_at);
            if (dt.Count() > 0)
            {
                DanhSachTruyen = dt.ToList();
            }
        }

        //
        public void LoadDSBinhLuan(int id_truyen)
        {
            BinhLuan = null;
            var dt = (from q in dl.LayThongTinBinhLuan(id_truyen) select q);
            if (dt != null)
            {
                BinhLuan = dt.ToList();
            }

        } //
        private void LoadLuotXem()
        {
            LuotXem = null;
            var dt = (from q in dl.LayLuotXem() select q);
            if (dt != null)
            {
                LuotXem = dt.ToList();
            }
        }


        //get name nguoi dung
        public int GetQuyenHan(int id)
        {
            var dt = (from q in dl.DB_USERs where q.id_user == id select q.quyen_han);
            if (dt != null)
            {
                return Convert.ToInt32(dt.First());
            }
            else
            {
                return 0;
            }
        }


    }//
}