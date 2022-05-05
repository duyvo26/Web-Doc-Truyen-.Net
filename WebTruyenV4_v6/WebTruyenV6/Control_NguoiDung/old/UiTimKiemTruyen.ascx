<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiTimKiemTruyen.ascx.cs" Inherits="WebTruyenV4.Control_NguoiDung.UiTimKiemTruyen" %>
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
        <div class="box_div">
            <div class="div_title">
                <img src =" <%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/search-w.png"  width="40" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/err-img.png';" />
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
            <div class="maunen_div">
                <%if (mota != "")
                    { %> 
                <div style="background: aliceblue; padding: 22px;">
                    <%= mota %>
                </div>
                <% } } %>
                <!--tim kiem theo the loai --> 
                <!--tim kiem theo ten truyen -->               <%
                    if (timKiemTheoTen != null)
                    { %>
                Tìm kiếm : <%=nametruyen %>
                <%} %>
                <!--tim kiem theo ten truyen --> 
                <!--tim kiem theo ten truyen -->               <%
                    if (timKiemCoin != null)
                             { %>
                Thấp nhất: <%=string.Format("{0:#,##0}", Convert.ToDecimal(min))  %> &emsp;&emsp; Cao nhất: <%=string.Format("{0:#,##0}", Convert.ToDecimal(max))  %>
                <%} %>
                <!--tim kiem theo ten truyen -->
            </div>
            <!-- end thanh tieu de -->   
            <!-- phan noi dung -->
            <div class="maunen_div">
                <div class="row list_truyen">
                    <%    if (timKiem != null) { 
                        for (int a = 0; a < timKiem.Count; a++) // tim kiem tat ca
                        { %>
                    <div class="col-6 col-sm-4 col-md-4 col-lg-3 col-xl-3" style="margin-top: 2rem;">
                        <div class="card">
                            <a href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiem[a].link_raw + "-" + timKiem[a].id_truyen%>">
                                <!-- da sua thanh 2 cham  -->
                                <!--   <button class="time btn-danger">31 phút trước</button> -->
                                <img class="card-img-top" src="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/truyen/<%= timKiem[a].img_truyen%>" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/err-img.png';" />
                            </a>
                            <div class="card-body">
                                <a title="<%=timKiem[a].ten_truyen %>" href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiem[a].link_raw + "-" + timKiem[a].id_truyen%>">
                                    <!-- da sua thanh 2 cham  -->
                                    <!-- chỉnh sửa dòng 46 -->
                                    <%RutGon_TieuDe(timKiem[a].ten_truyen, 20); %>
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
                    <%   
                        if (timKiemTheoTen != null)
                        {
                            for (int a = 0; a < timKiemTheoTen.Count; a++) // tim kiem theo ten
                            { %>
                    <div class="col-6 col-sm-4 col-md-4 col-lg-3 col-xl-3" style="margin-top: 2rem;">
                        <div class="card">
                            <a href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiemTheoTen[a].link_raw + "-" + timKiemTheoTen[a].id_truyen%>">
                                <!-- da sua thanh 2 cham  -->
                                <!--   <button class="time btn-danger">31 phút trước</button> -->
                                <img class="card-img-top" src="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/truyen/<%= timKiemTheoTen[a].img_truyen%>" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/www/err-img.png';" />
                            </a>
                            <div class="card-body">
                                <a title="<%=timKiemTheoTen[a].ten_truyen %>" href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiemTheoTen[a].link_raw + "-" + timKiemTheoTen[a].id_truyen%>">
                                    <!-- da sua thanh 2 cham  -->
                                    <!-- chỉnh sửa dòng 46 -->
                                    <%RutGon_TieuDe(timKiemTheoTen[a].ten_truyen, 20); %>
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
                    <%  
                        if (timKiemTheLoai != null)
                        {
                            for (int a = 0; a < timKiemTheLoai.Count; a++) // tim kiem theo the loai
                            { %>
                    <div class="col-6 col-sm-4 col-md-4 col-lg-3 col-xl-3" style="margin-top: 2rem;">
                        <div class="card">
                            <a href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiemTheLoai[a].link_raw + "-" + timKiemTheLoai[a].id_truyen%>">
                            <img class="card-img-top" src="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/truyen/<%= timKiemTheLoai[a].img_truyen%>" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/www/err-img.png';" />
                            </a>
                            <div class="card-body">
                                <a title="<%=timKiemTheLoai[a].ten_truyen %>" href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiemTheLoai[a].link_raw + "-" + timKiemTheLoai[a].id_truyen%>">
                                <%RutGon_TieuDe(timKiemTheLoai[a].ten_truyen, 20); %>
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
                    <%  
                        if (timKiemCoin != null)
                          {
                              for (int a = 0; a < timKiemCoin.Count; a++) // tim kiem theo the loai
                              { %>
                    <div class="col-6 col-sm-4 col-md-4 col-lg-3 col-xl-3" style="margin-top: 2rem;">
                        <div class="card">
                            <a href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiemCoin[a].link_raw + "-" + timKiemCoin[a].id_truyen%>">
                            <img class="card-img-top" src="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/truyen/<%= timKiemCoin[a].img_truyen%>" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/public/img/www/err-img.png';" />
                            </a>
                            <div class="card-body">
                                <a title="<%=timKiemCoin[a].ten_truyen %>" href="<%=Request.Url.GetLeftPart(UriPartial.Authority)%>/truyen/<%= timKiemCoin[a].link_raw + "-" + timKiemCoin[a].id_truyen%>">
                                <%RutGon_TieuDe(timKiemCoin[a].ten_truyen, 20); %>
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
                </div>
                <!-- ko tim thay noi dung gi -->
                <%if (timKiemTheLoai == null && timKiemTheLoai == null && timKiemTheoTen == null && timKiem == null && timKiemCoin == null)
                    {   %>
                <center>Bạn cần tìm ?</center>
                <%} %>
                <!-- phan trang xem them -->
                <div class="d-flex justify-content-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
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
                        </ul>
                    </nav>
                </div>
                <!-- phan trang xem them -->
                <!-- phan trang theo ten -->
                <div class="d-flex justify-content-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
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
                        </ul>
                    </nav>
                </div>
                <!-- phan trang theo ten -->
                <!-- phan trang theo the loai -->
                <div class="d-flex justify-content-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
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
                        </ul>
                    </nav>
                </div>
                <!-- phan trang theo the loai -->
                <!-- phan trang coin -->
                <div class="d-flex justify-content-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
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
                        </ul>
                    </nav>
                </div>
                <!-- phan trang coin -->
            </div>
        </div>
    </div>
    <!--end noi dung thanh ben trai -->
    <!-- noi dung thanh ben phai -->
    <div class="col-sm-4">
        <!-- khung lọc thể loại -->
        <div class="box_div maunen_div">
            <!--thanh tieu de -->
            <div class="div_title">
                <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/dollar.png"  width="40"/>
                Coin
            </div>
            <!-- end thanh tieu de --> 
            <div class="form-group" style="display: inline-flex;">
                <input type="number" id="min"class="form-control"  placeholder="Giá thấp nhất">
                <input type="number"  id="max" class="form-control" placeholder="Giá cao nhất">
                <button type="button" class="btn btn-info" onclick="TimCoin()">Tìm</button>
            </div>
            <!--thanh tieu de -->
            <div class="div_title">
                <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/books.png"  width="40"/>
                Danh sách thể loại
            </div>
            <!-- end thanh tieu de --> 
            <div class="list-theloai-timkiem" >
                <%if (TheLoai != null) { 
                    for (int a = 0; a < TheLoai.Count; a++)
                    { %>
                <label class="container_checkbox">
                &nbsp;<%= TheLoai[a].ten_theloai %>
                <input type="checkbox" name="theloai" value="<%= TheLoai[a].id_theloai %>"  onclick="getCheckedCheckboxesFor();">
                <span class="checkmark"></span>
                </label>
                <% } }%> 
            </div>
            <!-- <div class="d-flex justify-content-end" >
                <input type="button" onclick="TimTheLoai();" class="btn btn-dark btn_loc" value="Lọc" >
                </div> -->
        </div>
        <!--end khung the loai -->
        <!-- top view -->
        <!--box -->
    </div>
    <!--end noi dung thanh ben phai -->
</div>
</section>
<script>
    var array = []
    function getCheckedCheckboxesFor() { var checkboxes = document.querySelectorAll('input[name="' + 'theloai' + '"]:checked'), values = []; Array.prototype.forEach.call(checkboxes, function (el) { values.push(el.value); window.location.href = "timkiemtruyen?TheLoai=" + el.value + "&page=0" }); return values }
    function TimCoin() {
        min = document.getElementById("min").value; max = document.getElementById("max").value; if (min == "" && max == "") { min = 0; max = 0 }
        if (min == "" && max != "") min = 0; if (min != "" && max == "") max = min; if (min > 99999999) min = 99999999; if (max > 99999999) max = 99999999; window.location = "timkiemtruyen?coin=true&min=" + min + "&max=" + max + "&page=0"
    }
</script>