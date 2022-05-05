<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiThongTinTruyen.ascx.cs" Inherits="WebTruyenV4.Control_NguoiDung.TrangTruyen.UiThongTinTruyen" %>
<form></form>
<input id="title" value="<%=infoTruyen.ten_truyen %>" type="hidden" />
<script>
    document.title = "Truyện " + document.getElementById("title").value;
</script>
<!-- Danh sach noi dung -->
<section class="box_div maunen_div">
   <!-- thanh tim kiem -->         
   <div class="search">
      <div class="row">
         <div class="col-md-12">
            <div>
               <div class="search-2">
                  <i class='bx bxs-map'></i> 
                  <form method="get" action="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/timkiemtruyen">
                     <input type="hidden" name="page" value="0" >
                     <input type="text" name="TenTruyen" placeholder="Tên truyện hoặc Tác giả"><button type="submit">Tìm</button>  
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div style="margin-bottom: 20px;" ></div>
   <!-- thanh tim kiem -->  
   <!-- thong tin truyen -->
   <div class="div_title " style="margin-bottom: 25px">
      <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/mortarboard.png" width="40" />Đọc truyện
      <!-- da sua thanh 2 cham  -->
      <%if (Convert.ToInt32(NguoiDungs.quyen_han) != 0)
         { %>
      <div>
         <img title="Quản lý truyện" src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/edit-icon.png"  width="40"  id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <!-- da sua thanh 2 cham  -->
         <div class="dropdown-menu" >
            <a  href="../cp-admin/truyen/capnhat-<%=infoTruyen.id_truyen %>">Chỉnh sửa truyện</a>
            <a href="../cp-admin/chuong/danhsach-<%=infoTruyen.id_truyen %>">Danh sách chương</a>
            <a href="../cp-admin/truyen/danhsach?Xoa=<%=infoTruyen.id_truyen %>" onclick="return confirm('Bạn có chắc muốn xoá truyện: <%= infoTruyen.ten_truyen %>')">Xoá truyện</a>

         </div>
      </div>
      <br>
      <%} %>
   </div>
   <div class="d-flex justify-content-start">
      <div class="row" style="width: 100%">
         <div class="col-sm-4">
            <div class="d-flex justify-content-center">
               <img class="img-truyen" src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/truyen/<%=infoTruyen.img_truyen %>" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/err-img.png';" />
            </div>
         </div>
         <div class="col-sm-8">
            <ul class="list-group">
               <li class="list-group-item">
                  <h3>
                     <strong>
                        <center>
                           <%=infoTruyen.ten_truyen %>
                        </center>
                     </strong>
                  </h3>
               </li>
               <li class="list-group-item">
                  <!-- <center data-toggle="modal" data-target="#dg"> -->
                  <center>
                     <%
                        double DG = DanhGia;
                        //DG = Math.Truncate(DG);
                        
                        for (int i = 0; i < 5; i++) { %>
                     <% if (ListChuong != null)
                        { %>
                     <a class="vote" href="?danhgia=<%=i+1 %>" >
                     <% } %>
                     <%  if (i >= DG)
                        { %>
                     <img src="../../Public/img/www/top-icon/star-shape.png" width="25"/>  
                     <% } else if(DG > i && DG < i + 1) {%>
                     <img src="../../Public/img/www/top-icon/rating.png" width="25"/>  
                     <% } else { %>
                     <img src="../../Public/img/www/top-icon/astar.png" width="25" />
                     <% } %>
                     </a>
                     <%  }
                        %>
                     &nbsp;/&nbsp;<%= DanhGia %> từ <%= NguoiDanhGia %> Lượt đánh giá
                  </center>
               </li>
               <li class="list-group-item">
                  <div class="lis_truyen">
                     <i class="bi bi-blockquote-left"></i>&nbsp;Thể loại: &#160;
                     <% for (int i = 0; i < TruyenTL.Count; i++)
                        { %>
                     <span class="badge badge-success"><a href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/timkiemtruyen?TheLoai=<%=TruyenTL[i].id_theloai%>&page=0"><%=TruyenTL[i].ten_theloai%></a></span>
                     <% } %>
                  </div>
               </li>
               <li class="list-group-item">
                  <div class="lis_truyen"><i class="bi bi-person-lines-fill"></i>&nbsp;Tác giả:&nbsp;
                      <a href="../timkiemtruyen?page=0&TenTruyen=<%=infoTruyen.tac_gia%>"><%=infoTruyen.tac_gia%></a>
                      </a>
                  </div>
               </li>
               <li class="list-group-item">
                  <div class="lis_truyen"><i class="bi bi-eye"></i>&nbsp;Lượt xem:&nbsp;<%=LuotXem %></div>
               </li>
               <li class="list-group-item">
                  <div class="lis_truyen"><i class="bi bi-caret-right"></i>&nbsp;Tổng só chương:&nbsp;<%=SumChuong %></div>
               </li>
               <li class="list-group-item">
                  <div class="lis_truyen"><i class="bi bi-calendar-week"></i>&nbsp;Cập nhật lần cuối:&nbsp;<%=infoTruyen.updated_at %></div>
               </li>
               <li class="list-group-item">
                  <div class="lis_truyen">
                     <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/Money.png" width="30" />
                     &nbsp;
                     <%=string.Format("{0:#,##0}", Convert.ToDecimal(infoTruyen.coin_truyen))  %>
                     <!-- da sua thanh 2 cham  -->
                  </div>
               </li>
               <li class="list-group-item">
                  <% try {
                     if (ListChuong[0].id_chuong != null && checkthuvien != null)
                     { %>
                  <a href="<%= infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "/" + ListChuong[0].id_chuong %>" style="color: white">
                  <button type="button" class="btn btn-info"><i class="bi bi-arrow-right-circle"></i> Đọc chương mới nhất</button>
                  </a>
                  <a href="<%= infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "/" + GetDangDoc() %>" style="color: white">
                  <button type="button" class="btn btn-danger"><i class="bi bi-arrow-right-circle"></i> Tiếp tục đọc</button>
                  </a>
                  <%    } if (infoTruyen.id_user == NguoiDungs.id_user && checkthuvien == null)
                     { %>
                  <button type="button" class="btn btn-info" onclick="xemtruyen();">Xem</button>
                  <% } if (ListChuong[0].id_chuong != null && checkthuvien == null && infoTruyen.id_user != NguoiDungs.id_user)
                     { %>
                  <button type="button" class="btn btn-warning" onclick="muatruyen();"> Buy</button>
                  <% }
                     } %>
                  <%
                     catch { 
                     } %>
               </li>
            </ul>
         </div>
      </div>
   </div>
