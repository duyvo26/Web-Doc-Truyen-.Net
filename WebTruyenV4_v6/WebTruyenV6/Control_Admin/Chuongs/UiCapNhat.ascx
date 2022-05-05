<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiCapNhat.ascx.cs" Inherits="WebTruyenV6.Control_Admin.Chuongs.UiCapNhat" %>
<div class="card">
   <div class="card-header">
      <asp:Label ID="Label1" runat="server"></asp:Label>
      <div class="card card-danger">
         <div class="card-header">
            <h3 class="card-title">Danh sách chương chương: &ensp; </h3>
         </div>
      </div>
      <a href="danhsach-<%=Chuongs.id_truyen %>">
      <button type="button" class="btn btn-primary btn-lg btn-block">Danh Sách Chương</button>
      </a>
   </div>
</div>

<div class="card-body">
   <!-- Thêm tiêu đề -->
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
         <input type="submit" class="btn btn-dark" name="btn" value="Cập Nhật">
      </div>
   </form>
   <!-- End nội dung -->
</div>