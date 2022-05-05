<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiThongTinNguoiDung.ascx.cs" Inherits="WebTruyenV4.Control_NguoiDung.TaiKhoan.UiThongTinNguoiDung" %>
<script>
    document.title = " Thông Tin Người Dùng";
</script>
<form></form>
<!-- noi dung -->
<section class="box_div maunen_div">
    <div class="div_title">
        <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/contact-list.png"  width="40"/>Thông tin người dùng <!-- da sua thanh 2 cham  -->
    </div>
    <div class="d-flex justify-content-start">
        <div class="row " style="width: 100%">
            <div class="col-sm-4">
                <div class="d-flex justify-content-center">
                    <div class="avatar-nguoidung">
                        <img class="img-avatar" src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/avatar/<%= NguoiDungs.img_user %>" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/avatar/avatar.jpg';" />
                        <strong><%= NguoiDungs.ten_dangnhap %></strong>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <ul class="list-group ">
                    <li class="list-group-item">
                        <div class="lis_truyen"><strong>Người dùng:</strong>&nbsp; <%= NguoiDungs.fullname %> </div>
                    </li>
                    <li class="list-group-item">
                        <div class="lis_truyen"><strong>Mail:</strong>&nbsp;<%= NguoiDungs.mail %></div>
                    </li>
                    <li class="list-group-item">
                        <div class="lis_truyen"><strong>Coin:</strong>&nbsp;<%=string.Format("{0:#,##0}", Convert.ToDecimal(NguoiDungs.coin))  %></div>
                    </li>
                    <li class="list-group-item">
                        <div class="lis_truyen"><strong>Ngày đăng ký:</strong>&nbsp; <%= NguoiDungs.created_at %></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <hr style="  border: 2px solid #181818;     background: #8a8a8a;">
    <div class="but-nguoidung ">
        <a href="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/taikhoan/capnhat">
            <!-- da sua thanh 2 cham  -->
            <button type="button" class="btn btn-info">Cập Nhật Tài Khoản</button>
        </a>
        <a href="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/taikhoan/themtruyen">
            <!-- da sua thanh 2 cham  -->
            <button type="button" class="btn btn-info">Đăng Truyện</button>
        </a>
        <a href="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/taikhoan/thuviendoc">
            <!-- da sua thanh 2 cham  -->
            <button type="button" class="btn btn-warning">Thư Viện Đọc</button>
        </a>
    </div>
