<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiDangNhap.ascx.cs" Inherits="WebTruyenV4.Control_NguoiDung.TaiKhoan.UiDangNhap" %>
<script>
    document.title = "Trang Đăng Nhập ";
</script>
<!-- noi dung -->
<section>
    <div class="box_div">
        <!-- Thanh tiêu đề -->
        <div class="div_title">
            <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/login.png"  width="40"/> Đăng Nhập  <!-- da sua thanh 2 cham  -->
        </div>
        <!-- End tiêu đề -->
        <!-- noi dung -->
        <center style="font-size: 22px; color: red">
            <asp:Label ID="noti" runat="server"></asp:Label>
        </center>
        <div class="dangnhap">
            <form class=" maunen_div" >
                <div class="form-group">
                    <!--Tên tài khoản  -->
                    <label >Tên đăng nhập</label>
                    <input onkeyup="check_login()"  type="text" class="form-control" name="taikhoan" id="Tai-khoan"  placeholder="Nhập tên đăng nhập">   
                </div>
                <div style="margin-top: 10px"></div>
                <div class="form-group">
                    <!--Mật khẩu  -->
                    <label >Nhập mật khẩu của bạn</label>
                    <input onkeyup="check_login()"  type="password" class="form-control" name="password" id="Password" placeholder="Nhập mật khẩu">
                </div>
                <div style="margin-top: 20px"></div>
                <div class="d-flex flex-row-reverse">
                    <a href="dangky" class="btn btn-primary" id="nut-dangki"  style="background-color: black;color: white; width: 110px;
                        margin-right: 5px;" >Đăng ký</a>
                    <button type="submit" class="btn btn-primary" id="nut-dangnhap"  style="background-color: black;color: white; width: 110px;
                        margin-right: 5px;" >Đăng Nhập</button>
                </div>
            </form>
        </div>
        <!--end noi dung -->
    </div>

    <script>
        var nut_dn = document.getElementById("nut-dangnhap"); nut_dn.disabled = !0; function check_login() { var account = document.getElementById("Tai-khoan").value; var pass = document.getElementById("Password").value; document.getElementById("Tai-khoan").value = account.toLowerCase(); if (account != "" && pass != "") { nut_dn.disabled = !1 } }
    </script>    
</section>
<!--Dynhone 15-10 10:53 -->