using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV4.Code;

namespace WebTruyenV4.Control_NguoiDung.QuanLyTruyen
{
    public partial class UiThemTruyen : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();

        public static List<DB_THELOAI> DanhSachTheLoai = new List<DB_THELOAI>();
        public static DB_USER NguoiDungs = new DB_USER();
        public static DB_TRUYEN TruyenVuaDang = new DB_TRUYEN(); // luu thong tin truyen moi dang luu lai

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
                        LoadTheLoai();
                        UpLoadTruyen();
                        LoadThongTinNguoiDung(); // lay thong tin nguoi dung ra theo cookie

                    }
                }
                catch
                {
                    Response.Redirect("/404");
                }
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

        private void LoadTheLoai()
        {
            var dt = (from q in dl.DB_THELOAIs select q).OrderByDescending(q => q.updated_at);
            if (dt != null && dt.Count() > 0)
            {
                DanhSachTheLoai = dt.ToList();
            }
        }
        private void UpLoadTruyen()
        {
            if (!string.IsNullOrEmpty(Request.Form["btn-them"]))
            {
                try
                {
                    // lap lay danh sach the loai
                    string tentruyen = Request.Form["tentruyen"].ToString();
                    string tacgia = Request.Form["tacgia"].ToString();
                    string theLoai = Request.Form["the-loai"].ToString();
                    string tomtactruyen = Request.Form["input_tomtat"].ToString();
                    //  string tomtactruyen = HttpUtility.HtmlEncode(FCKeditor1.Value);
                    //tomtactruyen = HttpUtility.HtmlEncode(tomtactruyen); // ma hoa html
                    string coin = Request.Form["coin"].ToString();
                    string link_raw = HeThong.LinkRaw(tentruyen);

                    //check du lieu bi trong
                    if (tentruyen == null || tacgia == null || theLoai == null || tomtactruyen == null || link_raw == null)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Vui lòng nhập đầy đủ thông tin !')", true);
                        return;
                    }

                    // upload anh
                    try
                    {
                        Truyen.FileName_IMG = "";
                        Truyen.upload_img();
                        if (Truyen.FileName_IMG != "")
                        {
                            dl.ThemTruyen(NguoiDungs.id_user, tentruyen, tacgia, tomtactruyen, Truyen.FileName_IMG, coin, link_raw);
                        }
                        else
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Có lỗi xảy ra trong quá trình upload ảnh')", true);
                            return;
                        }
                    }
                    catch
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Có lỗi xảy ra trong quá trình upload ảnh')", true);
                        return;
                    }

                    var load = (from q in dl.DB_TRUYENs where q.id_user == NguoiDungs.id_user && q.link_raw == link_raw select q);
                    TruyenVuaDang = load.First();
                    int IdTruyen = TruyenVuaDang.id_truyen; // khai bao id truyen

                    if (IdTruyen == 0)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Có lỗi xảy ra trong quá trình thêm thể loại vui lòng thử lại')", true);
                        return;
                    }

                    // the loai truyen
                    string[] arrtheLoai = theLoai.Split(',');
                    foreach (string a in arrtheLoai)
                    {
                        dl.ThemTruyenTheLoai(IdTruyen, Convert.ToInt32(a));
                    }

                    //
                    string scriptText = "alert('Đăng truyện " + tentruyen.ToString() + " thành công '); window.location='" + Request.ApplicationPath + "taikhoan/info" + "'";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);

                }
                catch
                {
                    Response.Redirect("/404");
                }

            }

        }

    } //
}