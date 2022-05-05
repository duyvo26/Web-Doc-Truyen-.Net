<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiThongTinTruyen.ascx.cs" Inherits="WebTruyenV6.Control_NguoiDung.TrangTruyen.UiThongTinTruyen" %>
<input id="title" value="<%=infoTruyen.ten_truyen %>" type="hidden" />
<script>
    document.title = "Truyện " + document.getElementById("title").value;
</script>
<!-- Danh sach noi dung -->
<section class="box_div maunen_div">
   <!-- thanh tim kiem -->         
   <div style="margin-bottom: 20px;" ></div>
   <!-- thanh tim kiem -->  
   <!-- thong tin truyen -->
   <div class="div_title " style="margin-bottom: 25px">
      <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/mortarboard.png" width="40" />Đọc truyện
      <!-- da sua thanh 2 cham  -->
      <%if (Convert.ToInt32(NguoiDungs.quyen_han) != 0)
         { %>
      <div>
         <img title="Quản lý truyện" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/edit-icon.png"  width="40"  id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <!-- da sua thanh 2 cham  -->
         <div class="dropdown-menu" >
            <a style="padding: 0px;" href="../cp-admin/truyen/capnhat-<%=infoTruyen.id_truyen %>">Chỉnh sửa truyện</a>
            <a style="padding: 0px;" href="../cp-admin/chuong/danhsach-<%=infoTruyen.id_truyen %>">Danh sách chương</a>
            <a style="padding: 0px;" href="../cp-admin/truyen/danhsach?Xoa=<%=infoTruyen.id_truyen %>" onclick="return confirm('Bạn có chắc muốn xoá truyện: <%= infoTruyen.ten_truyen %>')">Xoá truyện</a>
         </div>
      </div>
      <br>
      <%} %>
   </div>
   <div class="d-flex justify-content-start">
      <div class="row" style="width: 100%">
         <div class="col-sm-4">
            <div class="d-flex justify-content-center">
               <img class="img-truyen" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/truyen/<%=infoTruyen.img_truyen %>" onError="this.onerror=null;this.src='<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/err-img.png';" />
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
                     <span class="badge badge-success"><a href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/timkiemtruyen?TheLoai=<%=TruyenTL[i].id_theloai%>&page=0&TheLoais=false"><%=TruyenTL[i].ten_theloai%></a></span>
                     <% } %>
                  </div>
               </li>
               <li class="list-group-item">
                  <div class="lis_truyen"><i class="bi bi-person-lines-fill"></i>&nbsp;Tác giả:&nbsp;
                     <a href="../timkiemtruyen?page=0&TenTruyen=<%=infoTruyen.tac_gia%>"><%=infoTruyen.tac_gia%></a>
                  </div>
               </li>
               <li class="list-group-item">
                  <div class="lis_truyen"><i class="bi bi-person-lines-fill"></i>&nbsp;Người đăng:&nbsp;
                     <%=GetName(infoTruyen.id_user)%>
                  </div>
               </li>
               <li class="list-group-item">
                  <div class="lis_truyen"><i class="bi bi-eye"></i>&nbsp;Lượt xem:&nbsp;<%=LuotXem %></div>
               </li>
               <li class="list-group-item">
                  <div class="lis_truyen"><i class="bi bi-caret-right"></i>&nbsp;Tổng số chương:&nbsp;<%=SumChuong %></div>
               </li>
               <li class="list-group-item">
                  <div class="lis_truyen"><i class="bi bi-calendar-week"></i>&nbsp;Ngày đăng:&nbsp;<%=infoTruyen.created_at.ToString("dd/MM/yyyy HH:mm:ss") %></div>
               </li>
               <li class="list-group-item">
                  <div class="lis_truyen"><i class="bi bi-calendar-week"></i>&nbsp;Cập nhật lần cuối:&nbsp;
                     <%=WebTruyenV6.Code.HeThong.TinhThoiGian(infoTruyen.updated_at) %>
                  </div>
               </li>
               <li class="list-group-item">
                  <div class="lis_truyen">
                     <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/Money.png" width="30" />
                     &nbsp;
                     <%=string.Format("{0:#,##0}", Convert.ToDecimal(infoTruyen.coin_truyen))  %>
                  </div>
               </li>
               <li class="list-group-item">
                  <% try {
                     if (checkthuvien != null)
                     { %>
                  <a href="<%= infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "/" + getChuongMax() %>" style="color: white">
                  <button type="button" class="btn btn-info"><i class="bi bi-arrow-right-circle"></i> Đọc chương mới nhất</button>
                  </a>
                  <a href="<%= infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "/" + GetDangDoc() %>" style="color: white">
                  <button type="button" class="btn btn-danger"><i class="bi bi-arrow-right-circle"></i> Tiếp tục đọc</button>
                  </a>
                  <%    } if (infoTruyen.id_user == NguoiDungs.id_user && checkthuvien == null)
                     { %>
                  <button type="button" class="btn btn-info" onclick="xemtruyen();">Xem</button>
                  <% } if ( checkthuvien == null && infoTruyen.id_user != NguoiDungs.id_user)
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
      <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/books.png" width="40" />Tóm tắt truyện
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
<!--danh sach chuong-->
<% if (checkthuvien != null)
   { %> 
<section class="box_div">
   <div class="div_title" id="danhsachchuong">
      <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/lists.png" width="40" />Danh sách chương
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
            <li>
               <div class="row">
                  <div class="col-8 ">
                     <a title="<%=ListChuong[a].ten_chuong %>" href="<%=WebTruyenV6.Code.HeThong.url() %>/truyen/<%=infoTruyen.link_raw +"-"+ infoTruyen.id_truyen +"/" +ListChuong[a].id_chuong %>">
                        <!-- da sua thanh 2 cham  -->
                        <% int dang_doc = 0;
                           try
                           {
                               dang_doc = Convert.ToInt32(GetDangDoc());
                           }
                           catch { }
                           
                           if (ListChuong[a].id_chuong == dang_doc)
                              { %>
                        <font color="#4bbfbd"><i class="bi bi-check-circle"></i>&nbsp;<%=ListChuong[a].ten_chuong%></font>
                        <% }
                           else
                           { %>
                        <%=ListChuong[a].ten_chuong%>
                        <% }
                           %>
                     </a>
                  </div>
                  <div class="col-4" style="text-align: right; font-size: 60%;">
                     <%=LuotXemChuong(ListChuong[a].id_chuong) %>&nbsp;<i class="bi bi-eye-fill"></i>&nbsp;&nbsp;
                     <%=WebTruyenV6.Code.HeThong.TinhThoiGian(ListChuong[a].updated_at) %>
                  </div>
               </div>
            </li>
            <% }
               }else{ %>
            <center>
               <h1>
                  <div id="noti_chuong"></div>
               </h1>
            </center>
            <% }  %>
         </ul>
      </div>
      <!-- phan trang -->
      <div class="d-flex justify-content-center">
         <nav aria-label="Page navigation example">
            <ul class="pagination">
               <%if (ListChuong != null)
                  { %>
               <%if( page_number == 0){ %>
               <li class="page-item active"><a class="page-link" href="?&page=0#danhsachchuong">0</a></li>
               <% }else{ %>
               <li class="page-item"><a class="page-link" href="?&page=0#danhsachchuong">0</a></li>
               <% }  %>
               <%if (page_number != 0 && page_number - 4 >= 0)
                  { %>
               <li class="page-item"><a class="page-link" href="?&page=<%=page_number - 1 %>#danhsachchuong">...</a></li>
               <% }  %>
               <% if (ListChuong.Count > 0 && SumPage > 0)
                  {
                      for (int i = page_number; i <= page_number + 3; i++)
                      { %>
               <%if (i == 0 || i == SumPage || i > SumPage) { continue; } %>
               <%if (i - 3 > page_number)
                  { %>
               <li class="page-item "><a class="page-link" href="?&page=<%= i - 3  %>#danhsachchuong"><%= i - 3 %></a></li>
               <%} else{ %>
               <%if(i == page_number){ %>
               <li class="page-item active"><a class="page-link" href="?&page=<%=i %>#danhsachchuong"><%= i %></a></li>
               <% }else{ %>
               <li class="page-item"><a class="page-link" href="?&page=<%=i %>#danhsachchuong"><%= i %></a></li>
               <% }  %>
               <%} %>
               <% }  %>
               <%if (page_number < SumPage - 3)
                  { %>
               <li class="page-item"><a class="page-link" href="?&page=<%=page_number + 4 %>#danhsachchuong">...</a></li>
               <% }  %>
               <%} %>
               <%if (page_number != SumPage)  { %>
               <%if (page_number == SumPage) { %>
               <li class="page-item active"><a class="page-link" href="?&page=<%=SumPage %>#SumPage"><%=SumPage %></a></li>
               <% }else{ %>
               <li class="page-item"><a class="page-link" href="?&page=<%=SumPage %>#SumPage"><%=SumPage %></a></li>
               <% }  %>
               <%} %>
               <% } %>
            </ul>
         </nav>
      </div>
      <!-- phan trang -->
   </div>
   <!-- end phan noi dung -->
   <!--end tom taT-->
