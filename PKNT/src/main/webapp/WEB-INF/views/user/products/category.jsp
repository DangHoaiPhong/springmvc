<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<head>
<title>Sản Phẩm</title>
<style>
.pagination {
	display: flex;
	justify-content: center;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border-radius: 5px;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
	border-radius: 5px;
}
</style>
</head>
<body>
	<div class="well well-small">
		<div class="row">
			<span style="margin-left: 25px;">Danh sách sản phẩm</span> <select
				class="pull-right">
				<option>A - Z</option>
				<option>Cao - Thấp</option>
			</select>
		</div>

		<c:if test="${ProductsPaganite.size() > 0 }">
			<div class="row-fluid">
				<ul class="thumbnails">
					<c:forEach var="item" items="${ProductsPaganite }" varStatus="loop">
						<li class="span4">
							<div class="thumbnail">
								<a href="product_details.html" class="overlay"></a> 
								<a class="zoomTool" href="<c:url value="/chi-tiet-san-pham/${ item.id }"/>"
									title="add to cart"><span class="icon-search"></span> Xem</a> 
									<a href="<c:url value="/chi-tiet-san-pham/${ item.id }"/>"><img
									src="<c:url value="/assets/user/img/nt/${ item.img }"/>" 
									alt=""></a>
								<div class="caption cntr">
									<p>${item.name }</p>
									<p>
										<strong> <fmt:formatNumber type="number" groupingUsed="true" value="${item.price}" /> đ</strong>
									</p>
									<h4>
										<a class="shopBtn" href="<c:url value="/chi-tiet-san-pham/${ item.id }"/>" title="add to cart">Chi Tiết</a>
									</h4>
									<br class="clr">
								</div>
							</div>
						</li>
						<c:if
							test="${(loop.index + 1) % 3 == 0 || (loop.index + 1) == ProductsPaganite.size()}">
				</ul>
				<c:if test="${(loop.index + 1) < ProductsPaganite.size() }">
					<div class="row-fluid">
					<ul class="thumbnails">
				</c:if>
		</c:if>
		</c:forEach>
		</c:if>

	</div>

	</div>
	<div class="pagination">
		<c:forEach var="item" begin="1" end="${paginatesInfo.totalPage }" varStatus="loop">
			<c:if test="${(loop.index) == paginatesInfo.currentPage }">
				<a href="<c:url value="/san-pham/${ idCategory }/${ loop.index }"/>" class="active">${loop.index }</a>
			</c:if>
			<c:if test="${(loop.index) != paginatesInfo.currentPage }">
				<a href="<c:url value="/san-pham/${ idCategory }/${ loop.index }"/>">${loop.index }</a>
			</c:if>
		</c:forEach>
	</div>
</body>
