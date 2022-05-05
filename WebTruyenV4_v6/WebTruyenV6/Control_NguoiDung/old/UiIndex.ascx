<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiIndex.ascx.cs" Inherits="WebTruyenV4.Control_NguoiDung.UiIndex" %>
<script>
    document.title = "Trang Chủ ";
</script>
<!-- goi y doc -->
<section class="box_div maunen_div">
   <div class="div_title">
      <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/star.png" width="40" />Gợi ý đọc
   </div>
   <div class="row">
      <div class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel" data-interval="1000">
         <div class="MultiCarousel-inner">
            <% 
               for (int i = 0; i < listGoiyDoc.Count(); i++)    
               {
                    %>
            <div class="item" >
               <div class="pad15">
                  <a  href="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/truyen/<%= listGoiyDoc[i].link_raw + "-" + listGoiyDoc[i].id_truyen %>">
                  <img class="card-img-top" src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/truyen/<%= listGoiyDoc[i].img_truyen %>" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/err-img.png';" />
                  </a>
               </div>
               <a  href="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/truyen/<%= listGoiyDoc[i].link_raw + "-" +listGoiyDoc[i].id_truyen %>">
                  <div class="card-body">
                     <div style=" font-weight: bold;" title="<%=listGoiyDoc[i].ten_truyen %>">
                        <% RutGon_TieuDe(listGoiyDoc[i].ten_truyen, 20); %>
                     </div>
                  </div>
               </a>
            </div>
            <% } %>
         </div>
         <img class="leftLst" src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/left.jpg" width="40" />
         <img class="rightLst" src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/right.jpg" width="40" />
      </div>
   </div>
