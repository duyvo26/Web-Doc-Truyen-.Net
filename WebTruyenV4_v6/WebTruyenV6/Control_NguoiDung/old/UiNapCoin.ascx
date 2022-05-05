<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiNapCoin.ascx.cs" Inherits="WebTruyenV4.Control_NguoiDung.UiNapCoin" %>
<script>
    document.title = "Nạp Coin";
</script>

<div  class="box_div maunen_div">
   <div class="div_title">
      <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/dollar.png"  width="40"/>Nạp coin
   </div>
   <div class="dangnhap nhap-truyen">
    <%= HeThongs.Fb_mess %>

       <center>
           <h1>Quét mã thanh toán trực tuyến</h1>
        <img width="400" style="max-width: 100%" height="400" src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/favicon/<%= HeThongs.thanhtoan_online %>" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/err-img.png';" />
           <h3>Nội dung chuyển tiền: <%=NguoiDungs.ten_dangnhap %> <%=DateTime.Now.ToString("dd-HH") %> nạp tiền</h3>
           <h3>Tỷ lệ nạp x10</h3>
           <h4>Chúng tôi sẽ xử lý trong thời gian sớm nhất</h4>
           <h5>We will handle it as soon as possible</h5>
       </center>         
   </div>
</div>
