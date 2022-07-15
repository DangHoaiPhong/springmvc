<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/quantri/taglib.jsp"%>
<title>Quản Lý Đơn Hàng</title>

<div class="content mt-3">
	<div class="animated fadeIn">
		<div class="row">

			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<strong class="card-title">Danh sách đơn hàng</strong>
					</div>
					<div class="card-body">
						<table id="bootstrap-data-table-export"
							class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>STT</th>
									<th>Email</th>
									<th>Điện thoại </th>
									<th>Tên tài khoản </th>
									<th>Địa chỉ </th>
									<th>Tổng giá </th>
									<th>SL sản phẩm </th>
									<th>Chú thích </th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${bills }" varStatus="index">
									<tr>
										<td>${item.id }</td>
										<td>${item.user }</td>
										<td>${item.phone }</td>
										<td>${item.username }</td>
										<td>${item.address }</td>
										<td><fmt:formatNumber type="number" groupingUsed="true" value="${ item.total }"/>đ</td>
										<td><fmt:formatNumber type="number" groupingUsed="true" value="${ item.quanty }"/>đ</td>
										<td>${item.note }</td>
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
