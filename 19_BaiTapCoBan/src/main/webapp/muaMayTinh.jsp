<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Đặt mua máy tính!</h1>
	
	<form action="xuLyMuaMayTinh.jsp" method="post">
	<h2>Chọn CPU</h2>
	<input type="radio" id="option1" name="core" value="CoreI9" >
	<label for="option1">Core I9</label>
	
	<input type="radio" id="option2" name="core" value="CoreI5" >
	<label for="option2">Core I5</label>
	
	<input type="radio" id="option3" name="core" value="CoreI3" >
	<label for="option3">Core I3</label>
	
	<h2>Chọn RAM</h2>
	<input type="radio" id="ram1" name="ram" value="16GB" >
	<label for="ram1">16GB</label>
	
	<input type="radio" id="ramm2" name="ram" value="32GB" >
	<label for="ram2">32GB</label>
	
	<h2>Bạn muốn mua thêm?</h2>
	<input type="checkbox" id="cb1" name="cb" value="ManHinh" >
	<label for="cb1">Màn hình</label>
	<input type="checkbox" id="cb2" name="cb" value="Chuot" >
	<label for="cb2">Chuột</label>
	<input type="checkbox" id="cb3" name="cb" value="BanPhim" >
	<label for="cb3">Bàn phím</label>
	
	<input type="submit">
	<%  %>
	</form>
</body>
</html>