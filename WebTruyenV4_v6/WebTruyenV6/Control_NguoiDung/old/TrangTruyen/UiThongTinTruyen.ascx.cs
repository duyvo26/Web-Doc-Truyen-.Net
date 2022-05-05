using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using WebTruyenV4.Code;

namespace WebTruyenV4.Control_NguoiDung.TrangTruyen
{
    public partial class UiThongTinTruyen : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();

        public static DB_TRUYEN infoTruyen = new DB_TRUYEN(); // thong tin truyen
        public static List<DB_CHUONG> ListChuong = new List<DB_CHUONG>(); // danh sach chuong cua truyen
        public static DB_CHUONG ChuongDau = new DB_CHUONG(); // danh sach chuong cua truyen
        public static List<string> DSTheLoai = new List<string>(); // danh sach luu the loai
        public static List<int> DsIdTheLoai = new List<int>();
        public static List<LayThongTinBinhLuanResult> DSComment = new List<LayThongTinBinhLuanResult>();
        public static List<LayTruyenTheLoaiResult> TruyenTL = new List<LayTruyenTheLoaiResult>();
        public static DB_USER NguoiDungs = new DB_USER();
        public static DB_THUVIEN CheckThuVien = new DB_THUVIEN();
        public static double DanhGia;
        public static string checktontai;
        public static string checkthuvien;
        public static int LuotXem;
        public static int NguoiDanhGia;
        public static int SumChuong;

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

