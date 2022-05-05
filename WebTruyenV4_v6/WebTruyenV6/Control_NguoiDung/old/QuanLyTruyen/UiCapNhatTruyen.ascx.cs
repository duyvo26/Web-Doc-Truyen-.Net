using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV4.Code;

namespace WebTruyenV4.Control_NguoiDung.QuanLyTruyen
{
    public partial class UiCapNhatTruyen : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static DB_USER NguoiDungs = new DB_USER();
        public static DB_TRUYEN infoTruyen = new DB_TRUYEN();
        public static List<DB_THELOAI> DanhSachTheLoai = new List<DB_THELOAI>();
        public static List<LayTruyenTheLoaiResult> TruyenTL = new List<LayTruyenTheLoaiResult>();

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
                        LoadThongTinNguoiDung();
                        LoadTruyen();
                        LoadTheLoai();
                        LoadThongTinTheLoai(infoTruyen.id_truyen);
                        CapNhatTruyen();
                    }
                }
                catch
                {
                    Response.Redirect("/404");
                }
            }
        }

        public void LoadThongTinTheLoai(int id_truyen)
        {

            var TheLoai = dl.LayTruyenTheLoai(id_truyen);
            var dt = (from q in TheLoai where q.id_truyen == id_truyen select q);
            TruyenTL = dt.ToList();
        } //

        private void LoadTheLoai()
        {
            var dt = (from q in dl.DB_THELOAIs select q).OrderByDescending(q => q.updated_at);
            if (dt != null && dt.Count() > 0)
            {
                DanhSachTheLoai = dt.ToList();
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

        private void LoadTruyen()
        {
            int idTruyen = Convert.ToInt32(Page.RouteData.Values["IdTruyen"]);
            var dt = from q in dl.DB_TRUYENs where q.id_truyen == idTruyen select q;
            try
            {
                infoTruyen = dt.First();
                if (infoTruyen.status_ == 0)
                {
                    string scriptText = "alert('Bộ truyện này tạm khoá vui lòng liên hệ admin để biết thêm chi tiết !'); window.location='" + Request.ApplicationPath + "'";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);
                }
            }
            catch
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Có lỗi xảy ra !')", true);
            }
        }

        private void CapNhatTruyen()
        {
            if (!string.IsNullOrEmpty(Request.Form["btn-capnhat"]))
            {
                try
                {
                    // lap lay danh sach the loai

                    string tentruyen = Request.Form["tentruyen"].ToString();
                    string tacgia = Request.Form["tacgia"].ToString();
                    string tomtactruyen = Request.Form["input_tomtat"].ToString();
                    // tomtactruyen = HttpUtility.HtmlEncode(tomtactruyen); // ma hoa html
                    string coin = Request.Form["coin"].ToString();
                    string link_raw = infoTruyen.link_raw;

                    //check du lieu bi trong
                    if (tentruyen == "" || tacgia == null || tomtactruyen == null)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Vui lòng nhập đầy đủ thông tin!')", true);
                        return;
                    }

                    if (!string.IsNullOrEmpty(Request.Form["the-loai"]))
                    {
                        string theLoai = Request.Form["the-loai"];
                        dl.XoaTruyenTL(infoTruyen.id_truyen);
                        // the loai truyen
                        string[] arrtheLoai = theLoai.Split(',');
                        foreach (string a in arrtheLoai)
                        {
                            dl.ThemTruyenTheLoai(infoTruyen.id_truyen, Convert.ToInt32(a));
                        }
                        //
                    }

                    // upload anh

                    Truyen.FileName_IMG = "";
                    Truyen.upload_img();
                    if (Truyen.FileName_IMG != "")
                    {

                        dl.CapNhatTruyen(NguoiDungs.id_user, tentruyen, tacgia, tomtactruyen, Truyen.FileName_IMG, coin, link_raw, infoTruyen.id_truyen);
                    }
                    else
                    {
                        string FileName_IMG = infoTruyen.img_truyen;
                        dl.CapNhatTruyen(NguoiDungs.id_user, tentruyen, tacgia, tomtactruyen, FileName_IMG, coin, link_raw, infoTruyen.id_truyen);
                    }

                    string scriptText = "alert('Cập nhật truyện " + tentruyen.ToString() + " thành công '); window.location='/taikhoan/capnhattruyen-" + infoTruyen.id_truyen + "'";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);

                    //

                }
                catch
                {
                    Response.Redirect("/404");
                }

            }

        }

    } //
}