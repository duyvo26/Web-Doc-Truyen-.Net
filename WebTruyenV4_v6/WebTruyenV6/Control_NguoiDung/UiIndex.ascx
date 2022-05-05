<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiIndex.ascx.cs" Inherits="WebTruyenV6.Control_NguoiDung.UiIndex" %>
<script>
    document.title = "Trang Chủ ";
</script>
<!-- goi y doc -->
<section class="box_div maunen_div">
   <div class="div_title">
      <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/recommended.png" width="40" />Bạn có thể thích
   </div>
   <div class="row" >
      <div  onmousemove="showCoords(event)" class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel" data-interval="1000">
         <div class="MultiCarousel-inner" >
            <% 
               for (int i = 0; i < listGoiyDoc.Count(); i++)    
               {
                  if(  Convert.ToInt32(listGoiyDoc[i].status_) != 0 ){ %>
               
            <div class="item" >
               <div class="pad15" >
                  <a  href="<%=WebTruyenV6.Code.HeThong.url() %>/truyen/<%= listGoiyDoc[i].link_raw + "-" + listGoiyDoc[i].id_truyen %>">
                  <img style="pointer-events: none;" class="card-img-top" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/truyen/<%= listGoiyDoc[i].img_truyen %>" onError="this.onerror=null;this.src='<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/err-img.png';" />
                  </a>
               </div>
               <a style="pointer-events: none;" href="<%=WebTruyenV6.Code.HeThong.url() %>/truyen/<%= listGoiyDoc[i].link_raw + "-" +listGoiyDoc[i].id_truyen %>">
                  <div class="card-body">
                     <div style=" font-weight: 600; font-size: 16px" title="<%=listGoiyDoc[i].ten_truyen %>">
                        <% RutGon_TieuDe(listGoiyDoc[i].ten_truyen, 40); %>
                     </div>
                  </div>
               </a>
            </div>
            <% } } %>
         </div>
         <img id="leftLst" class="leftLst" onmouseover="this.click()" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/left.jpg" width="40" />
         <img id="rightLst" class="rightLst" onmouseover="this.click()" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/right.jpg" width="40" />
      </div>
   </div>
</section>
<script>
    var x_old = 0;
    function showCoords(event) {
        var x = event.clientX;
        if (x > x_old) {
            document.getElementById("rightLst").click();
        }
        if (x < x_old) {
            document.getElementById("leftLst").click();
        }
        x_old = x;
    }
    document.addEventListener('touchstart', handleTouchStart, false);
    document.addEventListener('touchmove', handleTouchMove, false);
    var xDown = null;
    var yDown = null;
    function getTouches(evt) {
        return evt.touches ||             // browser API
               evt.originalEvent.touches; // jQuery
    }
    function handleTouchStart(evt) {
        const firstTouch = getTouches(evt)[0];
        xDown = firstTouch.clientX;
        yDown = firstTouch.clientY;
    };
    //stackoverflow.com/questions/2264072/detect-a-finger-swipe-through-javascript-on-the-iphone-and-android
    function handleTouchMove(evt) {
        if (!xDown || !yDown) {
            return;
        }
        var xUp = evt.touches[0].clientX;
        var yUp = evt.touches[0].clientY;

        var xDiff = xDown - xUp;
        var yDiff = yDown - yUp;

        if (Math.abs(xDiff) > Math.abs(yDiff)) {/*most significant*/
            if (xDiff > 0) {
                document.getElementById("rightLst").click();
            } else {
                /* left swipe */
                document.getElementById("leftLst").click();
            }
        }
        /* reset values */
        xDown = null;
        yDown = null;
    };
