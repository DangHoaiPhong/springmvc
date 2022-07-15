<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
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
					<li><a class="totalInCart" href=""><strong>Đã 
							Mua <span class="badge badge-warning pull-right"
								style="line-height: 18px;"><fmt:formatNumber type="number" groupingUsed="true" value="${ TotalPriceCart }"/>đ</span>
						</strong></a></li>
				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order.
				</p>
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
				<li><a href='<c:url value="/trang-chu" />'>Trang Chủ</a> <span class="divider">/</span></li>
				<li class="active">Người Dùng</li>
			</ul>
			<h3>Người dùng</h3>
			<hr class="soft" />

			<div class="row">
				<div class="span4">
					<div class="well">
						<h5>Đăng Ký Tài Khoản</h5>
						<h1>${ status}</h1>
						<br />
						<form:form action="dang-ky" method="POST" modelAttribute="user">
							<div class="control-group">
								<label class="control-label" for="inputEmail">E-mail</label>
								<div class="controls">
									<form:input type="email" class="span3" placeholder="Mới Nhập Email" path="user"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Mật Khẩu</label>
								<div class="controls">
									<form:input type="password" class="span3" placeholder="Mới Nhập Mật Khẩu" path="password"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputHoten">Họ Và Tên</label>
								<div class="controls">
									<form:input type="text" class="span3" placeholder="Mới Nhập Họ và tên" path="username"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputDiachi">Địa Chỉ</label>
								<div class="controls">
									<form:input type="text" class="span3" placeholder="Mới Nhập Địa Chỉ" path="address"/>
								</div>
							</div>
							<div class="controls">
								<button type="submit" class="btn block">Đăng Ký</button>
							</div>
						</form:form>
					</div>
				</div>
				<div class="span1">&nbsp;</div>
				<div class="span4">
					<div class="well">
						<h5>Đăng Ký thành công ?</h5>
						<h1>${ statusLogin}</h1>
						<form:form action="dang-nhap" method="POST" modelAttribute="user">
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
									<form:input type="text" class="span3" placeholder="Mời nhập email" path="user"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Mât Khẩu</label>
								<div class="controls">
								<form:input type="password" class="span3" placeholder="Mời nhập  Mật Khẩu" path="password"/>
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<button type="submit" class="defaultBtn">Đăng Nhập</button>
									<a href="#">Quên Mật Khẩu ?</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>