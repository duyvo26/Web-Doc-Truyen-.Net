<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiBinhLuan.ascx.cs" Inherits="WebTruyenV6.Control_Admin.Truyens.UiBinhLuan" %>
<div class="card">
   <div class="card-header">
      <asp:Label ID="noti" runat="server"></asp:Label>
      <div class="card card-danger">
         <div class="card-header">
            <h3 class="card-title">Bình luận</h3>
         </div>
      </div>
   </div>
</div>
<!-- /.card-header -->
<div class="card-body">
   <div class="row">
      <div class="col-sm-12">
         <table id="example1" class="table table-bordered table-striped dataTable dtr-inline" aria-describedby="example1_info">
            <thead>
               <tr>
                  <th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Id">Id bình luận</th>
                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="id">Tài khoản</th>
                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="id">Id người dùng</th>
                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Tên truyện">Tên truyện</th>
                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Mã Chương">Id Chương</th>
                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Nội dung bình luận">Nội dung</th>
                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Thời gian bình luận">Thời gian</th>
                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Có thể thêm sửa xoá ">Cài đặt</th>
               </tr>
            </thead>
            <tbody>
               <% for (int i = 0; i < DSBinhLuan.Count; i++)
                  { %>
               <tr class="odd">
                  <td>#<%=DSBinhLuan[i].id_cmt %></td>
                  <td><%=LoadName(DSBinhLuan[i].id_user) %></td>
                  <td>#<%=DSBinhLuan[i].id_user %></td>
                  <td><%=LoadNameTruyen(DSBinhLuan[i].id_truyen) %></td>
                  <td><%=DSBinhLuan[i].id_chuong %></td>
                  <td><%= DSBinhLuan[i].noidung_cmt %> </td>
                  <td><%= DSBinhLuan[i].created_at.ToString("MM/dd/yyyy HH:mm:ss") %> </td>
                  <td>
                     <a href="?Xoa=<%=DSBinhLuan[i].id_cmt%>" onclick="return confirm('Bạn có chắc muốn xoá bình luận: <%= DSBinhLuan[i].noidung_cmt %>')" class="btn btn-danger">Xoá</a>
                  </td>
               </tr>
               <% }  %>
            </tbody>
         </table>
      </div>
      <!-- /.card-body -->
   </div>
</div>