                        LoadThongTinTruyen(); // load thong tin truyen len
                        LoadChuong(); // goi danh sach chuong theo id
                        LoadLuotXem(); // load luot xem
                        LoadThongTinTheLoai(); // load danh sach truyen
                        LoadThongTinNguoiDung(); // load thong tin nguoi dung
                        LoadBinhLuanNguoiDung(); // load binh luan
                        LayChuongDau(); // lay chuong dau tien cua truyen
                        MuaTruyen(); // mua truyen
                        CheckDoc(); // kiem tra nguoi dung da mua
                        DanhGiaTruyen(); // danh gia truyen
                    }

               }
                catch
                {
                   Response.Redirect("/404");
                }
           
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
            infoTruyen = null;
            string link_raw = Page.RouteData.Values["LinkRawTruyen"].ToString();
            int id_truyen = Convert.ToInt32(Page.RouteData.Values["IdTruyen"]);

            var dt = (from q in dl.DB_TRUYENs where q.link_raw == link_raw && q.id_truyen == id_truyen select q);

            if (dt != null)
            {
                infoTruyen = dt.First();
                if (infoTruyen.status_ == 0)
                {
                    string scriptText = "modal.style.display = 'block'; noti.innerHTML = 'Bộ truyện này tạm khoá vui lòng liên hệ admin để biết thêm chi tiết !'; window.onclick = function(event) { window.location='" + Request.ApplicationPath + "' }";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
                }
            }
        } //

        private void LoadChuong()
        {
            ListChuong = null;
            var dt = (from q in dl.DB_CHUONGs where q.id_truyen == infoTruyen.id_truyen select q).OrderBy(q => q.created_at);
            SumChuong = 0;

            if (dt.Count() > 0)
            {
                ListChuong = dt.ToList();
                SumChuong = (from q in dl.DB_CHUONGs where q.id_truyen == infoTruyen.id_truyen select q).Count();
            }
            if (ListChuong == null)
            {
                string scriptText = "alert('Truyện này chưa được cập nhật chương !'); ";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
            }
        } //

        //load thong tin truyen
        private void LoadThongTinTheLoai()
        {
            TruyenTL = null;
            var TheLoai = dl.LayTruyenTheLoai(infoTruyen.id_truyen);
            var dt = (from q in TheLoai where q.id_truyen == infoTruyen.id_truyen select q);
            if (dt != null)
            {
                TruyenTL = dt.ToList();
            }

            bool dotuuoi = false;
            foreach (var theloai in TruyenTL)
            {
                if (theloai.ten_theloai == "18+") dotuuoi = true;
            }

            if (dotuuoi == true)
            {
                string scriptText = "modal.style.display = 'block'; noti.innerHTML = '<center><h1>Cảnh báo bộ truyện này có nội dung 16 +</center></h1></br> Hãy chắc chắn rằng bạn đủ tuổi để xem bộ truyện này !'; window.onclick = function(event) { modal.style.display = 'none' }";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
            }


        } //


        // lay chuong dang doc
        public string GetDangDoc()
        {
            var dt = (from q in dl.DB_THUVIENs where q.id_user == NguoiDungs.id_user && q.id_truyen == infoTruyen.id_truyen select q).FirstOrDefault();
            if (dt != null)
            {
                return dt.id_chuong.ToString();
            }
            else
            {
                return "";
            }
        }

        private void LoadBinhLuanNguoiDung()
        {
            DSComment = null;
            var dt = (from q in dl.LayThongTinBinhLuan(infoTruyen.id_truyen) select q).Take(20);

            if (dt != null)
            {
                DSComment = dt.ToList();
            }
        }
        private void LayChuongDau()
        {
            checktontai = null;
            var dt = (from q in dl.DB_CHUONGs where q.id_truyen == infoTruyen.id_truyen select q).OrderBy(q => q.created_at);
            if (dt.Count() > 0)
            {
                ChuongDau = dt.First();
                checktontai = ChuongDau.id_chuong.ToString();
            }
        }

        // mua truyen
        private void MuaTruyen()
        {
            Random r = new Random();

            if (!string.IsNullOrEmpty(Request.Form["MuaTruyen"]))
            {
                if (!string.IsNullOrEmpty(Request.Form["Nguoidung"]))
                {
                    dl.ThemThuVien(NguoiDungs.id_user, infoTruyen.id_truyen, ChuongDau.id_chuong); // them vao thu vien
                    string scriptText = "alert('Đã thêm truyện vào thư viện của bạn !'); window.location='" + Request.ApplicationPath + "truyen/" + infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "'";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
                }
                else
                {
                    if (Convert.ToInt64(NguoiDungs.coin) >= Convert.ToInt64(infoTruyen.coin_truyen))
                    {

                        int coin = Convert.ToInt32(Convert.ToInt64(NguoiDungs.coin) - Convert.ToInt64(infoTruyen.coin_truyen));
                        dl.CapNhatCoinUser(NguoiDungs.id_user, coin); // cap nhat lai so tien
                        dl.ThemThuVien(NguoiDungs.id_user, infoTruyen.id_truyen, ChuongDau.id_chuong); // them vao thu vien

                        if (Convert.ToInt32(infoTruyen.coin_truyen) != 0 && r.Next(1, 6) == 2 || Convert.ToInt64(NguoiDungs.quyen_han) == 2 || Convert.ToInt64(NguoiDungs.coin) > 500000)
                        {
                            int phantram = r.Next(1, 10);
                            int hoantien = Convert.ToInt32(infoTruyen.coin_truyen) * phantram / 100;
                            coin = Convert.ToInt32(coin + hoantien);
                            dl.CapNhatCoinUser(NguoiDungs.id_user, coin); // cap nhat lai so tien

                            string scriptText = "modal.style.display = 'block'; noti.innerHTML = 'Bạn đã may mắn nhận lại được " + phantram + "% " + hoantien + " xu của truyện vừa mua !'; window.onclick = function(event) { window.location='" + Request.ApplicationPath + "truyen/" + infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "' }";
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);

                        }
                        else
                        {
                            string scriptText = "modal.style.display = 'block'; noti.innerHTML = 'Mua truyện thành công !'; window.onclick = function(event) { window.location='" + Request.ApplicationPath + "truyen/" + infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "' }";
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);

                        }

                    }
                }
            }
        }

        private void CheckDoc()
        {
            checkthuvien = null;
            try
            {
                var dt = (from q in dl.DB_THUVIENs where q.id_truyen == infoTruyen.id_truyen && q.id_user == NguoiDungs.id_user select q).First();
                if (dt != null)
                {
                    checkthuvien = dt.id_user.ToString();
                }
            }
            catch
            {
                checkthuvien = null;
            }

        }
        private void LoadLuotXem()
        {
            var dt = (from q in dl.DB_LUOTXEMs where q.id_truyen == infoTruyen.id_truyen select q).Count();
            LuotXem = dt;
        }

        private void DanhGiaTruyen()
        {
            int sum = 0;
            int count = 0;
            DanhGia = 0;
            var dt = (from q in dl.DB_VOTEs where q.id_truyen == infoTruyen.id_truyen select q);
            if (dt.Count() > 0)
            {
                sum = dt.Sum(q => q.giatri);
            }
            if (sum == 0) sum = 0;
            var dts = (from q in dl.DB_VOTEs where q.id_truyen == infoTruyen.id_truyen select q);
            if (dts.Count() > 0)
            {
                count = dts.Count();
            }
            if (count == 0) count = 0;
            NguoiDanhGia = count;
            DanhGia = Convert.ToDouble((double)sum / count);
            DanhGia = Math.Round(DanhGia, 2);
            if (DanhGia.ToString() == "NaN") DanhGia = 0;
            if (!string.IsNullOrEmpty(Request.QueryString["danhgia"]))
            {
                if (checkthuvien != null)
                {

                    int GiaTri = Convert.ToInt32(Request.QueryString["danhgia"]);
                    if (GiaTri > 5) GiaTri = 5;
                    var dtss = (from q in dl.DB_VOTEs where q.id_truyen == infoTruyen.id_truyen && q.id_user == NguoiDungs.id_user select q).FirstOrDefault();
                    if (dtss != null)
                    {
                        var upvote = dl.DB_VOTEs.Single(q => q.id_truyen == infoTruyen.id_truyen && q.id_user == NguoiDungs.id_user);
                        upvote.giatri = GiaTri;
                        upvote.updated_at = DateTime.Now;
                        dl.SubmitChanges();

                        string scriptText = "alert('Cập nhật thành công !'); window.location='" + Request.ApplicationPath + "truyen/" + infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "'";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);

                    }
                    if (dtss == null)
                    {
                        try
                        {
                            DB_VOTE userDG = new DB_VOTE();
                            userDG.giatri = GiaTri;
                            userDG.id_truyen = infoTruyen.id_truyen;
                            userDG.id_user = NguoiDungs.id_user;
                            userDG.created_at = DateTime.Now;
                            userDG.updated_at = DateTime.Now;

                            dl.DB_VOTEs.InsertOnSubmit(userDG);
                            dl.SubmitChanges();

                            string scriptText = "alert('Vote thành công !'); window.location='" + Request.ApplicationPath + "truyen/" + infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "'";
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
                        }
                        catch
                        {
                            string scriptText = "alert('Có lỗi xảy ra !'); window.location='" + Request.ApplicationPath + "truyen/" + infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "'";
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
                        }
                    }
                }
                else
                {
                    string scriptText = "alert('Hãy mua truyện để có thể vote !'); window.location='" + Request.ApplicationPath + "truyen/" + infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "'";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
                }
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

        //
    }
}