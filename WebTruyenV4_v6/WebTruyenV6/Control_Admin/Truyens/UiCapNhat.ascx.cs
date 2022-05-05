using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebTruyenV6.Code;

namespace WebTruyenV6.Control_Admin.Truyens
{
    public partial class UiCapNhat : System.Web.UI.UserControl
    {
        ConnWebTruyenDataContext dl = new ConnWebTruyenDataContext();
        public static DB_USER NguoiDungs = new DB_USER();
        public static DB_TRUYEN infoTruyen = new DB_TRUYEN();
        public static List<DB_THELOAI> DanhSachTheLoai = new List<DB_THELOAI>();
        public static List<LayTruyenTheLoaiResult> TruyenTL = new List<LayTruyenTheLoaiResult>();
        public static int id_truyen = 0;
        public static string img_truyen = "";
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
                    LoadTruyen();
                    LoadTheLoai();
                    LoadThongTinTheLoai();
                    id_truyen = infoTruyen.id_truyen;
                    img_truyen = infoTruyen.img_truyen;
                }
                  //capnhat truyen vao csdl
                    CapNhatTruyen();
            }
            catch (Exception err)
            {
                string url = "/404?err=true&&vitri="+ this.GetType().Name + "&&tenloi=" + err.Message;
                Response.Redirect(url);
            }
        }

        public void LoadThongTinTheLoai()
        {

            var TheLoai = dl.LayTruyenTheLoai(infoTruyen.id_truyen);
            var dt = (from q in TheLoai where q.id_truyen == infoTruyen.id_truyen select q);
            TruyenTL = dt.ToList();
        } //
        public void LoadTheLoai()
        {
            var dt = (from q in dl.DB_THELOAIs select q).OrderByDescending(q => q.updated_at);
            if (dt != null && dt.Count() > 0)
            {
                DanhSachTheLoai = dt.ToList();
            }
        }


        public void LoadThongTinNguoiDung()
        {

            String MaKhoa = Request.Cookies["Log"].Value;

            var dt = (from q in dl.DB_USERs where q.ma_khoa == MaKhoa select q);

            if (dt != null)
            {
                NguoiDungs = dt.First();
            }
        }

        public void LoadTruyen()
        {
            int idTruyen = Convert.ToInt32(Page.RouteData.Values["IdTruyen"]);
            var dt = from q in dl.DB_TRUYENs where q.id_truyen == idTruyen select q;
            try
            {
                infoTruyen = dt.First();
                
            }
            catch
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Có lỗi xảy ra !')", true);
            }
        }

        public void CapNhatTruyen()
        {
            if (!string.IsNullOrEmpty(Request.Form["btn-capnhat"]))
            {
                // lap lay danh sach the loai

                string tentruyen = Request.Form["tentruyen"].ToString();
                string tacgia = Request.Form["tacgia"].ToString();
                string tomtactruyen = Request.Form["input_tomtat"].ToString();
                tomtactruyen = HttpUtility.HtmlEncode(tomtactruyen); // ma hoa html
                string coin = Request.Form["coin"].ToString();
                int trangthai = Convert.ToInt32(Request.Form["trangthai"]);
                //check du lieu bi trong
                if (tentruyen == "" || tacgia == "" || tomtactruyen == "")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Vui lòng nhập đầy đủ thông tin!')", true);
                    return;
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

                    if (!string.IsNullOrEmpty(Request.Form["the-loai"]))
                    {
                        string theLoai = Request.Form["the-loai"];
                        dl.XoaTruyenTL(infoTruyen.id_truyen);
                        // cap nhat the loai truyen
                        string[] arrtheLoai = theLoai.Split(',');
                        foreach (string a in arrtheLoai)
                        {
                            dl.ThemTruyenTheLoai(infoTruyen.id_truyen, Convert.ToInt32(a));
                        }
                        //
                    }

                    // upload anh
                    string Img_Url = null;
                    if (FileUpload1.HasFile)
                    {
                        Img_Url = HeThong.LaySoNgauNhien().ToString() + FileUpload1.FileName;
                        string filePath = MapPath("/public/img/truyen/" + Img_Url);
                        FileUpload1.SaveAs(filePath);
                    }
                    else
                    {
                        Img_Url = img_truyen;
                    }
                    try
                    {
                        // cap nhat truyen
                        var dt = from q in dl.DB_TRUYENs where q.id_truyen == id_truyen select q;
                        DB_TRUYEN dbtruyen = dt.First();
                        dbtruyen.ten_truyen = tentruyen;
                        dbtruyen.tac_gia = tacgia;
                        dbtruyen.tomtat_truyen = tomtactruyen;
                        dbtruyen.img_truyen = Img_Url;
                        dbtruyen.coin_truyen = coin;
                        dbtruyen.status_ = trangthai;

                        dl.SubmitChanges();

                        string scriptText = "alert('Cập nhật truyện " + tentruyen.ToString() + " thành công '); window.location='/cp-admin/truyen/capnhat-" + id_truyen + "'";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "capnhatthanhcong", scriptText, true);
                    }
                    catch
                    {
                        string scriptText = "alert('Có lỗi xảy ra !'); window.location='/cp-admin/truyen/capnhat-" + id_truyen + "'";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "baoloi", scriptText, true);
                    }


                }
            }

        }

    } //
}