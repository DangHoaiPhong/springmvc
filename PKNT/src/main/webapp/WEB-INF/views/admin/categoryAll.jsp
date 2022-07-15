<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/quantri/taglib.jsp"%>
<title>Quản Lý Loại</title>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<a href="<c:url value="/quan-tri/quan-li-san-pham/them-loai"/>" class="btn btn-mini btn-danger" type="button">Thêm</a>
					</div>
					<div class="card-header">
						<strong class="card-title">Danh sách sản phẩm</strong>
					</div>
					<div class="card-body">
						<table id="bootstrap-data-table-export"
							class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>STT</th>
									<th>Tên</th>
									<th>Chỉnh sửa </th>
									<th>Xóa </th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${category }" varStatus="index">
									<tr>
										<td>${item.id }</td>
										<td>${item.name }</td>
										<td>
											<button 
												class="btn btn-mini btn-danger edit-cart" type="button"> <span
												class="icon-edit"></span>
											</button>
										</td>
										<td><a href=""
											class="btn btn-mini btn-danger" type="button"> <span
											class="icon-remove"></span>
										</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>


		</div>
	</div>
	<!-- .animated -->
</div>
</div>
<!-- .content -->
</body>
