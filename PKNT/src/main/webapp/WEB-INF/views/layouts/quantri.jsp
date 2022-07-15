<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@include file="/WEB-INF/views/layouts/quantri/taglib.jsp"%>
<!doctype html>
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>PKNT</title>
<meta name="description" content="Sufee Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="<c:url value="/assets/admin/css/bootstrap.min.css" />">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
<link rel="stylesheet"
	href="<c:url value="/assets/admin/css/style.css" />">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
	rel='stylesheet' type='text/css'>
	<link href="<c:url value="/assets/user/font-awesome/css/font-awesome.css" />" rel="stylesheet">
</head>

<body>
	<aside id="left-panel" class="left-panel">
		<nav class="navbar navbar-expand-sm navbar-default">
			<!-- logo Diamond. -->
			<div class="navbar-header">

				<a class="navbar-brand" href="#"
					style="font-size: 35px; font-weight: bold;"> PKNT<span style="color: orange;">.</span></a>
			</div>

			<div id="main-menu" class="main-menu collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<h3 class="menu-title">Danh mục</h3>
					<!-- /.menu-title -->
					<li class="menu-item-has-children dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-laptop"></i>Quản Lý <i
							class="fas fa-arrow-right"
							style="float: right; padding-top: 10px;"></i>
						</a>
						<ul class="sub-menu children dropdown-menu">
                            <li><a href="<c:url value="/quan-tri/quan-li-san-pham"/>">Sản phẩm</a></li>
                            <li><a href="<c:url value="/quan-tri/quan-li-loai"/>">Loại sản phẩm</a></li>
                            <li><a href="<c:url value="/quan-tri/quan-li-don"/>">Đơn hàng</a></li>
                            <li><a href="<c:url value="/quan-tri/quan-li-chi-tiet-don"/>">Chi tiết đơn hàng</a></li>
                            <li><a href="<c:url value="/quan-tri/quan-li-thong-tin-khach"/>">Khách hàng</a></li>
                        </ul>
					</li>				
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>
	</aside>
	<div id="right-panel" class="right-panel">
		<%@include file="/WEB-INF/views/layouts/quantri/header.jsp"%>

		<decorator:body />

		<%@include file="/WEB-INF/views/layouts/quantri/footer.jsp"%>

	</div>

</body>
</html>