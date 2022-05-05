<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiTimKiemTruyen.ascx.cs" Inherits="WebTruyenV6.Control_NguoiDung.UiTimKiemTruyen" %>
<form></form>
<!-- -->
<!-- Khung tim kiem -->
<!-- thanh tim kiem -->
<section class="box_div maunen_div">
   <div class="search">
      <div class="row">
         <div class="col-md-12">
            <div>
               <div class="search-2">
                  <i class='bx bxs-map'></i> 
                  <form method="get" action="#">
                     <input type="hidden" name="page" value="0" >
                     <input type="text" name="TenTruyen" placeholder="Tên truyện hoặc Tác giả">  <button type="submit">Tìm</button>  
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- thanh tim kiem -->   
   <!--noi dung -->
   <div class="row">
   <!-- noi dung thanh ben trai -->
   <div class="col-sm-8">
      <!--thanh tieu de -->
      <div class="box_div maunen_div">
         <div class="div_title">
            <img src =" <%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/search-w.png"  width="40" onError="this.onerror=null;this.src='<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/err-img.png';" />
            <!--tim kiem theo the loai --> 
            <%
               if (timKiemTheLoai != null) { 
               string mota = ""; if (timKiemTheLoai.Count > 0)
               { 
                 foreach (var nametl in TheLoai) { %>
            <%if (nametl.id_theloai == Convert.ToInt32(Request.QueryString["TheLoai"]))
               { %> 
            Tìm kiếm thể loại: <%=nametl.ten_theloai%>
            <% mota = nametl.mota_theloai; %>
            <% } } } %>
         </div>
         <div>
            <%if (mota != "")
               { %> 
            <div style="background: aliceblue; padding: 22px; color: black">
               <%= mota %>
            </div>
            <% } } %>
            <!--tim kiem theo the loai --> 
            <!--tim kiem theo the loais --> 
            <%
               if (timKiemTheLoais != null) { %>Tìm kiếm thể loại:            
         </div>
         <div>
            <div style="background: aliceblue; padding: 22px; color: black">
               <%=Request.QueryString["TenTL"] %>
            </div>
            <%   } %>
            <!--tim kiem theo the loais --> 
            <!--tim kiem theo ten truyen -->               <%
               if (timKiemTheoTen != null)
               { %>
            Tìm kiếm : <%=nametruyen %>            
         </div>
         <div>
            <%} %>
            <!--tim kiem theo ten truyen --> 
            <%
               if (timKiemCoin != null)
                        { %>
            Coin :
         </div>
         <div>
            <div style="background: aliceblue; padding: 22px; color: black">
               Giao động:&nbsp;<%=string.Format("{0:#,##0}", Convert.ToDecimal(min))  %>-<%=string.Format("{0:#,##0}", Convert.ToDecimal(max))  %>
            </div>
            <%} %>
            <!--tim kiem theo ten truyen -->
         </div>
         <!-- end thanh tieu de -->   
         <!-- phan noi dung -->
         <div class="row list_truyen">
            <%    if (timKiem != null) { 
               for (int a = 0; a < timKiem.Count; a++) // tim kiem tat ca
               { %>
            <div class="col-6 col-sm-4 col-md-4 col-lg-3 col-xl-3" style="margin-top: 2rem;">
               <div class="card">
                  <a href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiem[a].link_raw + "-" + timKiem[a].id_truyen%>">
                     <!-- da sua thanh 2 cham  -->
                     
                 <% if (Convert.ToInt32(timKiem[a].status_) == 0)                   { %>
                  <img  style="margin-bottom: calc(50% - 50px); width: 150px; background: #ff6a00a6; padding: 10px; margin-left: calc(50% - 75px);  margin-top: calc(50% - 50px);border-radius: 50%;" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/truyen-khoa.png" />
                  <% }else{ %>
                      <img class="card-img-top" src="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/truyen/<%= timKiem[a].img_truyen%>" onError="this.onerror=null;this.src='<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/err-img.png';" />
                  <% } %>

                  </a>
                  <div class="card-body" style="font-weight: 600; font-size: 16px">
                     <a title="<%=timKiem[a].ten_truyen %>" href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiem[a].link_raw + "-" + timKiem[a].id_truyen%>">
                        <!-- chỉnh sửa dòng 46 -->
                        <%RutGon_TieuDe(timKiem[a].ten_truyen, 40); %>
                     </a>
                  </div>
               </div>
            </div>
            <% } %>
            <%if (timKiem.Count == 0)
               { %> 
            <center>Không tìm thấy nội dung cần tìm !!!</center>
            <%} 
               } %>  
            <!------------------------ -->
            <%   
               if (timKiemTheoTen != null)
               {
                   for (int a = 0; a < timKiemTheoTen.Count; a++) // tim kiem theo ten
                   { %>
            <div class="col-6 col-sm-4 col-md-4 col-lg-3 col-xl-3" style="margin-top: 2rem;">
               <div class="card">
                  <a href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiemTheoTen[a].link_raw + "-" + timKiemTheoTen[a].id_truyen%>">
                     <!-- da sua thanh 2 cham  -->

                   <% if (Convert.ToInt32(timKiemTheoTen[a].status_) == 0)    { %>
                  <img  style="margin-bottom: calc(50% - 50px); width: 150px; background: #ff6a00a6; padding: 10px; margin-left: calc(50% - 75px);  margin-top: calc(50% - 50px);border-radius: 50%;" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/truyen-khoa.png" />
                  <% }else{ %>
                       <img class="card-img-top" src="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/truyen/<%= timKiemTheoTen[a].img_truyen%>" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/www/err-img.png';" />
                  <% } %>

                      </a>
                  <div class="card-body" style="font-weight: 600; font-size: 16px">
                     <a title="<%=timKiemTheoTen[a].ten_truyen %>" href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiemTheoTen[a].link_raw + "-" + timKiemTheoTen[a].id_truyen%>">
                        <!-- da sua thanh 2 cham  -->
                        <!-- chỉnh sửa dòng 46 -->
                        <%RutGon_TieuDe(timKiemTheoTen[a].ten_truyen, 40); %>
                     </a>
                  </div>
               </div>
            </div>
            <% } %>
            <%if (timKiemTheoTen.Count == 0)
               { %> 
            <center>Không tìm thấy nội dung cần tìm !!!</center>
            <%} 
               }
               %>  
            <!------------------------ -->
            <%  
               if (timKiemTheLoai != null)
               {
                   for (int a = 0; a < timKiemTheLoai.Count; a++) // tim kiem theo the loai
                   { %>
            <div class="col-6 col-sm-4 col-md-4 col-lg-3 col-xl-3" style="margin-top: 2rem;">
               <div class="card">
                  <a href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiemTheLoai[a].link_raw + "-" + timKiemTheLoai[a].id_truyen%>">
                
                       <% if (Convert.ToInt32(timKiemTheLoai[a].status_) == 0)  { %>
                  <img  style="margin-bottom: calc(50% - 50px); width: 150px; background: #ff6a00a6; padding: 10px; margin-left: calc(50% - 75px);  margin-top: calc(50% - 50px);border-radius: 50%;" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/truyen-khoa.png" />
                  <% }else{ %>
                    <img class="card-img-top" src="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/truyen/<%= timKiemTheLoai[a].img_truyen%>" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/www/err-img.png';" />
                <% } %>
                      
                      
                       </a>
                  <div class="card-body" style="font-weight: 600; font-size: 16px">
                     <a title="<%=timKiemTheLoai[a].ten_truyen %>" href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiemTheLoai[a].link_raw + "-" + timKiemTheLoai[a].id_truyen%>">
                     <%RutGon_TieuDe(timKiemTheLoai[a].ten_truyen, 40); %>
                     </a>
                  </div>
               </div>
            </div>
            <% 
               } %>
            <%if(timKiemTheLoai.Count == 0 ){ %> 
            <center>Không tìm thấy nội dung cần tìm !!!</center>
            <%} 
               } %>
            <!------------------------ -->
            <%  
               if (timKiemCoin != null)
                 {
                     for (int a = 0; a < timKiemCoin.Count; a++) // tim kiem theo the loai
                     { %>
            <div class="col-6 col-sm-4 col-md-4 col-lg-3 col-xl-3" style="margin-top: 2rem;">
               <div class="card">
                  <a href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiemCoin[a].link_raw + "-" + timKiemCoin[a].id_truyen%>">
                 
                   <% if (Convert.ToInt32(timKiemCoin[a].status_) == 0)   { %>
                  <img  style="margin-bottom: calc(50% - 50px); width: 150px; background: #ff6a00a6; padding: 10px; margin-left: calc(50% - 75px);  margin-top: calc(50% - 50px);border-radius: 50%;" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/truyen-khoa.png" />
                  <% }else{ %>
                 <img class="card-img-top" src="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/truyen/<%= timKiemCoin[a].img_truyen%>" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/www/err-img.png';" />
                   <% } %>


                  </a>
                  <div class="card-body" style="font-weight: 600; font-size: 16px">
                     <a title="<%=timKiemCoin[a].ten_truyen %>" href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiemCoin[a].link_raw + "-" + timKiemCoin[a].id_truyen%>">
                     <%RutGon_TieuDe(timKiemCoin[a].ten_truyen, 40); %>
                     </a>
                  </div>
               </div>
            </div>
            <% 
               } %>
            <%if (timKiemCoin.Count == 0)
               { %> 
            <center>Không tìm thấy nội dung cần tìm !!!</center>
            <%} 
               } %>
            <!------------------------ -->
            <%  
               if (timKiemTheLoais != null)
               {
                 for (int a = 0; a < timKiemTheLoais.Count; a++) // tim kiem theo the loai
                 { %>
            <div class="col-6 col-sm-4 col-md-4 col-lg-3 col-xl-3" style="margin-top: 2rem;">
               <div class="card">
                  <a href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiemTheLoais[a].link_raw + "-" + timKiemTheLoais[a].id_truyen%>">
                  <img class="card-img-top" src="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/truyen/<%= timKiemTheLoais[a].img_truyen%>" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/www/err-img.png';" />
                  </a>
                  <div class="card-body" style="font-weight: 600; font-size: 16px">
                     <a title="<%=timKiemTheLoais[a].ten_truyen %>" href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiemTheLoais[a].link_raw + "-" + timKiemTheLoais[a].id_truyen%>">
                     <%RutGon_TieuDe(timKiemTheLoais[a].ten_truyen, 40); %>
                     </a>
                  </div>
               </div>
            </div>
            <% 
               } %>
            <%if (timKiemTheLoais.Count == 0)
               { %> 
            <center>Không tìm thấy nội dung cần tìm !!!</center>
            <%} 
               } %>
            <!------------------------ -->
         </div>
         <!-- ko tim thay noi dung gi -->
         <%if (timKiemTheLoai == null && timKiemTheLoai == null && timKiemTheLoais == null && timKiemTheoTen == null && timKiem == null && timKiemCoin == null)
            {   %>
         <center>Bạn cần tìm ?</center>
         <%} %>
         <!-- phan trang -->
         <div class="d-flex justify-content-center">
            <nav aria-label="Page navigation example">
               <ul class="pagination">
                  <!-- phan trang xem them -->
                  <%if (timKiem != null)
                     {
                         if (timKiem.Count > 0 && SumPage > 0)
                         {
                             for (int i = 0; i <= SumPage; i++)
                             { %>
                  <li class="page-item"><a class="page-link" href="?xemthem=true&page=<%=i%>"><%= i%></a></li>
                  <% }
                     }
                     } %>
                  <!-- phan trang xem them -->
                  <!-- phan trang theo ten -->
                  <%if (timKiemTheoTen != null)
                     {
                         if (timKiemTheoTen.Count > 0 && SumPage > 0)
                         {
                             string data = Request.QueryString["TenTruyen"];
                     
                             for (int i = 0; i <= SumPage; i++)
                             { %>
                  <li class="page-item"><a class="page-link" href="?tentruyen=<%=data%>&page=<%=i%>"><%= i%></a></li>
                  <% }
                     }
                     } %>
                  <!-- phan trang theo ten -->
                  <!-- phan trang theo the loai -->
                  <%
                     if (timKiemTheLoai != null) { 
                     if (timKiemTheLoai.Count > 0 && SumPage > 0)
                     {
                       string data = Request.QueryString["TheLoai"];
                       
                       for (int i = 0; i <= SumPage; i++)
                       { %>
                  <li class="page-item"><a class="page-link" href="?TheLoai=<%=data %>&page=<%=i %>"><%= i %></a></li>
                  <% }
                     }
                     } %>
                  <!-- phan trang theo the loai -->
                  <!-- phan trang coin -->
                  <%if (timKiemCoin != null)
                     {
                         if (timKiemCoin.Count > 0 && SumPage > 0)
                         {
                             for (int i = 0; i <= SumPage; i++)
                             { %>
                  <li class="page-item"><a class="page-link" href="?coin=true&min=<%=min%>&max=<%= max%>&page=<%=i %>"><%= i %></a></li>
                  <% }
                     }
                     } %>
                  <!-- phan trang coin -->
                  <!-- phan timKiemTheLoais-->
                  <%
                     if (timKiemTheLoais != null) {
                         if (timKiemTheLoais.Count > 0 && SumPage > 0)
                     {
                       string data = Request.QueryString["TheLoai"];
                       
                       for (int i = 0; i <= SumPage; i++)
                       { %>
                  <li class="page-item"><a class="page-link" href="?TheLoai=<%=data %>&page=<%=i %>"><%= i %></a></li>
                  <% }
                     }
                     } %>
                  <!-- phan timKiemTheLoais -->
               </ul>
            </nav>
         </div>
         <!-- phan trang xem them -->     
         <!-- phan trang coin -->
      </div>
   </div>
   <!--end noi dung thanh ben trai -->
   <!-- noi dung thanh ben phai -->
   <div class="col-sm-4">
      <!-- khung lọc thể loại -->
      <div class="box_div maunen_div">
         <!--thanh tieu de -->
         <div class="div_title">
            <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/dollar.png"  width="40"/>
            Coin
         </div>
         <!-- end thanh tieu de --> 
         <div class="form-group" style="display: inline-flex;">
            <input type="number" id="min"class="form-control"  placeholder="Giá thấp nhất">
            <input type="number"  id="max" class="form-control" placeholder="Giá cao nhất">
            <button type="button" class="btn btn-info" onclick="TimCoin()">Tìm</button>
         </div>
         <!--tim kiem 1 the loai -->
         <div class="div_title">
            <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/books.png"  width="40"/>
            Danh sách thể loại
         </div>
         <!-- end thanh tieu de --> 
         <div class="list-theloai-timkiem" >
            <%if (TheLoai != null) { 
               for (int a = 0; a < TheLoai.Count; a++)
               { %>
            <label class="container_checkbox" title="<%= TheLoai[a].mota_theloai %>">
            &nbsp;<%= TheLoai[a].ten_theloai %>
            <input type="checkbox" title="<%= TheLoai[a].mota_theloai %>" value="<%= TheLoai[a].id_theloai %>"  onclick="TimTL(this.value);">
            <span class="checkmark"></span>
            </label>
            <% } }%> 
         </div>
         <!--end tim kiem 1 the loai -->
         <!--tim kiem nhieu the loai -->
         <div class="div_title" style="margin-top: 50px">
            <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/list (1).png"  width="40"/>
            Tìm kiếm nhiều thể loại
         </div>
         <!-- end thanh tieu de --> 
         <div class="list-theloai-timkiem" >
            <%if (TheLoai != null) { 
               for (int a = 0; a < TheLoai.Count; a++)
               { %>
            <label class="container_checkbox" title="<%= TheLoai[a].mota_theloai %>">
            &nbsp;<%= TheLoai[a].ten_theloai %>
            <input type="checkbox"  name="<%=TheLoai[a].ten_theloai %>" value="<%= TheLoai[a].id_theloai %>"  >
            <span class="checkmark" ></span>
            </label>
            <% } }%> 
         </div>
         <input type="button" onclick="LocTL()" value="Lọc thể loại" class="btn btn-danger" style="float: right; margin-top: 10px; margin-bottom: 20px"/>
         <!--tim kiem nhieu the loai -->
         <!--end khung the loai -->
      </div>
      <!--end noi dung thanh ben phai -->
   </div>
</section>
<script>
    var array_tenTL = []; function getCheckedCheckboxesFor() { var b = document.querySelectorAll('input[type="checkbox"]:checked'), a = []; Array.prototype.forEach.call(b, function (c) { a.push(c.value); array_tenTL.push(c.name) }); return a } function LocTL() { window.location.href = "timkiemtruyen?TheLoai=" + getCheckedCheckboxesFor() + "&page=0&&TheLoais=true&TenTL=" + array_tenTL } function TimTL(a) { window.location.href = "timkiemtruyen?TheLoai=" + a + "&page=0&TheLoais=false" } function TimCoin() { min = document.getElementById("min").value; max = document.getElementById("max").value; if (min == "" && max == "") { min = 0; max = 0 } if (min == "" && max != "") { min = 0 } if (min != "" && max == "") { max = min } if (min > 99999999) { min = 99999999 } if (max > 99999999) { max = 99999999 } window.location = "timkiemtruyen?coin=true&min=" + min + "&max=" + max + "&page=0" };
</script>