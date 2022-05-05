<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiDocTruyen.ascx.cs" Inherits="WebTruyenV6.Control_NguoiDung.TrangTruyen.UiDocTruyen" %>
<!DOCTYPE HTML>
<html lang="en">
   <head runat="server">
      <meta charset=UTF-8>
      <title>Truyện <%=infoTruyen.ten_truyen +" - "+  infoChuong.ten_chuong %></title>
      <!-- mobie -->
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <!-- css -->
      <link href="~/public/css/bootstrap.min.css" rel="stylesheet" />
      <link href="~/public/css/style.css" rel="stylesheet" />
      <link href="~/public/css/menu.css" rel="stylesheet" />
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
      <!-- js -->
      <script src=" <%=WebTruyenV6.Code.HeThong.url() %>/public/js/jquery-3.5.1.slim.min.js"></script>
      <script src="<%=WebTruyenV6.Code.HeThong.url() %>/public/js/showmoreless.js"></script>
      <script src="https://cdn.tiny.cloud/1/rdcg4mjs3nke28rr5kqe3dqfa0epd06n0m9rf2rjsp6y0bl0/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script> <!-- hoi tro comment -->
      <script src="<%=WebTruyenV6.Code.HeThong.url() %>/public/js/jquery-3.5.1.slim.min.js"></script>
   </head>
   <body class="maunen_div" onload="setup()">
      <!--cai dat -->
      <div  style="padding: 10px; width:100%; background: #3d6a6a">
         <center>
            <div id="caidat"  class="btn btn-warning" style="color:black">
               <h6><i class="bi bi-gear-wide-connected" style=" width:100%"></i> Cài đặt</h6>
            </div>
            <div  class="btn btn-light" style="color:black">
               <a href="#binhluan">
                  <h6><i class="bi bi-chat-text" style=" width:100%"></i> Bình luận</h6>
               </a>
            </div>
         </center>
      </div>
      <!--cai dat -->
      <form id="form1" runat="server">
         <!-- noi dung ---------------------------------->
         <div runat="server" class="page" >
            <div id="body" class="container" style="padding: 10px">
               <div class="doctruyen-tieu-de" style="font-size: 18px" id="doctruyen-tieu-de">
                  <a id="titde" href="<%=WebTruyenV6.Code.HeThong.url() %>/truyen/<%=infoTruyen.link_raw + "-" + infoTruyen.id_truyen %>">
                     <p > <%= infoTruyen.ten_truyen %></p>
                  </a>
                  <p > <%= infoChuong.ten_chuong %></p>
                  <p > Tác giả: <%= infoTruyen.tac_gia %> </p>
                  <p > Ngày đăng: <%= infoTruyen.created_at.ToString("dd/MM/yyyy HH:mm:ss") %> </p>
               </div>
               <div class="doctruyen-nd" id="doctruyen-nd">
                  <%
                     string noidung =  HttpUtility.HtmlDecode(infoChuong.noidung_chuong);
                       %>
                  <%= noidung %>
               </div>

                <!-- an quang cao -->
                <style>
                    .iads-item-content{display: none}
                </style>
                 <!-- an quang cao -->
               <!-- noi dung ---------------------------------->
               <!-- nut chuyen trang -->
               <hr>
               <center style="margin-top: 50px;">
                  <%
                     if (Back != null) { 
                     if (Back.id_chuong != 0)   { %>
                  <a  href="<%= Back.id_chuong %>">
                  <button type="button" class="btn btn-danger" title="Chương cũ">
                  Chương cũ <<</button>
                  </a>
                  <% } } %>
                  <%if (Next != null)
                     {
                         if (Next.id_chuong != 0)
                         { %>
                  <a  href="<%=Next.id_chuong%>">
                  <button type="button" class="btn btn-danger"  title="Chương tiếp theo">
                  Chương tiếp >></button>
                  </a>
                  <% }
                     } %>
               </center>
               <!-- nut chuyen trang -->
               <!-- binh luan--------------------------------------------------- -->
      <form></form>
      <section class="box_div maunen_div" style="font-size: 16px; margin-top: 180px; color:black;" id="binhluan">
      <div class="div_title"> 
      <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/writing.png""  width="40"/>Bình luận
      </div>
      <!-- phan noi dung -->
      <div class="row list_truyen">
      <div class="list-binhluan" style="max-height: 800px;">
      <%   if (BinhLuan != null) {  
         for (int a = 0; a < BinhLuan.Count; a++)
         { GetPhanHoi(BinhLuan[a].id_cmt);
            %>
      <div class="row">
      <div class="col-8">
      <p title="#<%=BinhLuan[a].id_user %>">
      <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/avatar/<%= ImgTaiKhoan(BinhLuan[a].id_user)  %> "  class="avatar" width="40" onError="this.onerror=null;this.src='<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/err-img.png';" />
      <%= TenTaiKhoan(BinhLuan[a].id_user) %>
      <%=WebTruyenV6.Code.NguoiDung.HuyHieuUser(GetQuyenHan(Convert.ToInt32(BinhLuan[a].id_user))) %>
      <%if (infoTruyen.id_user == BinhLuan[a].id_user)
         { %>
      <span class="badge badge-warning">Người đăng</span>
      <%} %>
      </p>
      </div>
      <div class="col-4" style="text-align: right; font-size: 50%">
      <%=WebTruyenV6.Code.HeThong.TinhThoiGian(BinhLuan[a].created_at) %>
      </div>
      <div class="txt-binhluan">
      <%if (BinhLuan[a].noidung_cmt.Length >= 15 ){
         %>
      <div class="show-less-div-2">
      <%= WebTruyenV6.Code.HeThong.TuNhayCam(BinhLuan[a].noidung_cmt)  %> 
      </div>
      <% }else{ %>
      <%= WebTruyenV6.Code.HeThong.TuNhayCam(BinhLuan[a].noidung_cmt) %>
      <%  }  %>
      </div>
      <div style="font-size:10px">#<%=BinhLuan[a].id_cmt %>&emsp; </div>
      <%if (BinhLuan[a].id_user == NguoiDungs.id_user) { %>
      <a href="?XoaBinhLuan=<%= BinhLuan[a].id_cmt %>" style="font-size: 15px;">Xoá bình luận</a>
      <% } %>
      <%if (BinhLuan[a].id_user != NguoiDungs.id_user) { %>
      &nbsp;<a onclick="phanhoi(this.id)" href="#bl_<%= BinhLuan[a].id_cmt %>" id="<%= BinhLuan[a].id_cmt %>" style="font-size: 15px;">Phản hồi</a>
      <% }  %>
      </div>
      <!-- nhap phan hoi binh luan -->
      <form method="post" id="bl_<%= BinhLuan[a].id_cmt %>" style="margin-left: 20px;display: none; margin-bottom: 10px">
      <input name="id-binhluan" style="display: none;" value="<%= BinhLuan[a].id_cmt %>" />
      <input name="user-binhluan"  style="display: none;" value="<%= BinhLuan[a].id_user %>" />
      <div class="form-group" >
      <label >Phản hồi bình luận: </label>
      <textarea name="noidung-bl" class="form-control" rows="2">@<%= TenTaiKhoan(BinhLuan[a].id_user) %>&nbsp;.</textarea>
      </div>
      <input type="submit" class="btn btn-info" name="phan_hoi" value="Phản hồi" />
      </form>
      <!-- nhap phan hoi binh luan -->
      <!-- load phan hoi -->
      <% if (LoadPhanHoi != null ){ for (int i = 0; i < LoadPhanHoi.Count(); i++)
         { %>
      <div class="row" style="margin-left: 60px">
      <div class="col-8">
      <p title="#<%=LoadPhanHoi[i].id_user %>">
      <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/www/avatar/<%= ImgTaiKhoan(LoadPhanHoi[i].id_user)%> "  class="avatar" width="40" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/www/err-img.png';" />
      <%= TenTaiKhoan(LoadPhanHoi[i].id_user)%>
      <%=WebTruyenV6.Code.NguoiDung.HuyHieuUser(GetQuyenHan(Convert.ToInt32(LoadPhanHoi[i].id_user))) %>
      <%if (infoTruyen.id_user == LoadPhanHoi[i].id_user)
         { %>
      <span class="badge badge-warning">Người đăng</span>
      <%} %>
      </p>
      </div>
      <div class="col-4" style="text-align: right; font-size: 50%">
      <%=WebTruyenV6.Code.HeThong.TinhThoiGian(LoadPhanHoi[i].created_at)%>
      </div>
      <div class="txt-binhluan">
      <%if (LoadPhanHoi[i].noidung_cmt.Length >= 15)
         {
          %>
      <div class="show-less-div-2">
      <%= WebTruyenV6.Code.HeThong.TuNhayCam(LoadPhanHoi[i].noidung_cmt)%> 
      </div>
      <% }
         else
         { %>
      <%= WebTruyenV6.Code.HeThong.TuNhayCam(LoadPhanHoi[i].noidung_cmt)%>
      <%  }  %>
      </div>
      <div style="font-size:10px">#<%=LoadPhanHoi[i].id_cmt %>&emsp;</div>
      <%if (LoadPhanHoi[i].id_user == NguoiDungs.id_user)
         { %>
      <a href="?XoaBinhLuan=<%= LoadPhanHoi[i].id_cmt%>" style="font-size: 15px;">Xoá bình luận</a>
      <% } %>
      <%if (LoadPhanHoi[i].id_user != NguoiDungs.id_user)
         { %>
      &nbsp;<a onclick="phanhois(this.id)" href="#bls_<%= LoadPhanHoi[i].id_cmt%>" id="<%= LoadPhanHoi[i].id_cmt%>" style="font-size: 15px;">Phản hồi</a>
      <% }  %>
      </div>
      <!-- nhap phan hoi binh luan -->
      <form method="post" id="bls_<%= LoadPhanHoi[i].id_cmt%>" style="margin-left: 60px; display: none; margin-bottom: 10px">
      <input name="id-binhluan" style="display: none;" value="<%= BinhLuan[a].id_cmt %>" />
      <input name="user-binhluan" style="display: none;"  value="<%= LoadPhanHoi[i].id_user %>" />
      <div class="form-group" >
      <label >Phản hồi bình luận: </label>
      <textarea name="noidung-bl" class="form-control" rows="2">@<%= TenTaiKhoan(LoadPhanHoi[i].id_user)%>&nbsp.</textarea>
      </div>
      <input type="submit" class="btn btn-info" name="phan_hoi" value="Phản hồi" />
      </form>
      <!-- nhap phan hoi binh luan -->
      <% } }%>
      <!-- end load phan hoi -->
      <%} }%>
      </div>
      </div>
      <!-- end phan noi dung -->
      <script>
          function phanhoi(id) {
              var bl_id = "bl_" + id;
              document.getElementById(bl_id).style.display = 'block';
          }
          function phanhois(id) {
              var bl_id = "bls_" + id;
              document.getElementById(bl_id).style.display = 'block';
          }

      </script>
      <form method="post">
      <div class="form-group" >
      <label >Thêm bình luận: </label>
      <textarea name="message" id="message" ></textarea>
      <div class="d-flex flex-row-reverse bd-highlight">
      <button class="btn btn-dark" name="binhluan" style="margin-top: 10px" value="true">Bình luận</button>
      </div>
      </div>
      </form>
      </section>
      <script>
          tinymce.init({ selector: "#message", plugins: "emoticons", toolbar: "emoticons", toolbar_location: "bottom", menubar: !1, })
      </script>
      <!-- end binh luan -->
      </div>
      </div>
      <!-- noi dung -->
      </form>
   </body>
