<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiDanhSach.ascx.cs" Inherits="WebTruyenV6.Control_Admin.Truyens.UiDanhSach" %>
<div class="card">
   <div class="card-header">
      <asp:Label ID="noti" runat="server"></asp:Label>
      <div class="card card-danger">
         <div class="card-header">
            <h3 class="card-title">Truyện</h3>
         </div>
      </div>
      <a href="<%=WebTruyenV6.Code.HeThong.url() %>/cp-admin/truyen/themtruyen">
      <button type="button" class="btn btn-lg btn-block btn-primary" data-toggle="modal" data-target="#themtheloai"> Thêm truyện </button>
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
                  <th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Tên của người dùng">Img</th>
                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Tên truyện">Tên truyện</th>
                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Lượt xem">Lượt xem</th>
                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Người đăng truyện">Người đăng</th>
                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Giá bán của truyện">Giá mua</th>
                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Tổng chương của truyện">Tổng chương</th>
                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Tình trạng truyện">Trạng thái</th>
                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Ngày đăng của truyện">Ngày đăng</th>
                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Ngày cập nhật của truyện">Ngày cập nhật</th>
                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Có thể thêm sửa xoá truyện">Cài đặt</th>
               </tr>
            </thead>
            <tbody>
               <% for (int i = 0; i < dstruyen.Count; i++)
                  { %>
               <tr class="odd">
                  <td class="dtr-control sorting_1" tabindex="0"><img width="100px" src="<%=WebTruyenV6.Code.HeThong.url() %>/public/img/truyen/<%=dstruyen[i].img_truyen %>" /></td>
                  <td>
                     <a href="<%=WebTruyenV6.Code.HeThong.url() %>/truyen/<%=dstruyen[i].link_raw + " - " + dstruyen[i].id_truyen %>" target="_blank">
                     <%=dstruyen[i].ten_truyen %>
                     </a>
                  </td>
                  <td>
                     <%=LuotXemTruyen(dstruyen[i].id_truyen) %>
                  </td>
                  <td>
                     <%=LoadName(dstruyen[i].id_user) %>
                  </td>
                  <td>
                     <%=dstruyen[i].coin_truyen %>
                  </td>
                  <td>
                     <%=TongChuong(dstruyen[i].id_truyen) %>
                  </td>
                  <td>
                     <% if (dstruyen[i].status_ == 1)
                        { %> Hoạt động
                     <% }else{ %>Tạm dừng
                     <% } %>
                  </td>
                  <td>
                     <%=dstruyen[i].created_at.ToString("MM/dd/yyyy HH:mm:ss") %>
                  </td>
                  <td>
                     <%=dstruyen[i].updated_at.ToString("MM/dd/yyyy HH:mm:ss") %>
                  </td>
                  <td><a href="/cp-admin/truyen/capnhat-<%=dstruyen[i].id_truyen%>" class="btn btn-info">Thông Tin</a>&ensp;<a href="/cp-admin/chuong/danhsach-<%=dstruyen[i].id_truyen%>" class="btn btn-success">Danh sách chương</a>&ensp;<a href="?Xoa=<%=dstruyen[i].id_truyen%>" onclick="return confirm('Bạn có chắc muốn xoá truyện: <%= dstruyen[i].ten_truyen %>')" class="btn btn-danger">Xoá</a></td>
               </tr>
               <% }  %>
            </tbody>
         </table>
      </div>
      <!-- /.card-body -->
   </div>
</div>