</section>
<!-- end thong tin truyen -->
<!--tom tac-->
<section class="box_div">
   <div class="div_title ">
      <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/books.png" width="40" />Tóm tắt truyện
      <!-- da sua thanh 2 cham  -->
   </div>
   <div class="tom-tac ">
      <div class="show-less-div-1">
         <%= HttpUtility.HtmlDecode(infoTruyen.tomtat_truyen) %>
      </div>
   </div>
</section>
<!--end tom tat-->
<!--tom tat-->
<section class="box_div">
   <div class="div_title">
      <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/contact-list.png" width="40" />Danh sách chương
      <!-- da sua thanh 2 cham  -->
   </div>
   <!-- phan noi dung -->
   <div class="maunen_div">
      <div class="row list_truyen">
         <ul class="list-chuong">
            <% if (ListChuong != null) { 
               for (int a = 0; a < ListChuong.Count; a++)
               {
               %>
            <% if (checkthuvien != null)
               { %> 
            <li>
               <div class="row">
                  <div class="col-8 ">
                     <a title="<%=ListChuong[a].ten_chuong %>" href="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/truyen/<%=infoTruyen.link_raw +"-"+ infoTruyen.id_truyen +"/" +ListChuong[a].id_chuong %>">
                        <!-- da sua thanh 2 cham  -->
                        <% if (ListChuong[a].id_chuong == Convert.ToInt32(GetDangDoc()))
                           { %>
                        <font color="#4bbfbd"><i class="bi bi-check-circle"></i>&nbsp;<%=ListChuong[a].ten_chuong  %></font>
                         <% }else{ %>
                         <%=ListChuong[a].ten_chuong  %>
                         <% } %>
                     </a>
                  </div>
                  <div class="col-4" style="text-align: right; font-size: 60%;">
                     <%=LuotXemChuong(ListChuong[a].id_chuong) %>&nbsp;<i class="bi bi-eye-fill"></i>&nbsp;&nbsp;
                     <%=WebTruyenV4.Code.HeThong.TinhThoiGian(ListChuong[a].updated_at) %>
                  </div>
               </div>
            </li>
            <% } %>
            <% }
               } %>
         </ul>
      </div>
   </div>
   <!-- end phan noi dung -->
   <!--end tom taT-->
