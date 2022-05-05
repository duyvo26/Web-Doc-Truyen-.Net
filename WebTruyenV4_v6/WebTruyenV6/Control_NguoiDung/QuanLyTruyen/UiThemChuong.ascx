<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiThemChuong.ascx.cs" Inherits="WebTruyenV6.Control_NguoiDung.QuanLyTruyen.UiThemChuong" %>
<script>
    document.title = "Thêm Chương";
</script>

<!-- noi dung -->
<section class="box_div maunen_div">
    <!-- Thêm tiêu đề -->
    <div class="div_title">
        <img src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/top-icon/books.png"  width="40"/> <%=infoTruyen.ten_truyen%>: - Thêm chương <!-- da sua thanh 2 cham  -->
    </div>
    <!-- End thêm tiêu đề -->
    <asp:Label ID ="noti" runat="server"> </asp:Label>
    <!-- Tên chương -->
    <form class="nhap-truyen" method ="post">
        <div class="form-group">
            <label for="exampleFormControlInput1">Tên Chương</label>
            <input type="text" class="form-control" placeholder="Nhập tên chương hoặc số chương" name="ten_chuong">
        </div>
        <!--END Tên chương -->
        <!-- nhap noi dung chuong -->
        <div class="form-group">
            <label>Nội dung chương truyện</label>
            <textarea  name="input_chuong" id="input_chuong">
            </textarea>
        </div>
        <script>
            CKEDITOR.replace("input_chuong");
        </script>
        <div class="d-flex justify-content-end" style="margin-bottom:5px;margin-right:5px">
            <a href="<%=WebTruyenV6.Code.HeThong.url() %>/taikhoan/danhsachchuong-<%=infoTruyen.id_truyen %>">
            <input disabled class="btn btn-dark" name="btn" value="Danh Sách Chương">
            </a>
            <input type="submit" class="btn btn-dark" name="btn" value="Thêm Chương">
        </div>
    </form>
    <!-- End nội dung -->
</section>