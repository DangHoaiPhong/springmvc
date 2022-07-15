<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/quantri/taglib.jsp"%>
<title>Quản Lý Khách Hàng</title>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">

			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<strong class="card-title">Danh sách Khách Hàng</strong>
					</div>
					<div class="card-body">
						<table id="bootstrap-data-table-export"
							class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>STT</th>
									<th>Email</th>	
									<th>Mật Khẩu </th>
									<th>Tên tài khoản </th>
									<th>Địa chỉ </th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${user }" varStatus="index">
									<tr>
										<td>${item.id }</td>
										<td>${item.user }</td>
										<td>${item.password }</td>
										<td>${item.username }</td>
										<td>${item.address }</td>
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
<!-- .content -->
</body>
