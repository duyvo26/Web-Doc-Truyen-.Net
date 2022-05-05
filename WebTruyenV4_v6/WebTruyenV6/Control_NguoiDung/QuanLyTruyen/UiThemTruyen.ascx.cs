using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV6.Code;

namespace WebTruyenV6.Control_NguoiDung.QuanLyTruyen
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
                        LoadThongTinNguoiDung(); // lay thong tin nguoi dung ra theo cookie
                    }

                    UpLoadTruyen();
                    
                    
                }
                catch (Exception err)
                {
                    string url = "/404?err=true&&vitri="+ this.GetType().Name + "&&tenloi=" + err.Message;
                    Response.Redirect(url);
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

                // lap lay danh sach the loai
                string tentruyen = Request.Form["tentruyen"].ToString();
                string tacgia = Request.Form["tacgia"].ToString();
                string theLoai = Request.Form["the-loai"].ToString();
                string tomtactruyen = Request.Form["input_tomtat"].ToString();
                tomtactruyen = HttpUtility.HtmlEncode(tomtactruyen); // ma hoa html
                string coin = Request.Form["coin"].ToString();
                string link_raw = HeThong.LinkRaw(tentruyen) + HeThong.LaySoNgauNhien().ToString();

                //check du lieu bi trong
                if (tentruyen == "" || theLoai == "" || tomtactruyen == "" || link_raw == "")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "thieuthongtin", "alert('Vui lòng nhập đầy đủ thông tin !')", true);
                }

                if (tomtactruyen.Length >= 1500)
                {
                    //string scriptText = "alert('Tóm tắc không quá 1500 chữ !'); window.location='/cp-admin/truyen/capnhat-" + id_truyen + "'";
                    // ScriptManager.RegisterStartupScript(this, this.GetType(), "baoloitomtac", scriptText, true);

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "baoloitomtac", "alert('Tóm tắc không quá 1500 chữ !')", true);
                    return;
                }
                else
                {

                    if (tacgia == "")
                    {
                        tacgia = "Cập Nhật.";
                    }
                    // check coin 
                    if (coin == "" || Convert.ToInt32(coin) < 0)
                    {
                        coin = "0";
                    }

                    string Img_Url = null;
                    if (FileUpload1.HasFile)
                    {
                        Img_Url = HeThong.LaySoNgauNhien().ToString() + FileUpload1.FileName;
                        string filePath = MapPath("/public/img/truyen/" + Img_Url);
                        FileUpload1.SaveAs(filePath);
                        // up vao csdl
                        dl.ThemTruyen(NguoiDungs.id_user, tentruyen, tacgia, tomtactruyen, Img_Url, coin, link_raw);

                    }
                    else
                    {
                        Img_Url = "/public/img/www/err-img.png";
                        // up vao csdl
                        dl.ThemTruyen(NguoiDungs.id_user, tentruyen, tacgia, tomtactruyen, Img_Url, coin, link_raw);
                    }

                    var IdTruyen = (from q in dl.DB_TRUYENs where q.id_user == NguoiDungs.id_user && q.link_raw == link_raw select q.id_truyen).First();
                    //int IdTruyen = TruyenVuaDang.id_truyen; // khai bao id truyen
                    if (IdTruyen == 0 || IdTruyen.ToString() == "")
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "coloi", "alert('Có lỗi xảy ra trong quá trình thêm thể loại vui lòng thử lại')", true);
                    }
                    // the loai truyen
                    string[] arrtheLoai = theLoai.Split(',');
                    foreach (string a in arrtheLoai)
                    {
                        dl.ThemTruyenTheLoai(IdTruyen, Convert.ToInt32(a));
                    }

                    string scriptText = "alert('Đăng truyện " + tentruyen.ToString() + " thành công '); window.location='" + Request.ApplicationPath + "taikhoan/info" + "'";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "thanhcong", scriptText, true);

                }
            }


            

        }

    } //
}