</section>
<%   } %>
<!--danh sach chuong-->
<!-- binh luan -->
<section class="box_div maunen_div" id="binhluan">
   <div class="div_title">
      <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/comments.png" width="40" />Bình luận
      <!-- da sua thanh 2 cham  -->
   </div>
   <!-- phan noi dung -->
   <div class="row list_truyen">
      <div class="list-binhluan" style=" max-height: 700px;">
         <%for (int a = 0; a < DSComment.Count; a++)
            {
            %>
         <div class="row">
            <div class="col-8">
               <p title="#<%=DSComment[a].id_user %>">
                  <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/avatar/<%= DSComment[a].img_user %>" class="avatar" width="40" onError="this.onerror=null;this.src='<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/err-img.png';" />
                  <%= DSComment[a].fullname %>
                  <%=WebTruyenV6.Code.NguoiDung.HuyHieuUser(GetQuyenHan(Convert.ToInt32(DSComment[a].id_user))) %>
                  <%if(infoTruyen.id_user == DSComment[a].id_user){ %>
                  <span class="badge badge-warning">Người đăng</span>
                  <%} %>
               </p>
            </div>
            <div class="col-4" style="text-align: right; font-size: 50%">
               <%=WebTruyenV6.Code.HeThong.TinhThoiGian(DSComment[a].created_at) %>
            </div>
            <div style="font-size:10px">#<%=DSComment[a].id_cmt %>&emsp; </div>
            <div class="txt-binhluan">
               <a href="<%= "../truyen/" + LinkRaw(DSComment[a].id_truyen) + "-"+ DSComment[a].id_truyen + "/"+  DSComment[a].id_chuong%>">
                  <%if (DSComment[a].noidung_cmt.Length >= 45)
                     {%>
                  <div class="show-less-div-2">
                     <%= WebTruyenV6.Code.HeThong.TuNhayCam(DSComment[a].noidung_cmt)  %> 
                  </div>
                  <% }else{ %>
                  <%= WebTruyenV6.Code.HeThong.TuNhayCam(DSComment[a].noidung_cmt) %>
                  <%  } %>
               </a>
            </div>
         </div>
         <% } %>    
      </div>
   </div>
   <!-- end phan noi dung -->
