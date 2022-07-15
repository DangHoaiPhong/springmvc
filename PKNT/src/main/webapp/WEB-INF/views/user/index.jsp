<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<title>Trang chủ</title>
<body>

	<!-- 
Body Section 
-->
	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">
					<li><c:forEach var="item" items="${category }">
							<a href="<c:url value="/san-pham/${item.id }"/>"
								class="list-group-item">${item.name }</a>
						</c:forEach></li>
					<li><a class="totalInCart" href=""><strong>Đã Mua
								<span class="badge badge-warning pull-right"
								style="line-height: 18px;"><fmt:formatNumber
										type="number" groupingUsed="true" value="${ TotalPriceCart }" />đ</span>
						</strong></a></li>
				</ul>
			</div>
			
			<div class="well well-small alert alert-warning cntr">
				<h2>50% Giảm giá</h2>

				<p>chỉ có giá trị cho đặt hàng trực tuyến.</p>
			</div>
			<div class="well well-small">
				<a href=''><img
					src="<c:url value="/assets/user/img/paypal.jpg"/>"
					alt="payment method paypal"></a>
			</div>

			<ul class="nav nav-list promowrapper">
				<li style="border: 0">&nbsp;</li>
			</ul>

		</div>
		<div class="span9">
			<div class="well np">
				<div id="myCarousel" class="carousel slide homCar">
					<div class="carousel-inner">
						<c:forEach var="item" items="${slides }" varStatus="index">
							<c:if test="${index.first }">
								<div class="item active">
							</c:if>
							<c:if test="${not index.first }">
								<div class="item">
							</c:if>
							<img style="width: 100%"
								src="<c:url value="/assets/user/img/slides/${item.img }"/>"
								alt="bootstrap ecommerce templates">
					</div>
					</c:forEach>
				</div>
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
					href="#myCarousel" data-slide="next">&rsaquo;</a>
			</div>
		</div>
		<!--
New Products
-->
		<div class="well well-small">
			<h3>Sản Phẩm Mới</h3>
			<hr class="soften" />
			<div class="row-fluid">
				<div id="newProductCar" class="carousel slide">
					<div class="carousel-inner">					
						<c:if test="${products.size()>0 }">
						<div class="item active">
							<ul class="thumbnails">
								<c:forEach var="item" items="${ products}" varStatus="loop">
									<li class="span3" style="width:31.904255%">
										<div class="thumbnail">
											<a class="zoomTool" href="<c:url value="/chi-tiet-san-pham/${ item.id }"/>"
												title="add to cart"><span class="icon-search"></span>
												Xem</a> <a href="chi-tiet-san-pham/${ item.id }"><img
												src="assets/user/img/nt/${item.img }" alt=""></a>
										</div>
									</li>
										<c:if test="${(loop.index + 1) % 3 ==0 || (loop.index + 1) == products.size() }">
									</ul>
								</div>
								<c:if test="${(loop.index + 1) < products.size() }">
								<div class="item">
									<ul class="thumbnails">
								</c:if>
								</c:if>
							</c:forEach>
						</c:if>
					</div>
					<a class="left carousel-control" href="#newProductCar"
						data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
						href="#newProductCar" data-slide="next">&rsaquo;</a>
				</div>
			</div>
		</div>
		<!--
	Featured Products
	-->
		<div class="well well-small">
			<h3>Sản Phẩm Nổi Bật</h3>
			<hr class="soften" />
			<div class="row-fluid">
				<ul class="thumbnails">
					<c:if test="${products.size() > 0 }">
						<ul class="thumbnails">
							<c:forEach var="item" items="${products }" varStatus="loop">
								<li class="span4">
									<div class="thumbnail">
										<a class="zoomTool"
											href="<c:url value="/chi-tiet-san-pham/${ item.id }"/>"
											title="add to cart"><span class="icon-search"></span>
											Xem</a> <a href="chi-tiet-san-pham/${ item.id }"><img
											src="<c:url value="/assets/user/img/nt/${ item.img }"/>"
											alt=""></a>
										<div class="caption">
											<h5>${item.name }</h5>
											<h4>
												<a class="shopBtn"
													href="<c:url value="/AddCart/${ item.id }"/>"
													title="add to cart"><span class="icon-plus"></span></a> <span
													class="pull-right"><fmt:formatNumber type="number"
														groupingUsed="true" value="${item.price}" /> đ</span>
											</h4>
										</div>
									</div>
								</li>
								<c:if
									test="${(loop.index + 1) % 3 == 0 || (loop.index + 1) == products.size()}">
						</ul>
						<c:if test="${(loop.index + 1) < products.size() }">
							<ul class="thumbnails">
						</c:if>
					</c:if>
					</c:forEach>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
	</div>
</body>