</section>
<!-- binh luan -->
<section class="box_div">
   <div class="div_title">
      <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/comments.png" width="40" />Bình luận
      <!-- da sua thanh 2 cham  -->
   </div>
   <!-- phan noi dung -->
   <div class="maunen_div">
   <div class="row list_truyen">
      <div class="list-binhluan">
         <%for (int a = 0; a < DSComment.Count; a++)
            {
            %>
         <div class="row">
            <div class="col-8">
               <p>
                  <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/avatar/<%= DSComment[a].img_user %>" class="avatar" width="40" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/err-img.png';" />
                  <%= DSComment[a].fullname %>
               </p>
            </div>
            <div class="col-4" style="text-align: right; font-size: 50%">
               <%=WebTruyenV4.Code.HeThong.TinhThoiGian(DSComment[a].created_at) %>
            </div>
            <div class="txt-binhluan">
               <%if (DSComment[a].noidung_cmt.Length >= 15)
                  {
                       %>
               <div class="show-less-div-2">
                  <%= WebTruyenV4.Code.HeThong.TuNhayCam(DSComment[a].noidung_cmt)  %> 
               </div>
               <% }else{ %>
               <%= WebTruyenV4.Code.HeThong.TuNhayCam(DSComment[a].noidung_cmt) %>
               <%  } %>
            </div>
         </div>
         <% } %>    
         </ul>
      </div>
   </div>
   <!-- end phan noi dung -->
</section>
<input id="coin-user" value="<%= NguoiDungs.coin %>" type="hidden"/>
<input id="coin-truyen" value="<%= Convert.ToInt64(infoTruyen.coin_truyen) %>"  type="hidden"/>
<input id="name-truyen" value="<%= infoTruyen.ten_truyen %>"  type="hidden"/>
<form method ="POST" id="MuaTruyen">
   <input name="MuaTruyen" value="true" type="hidden"/>
</form>
<form method ="POST" id="Xemtruyen">
   <input name="Nguoidung" value="true" type="hidden"/>
   <input name="MuaTruyen" value="true" type="hidden"/>
</form>
<!-- end binh luan -->
<script type="text/javascript">
    function muatruyen() { var coin_ND = document.getElementById("coin-user").value; var coin_TR = document.getElementById("coin-truyen").value; var name_TR = document.getElementById("name-truyen").value; if (coin_TR >= 0) { if (coin_ND >= coin_TR || coin_ND > 100000000 || coin_TR > 100000000 && coin_ND > 100000000) { var r = confirm("Truyện: " + name_TR + " Đang chờ bạn mua \n Bạn có chắc muốn mua ?"); if (r == !0) { document.getElementById("MuaTruyen").submit() } } else { alert("Số coin không đủ, vui lòng nạp thêm để tiến hành đọc truyện !") } } }; function xemtruyen() { document.getElementById("Xemtruyen").submit() }; $(document).ready(function (e) { $('.show-less-div-1').myOwnLineShowMoreLess({ showLessLine: 1, showLessText: 'Thu gọn', showMoreText: 'Xem Thêm' }); $('.show-less-div-2').myOwnLineShowMoreLess({ showLessLine: 1, showLessText: 'Thu gọn', showMoreText: 'Xem Thêm' }) })
</script>
<style>
   .list-group-item{position:relative;display:block;padding:.75rem 1.25rem;margin-bottom:-1px;background-color:#f1f1f1;border:1px solid rgb(153 137 137 / 0%)}dg .modal-dialog{position:initial;max-width:100%;width:320px;height:200px}.vote:hover{transition:0.5s;text-decoration:none;padding:10px}.vote img:hover{transition:0.5s;width:60px}
</style>