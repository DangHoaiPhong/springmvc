<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header id="header">
	<div class="row">
		<div class="span4">
			<h1>
				<a class="logo" href="index.html"  > 
					<img src="<c:url value="/assets/user/img/Logo.jpg"/>" style="height: 65px;"/> 
				</a>
			</h1>
		</div>
		
		<div class="span4 alignR" style="float:right;">
			<p>
				<br> <strong> Hỗ trợ (24/7) : 0123456789 </strong><br>
				<br>
			</p>
			<a href="<c:url value="/gio-hang"/>">
				<span class="btn btn-mini">[ ${TotalQuantyCart } ] 
					<span class="icon-shopping-cart"></span>
				</span> 
			</a>
			<span
				class="btn btn-warning btn-mini">$</span> <span class="btn btn-mini">&pound;</span>
			<span class="btn btn-mini">&euro;</span>
		</div>
	</div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a data-target=".nav-collapse" data-toggle="collapse"
				class="btn btn-navbar"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a>
			<div class="nav-collapse">
				
					<ul class="nav">
					<li class="active"><a href="<c:url value="/trang-chu"/>">Trang Chủ </a></li>
					<li class=""><a href="#">Bài Viết</a></li>
					<li class=""><a href="#">Giới Thiệu</a></li>
				</ul>
				<form action="#" class="navbar-search pull-left">
					<input type="text" placeholder="Tìm kiếm" class="search-query span2">
				</form>
				<ul class="nav pull-right">
					<c:if test="${empty LoginInfo }">
						
					</c:if>
					<c:if test="${not empty LoginInfo }">
						<li><a href="" >${LoginInfo.username } <b class="caret" ></b></a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>