</html>
<!-- menu -->
<div class="menu-pc" id="menu-pc">
   <!-- Trở về chương trước -->
   <% if (Back != null) { 
      if (Back.id_chuong != null)   { %>
   <div class="item">
      <a  href="<%= Back.id_chuong %>">
      <img width="40" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/left.jpg" />
      </a>
   </div>
   <% } } %>
   <!-- Trở về trang truyện -->
   <div class="item">
      <a href="<%=WebTruyenV6.Code.HeThong.url() %>/truyen/<%=infoTruyen.link_raw + "-" + infoTruyen.id_truyen %>">
      <img width="40" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/open-book.png" />
      </a>
   </div>
   <!-- Danh sách chương  -->
   <div class="item">
      <img title="Danh Sách Chương" data-toggle="modal" data-target="#danhsachchuong"  width="40" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/list.png" />
   </div>
   <!-- Trang tiếp theo -->
   <%if (Next != null) { 
      if (Next.id_chuong != null)
      { %>
   <div class="item">
      <a  href="<%=Next.id_chuong %>">
      <img width="40" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/right.jpg" />
      </a>
   </div>
   <% } } %>
   <!-- go top -->
   <div class="item">
      <img width="40" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/go-top.png" onclick="gotop()" />
   </div>
</div>
<!-- menu -->
<!-- danh sach chuong -->
<doctruyen >
   <div class="modal left fade" id="danhsachchuong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title" id="exampleModalLabel">Danh Sách Chương</h5>
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body" style="  height: 100%; overflow: scroll;">
                <% if(Session["LoadDsChuong"] == null){ %>
               <center> <a href="?taids=true" ><button type="button" class="btn btn-danger">Tải danh sách ...</button></a></center>
                   
                  <% }else { %>
                               <ul class="list-group">
                  <% for (int i = 0; i < DsChuong.Count ; i++)
                     { %>
                  <% if (DsChuong[i].id_chuong == infoChuong.id_chuong){ %>
                  <a href="<%= DsChuong[i].id_chuong %>" >
                     <li class="list-group-item" style="display: contents;">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bookmark-plus" viewBox="0 0 16 16">
                           <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z"/>
                           <path d="M8 4a.5.5 0 0 1 .5.5V6H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V7H6a.5.5 0 0 1 0-1h1.5V4.5A.5.5 0 0 1 8 4z"/>
                        </svg>
                        <% RutGon_TieuDe(DsChuong[i].ten_chuong, 18); %>  
                     </li>
                  </a>
                  <% }else{ %>
                  <a href="<%= DsChuong[i].id_chuong %>">
                     <li class="list-group-item" style="display: contents;" title="<%=DsChuong[i].ten_chuong %>"><% RutGon_TieuDe(DsChuong[i].ten_chuong, 20); %></li>
                  </a>
                  <% } %>
                  <% } %>
               </ul>
                <% } %>
            </div>
         </div>
      </div>
   </div>
