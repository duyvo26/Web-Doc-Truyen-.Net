<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiThemChuong.ascx.cs" Inherits="WebTruyenV6.Control_Admin.Chuongs.UiThemChuong" %>
<div class="card">
   <div class="card-header">
      <asp:Label ID="Label1" runat="server"></asp:Label>
      <div class="card card-danger">
         <div class="card-header">
            <h3 class="card-title">
            Thêm chương: <%=infoTruyen.ten_truyen%> <!-- da sua thanh 2 cham  -->
         </div>
      </div>
      <a href="../chuong/danhsach-<%=infoTruyen.id_truyen %>">
      <button type="button" class="btn btn-primary btn-lg btn-block">Danh Sách Chương</button>
      </a>
   </div>
</div>

<div class="card-body">
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
         <input type="submit" class="btn btn-dark" name="btn" value="Thêm Chương">
      </div>
   </form>
   <!-- End nội dung -->
</div>