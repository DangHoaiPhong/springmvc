<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@include file="/WEB-INF/views/layouts/quantri/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thêm sản phẩm</title>
</head>
<body>
<div class="well"  >
	<form class="form-horizontal" style="margin: 50px;" >
		<h3>Thêm Sản Phẩm</h3>
		<div class="control-group">
			<label class="control-label">Tên sản phẩm </label>
			<div class="controls">
			  <input type="text" placeholder=" Nhập tên sản phẩm">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Giá</label>
			<div class="controls">
			  <input type="text" placeholder=" Nhập giá tiền">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Mô tả</label>
			<div class="controls">
			  <input type="text" placeholder=" Nhập mô tả">
			</div>
		</div><br>
		<div class="control-group">
			 <label for="myfile">Chọn hình :</label>
  			<input type="file" id="myfile" name="myfile">
		</div><br>
		<div class="control-group">
			<label for="loai">Chọn tên loại :</label>
			<select id="loai" name="loai">
			  <option value="volvo">Bàn</option>
			  <option value="saab">Ghế</option>
			  <option value="fiat">Giường</option>
			</select>
		</div>
	<div class="control-group">
		<div class="controls">
		 <input type="submit" name="submitAccount" value="Thêm" class="shopBtn exclusive">
		</div>
	</div>
	</form>
</div>
</body>
</html>