</doctruyen>
<!-- danh sach chuong -->
<!--ModalCaidat-->
<div id="ModalCaidat" class="modals">
   <div class="modal-contents">
      <span id="close" class="close">&times;</span>
      <div class="form-group">
         <label >Cỡ chữ</label>
         <input type="number" id="FontSizes" class="form-control" max="35" min="5"  name="font_size" value=""/>
      </div>
      <div class="form-group">
         <label >Màu chữ</label>
         <select class="form-control" id="MauChus" name="mautxt">
            <option value="#2d2d2d" style="background: #2d2d2d" >Màu đen</option>
            <option value="#f1f1f1" style="background: #f1f1f1" >Màu trắng</option>
         </select>
      </div>
      <div class="form-group">
         <label >Màu nền</label>
         <select class="form-control" id="MauNens" name="maunen">
            <option value="#2d2d2d" style="background: #2d2d2d" >Màu đen</option>
            <option value="#f1f1f1" style="background: #f1f1f1; height:100px"  >Màu trắng</option>
            <option value="#ced9d9" style="background: #ced9d9">Màu xanh</option>
            <option value="#f4f4e4" style="background: #f4f4e4" >Màu vàng nhạt</option>
            <option value="#eae4d3" style="background: #eae4d3" >Màu sephia</option>
            <option value="rgb(242, 242, 242)" style="background: rgb(242, 242, 242)" >Màu hạt sạn</option>
         </select>
      </div>
   </div>