</section>
<!-- end goi y doc -->
<!-- Danh sach noi dung -->
<section>
   <div class="row">
      <div class=" col-sm-8">
         <!-- box -->
         <div class="box_div">
            <div class="div_title">
               <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/title-new.png" width="40" />Truyện mới đăng
            </div>
            <!-- phan noi dung -->
            <div class="maunen_div">
               <div class="row list_truyen">
                  <ul>
                     <% if (TruyenMoiCN != null){ for (int a = 0; a < TruyenMoiCN.Count; a++)
                        { %>
                     <li>
                        <div class="row">
                           <div class="col-8 truyenmoidang">
                              <img width="40" src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/New.gif" />
                              <a title="<%=TruyenMoiCN[a].ten_truyen %>" href="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/truyen/<%= TruyenMoiCN[a].link_raw + "-" +TruyenMoiCN[a].id_truyen %>">
                              <% RutGon_TieuDe(TruyenMoiCN[a].ten_truyen, 70); %>
                              </a>
                           </div>
                           <div class="col-4" style="text-align: right; font-size: 60%">
                              <%=WebTruyenV4.Code.HeThong.TinhThoiGian(TruyenMoiCN[a].created_at) %>
                           </div>
                        </div>
                     </li>
                     <% } } %>
                  </ul>
               </div>
            </div>
            <!-- end phan noi dung -->
         </div>
         <!--end box -->
         <!-- box -->
         <div class="box_div maunen_div">
            <div class="div_title">
               <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/contact-list.png" width="45" />Danh sách truyện 
            </div>
            <!-- phan noi dung -->
            <div class="row list_truyen">
               <% if (DanhSachTruyen != null){ for (int a = 0; a < DanhSachTruyen.Count; a++)
                  { %>
               <div class="col-6 col-sm-4 col-md-4 col-lg-4 col-xl-3" style="margin-top: 2rem;">
                  <div class="card">
                     <!--  <p class="dis_tap">Tên Tập 1: aaaa</p> -->
                     <a href="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/truyen/<%= DanhSachTruyen[a].link_raw + "-" +DanhSachTruyen[a].id_truyen %>">
                        <!--   <button class="time btn-danger">31 phút trước</button> -->
                        <img class="card-img-top" src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/truyen/<%= DanhSachTruyen[a].img_truyen %>" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/err-img.png';" />
                     </a>
                     <div class="card-body">
                        <a title="<%=DanhSachTruyen[a].ten_truyen %>" href="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/truyen/<%= DanhSachTruyen[a].link_raw + "-" +DanhSachTruyen[a].id_truyen %>">
                           <!-- chỉnh sửa dòng 92 -->
                           <% RutGon_TieuDe(DanhSachTruyen[a].ten_truyen, 20); %>
                        </a>
                     </div>
                  </div>
               </div>
               <% } } %>
               <div class="col-6 col-sm-4 col-md-4 col-lg-4 col-xl-3" style="margin-top: 2rem;">
                  <div class="card">
                     <a href="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/timkiemtruyen?xemthem=true&page=0">
                        <!--   <button class="time btn-danger">31 phút trước</button> -->
                        <img class="card-img-top" src="public/img/www/xem-them.gif">
                     </a>
                                         <div class="card-body">
                     <a href="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/timkiemtruyen?xemthem=true&page=0">
                           <!-- chỉnh sửa dòng 92 -->
                         Xem Thêm
                        </a>
                     </div>
                  </div>
               </div>
            </div>
            <!-- end phan noi dung -->
         </div>
         <!--end box -->
      </div>
      <div class=" col-sm-4">
         <!--box -->
         <div class="box_div">
            <div class="div_title">
               <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/top (1).png" width="45" />Top lượt xem 
            </div>
            <!-- phan noi dung -->
            <div class="maunen_div">
               <div class="row list_truyen">
                  <ul>
                     <% if (LuotXem != null){ for (int a = 0; a < LuotXem.Count; a++)
                        { %>
                     <li>
                        <div class="row" title="<%=tentruyen(Convert.ToInt32(LuotXem[a].id_truyen)) %>">
                           <div class="col-8">
                              <% if (a == 0)
                                 { %>
                            <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/top (1).png" width="25" />
                              <% } %>
                              <a title="<%= HttpUtility.HtmlDecode(tentruyen(Convert.ToInt32(LuotXem[a].id_truyen))) %>" href="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/truyen/<%= LinkRaw(Convert.ToInt32(LuotXem[a].id_truyen)) + "-" + LuotXem[a].id_truyen %>">
                                 <% if (a != 0)
                                    { %>
                                 <p>
                                    &nbsp;&nbsp;<%Response.Write(a + 1); %>.
                                    <% } %>
                                    <!-- chỉnh sửa dòng 137 -->
                                    <%RutGon_TieuDe(tentruyen(Convert.ToInt32(LuotXem[a].id_truyen)), 20); %>
                                 </p>
                              </a>
                           </div>
                           <div class="col-4" style="text-align: right; font-size: 80%; ">
                              <%=LuotXem[a].sum %>&nbsp;<i class="bi bi-eye-fill"></i>
                           </div>
                        </div>
                     </li>
                     <% } } %>
                  </ul>
               </div>
            </div>
            <!-- end phan noi dung -->
         </div>
         <!--end box -->
         <!-- binh luan -->
         <section class="box_div">
            <div class="div_title">
               <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/comments.png" width="40" />
               Bình luận gần đây
            </div>
            <!-- phan noi dung -->
            <div class="maunen_div">
               <div class="row list_truyen">
                  <div class="list-binhluan_index">
                     <%  if (BinhLuan != null){ for (int a = 0; a < BinhLuan.Count; a++)
                        {
                            %>
                     <div class="row">
                        <div class="col-8">
                           <p>
                              <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/avatar/<%= BinhLuan[a].img_user  %> "  class="avatar" width="40" onError="this.onerror=null;this.src='<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/err-img.png';" />
                              <%= BinhLuan[a].fullname %>
                           </p>
                        </div>
                        <div class="col-4" style="text-align: right; font-size: 60%">
                           <%=WebTruyenV4.Code.HeThong.TinhThoiGian(BinhLuan[a].created_at) %>
                        </div>
                        <div style=" font-size: 70%">
                           <a href="<%= "truyen/" + LinkRaw(BinhLuan[a].id_truyen) + "-"+BinhLuan[a].id_truyen%>">
                           <%= tentruyen(BinhLuan[a].id_truyen)%>
                           </a>
                        </div>
                        <div class="txt-binhluan">
                           <% string noidung = Regex.Replace(BinhLuan[a].noidung_cmt, "<[^>]*>", string.Empty); %>
                           <a  title="<%=WebTruyenV4.Code.HeThong.TuNhayCam(noidung) %>" href="<%= "truyen/" + LinkRaw(BinhLuan[a].id_truyen) + "-"+BinhLuan[a].id_truyen +"/"+ BinhLuan[a].id_chuong + "?gobl=true" %>">
                              <%if (noidung.Length >= 65)
                                 {
                                      %>
                              <div class="show-less-div-2">
                                 <%=  WebTruyenV4.Code.HeThong.TuNhayCam(noidung) %> 
                              </div>
                              <% }else{ %>
                              <%= WebTruyenV4.Code.HeThong.TuNhayCam(noidung) %>
                              <%  } %>
                           </a>
                        </div>
                     </div>
                     <% } } %>
                  </div>
               </div>
            </div>
            <!-- page fb -->
            <div class="div_title" style="margin-top:20px">
               <img src="<%=Request.Url.GetLeftPart(UriPartial.Authority) %>/public/img/www/top-icon/fb.png" width="40" />
               Fage Facebook
            </div>
            <!-- phan noi dung -->
            <div class="maunen_div">
               <div id="page-fb" style="max-width: 100%">
            <%=HeThongs.Fb_page %>
               </div>
               <!-- page fb -->
               <!-- end phan noi dung -->
         </section>
         </div>
         <!-- end binh luan -->
      </div>
   
</section>
<!-- end danh sach noi dung -->
<!-- js binh luan -->
<script type="text/javascript">
    $(document).ready(function (e) { $('.show-less-div-2').myOwnLineShowMoreLess({ showLessLine: 2, showLessText: 'Thu gọn', showMoreText: 'Xem Thêm' }) })
</script>
<!-- end binh luan-->