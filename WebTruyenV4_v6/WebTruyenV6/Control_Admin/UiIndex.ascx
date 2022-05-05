<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UiIndex.ascx.cs" Inherits="WebTruyenV6.Control_Admin.UiIndex" %>
<!-- Content Header (Page header) -->
<div class="content-header">
   <div class="container-fluid">
      <div class="row mb-2">
         <div class="col-sm-6">
            <h1 class="m-0">Bảng điều kiển</h1>
         </div>
         <!-- /.col -->
         <!-- /.col -->
      </div>
      <!-- /.row -->
   </div>
   <!-- /.container-fluid -->
</div>
<!-- Main content -->
<section class="content">
   <div class="container-fluid">
      <!-- Info boxes -->
      <div class="row">
         <!-- /.col -->
         <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
               <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-thumbs-up"></i></span>
               <div class="info-box-content"><span class="info-box-text">Tổng bình luận</span> <span class="info-box-number"><%= SumBinhLuan() %></span></div>
               <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
         </div>
         <!-- /.col -->
         <!-- fix for small devices only -->
         <div class="clearfix hidden-md-up"></div>
         <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
               <span class="info-box-icon bg-success elevation-1"><i class="fas fa-shopping-cart"></i></span>
               <div class="info-box-content"><span class="info-box-text">Tổng truyện đã đăng</span> <span class="info-box-number"><%=SumTruyen() %></span></div>
               <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
         </div>
         <!-- /.col -->
         <!-- /.col -->
         <!-- fix for small devices only -->
         <div class="clearfix hidden-md-up"></div>
         <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
               <span class="info-box-icon bg-success elevation-1"><i class="fas fa-shopping-cart"></i></span>
               <div class="info-box-content"><span class="info-box-text">Tổng chương đã đăng</span> <span class="info-box-number"><%=SumChuong() %></span></div>
               <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
         </div>
         <!-- /.col -->
         <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
               <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>
               <div class="info-box-content"><span class="info-box-text">Tổng người dùng</span> <span class="info-box-number"><%=SumNguoiDung() %></span></div>
               <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
         </div>
         <div class="col-md-6">
            <div class="card">
               <div class="card-header border-transparent">
                  <h3 class="card-title">Danh sách đánh giá</h3>
                  <div class="card-tools">
                     <button type="button" class="btn btn-tool" data-card-widget="collapse">
                     <i class="fas fa-minus"></i>
                     </button>
                     <button type="button" class="btn btn-tool" data-card-widget="remove">
                     <i class="fas fa-times"></i>
                     </button>
                  </div>
               </div>
               <!-- /.card-header -->
               <div class="card-body p-0">
                  <div class="table-responsive">
                     <table class="table table-bordered table-striped dataTable dtr-inline" aria-describedby="example1_info">
                        <thead>
                           <tr>
                              <th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Tên của người dùng">Người dùng</th>
                              <th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Tên của truyện">Tên truyện</th>
                              <th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Giá trị">Giá trị</th>
                           </tr>
                        </thead>
                        <tbody>
                           <% if (DsDanhGia != null) { 
                              for(int i =0; i < DsDanhGia.Count; i++){ %>
                           <tr class="odd">
                              <td><%=LoadTaiKhoan(Convert.ToInt32(DsDanhGia[i].id_user)) %></td>
                              <td><%=LoadNameTruyen(Convert.ToInt32(DsDanhGia[i].id_truyen)) %></td>
                              <td><%=Convert.ToInt32(DsDanhGia[i].giatri) %></td>
                           </tr>
                           <% } } %>
                        </tbody>
                     </table>
                  </div>
                  <!-- /.table-responsive -->
               </div>
               <!-- /.card-body -->
               <div class="card-footer clearfix">
                  <a href="/cp-admin/truyen/danhgia" class="btn btn-sm btn-secondary float-right">Xem thêm</a>
               </div>
               <!-- /.card-footer -->
            </div>
         </div>
         <div class="col-md-6">
            <div class="card">
               <div class="card-header border-transparent">
                  <h3 class="card-title">Danh sách mua truyện</h3>
                  <div class="card-tools">
                     <button type="button" class="btn btn-tool" data-card-widget="collapse">
                     <i class="fas fa-minus"></i>
                     </button>
                     <button type="button" class="btn btn-tool" data-card-widget="remove">
                     <i class="fas fa-times"></i>
                     </button>
                  </div>
               </div>
               <!-- /.card-header -->
               <div class="card-body p-0">
                  <div class="table-responsive">
                     <table class="table table-bordered table-striped dataTable dtr-inline" aria-describedby="example1_info">
                        <thead>
                           <tr>
                              <th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Tên của người dùng">Người dùng</th>
                              <th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Tên của truyện">Tên truyện</th>
                              <th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Giá trị">Thời gian</th>
                           </tr>
                        </thead>
                        <tbody>
                           <% if (DSThuVien != null)
                              {
                                  for (int i = 0; i < DSThuVien.Count; i++)
                                  { %>
                           <tr class="odd">
                              <td><%=LoadTaiKhoan(Convert.ToInt32(DSThuVien[i].id_user)) %></td>
                              <td><%=LoadNameTruyen(Convert.ToInt32(DSThuVien[i].id_truyen)) %></td>
                              <td><%=DSThuVien[i].updated_at.ToString("MM/dd/yyyy HH:mm:ss") %></td>
                           </tr>
                           <% } } %>
                        </tbody>
                     </table>
                  </div>
                  <!-- /.table-responsive -->
               </div>
               <!-- /.card-body -->
               <div class="card-footer clearfix">
                  <a href="/cp-admin/truyen/thuvien" class="btn btn-sm btn-secondary float-right">Xem thêm</a>
               </div>
               <!-- /.card-footer -->
            </div>
         </div>
      </div>
   </div>
   <!--/. container-fluid -->
</section>