</script>
<!-- end goi y doc -->
<!-- Danh sach noi dung -->
<section>
   <div class="row">
   <div class=" col-sm-8">
      <!-- box -->
      <div class="box_div">
         <div class="div_title">
            <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/title-new.png" width="40" />Truyện mới đăng
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
                           <img width="40" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/New.gif" />
                           <a title="<%=TruyenMoiCN[a].ten_truyen %>" href="<%=WebTruyenV6.Code.HeThong.url() %>/truyen/<%= TruyenMoiCN[a].link_raw + "-" +TruyenMoiCN[a].id_truyen %>">
                           <% RutGon_TieuDe(TruyenMoiCN[a].ten_truyen, 70); %>
                           </a>
                        </div>
                        <div class="col-4" style="text-align: right; font-size: 60%">
                           <%=WebTruyenV6.Code.HeThong.TinhThoiGian(TruyenMoiCN[a].created_at) %>
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
            <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/contact-list.png" width="45" />Danh sách truyện 
         </div>
         <!-- phan noi dung -->
         <div class="row list_truyen">
            <% if (DanhSachTruyen != null){ for (int a = 0; a < DanhSachTruyen.Count; a++)
               {  %>
            <div class="col-6 col-sm-4 col-md-4 col-lg-4 col-xl-3" style="margin-top: 2rem;">
               <div class="card">
                  <a href="<%=WebTruyenV6.Code.HeThong.url() %>/truyen/<%= DanhSachTruyen[a].link_raw + "-" +DanhSachTruyen[a].id_truyen %>">
                  <% if(  Convert.ToInt32(DanhSachTruyen[a].status_) == 0 ){ %>
                  <img  style="margin-bottom: calc(50% - 50px); width: 150px; background: #ff6a00a6; padding: 10px; margin-left: calc(50% - 75px);  margin-top: calc(50% - 50px);border-radius: 50%;" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/truyen-khoa.png" />
                  <% }else{ %>
                  <img class="card-img-top" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/truyen/<%= DanhSachTruyen[a].img_truyen %>" onError="this.onerror=null;this.src='<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/err-img.png';" />
                  <% } %>
                  </a>
                  <div class="card-body" style="font-weight: 600; font-size: 16px">
                     <a title="<%=DanhSachTruyen[a].ten_truyen %>" href="<%=WebTruyenV6.Code.HeThong.url() %>/truyen/<%= DanhSachTruyen[a].link_raw + "-" +DanhSachTruyen[a].id_truyen %>">
                        <% RutGon_TieuDe(DanhSachTruyen[a].ten_truyen, 40); %>
                     </a>
                  </div>
               </div>
            </div>
            <% } } %>
            <div class="col-6 col-sm-4 col-md-4 col-lg-4 col-xl-3" style="margin-top: 2rem;">
               <div class="card">
                  <a href="<%=WebTruyenV6.Code.HeThong.url() %>/timkiemtruyen?xemthem=true&page=0">
                     <img class="card-img-top" src="public/img/www/xem-them.gif">
                  </a>
                  <div class="card-body">
                     <a href="<%=WebTruyenV6.Code.HeThong.url() %>/timkiemtruyen?xemthem=true&page=0">
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
            <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/top (1).png" width="45" />Top lượt xem 
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
                           <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/cup-icon.png" width="25" />
                           <% } %>
                           <a title="<%= HttpUtility.HtmlDecode(tentruyen(Convert.ToInt32(LuotXem[a].id_truyen))) %>" href="<%=WebTruyenV6.Code.HeThong.url() %>/truyen/<%= LinkRaw(Convert.ToInt32(LuotXem[a].id_truyen)) + "-" + LuotXem[a].id_truyen %>">
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
            <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/comments.png" width="40" />
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
                        <p title="#<%=BinhLuan[a].id_user %>">
                           <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/avatar/<%= BinhLuan[a].img_user  %> "  class="avatar" width="40" onError="this.onerror=null;this.src='<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/err-img.png';" />
                           <%= BinhLuan[a].fullname %>
                           <%=WebTruyenV6.Code.NguoiDung.HuyHieuUser(GetQuyenHan(Convert.ToInt32(BinhLuan[a].id_user))) %>
                        </p>
                     </div>
                     <div class="col-4" style="text-align: right; font-size: 60%">
                        <%=WebTruyenV6.Code.HeThong.TinhThoiGian(BinhLuan[a].created_at) %>
                     </div>
                     <div style=" font-size: 70%">
                        <a href="<%= "truyen/" + LinkRaw(BinhLuan[a].id_truyen) + "-"+BinhLuan[a].id_truyen%>">
                        <%= tentruyen(BinhLuan[a].id_truyen) %>
                        </a>
                     </div>
                     <div class="txt-binhluan">
                        <% string noidung = Regex.Replace(BinhLuan[a].noidung_cmt, "<[^>]*>", string.Empty); %>
                        <a  title="<%=WebTruyenV6.Code.HeThong.TuNhayCam(noidung) %>" href="<%= "truyen/" + LinkRaw(BinhLuan[a].id_truyen) + "-"+BinhLuan[a].id_truyen +"/"+ BinhLuan[a].id_chuong + "?#binhluan" %>">
                           <%if (noidung.Length > 65)
                              {
                                   %>
                           <div class="show-less-div-2">
                              <%=  WebTruyenV6.Code.HeThong.TuNhayCam(noidung) %> 
                           </div>
                           <% }else{ %>
                           <%= WebTruyenV6.Code.HeThong.TuNhayCam(noidung) %>
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
            <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/fb.png" width="40" />
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