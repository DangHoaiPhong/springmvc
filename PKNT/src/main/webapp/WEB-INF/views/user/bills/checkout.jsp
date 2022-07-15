<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<head>
<title>Đăng Ký Tài Khoản</title>
</head>
<body>
	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">
					<li><c:forEach var="item" items="${category }">
							<a href="<c:url value="/san-pham/${item.id }"/>"
								class="list-group-item">${item.name }</a>
						</c:forEach>
					</li>
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
			<ul class="breadcrumb">
				<li><a href='<c:url value="/trang-chu" />'>Trang Chủ</a> <span
					class="divider">/</span></li>
				<li class="active">Người Dùng</li>
			</ul>
			<hr class="soft" />
			<div class="row">
				<div class="span4">
					<div class="well" style="width: 220%;">
						<form:form action="checkout" method="POST" modelAttribute="bills" class="form-horizontal">
							<h3>Thanh toán đơn hàng</h3>
							<div class="control-group">
								<label class="control-label">Họ tên <sup>*</sup></label>
								<div class="controls">
									<form:input type="text"  placeholder="Mới Nhập Họ Tên" path="username"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Email <sup>*</sup></label>
								<div class="controls">
									<form:input type="email" placeholder="Mới Nhập Email" path="user"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Liên Hệ <sup>*</sup></label>
								<div class="controls">
									<form:input type="text" placeholder="Mới Nhập Số Điện Thoại" path="phone"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Địa Chỉ <sup>*</sup></label>
								<div class="controls">
									<form:textarea  cols="30" rows="5" path="address"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Ghi Chú <sup>*</sup></label>
								<div class="controls">
									<form:textarea  cols="30" rows="5" path="note"/>
									
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<input type="submit" name="submitAccount" value="Thanh toán"
										class="shopBtn exclusive">
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>