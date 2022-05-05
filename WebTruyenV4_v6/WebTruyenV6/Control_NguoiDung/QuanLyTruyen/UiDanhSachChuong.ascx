<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiDanhSachChuong.ascx.cs" Inherits="WebTruyenV6.Control_NguoiDung.QuanLyTruyen.UiDanhSachChuong" %>
<script>
    document.title = "Danh Sách Chương";
</script>
<section class="box_div maunen_div">      
    <div class="row" >
    <!--Danh sách Chương -->
    <div class="col-sm-9"  >
        <div class="box_div">
            <div class="div_title"   >
                <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/books.png"  width="40"/> <!-- da sua thanh 2 cham  -->
                Danh sách chương
            </div>
            <!-- nội dung ds chương -->
            <asp:Label ID="noti" runat="server"> </asp:Label>
            <div class="maunen_div">
                <div class="row list_truyen" id="overflow">
                    <ul>
                        <% for (int a = 0; a < DSC.Count; a++){ %>
                        <li>
                            <div class="row">
                                <div class="col-10" style="font-size:18px;">
                                    <a href="<%=WebTruyenV6.Code.HeThong.url() %>/Truyen/<%=infoTruyen.link_raw + "-" + infoTruyen.id_truyen + "/" + DSC[a].id_chuong%>">
                                        <!-- da sua thanh 2 cham  -->
                                        <% RutGon_TieuDe(DSC[a].ten_chuong, 70); %>
                                    </a>
                                </div>
                                <div class="col-2" style="text-align: right;">
                                    <span class="btn-truyennguoidung">
                                        <div class="dropdown">
                                            <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/edit-icon.png" width="40" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" style="background-color:#2e2e2e;color:white" href="<%=WebTruyenV6.Code.HeThong.url() %>/taikhoan/capnhatchuong-<%=DSC[a].id_chuong%>">
                                                    <!-- da sua thanh 2 cham  -->
                                                    Chỉnh sửa chương
                                                </a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" style="background-color:#2e2e2e;color:white" href="?XoaChuong=<%=DSC[a].id_chuong%>" onclick="return confirm('Bạn có chắc muốn xoá chương: <%= DSC[a].ten_chuong %>')">Xóa chương</a>
                                            </div>
                                        </div>
                                    </span>
                                </div>
                            </div>
                        </li>
                        <%} %> 
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--END Danh sách Chương -->
    <!--Thông tin Chương -->
    <div class="col-sm-3">
        <div class="box_div" >
            <!-- Tiêu đề của Thông tin chương -->
            <div class="div_title">
                <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/contact-list.png"  width="40"/>Thông tin của truyện <!-- da sua thanh 2 cham  -->
            </div>
            <!-- END Tiêu đề của Thông tin chương -->
            <!-- nội dung của thông tin chương  -->
            <div class="maunen_div">
                <div class="d-flex justify-content-center">
                    <div class="row list_truyen">
                        <center >
                            <img class="card-img-top" style="max-width: 220px" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/truyen/<%= infoTruyen.img_truyen %>" onError="this.onerror=null;this.src='<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/err-img.png';">
                            <div class="card-body">
                                <h5 class="card-title"><%=infoTruyen.ten_truyen %></h5>
                                <p class="card-text"><%= infoTruyen.updated_at %></p>
                                <a href="<%=WebTruyenV6.Code.HeThong.url() %>/taikhoan/themchuong-<%=infoTruyen.id_truyen%>#" style="color: white;" class="btn btn-dark">Thêm Chương</a>
                            </div>
                        </center>
                    </div>
                </div>
            </div>
        </div>
        <!--END Thông tin Chương -->
    </div>
</section>
<style>
    .img-chuong{width:120px;height:150px;margin:auto}.nd-tt-chuong{font-size:20px;margin:auto;font-style:italic;display:block}#overflow{height:600px;overflow:scroll}.btn-truyennguoidung{position:absolute;right:0}*,::after,::before{box-sizing:border-box}style attribute{text-align:right}.list_truyen ul li{overflow-x:clip}
</style>