</div>
<!--ModalCaidat-->
<!-- thanh menu duoi  -->
<div class="thanh-menu-doctruyen hidden" id="thanh-menu">
   <div class="container" style="margin-top: 5px;">
      <div class="d-flex justify-content-center"> 
         <%
            if (Back != null) { 
            if (Back.id_chuong != 0)   { %>
         <a  href="<%= Back.id_chuong %>">
         <button type="button" class="btn btn-menu" title="Chương cũ">
         <img width="40" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/left.jpg" />
         </button>
         </a>
         <% } } %>
         <a href="<%=WebTruyenV6.Code.HeThong.url() %>/truyen/<%=infoTruyen.link_raw + "-" + infoTruyen.id_truyen %>">
         <button type="button" class="btn btn-menu" title="Tên Truyện">
         <img width="40" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/open-book.png" />
         </button>
         </a>
         <button type="button" class="btn btn-menu" title="Danh sách chương">
         <img title="Danh Sách Chương" data-toggle="modal" data-target="#danhsachchuong"  width="40" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/list.png" />
         </button>
         <%if (Next != null)
            {
                if (Next.id_chuong != 0)
                { %>
         <a  href="<%=Next.id_chuong%>">
         <button type="button" class="btn btn-menu" title="Chương tiếp theo">
         <img width="40" src="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/www/top-icon/right.jpg" />
         </button>
         </a>
         <% }
            } %>
      </div>
   </div>
