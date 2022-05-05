<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiThuVienDoc.ascx.cs" Inherits="WebTruyenV6.Control_NguoiDung.TaiKhoan.UiThuVienDoc" %>
<script>
    document.title = "Thư Viện Đọc";
</script>
<!-- noi dung -->
<section class="box_div maunen_div">
   <div class="div_title">
      <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/bookshelf.png"  width="40"/>Thư viện <!-- da sua thanh 2 cham  -->
   </div>
   <asp:Label ID="noti" runat="server"></asp:Label>
   <!-- phan noi dung -->
   <div class="maunen_div">
      <div class="row list_truyen">
         <% 
            if (ThuVien != null) { 
            for (int a = 0; a < ThuVien.Count; a++) { %>
         <div class="col-6 col-sm-5 col-md-3 col-lg-3 col-xl-2" style="margin-top: 2rem;">
                <% DateTime date1 = GetDateTimeTV(Convert.ToInt32(ThuVien[a].id_chuong)); %>
                <% DateTime date2 = GetDateTimeTruyen(Convert.ToInt32(ThuVien[a].id_truyen)); %>
            

               <% if (DateTime.Compare(date1, date2) <= 0) {%>
             <div class="card" style="background: #ff8d18;  padding: 1px;">
                <img title="Có Chương mới cập nhật !!!" style="position: absolute;" width="60" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/New.gif" />
                <% }else{ %>
                 <div class="card">
                 <%} %>
               <span class="btn-truyennguoidung">
                  <div class="dropdown" style="    padding: 0px 0px;">
                     <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/edit-icon.png"  width="40"  id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <!-- da sua thanh 2 cham  -->
                     <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a  onclick="return confirm('Bạn có chắc muốn xoá truyện: <%= ThuVien[a].ten_truyen %> ra khỏi thư viện ???')" class="dropdown-item" href="?XoaTruyen=<%=ThuVien[a].id_thuvien %>">Xoá khỏi thư viện</a>
                     </div>
                  </div>
               </span>
               <!--  <p class="dis_tap">Tên Tập 1: aaaa</p> -->
                              <a href="<%=WebTruyenV6.Code.HeThong.url() %>/truyen/<%=ThuVien[a].link_raw + "-" + ThuVien[a].id_truyen %>">
                  <!-- da sua thanh 2 cham  -->
                  <!--   <button class="time btn-danger">31 phút trước</button> -->
                  <img class="card-img-top" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/truyen/<%=ThuVien[a].img_truyen %>"onError="this.onerror=null;this.src='<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/err-img.png';" /><!-- da sua thanh 2 cham  -->
               </a>
                 <a title="<%=TenChuong(Convert.ToInt32(ThuVien[a].id_chuong)) %>" href="<%=WebTruyenV6.Code.HeThong.url() %>/truyen/<%=ThuVien[a].link_raw + "-" + ThuVien[a].id_truyen + "/" + ThuVien[a].id_chuong %>">
              <div class="tenchuong"><% RutGon_TieuDe(TenChuong(Convert.ToInt32(ThuVien[a].id_chuong)), 15); %></div>
                     </a>
               <div class="card-body">
                  <a title="<%=ThuVien[a].ten_truyen %>" href="<%=WebTruyenV6.Code.HeThong.url() %>/truyen/<%=ThuVien[a].link_raw + "-" + ThuVien[a].id_truyen %>">

                     <% RutGon_TieuDe(ThuVien[a].ten_truyen, 20); %>
                  </a>
               </div>
            </div>
         </div>
         <% } } %>   
      </div>
      <!-- phan trang xem them -->
      <div class="d-flex justify-content-center">
         <nav aria-label="Page navigation example">
            <ul class="pagination">
               <%if (ThuVien.Count > 0 && SumPage > 0)
                  {
                      for (int i = 0; i <= SumPage; i++)
                      { %>
               <li class="page-item"><a class="page-link" href="?page=<%=i %>"><%= i %></a></li>
               <% }
                  } %>
            </ul>
         </nav>
      </div>
      <!-- phan trang xem them -->
   </div>
   <!-- end phan noi dung -->
</section>
