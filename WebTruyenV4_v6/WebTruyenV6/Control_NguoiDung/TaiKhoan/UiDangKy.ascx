<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiDangKy.ascx.cs" Inherits="WebTruyenV6.Control_NguoiDung.TaiKhoan.UiDangKy" %>
<script>
    document.title = "Đăng Ký Tài Khoản ";
</script>
<!-- noi dung -->
<section>
    <div class="box_div">
        <!--Thanh tiêu đề --> 
        <div class="div_title" >
            <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/register.png"  width="40"/> Đăng ký <!-- da sua thanh 2 cham  -->
        </div>
        <!--End thanh tiêu đề --> 
        <center style="font-size: 22px; color: red">
            <asp:Label ID="noti" runat="server"></asp:Label>
        </center>
        <!-- Nội dung -->
        <div class="dangki" onkeyup="check_dky()">
            <form class=" maunen_div" method="Post">
                <div class="form-group">
                    <!--Tên tài khoản  -->
                    <label >Full Name&nbsp;*</label>
                    <input type="text" class="form-control" name="fullname"  id="Tai-khoan"  placeholder="Có dấu, khoảng trắng">
                    <div style="margin-top: 10px"></div>
                    <!--Email -->
                    <label >Địa chỉ mail&nbsp;*</label>
                    <input type="email" class="form-control" name="email" id="email"   placeholder="Vui lòng nhập email">
                    <div style="margin-top: 10px"></div>
                    <!--Mật khẩu 1 -->
                    <div id="alert-pass" style="font-size:20px;"></div>
                    <label >Tên đăng nhập&nbsp;*</label>
                    <input type="text" class="form-control" name="taikhoan" id="nick-name"  placeholder="Không dấu không khoảng trống">
                    <div style="margin-top: 10px"></div>
                    <label >Mật khẩu lần 1&nbsp;*</label>
                    <input type="password" class="form-control" name="Password1" id="Password1" placeholder="Password 1">
                    <div style="margin-top: 10px"></div>
                    <!--Mật khẩu 2 -->
                    <label>Mật khẩu lần 2&nbsp;*</label>
                    <input type="password" class="form-control"  id="Password2" placeholder="Password 2">
                    <div style="margin-top: 10px"></div>
                </div>
                <div class="d-flex flex-row-reverse"><button type="submit" class="btn btn-primary" id="nut-dangki"  style="background-color: black;color: white; width: 110px;
                    margin-right: 5px;" >Đăng ký</button></div>
            </form>
        </div>
    </div>
    <!-- End nội dung -->
</section>

<script>
    var nut = document.getElementById("nut-dangki"); nut.disabled = !0; function check_dky() { var nick_name = document.getElementById("nick-name").value; var thongbao = document.getElementById("alert-pass"); var Tai_khoan = document.getElementById("Tai-khoan").value; var Pass1 = document.getElementById("Password1").value; var Pass2 = document.getElementById("Password2").value; document.getElementById("nick-name").value = nick_name.toLowerCase(); if (nick_name != "" && Tai_khoan != "" && Pass1 != "" && Pass2 != "") { if (Pass1 != Pass2) { thongbao.style.color = "red"; thongbao.innerHTML = "* Mật khẩu không trùng khớp" } else { thongbao.style.color = "blue"; thongbao.innerHTML = "* Xác nhận mật khẩu"; nut.disabled = !1 } } else { thongbao.innerHTML = ""; nut.disabled = !0 } }
</script>
<!--Dynhone 15-10 10:53 -->