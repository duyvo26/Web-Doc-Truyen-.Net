<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiCapNhatTruyen.ascx.cs" Inherits="WebTruyenV6.Control_NguoiDung.QuanLyTruyen.UiCapNhatTruyen" %>
<script>
    document.title = " Chỉnh Sửa Truyện";
</script>

<!-- noi dung -->
<section class="box_div maunen_div">
    <div class="div_title">
        <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/books.png"  width="40"/>Cập nhật truyện: <!-- da sua thanh 2 cham  -->
    </div>
    <!-- form them truyen -->
    <asp:Label ID="noti" runat="server" ></asp:Label>
    <form class="nhap-truyen" method="post" EncType="multipart/form-data">
        <div class="form-group">
            <label for="exampleFormControlInput1">Tên Truyện</label>
            <input type="text" class="form-control" name="tentruyen" value="<%= infoTruyen.ten_truyen %>">
        </div>
        <div class="form-group">
            <label for="exampleFormControlInput1">Tác Giả</label>
            <input type="text" class="form-control"  name="tacgia" value="<%= infoTruyen.tac_gia %>">
        </div>
        <div class="form-group">
            <label for="exampleFormControlInput1">Coin</label>
            <input type="number" class="form-control" name="coin" value="<%= Convert.ToDecimal(infoTruyen.coin_truyen) %>">
        </div>
        <div class="form-group">
            <div id="list1" class="dropdown-check-list" tabindex="100">
                <label><strong>Thể loại truyện:</strong> <% for (int i = 0; i < TruyenTL.Count; i ++ ){ %> <%= TruyenTL[i].ten_theloai + "," %> <% } %></label><br>
                <div class="form-group" style="overflow: scroll; max-height: 200px">
                    <!-- Button trigger modal -->
                    <% for(int a = 0; a < DanhSachTheLoai.Count; a ++){ %>
                    <label class="container_checkbox" style=" display: inline-block">
                    <input type="checkbox" name="the-loai" value="<%=DanhSachTheLoai[a].id_theloai %>"><%=DanhSachTheLoai[a].ten_theloai %>
                    <span class="checkmark"></span>
                    </label>
                    <% } %>
                </div>
            </div>
        </div>
        <script>
            var checkList = document.getElementById('list1');
            checkList.getElementsByClassName('anchor')[0].onclick = function (evt) {
                if (checkList.classList.contains('visible'))
                    checkList.classList.remove('visible');
                else
                    checkList.classList.add('visible');
            }
        </script>
        <!-- nhap tom tac -->
        <div class="form-group">
            <label>Tóm tắt truyện</label>
            <textarea  type="text" name="input_tomtat" id="input_tomtat">
            <%= infoTruyen.tomtat_truyen %>
            </textarea>
        </div>
        <script>
            CKEDITOR.replace("input_tomtat");
        </script>
        <div class="form-group">
            <label for="exampleFormControlFile1">Ảnh Bìa Truyện:</label>
            <br>
            <img class="img-truyen" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/truyen/<%= infoTruyen.img_truyen %>" onError="this.onerror=null;this.src='<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/err-img.png';" />
            <br>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
        <div class="d-flex justify-content-end">
            <a href="<%=WebTruyenV6.Code.HeThong.url() %>/taikhoan/info">
            <input disabled class="btn btn-dark" name="btn" value="Danh sách truyện">
            </a>
            <input type="submit" class="btn btn-dark" name="btn-capnhat" value="Chỉnh Sửa Truyện">
        </div>
    </form>
    <!-- end form them truyen -->
</section>