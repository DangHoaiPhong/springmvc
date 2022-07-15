<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!-- Header-->
	<header id="header" class="header">

		<div class="header-menu">
			<!-- Tìm kiếm -->
			<div class="col-sm-7">
				<!-- <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a> -->
				<div class="header-left">
					<button class="search-trigger">
						<i class="fa fa-search"></i>
					</button>
					<div class="form-inline">
						<form class="search-form">
							<input class="form-control mr-sm-2" type="text"
								placeholder="Search ..." aria-label="Search">
							<button class="search-close" type="submit">
								<i class="fa fa-times-circle"></i>
							</button>
						</form>
					</div>
				</div>
			</div>

			<div class="col-sm-5">
				<!-- thông tin admin -->
				<div class="user-area dropdown float-right">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <img
						class="user-avatar rounded-circle" src="<c:url value="/assets/user/img/Logo.jpg"/>"
						alt="user">
					</a>

					<div class="user-menu dropdown-menu">
						<a class="nav-link" href="#"><i class="fa fa-user"></i> Thông
							tin</a> <a class="nav-link" href="#"><i class="fa fa-cog"></i>
							Cài đặt</a> <a class="nav-link" href="#"><i
							class="fa fa-power-off"></i> Thoát</a>
					</div>
				</div>
				<!-- Ngôn ngữ -->
				<div class="language-select dropdown" id="language-select">
					<a class="dropdown-toggle" href="#" data-toggle="dropdown"
						id="language" aria-haspopup="true" aria-expanded="true"> <i
						class="flag-icon flag-icon-vn"></i>
					</a>
					<div class="dropdown-menu" aria-labelledby="language">
						<div class="dropdown-item">
							<span class="flag-icon flag-icon-fr"></span>
						</div>
						<div class="dropdown-item">
							<i class="flag-icon flag-icon-es"></i>
						</div>
						<div class="dropdown-item">
							<i class="flag-icon flag-icon-us"></i>
						</div>
					</div>
				</div>

			</div>
		</div>

	</header>
	<!-- /header -->