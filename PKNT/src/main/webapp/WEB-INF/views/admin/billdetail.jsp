<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/quantri/taglib.jsp"%>
<title>Quản Lý Chi Tiết Đơn Hàng</title>

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
									<th>Mã sản phẩm</th>
									<th>Mã đơn hàng </th>
									<th>Số lượng sản phẩm </th>
									<th>Tổng giá </th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${billdetail }" varStatus="index">
									<tr>
										<td>${item.id }</td>
										<td>${item.id_product }</td>
										<td>${item.id_bills }</td>
										<td>${ item.quanty }</td>
										<td><fmt:formatNumber type="number" groupingUsed="true" value="${ item.total }"/>đ</td>
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
