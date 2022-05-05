<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiCapNhatChuong.ascx.cs" Inherits="WebTruyenV6.Control_NguoiDung.QuanLyTruyen.UiCapNhatChuong" %>
<script>
    document.title = "Cập Nhật Chương";
</script>
<form></form>
<section class="box_div maunen_div">
    <!-- Thêm tiêu đề -->
    <div class="div_title">
        <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/books.png" width="40" />
        Cập Nhật chương
        <!-- da sua thanh 2 cham  -->
    </div>
    <!-- End thêm tiêu đề -->
    <!-- Tên chương -->
    <asp:Label ID="noti" runat ="server"></asp:Label>
    <form class="nhap-truyen " method ="post">
        <div class="form-group">
            <label for="exampleFormControlInput1">Tên Chương</label>
            <input type="text" class="form-control" value="<%=Chuongs.ten_chuong%>" name ="input_tenchuong">
        </div>
        <!--END Tên chương -->
        <!-- nhap noi dung chuong -->
        <div class="form-group">
            <label>Nội dung chương truyện</label>
            <textarea  name="input_ndchuong" id="input_ndchung">
            <%=Chuongs.noidung_chuong%>
            </textarea>
        </div>
        <script>
            CKEDITOR.replace("input_ndchuong");
        </script>
        <div class="d-flex justify-content-end" style="margin-bottom: 5px; margin-right: 5px">
            <a href="<%=WebTruyenV6.Code.HeThong.url() %>/taikhoan/danhsachchuong-<%=Chuongs.id_truyen %>">
            <input disabled class="btn btn-dark" name="btn" value="Danh Sách Chương">
            </a>
            <input type="submit" class="btn btn-dark" name="btn" value="Cập Nhật">
        </div>
    </form>
    <!-- End nội dung -->
</section>