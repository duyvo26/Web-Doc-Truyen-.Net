<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiThongTin.ascx.cs" Inherits="WebTruyenV4.Control_NguoiDung.UiThongTin" %>
<script>
    document.title = "Thông Tin KDA STUDIO";
</script>
<div  class="box_div maunen_div">
    <div class="div_title">
        <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/mortarboard.png"  width="40"/>Thông tin KDA STUDIO
    </div>
    <ul >
        <li>
            <h2>Nhóm 1 | Website đọc truyện </h2>
        </li>
        <li><img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/avatar/avtt.png"  class="avatar" width="40"/>&emsp;Nguyễn Anh Duy | MSSV: 199009</li>
        <li><img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/avatar/avtt.png"  class="avatar" width="40"/>&emsp;Tạ Trọng Ân | MSSV: 192247</li>
        <li><img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/avatar/avtt.png"  class="avatar" width="40"/>&emsp;Triệu Vĩnh Khang | MSSV: </li>
        <li><img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/avatar/avtt.png"  class="avatar" width="40"/>&emsp;Lê Trung Kiên | MSSV: </li>
        <li><img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/avatar/avtt.png"  class="avatar" width="40"/>&emsp;Võ Khương Duy | MSSV: 192339</li>
    </ul>
</div>
<style>
    ul li{
    list-style-type: none;
    padding: 10px;
    }
</style>