</section>
<form></form>
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
    function call_chuong() {
        document.getElementById("noti_chuong").innerHTML = "Đang tải danh sách chương ...";
        window.location.href = '?LoadChuong=true#danhsachchuong'
    }

    function muatruyen() {
        const coin_ND = document.getElementById("coin-user").value;
        const coin_TR = document.getElementById("coin-truyen").value;
        var name_TR = document.getElementById("name-truyen").value;
        var mess = "";
        if (coin_TR >= 0) {
            if (coin_ND - coin_TR >= 0) {
                if (coin_TR > 0) {
                    mess = "Truyện: " + name_TR + " Đang chờ bạn mua \n Bạn có chắc muốn mua ? \n Khi mua có cơ hội nhận được 1-10% của số coin của bộ truyện. "
                } else {
                    mess = "Truyện: " + name_TR + " Đang chờ bạn mua \n Bạn có chắc muốn mua ? ";
                }
                var r = confirm(mess);
                if (r == !0) {
                    document.getElementById("MuaTruyen").submit()
                }
            } else {
                alert("Số coin không đủ, vui lòng nạp thêm để tiến hành đọc truyện !")
            }
        }
    };

    function xemtruyen() {
        document.getElementById("Xemtruyen").submit()
    };
    $(document).ready(function (e) {
        $('.show-less-div-1').myOwnLineShowMoreLess({
            showLessLine: 1,
            showLessText: 'Thu gọn',
            showMoreText: 'Xem Thêm'
        });
        $('.show-less-div-2').myOwnLineShowMoreLess({
            showLessLine: 1,
            showLessText: 'Thu gọn',
            showMoreText: 'Xem Thêm'
        })
    })

</script>
<style>
   .list-group-item{position:relative;display:block;padding:.75rem 1.25rem;margin-bottom:-1px;background-color:#f1f1f1;border:1px solid rgb(153 137 137 / 0%)}dg .modal-dialog{position:initial;max-width:100%;width:320px;height:200px}.vote:hover{transition:0.5s;text-decoration:none;padding:10px}.vote img:hover{transition:0.5s;width:60px}
</style>