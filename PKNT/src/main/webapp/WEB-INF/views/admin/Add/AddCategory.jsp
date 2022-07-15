<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@include file="/WEB-INF/views/layouts/quantri/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Thêm Loại</title>
</head>
<body>
<div class="well"  >
	<form class="form-horizontal" style="margin: 50px;" >
		<h3>Thêm Sản Phẩm</h3>
		<div class="control-group">
			<label class="control-label">Tên Loại </label>
			<div class="controls">
			  <input type="text" placeholder=" Nhập loại">
			</div>
		</div><br>
		<div class="control-group">
			<div class="controls">
			 <input type="submit" name="submitAccount" value="Thêm" class="shopBtn exclusive">
			</div>
		</div>
	</form>
</div>
</body>
</html>