<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiThemTruyen.ascx.cs" Inherits="WebTruyenV6.Control_Admin.Truyens.UiThemTruyen" %>
<div class="card">
<div class="card-header">
   <asp:Label ID="noti" runat="server"></asp:Label>
   <div class="card card-danger">
      <div class="card-header">
         <h3 class="card-title">Thêm truyện</h3>
      </div>
   </div>
</div>
</div
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>

<!-- noi dung -->
<!-- /.card-header -->
<div class="card-body">
   <!-- form them truyen -->
   <asp:Label ID="Label1" runat="server"></asp:Label>
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
         <input type="number" class="form-control" value="0" name="coin" min="0" max="9999999999" >
      </div>
      <div class="form-group" style="overflow: scroll; max-height: 200px;    ">
         <label>Thể loại truyện: </label> <br>        <!-- Button trigger modal -->
         <% for(int a = 0; a < DanhSachTheLoai.Count; a ++){ %>
         <label class="container_checkbox" style=" background: #454d55; margin-left: 10px;font-size: 18px; display: inline-block">
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
         <label >Ảnh Bìa Truyện</label>
          <asp:FileUpload ID="FileUpload1" runat="server" />
      </div>
      <div class="d-flex justify-content-end">
         <button type="submit" class="btn btn-dark"  name="btn-them" value="true">Thêm Truyện</button>
      </div>
   </form>
   <!-- end form them truyen -->
</div>