</section>
<section class="box_div maunen_div">
    <div class="row">
        <div class=" col-sm-8 ">
            <div class="div_title">
                <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/books.png"  width="40"/>Truyện đã đăng <!-- da sua thanh 2 cham  -->
            </div>
            <!-- in ra thong bao -->
            <asp:Label ID="noti" runat="server" ></asp:Label>
            <!-- phan noi dung -->
            <div class="maunen_div">
                <div class="d-flex justify-content-end">
                    <form class="form-inline" >
                        <div class="form-group mx-sm-3 mb-2">
                            <input type="text" class="form-control" name="timtruyen" placeholder="Tên truyện">
                        </div>
                        <button type="submit" class="btn btn-primary">Tìm kiếm</button>
                    </form>
                </div>
                <div class="row list_truyen">
                    <% for (int a = 0; a < TruyenDaDang.Count; a++)
                        { %>
                    <div class="col-6 col-sm-4 col-md-4 col-lg-4 col-xl-3" style="margin-top: 2rem;">
                        <div class="card">
                            <span class="btn-truyennguoidung" >
                                <div class="dropdown" style="padding: 0px 0px;">
                                    <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/edit-icon.png"  width="40"  id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <!-- da sua thanh 2 cham  -->
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/taikhoan/capnhattruyen-<%=TruyenDaDang[a].id_truyen %>">Chỉnh sửa truyện</a><!-- da sua thanh 2 cham  -->
                                        <a class="dropdown-item" href="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/taikhoan/danhsachchuong-<%=TruyenDaDang[a].id_truyen %>">Danh sách chương</a><!-- da sua thanh 2 cham  -->
                                        <a onclick="return confirm('Bạn có chắc muốn xoá truyện: <%= TruyenDaDang[a].ten_truyen %>')" class="dropdown-item" href="?xoa-truyen=<%=TruyenDaDang[a].id_truyen %>&Page=<%= page_number %>">Xóa truyện</a><!-- da sua thanh 2 cham  -->
                                    </div>
                                </div>
                            </span>
                            <!--  <p class="dis_tap">Tên Tập 1: aaaa</p> -->
                            <a href="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/truyen/<%=TruyenDaDang[a].link_raw+ "-" + TruyenDaDang[a].id_truyen %>">
                                <!-- da sua thanh 2 cham  -->
                                <!--   <button class="time btn-danger">31 phút trước</button> -->
                                <img class="card-img-top" src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/truyen/<%=TruyenDaDang[a].img_truyen %>"  onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/err-img.png';" />
                            </a>
                            <div class="card-body">
                                <a title="<%=TruyenDaDang[a].ten_truyen %>" href="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/truyen/<%=TruyenDaDang[a].link_raw+ "-" + TruyenDaDang[a].id_truyen %>">
                                    <!-- da sua thanh 2 cham  -->
                                    <!-- chỉnh sửa dòng 83 -->
                                    <% RutGon_TieuDe(TruyenDaDang[a].ten_truyen, 20); %>
                                </a>
                            </div>
                        </div>
                    </div>
                    <% } %>   
                </div>
                <!-- phan trang xem them -->
                <div class="d-flex justify-content-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <%if (TruyenDaDang.Count > 0 && SumPage > 0 && string.IsNullOrEmpty(Request.QueryString["timtruyen"]))
                                {
                                    for (int i = 0; i <= SumPage; i++)
                                    { %>
                            <li class="page-item"><a class="page-link" href="?page=<%=i %>"><%= i %></a></li>
                            <% }
                                } %>
                            <%if (TruyenDaDang.Count > 0 && SumPage > 0 && !string.IsNullOrEmpty(Request.QueryString["timtruyen"]))
                                {
                                    for (int i = 0; i <= SumPage; i++)
                                    { %>
                            <li class="page-item"><a class="page-link" href="?page=<%=i %>&timtruyen=<%=Request.QueryString["timtruyen"] %>"><%= i %></a></li>
                            <% }
                                } %>
                        </ul>
                    </nav>
                </div>
                <!-- phan trang xem them -->
            </div>
            <!-- end phan noi dung -->
        </div>
        <div class=" col-sm-4">
            <div class="div_title">
                <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/comments.png"  width="40"/><!-- da sua thanh 2 cham  -->
                Bình luận gần đây
            </div>
            <!-- phan noi dung -->
            <div class="maunen_div">
                <div class="row list_truyen">
                    <div class="list-binhluan_index">
                        <% for (int a = 0; a < BinhLuanNguoiDung.Count; a++)
                            {
                            %>
                        <div class="row">
                            <div class="col-8">
                                <p>
                                    <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/avatar/<%= NguoiDungs.img_user %>"  class="avatar" width="40" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/err-img.png';" />
                                    <%= NguoiDungs.fullname %>
                                </p>
                            </div>
                            <div class="col-4" style="text-align: right; font-size: 60%">
                                <%=WebTruyenV4.Code.HeThong.TinhThoiGian(BinhLuanNguoiDung[a].created_at) %>
                            </div>
                            <div style=" font-size: 70%">
                                <a href="../truyen/<%=LinkRaw(BinhLuanNguoiDung[a].id_truyen) + "-" + BinhLuanNguoiDung[a].id_truyen%>">
                                <%= tentruyen(BinhLuanNguoiDung[a].id_truyen)%>
                                </a>
                            </div>
                            <div class="txt-binhluan">
                                <%if (BinhLuanNguoiDung[a].noidung_cmt.Length >= 35)
                                    {
                                         %>
                                <div class="show-less-div-2">
                                    <%= WebTruyenV4.Code.HeThong.TuNhayCam(BinhLuanNguoiDung[a].noidung_cmt)  %> 
                                </div>
                                <% }else{ %>
                                <%= WebTruyenV4.Code.HeThong.TuNhayCam(BinhLuanNguoiDung[a].noidung_cmt) %>
                                <%  } %>
                            </div>
                            <a onclick="return confirm('Bạn có chắc muốn bình luận này')" href="?XoaBinhLuan=<%= BinhLuanNguoiDung[a].id_cmt %>" style="font-size: 15px;">Xoá bình luận</a>
                        </div>
                        <% } %>    
                    </div>
                </div>
            </div>
            <!-- end phan noi dung -->
        </div>
    </div>
</section>
<!-- end danh sach noi dung -->
<!-- js binh luan -->
<script type="text/javascript">
    $(document).ready(function (e) { $('.show-less-div-2').myOwnLineShowMoreLess({ showLessLine: 2, showLessText: 'Thu gọn', showMoreText: 'Xem Thêm' }) })
</script>
<!-- end binh luan-->