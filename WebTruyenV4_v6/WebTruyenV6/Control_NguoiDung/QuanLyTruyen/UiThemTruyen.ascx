<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiThemTruyen.ascx.cs" Inherits="WebTruyenV6.Control_NguoiDung.QuanLyTruyen.UiThemTruyen" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<script>
    document.title = "Thêm Truyện";
</script>

<!-- noi dung -->
<section class="box_div maunen_div">
    <div class="div_title">
        <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/books.png"  width="40"/>Đăng truyện mới <!-- da sua thanh 2 cham  -->
    </div>
    <!-- form them truyen -->
    <asp:Label ID="noti" runat="server"></asp:Label>
    <form class="nhap-truyen" method="POST" EncType="multipart/form-data">
        <div class="form-group">
            <label for="exampleFormControlInput1">Tên Truyện</label>
            <input type="text" class="form-control" name="tentruyen" placeholder="Nhập tên truyện">
        </div>
        <div class="form-group">
            <label for="exampleFormControlInput1">Tác Giả</label>
            <input type="text" class="form-control" name="tacgia" placeholder="Nhập tên tác giả">
        </div>
        <div class="form-group">
            <label for="exampleFormControlInput1">Coin</label>
            <input type="number" class="form-control" name="coin" min="0" max="99999999" >
        </div>
        <div class="form-group" style="overflow: scroll; max-height: 200px">
            <label>Thể loại truyện: </label> <br>        <!-- Button trigger modal -->
            <% for(int a = 0; a < DanhSachTheLoai.Count; a ++){ %>
            <label class="container_checkbox" style=" display: inline-block">
            <input type="checkbox" name="the-loai" value="<%=DanhSachTheLoai[a].id_theloai %>"><%=DanhSachTheLoai[a].ten_theloai %>
            <span class="checkmark"></span>
            </label>
            <% } %>
        </div>
        <!-- nhap tom tac -->
        <div class="form-group">
            <label>Tóm tắt Truyện</label>
            <!-- chỉnh sửa dòng 61 -->         
            <textarea name="input_tomtat" id="input_tomtat">
          </textarea>
        </div>
        <script>
            CKEDITOR.replace("input_tomtat");
        </script>
        <div class="form-group">
            <label for="exampleFormControlFile1">Ảnh Bìa Truyện</label>
            <!--  <input type="file" name="UploadedFile" value="Select File" /> -->
            <asp:FileUpload ID="FileUpload1" runat="server" />

        </div>
        <div class="d-flex justify-content-end">
            <a href="<%=WebTruyenV6.Code.HeThong.url() %>/taikhoan/info">
            <input disabled class="btn btn-dark" name="btn" value="Danh sách truyện">
            </a>
            <button type="submit" class="btn btn-dark"  name="btn-them" value="true">Thêm Truyện</button>
        </div>
    </form>
    <!-- end form them truyen -->
</section>