</div>
<!-- end thanh menu duoi  -->
<!-- go top -->
<button type="button" class="btn btn-menu top hidden" id="top" onclick="return false;">
<img width="40" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/go-top.png" onclick="gotop()"/>
</button>
<!-- go top -->
<style>
   img{
   max-width: 100%;
   }
   .modals{display:none;position:fixed;z-index:1;left:0;top:0;width:100%;height:100%;overflow:auto;background-color:rgb(0,0,0);background-color:rgba(0,0,0,.4)}.modal-contents{background-color:#fefefe;margin:5% auto;padding:20px;border:1px solid #888;width:400px;max-width:100%;height:500px;max-height:100%}.closes{color:#aaa;float:right;font-size:28px;font-weight:700}.closes:hover,.closes:focus{color:#000;text-decoration:none;cursor:pointer}
</style>
<script>
    var modal = document.getElementById("ModalCaidat"); var btn = document.getElementById("caidat"); var span = document.getElementById("close"); var FontSizes = document.getElementById('FontSizes'); var MauNens = document.getElementById('MauNens'); var MauChus = document.getElementById('MauChus'); var MauChus_titde = document.getElementById('titde'); var go_bot = document.getElementById('go_bot'); btn.onclick = function () { modal.style.display = "block" }
    span.onclick = function () { modal.style.display = "none" }
    window.onclick = function (event) { if (event.target == modal) { modal.style.display = "none" } }
    function set() {
        var FontSize = getCookie("FontSize"); var MauNen = getCookie("MauNen"); var MauTxt = getCookie("MauTxt"); if (FontSize == "" || MauNen == "" || MauTxt == "") { setCookie('FontSize', '18', '30'); setCookie('MauNen', '1', '30'); setCookie('MauTxt', '0', '30'); FontSize = 18; MauNen = '1'; MauTxt = '0'; MauChus_titde = '0' }
        FontSizes.value = FontSize; MauNens.selectedIndex = MauNen; MauChus.selectedIndex = MauTxt; document.getElementById('doctruyen-tieu-de').style.fontSize = FontSize + "px"; document.getElementById('doctruyen-nd').style.fontSize = FontSize + "px"; var x = document.querySelectorAll(".page"); x[0].style.backgroundColor = getMau(MauNen); if (getMau(MauNen) == '#2d2d2d') { document.getElementById('body').style.color = '#f1f1f1'; MauChus_titde.style.color = '#f1f1f1' } else if (getMau(MauNen) == '#f1f1f1' || getMau(MauNen) == '#f4f4e4' || getMau(MauNen) == '#eae4d3') { document.getElementById('body').style.color = '#2d2d2d'; MauChus_titde.style.color = '#2d2d2d' } else { document.getElementById('body').style.color = getMau(MauTxt); MauChus_titde.style.color = getMau(MauTxt) }
    }
    function getMau(tt) { if (tt == 0) return '#2d2d2d'; if (tt == 1) return '#f1f1f1'; if (tt == 2) return 'Cadetblue'; if (tt == 3) return '#f4f4e4'; if (tt == 4) return '#eae4d3'; if (tt == 5) return 'rgb(242, 242, 242)' }
    modal.onchange = function () { setCookie('FontSize', FontSizes.value, '30'); setCookie('MauNen', MauNens.selectedIndex, '30'); setCookie('MauTxt', MauChus.selectedIndex, '30'); set() }
    function setCookie(cname, cvalue, exdays) { const d = new Date(); d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000)); let expires = "expires=" + d.toUTCString(); document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/" }
    function getCookie(cname) {
        let name = cname + "="; let decodedCookie = decodeURIComponent(document.cookie); let ca = decodedCookie.split(';'); for (let i = 0; i < ca.length; i++) {
            let c = ca[i]; while (c.charAt(0) == ' ') { c = c.substring(1) }
            if (c.indexOf(name) == 0) { return c.substring(name.length, c.length) }
        }
        return ""
    }
    window.onload = function () { set() }
</script>
<script src="<%=WebTruyenV6.Code.HeThong.url() %>/public/js/popper.min.js"></script>
<script src="<%=WebTruyenV6.Code.HeThong.url() %>/public/js/bootstrap.min.js"></script>
<script src="<%=WebTruyenV6.Code.HeThong.url() %>/public/js/doctruyen.js"></script>