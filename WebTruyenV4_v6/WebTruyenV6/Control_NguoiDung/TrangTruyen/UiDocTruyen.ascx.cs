using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV6.Code;

namespace WebTruyenV6.Control_NguoiDung.TrangTruyen
{
    public partial class UiDocTruyen : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();

        public static DB_CHUONG infoChuong = new DB_CHUONG(); // thong tin chuong
        public static DB_TRUYEN infoTruyen = new DB_TRUYEN(); // thong tin truyen
        public static DB_USER NguoiDungs = new DB_USER();
        public static List<DB_COMMENT> BinhLuan = new List<DB_COMMENT>();
        public static DB_THUVIEN CheckThuVien = new DB_THUVIEN();

        public static List<DB_COMMENT> LoadPhanHoi = new List<DB_COMMENT>();

        public static DB_CHUONG Next = new DB_CHUONG();
        public static DB_CHUONG Back = new DB_CHUONG();


        public static List<DB_CHUONG> DsChuong = new List<DB_CHUONG>();

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
                string scriptText = "alert('Bạn vui lòng đăng nhập !');  window.location='" + Request.ApplicationPath + "dangnhap';";
                ScriptManager.RegisterStartupScript(this, typeof(string), "dangnhap", scriptText, true);
            }
            else
            {
               try
                {
                    if (!IsPostBack)
                    {
                        LoadThongTinNguoiDung();
                        LoadThongTinTruyen(); // load thong tin truyen len
                        if (infoTruyen.status_ == 0)
                        {
                            string scriptText = "alert('Bộ truyện này tạm khoá vui lòng liên hệ admin để biết thêm chi tiết !'); window.location='" + Request.ApplicationPath + "'";
                            ScriptManager.RegisterStartupScript(this, typeof(string), "truyenkhoa", scriptText, true);
                        }
                        else
                        {
                            
                            LoadThongTinChuong(); // laod thong tin chuong len
                            LoadDanhSachChuong();
                            LoadDSBinhLuan();
                            
                            XoaBinhLuan();
                            ThemLuotXem(); // them luot xem
                            
                            NextPage(); // chuong tiep theo
                            BackPage();

                            ClickTaiDSChuong();
                           
                        }
                        themBL(); // them binh luan
                        NhapPhanHoi(); // them phan hoi
                    }
              }
               catch (Exception err)
               {
                   string url = "/404?err=true&&vitri="+ this.GetType().Name + "&&tenloi=" + err.Message;
                   Response.Redirect(url);
               }
                CheckDoc();
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

        //
        //load thong tin truyen
        private void LoadThongTinTruyen()
        {
            string link_raw = Page.RouteData.Values["LinkRawTruyen"].ToString();
            int id_truyen = Convert.ToInt32(Page.RouteData.Values["IdTruyen"]);

            infoTruyen = null;
            var dt = (from q in dl.DB_TRUYENs where q.link_raw == link_raw && q.id_truyen == id_truyen select q);

            if (dt != null)
            {
                infoTruyen = dt.First();

            }
        } //

        private void LoadThongTinChuong()
        {
            infoChuong = null;
            int id_chuong = Convert.ToInt32(Page.RouteData.Values["IdChuong"]);

            var dt = (from q in dl.DB_CHUONGs where q.id_chuong == id_chuong select q);

            if (dt != null)
            {
                infoChuong = dt.First();
            }
        } //

        private void ThemLuotXem()
        {
            var layluotxem = (from q in dl.DB_LUOTXEMs where q.id_chuong == infoChuong.id_chuong && q.id_user == NguoiDungs.id_user select q).FirstOrDefault();
            if (layluotxem == null)
            {
                DB_LUOTXEM themlx = new DB_LUOTXEM();
                themlx.id_user = NguoiDungs.id_user;
                themlx.id_truyen = infoChuong.id_truyen;
                themlx.id_chuong = infoChuong.id_chuong;
                themlx.created_at = DateTime.Now;
                themlx.updated_at = DateTime.Now;
                dl.DB_LUOTXEMs.InsertOnSubmit(themlx);
                dl.SubmitChanges();

            }
        }

        //
        private void LoadDSBinhLuan()
        {
            BinhLuan = null;


            if (!string.IsNullOrEmpty(Request.QueryString["page"]))
            {
                page_number = Convert.ToInt32(Request.QueryString["page"]);
            }
            else
            {
                page_number = 0;
            }

            int take = 10; // lay n phan tu
            int skip = page_number * take; // bo qua trang thu n
            SumPage = (from q in dl.DB_COMMENTs where q.id_chuong == infoChuong.id_chuong && q.id_phanhoi == null select q).Count() / take;

            var dt = (from q in dl.DB_COMMENTs where q.id_chuong == infoChuong.id_chuong && q.id_phanhoi == null select q).OrderByDescending(q => q.created_at).Skip(skip).Take(take);

            if (dt.Count() > 0)
            {
                    BinhLuan = dt.ToList();
            }

        } //

        private void CheckDoc()
        {
            try
            {
                var dt = (from q in dl.DB_THUVIENs where q.id_truyen == infoTruyen.id_truyen && q.id_user == NguoiDungs.id_user select q).First();
                LuuLichSu();
            }catch{

                Response.Redirect("/truyen/"+infoTruyen.link_raw+"-"+infoTruyen.id_truyen);
            }
           
        }

        private void LuuLichSu()
        {
            dl.CapNhatThuVien(NguoiDungs.id_user, infoTruyen.id_truyen, infoChuong.id_chuong);
        }

        private void themBL()
        {

            if (!string.IsNullOrEmpty(Request.Form["binhluan"]))
            {
                string txtBinhLuan = Request.Form["message"].ToString();

                if (txtBinhLuan == "")
                {
                    ScriptManager.RegisterClientScriptBlock(this, typeof(string), "blthieuchu", "alert('Bình luận không được để trống');", true);
                }
                else
                {
                    string noidung_cmt = txtBinhLuan;
                    //dl.Them_cmt(NguoiDungs.id_user, infoTruyen.id_truyen, infoChuong.id_chuong, noidung_cmt);
                    DB_COMMENT dbcom = new DB_COMMENT();

                    dbcom.id_user = NguoiDungs.id_user;
                    dbcom.id_truyen = infoTruyen.id_truyen;
                    dbcom.id_chuong = infoChuong.id_chuong;
                    dbcom.noidung_cmt = noidung_cmt;
                    dbcom.created_at = DateTime.Now;
                    dbcom.updated_at = DateTime.Now;
                    dl.DB_COMMENTs.InsertOnSubmit(dbcom);
                    dl.SubmitChanges();

                    if (NguoiDungs.id_user != infoTruyen.id_user)
                    {
                        //thong bao cap nhat chuong
                        //id_user - id nhận
                        //id_phanhoi - id gui thong bao
                        string noidung = NguoiDungs.fullname + " vừa bình luận ở chương " + infoChuong.ten_chuong + " của truyên " + infoTruyen.ten_truyen;
                        string urls = "truyen/" + infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "/" + infoChuong.id_chuong + "?page=" + page_number + "#binhluan";
                        NguoiDung.ThemThongBao(infoTruyen.id_user, NguoiDungs.id_user, noidung, urls);
                    }
                    Random r = new Random();
                    string scriptText = "alert('Bình luận thành công'); window.location='" + Request.ApplicationPath + "truyen/" + infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "/" + infoChuong.id_chuong + "?p=" + r.Next(1, 100) + "#binhluan';";
                    ScriptManager.RegisterStartupScript(this, typeof(string), "binhluan", scriptText, true);

                }
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
                    var dts = (from q in dl.DB_COMMENTs where q.id_phanhoi == ID select q);
                    dl.DB_COMMENTs.DeleteAllOnSubmit(dts);
                    dl.SubmitChanges();
                    Random r = new Random();
                    //r.Next(1, 100)
                    string scriptText = "alert('Xóa bình luận thành công'); window.location='" + Request.ApplicationPath + "truyen/" + infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "/" + infoChuong.id_chuong + "?p=" + r.Next(1, 100) + "#binhluan';";
                    ScriptManager.RegisterStartupScript(this, typeof(string), "binhluan", scriptText, true);
                }
                else
                {
                    string scriptText = "alert('Có lỗi xảy ra '); window.location='" + Request.ApplicationPath + "truyen/" + infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "/" + infoChuong.id_chuong + "?#binhluan'";
                    ScriptManager.RegisterStartupScript(this, typeof(string), "err", scriptText, true);
                }
            }
        }



        private void ClickTaiDSChuong()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["taids"]))
            {
                Session["LoadDsChuong"] = "true";
            }
            
        }

        private void LoadDanhSachChuong()
        {
            if (Session["LoadDsChuong"] == "true")
            {
                DsChuong = null;
                var dt = (from q in dl.DB_CHUONGs where q.id_truyen == infoChuong.id_truyen select q);
                if (dt.Count() > 0)
                {
                    DsChuong = dt.ToList();
                }
            }


        }

        private void NextPage()
        {
            Next = null;

            int IdChuong = Convert.ToInt32(Page.RouteData.Values["IdChuong"]);

            var dt = (from q in dl.DB_CHUONGs where q.id_truyen == infoChuong.id_truyen && q.id_chuong > IdChuong select q).Take(1);
            if (dt.Count() > 0)
            {
                Next = dt.First();
            }
        }

        private void BackPage()
        {
            Back = null;
            int IdChuong = Convert.ToInt32(Page.RouteData.Values["IdChuong"]);

            var dt = (from q in dl.DB_CHUONGs where q.id_truyen == infoChuong.id_truyen && q.id_chuong < IdChuong select q).OrderByDescending(q => q.id_chuong).Take(1);
            if (dt.Count() > 0)
            {
                Back = dt.First();
            }
        }

        //lay ten tai tai khoan
        public string TenTaiKhoan(int id)
        {
            try
            {
                var dt = (from q in dl.DB_USERs where q.id_user == id select q);
                if (dt != null)
                {
                    return dt.First().fullname;
                }
                else
                {
                    return "";
                }
            }
            catch {
                return "";
                 }
        }
        //img tai tai khoan
        public string ImgTaiKhoan(int id)
        {
            try
            {
                var dt = (from q in dl.DB_USERs where q.id_user == id select q);
                if (dt != null)
                {
                    return dt.First().img_user;
                }
                else
                {
                    return "";
                }
            }
            catch
            {
                return "";
            }
          
        }

        //nhap phan hoiu
        public void NhapPhanHoi()
        {
            if (!string.IsNullOrEmpty(Request.Form["phan_hoi"]))
            {
                int id_phanhoi = Convert.ToInt32(Request.Form["id-binhluan"]);
                int user_binhluan = Convert.ToInt32(Request.Form["user-binhluan"]);
                
                string noidung_bl =Request.Form["noidung-bl"].ToString();

                if (noidung_bl == "")
                {
                    ScriptManager.RegisterClientScriptBlock(this, typeof(string), "blthieuchu", "alert('Nội dung phản hồi không được để trống');", true);
                }
                else
                {
                    string noidung_cmt = noidung_bl;
                  
                    DB_COMMENT dbcom = new DB_COMMENT();

                    dbcom.id_user = NguoiDungs.id_user;
                    dbcom.id_truyen = infoTruyen.id_truyen;
                    dbcom.id_chuong = infoChuong.id_chuong;
                    dbcom.noidung_cmt = noidung_cmt;
                    dbcom.id_phanhoi = id_phanhoi;
                    dbcom.created_at = DateTime.Now;
                    dbcom.updated_at = DateTime.Now;
                    dl.DB_COMMENTs.InsertOnSubmit(dbcom);
                    dl.SubmitChanges();

                    string noidung = NguoiDungs.fullname+" đã nhắc đến bạn ở chương "+infoChuong.ten_chuong+ " tại truyện "+infoTruyen.ten_truyen;
                    string urls = "truyen/" + infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "/" + infoChuong.id_chuong + "?page=" + page_number + "#binhluan";
                    NguoiDung.ThemThongBao(Convert.ToInt32(user_binhluan), NguoiDungs.id_user, noidung, urls);
                    Random r = new Random();
                    string scriptText = "alert('Phản hồi thành công'); window.location='" + Request.ApplicationPath + "truyen/" + infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "/" + infoChuong.id_chuong + "?p=" + r.Next(1, 100) + "#binhluan';";
                    ScriptManager.RegisterStartupScript(this, typeof(string), "binhluans", scriptText, true);

                }
            }
        }

        //load phan hoi 
        public void GetPhanHoi(int id){
            LoadPhanHoi = null;
            var dt = (from q in dl.DB_COMMENTs where q.id_phanhoi == id select q).OrderBy(q => q.created_at);
            if (dt != null)
            {
                LoadPhanHoi = dt.ToList();
            }
        }

        //get name nguoi dung
        public int GetQuyenHan(int id)
        {
            try
            {
                var dt = (from q in dl.DB_USERs where q.id_user == id select q);
                if (dt != null)
                {
                    return Convert.ToInt32(dt.First().quyen_han);
                }
                else
                {
                    return 0;
                }
            }
            catch {
                return 0;
            }
        }


        //
    }
}