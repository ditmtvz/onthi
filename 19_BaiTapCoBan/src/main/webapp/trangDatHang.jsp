<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang dat hang</title>
</head>
<body>
	<%
		String hoVaTen = request.getParameter("hoVaTen");
		String email = request.getParameter("email");
		String soLuong = request.getParameter("soLuong");
		int soLuongSP= Integer.parseInt(soLuong);
	%>
	<h1>Xin chao <%=hoVaTen %> !</h1>
	<h2>Ban da mua <%=soLuong %> san pham.</h2>
	<h2>Tong tien la: <%= soLuongSP*10000 %></h2>
</body>
</html>