<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiCapNhat.ascx.cs" Inherits="WebTruyenV6.Control_Admin.Truyens.UiCapNhat" %>
<div class="card">
   <div class="card-header">
      <asp:Label ID="noti" runat="server"></asp:Label>
      <div class="card card-danger">
         <div class="card-header">
            <h3 class="card-title">Cập nhật truyện</h3>
         </div>
      </div>
   </div>
</div>

<!-- noi dung -->
<div class="card-body">
   <!-- form them truyen -->
   <asp:Label ID="Label1" runat="server" ></asp:Label>
   <form class="nhap-truyen" method="post" EncType="multipart/form-data">
      <div class="form-group">
         <label >Tên Truyện</label>
         <input type="text" class="form-control" name="tentruyen" value="<%= infoTruyen.ten_truyen %>">
      </div>
      <div class="form-group">
         <label>Tác Giả</label>
         <input type="text" class="form-control"  name="tacgia" value="<%= infoTruyen.tac_gia %>">
      </div>
      <div class="form-group">
         <label >Coin</label>
         <input type="number" class="form-control" name="coin" value="<%= Convert.ToDecimal(infoTruyen.coin_truyen) %>">
      </div>
      <div class="form-group">
         <label>Trạng thái:</label>   
         <select class="form-control" name="trangthai" >
            <option value="0" <% if (infoTruyen.status_ == 0) { %> selected <% } %>>Tạm ngưng</option>
            <option value="1" <% if (infoTruyen.status_ == 1) { %> selected <% } %>>Hoạt động</option>
         </select>
      </div>
      <div class="form-group">
         <div id="list1" class="dropdown-check-list" tabindex="100">
            <label><strong>Thể loại truyện:</strong> <% for (int i = 0; i < TruyenTL.Count; i ++ ){ %> <%= TruyenTL[i].ten_theloai + "," %> <% } %></label><br>
            <div class="form-group" style="overflow: scroll; max-height: 200px">
               <!-- Button trigger modal -->
               <% for(int a = 0; a < DanhSachTheLoai.Count; a ++){ %>
               <label class="container_checkbox" style=" background: #454d55; margin-left: 10px;font-size: 18px; display: inline-block">
               <input type="checkbox" name="the-loai" value="<%=DanhSachTheLoai[a].id_theloai %>"><%=DanhSachTheLoai[a].ten_theloai %>
               <span class="checkmark"></span>
               </label>
               <% } %>
            </div>
         </div>
      </div>
      <!-- nhap tom tac -->
      <div class="form-group">
         <label>Tóm tắt truyện</label>
         <textarea name="input_tomtat" id="input_tomtat">
         <%= infoTruyen.tomtat_truyen %>
         </textarea>
      </div>
      <script>
          CKEDITOR.replace("input_tomtat");
      </script>
      <div class="form-group">
         <label for="exampleFormControlFile1">Ảnh Bìa Truyện:</label>
         <br>
         <img width="200" class="img-truyen" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/truyen/<%= infoTruyen.img_truyen %>" onError="this.onerror=null;this.src='<%=WebTruyenV6.Code.HeThong.url() %>/public/img/www/err-img.png';" />
         <br>
          <asp:FileUpload ID="FileUpload1" runat="server" />
      </div>
      <div class="d-flex justify-content-end">
         <input type="submit" class="btn btn-dark" name="btn-capnhat" value="Chỉnh Sửa Truyện">
      </div>
   </form>
   <!-- end form them truyen -->
</div>