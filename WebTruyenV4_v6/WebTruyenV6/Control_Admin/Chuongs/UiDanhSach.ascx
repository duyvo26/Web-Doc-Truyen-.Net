<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiDanhSach.ascx.cs" Inherits="WebTruyenV6.Control_Admin.Chuongs.UiDanhSach" %>
<div class="card">
   <div class="card-header">
      <asp:Label ID="noti" runat="server"></asp:Label>
      <div class="card card-danger">
         <div class="card-header">
            <h3 class="card-title">Danh sách chương truyện: &ensp; <a href="<%=WebTruyenV6.Code.HeThong.url() %>/truyen/<%=infoTruyen.link_raw + "-" + infoTruyen.id_truyen %>"><%=infoTruyen.ten_truyen %></a></h3>
         </div>
      </div>
      <a href="themchuong-<%=infoTruyen.id_truyen %>">
      <button type="button" class="btn btn-primary btn-lg btn-block">Thêm Chương</button>
      </a>
   </div>
</div>
<!-- /.card-header -->
<div class="card-body">
   <div class="row">
      <div class="col-sm-12">
         <table id="example1" class="table table-bordered table-striped dataTable dtr-inline" aria-describedby="example1_info">
            <thead>
               <tr>
                  <th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Tên Chương">Tên Chương</th>
                  <th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Lượt xem">Lượt xem</th>
                  <th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Ngày cập nhật">Ngày cập nhật</th>
                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Có thể thêm sửa xoá truyện">Cài đặt</th>
               </tr>
            </thead>
            <tbody>
               <% for (int i = 0; i < DSC.Count; i++)
                  { %>
               <tr class="odd">
                  <td>
                     <a href="<%=WebTruyenV6.Code.HeThong.url() %>/truyen/<%=infoTruyen.link_raw + "-" + DSC[i].id_truyen +"/"+ DSC[i].id_chuong %>" target="_blank">
                     <%=DSC[i].ten_chuong %>
                     </a>
                  </td>
                  <td><%=LuotXemChuong(DSC[i].id_chuong) %></td>
                  <td><%=DSC[i].updated_at.ToString("dd-MM-yyyy | HH:mm:ss") %></td>
                  <td><a href="/cp-admin/chuong/capnhat-<%=DSC[i].id_chuong%>" class="btn btn-info">Thông Tin</a>&ensp;<a href="?XoaChuong=<%=DSC[i].id_chuong%>" onclick="return confirm('Bạn có chắc muốn xoá truyện: <%= DSC[i].ten_chuong %>')" class="btn btn-danger">Xoá</a></td>
               </tr>
               <% }  %>
            </tbody>
         </table>
      </div>
      <!-- /.card-body -->
   </div>
</div>