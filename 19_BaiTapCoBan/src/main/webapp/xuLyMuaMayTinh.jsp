<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, th, td{
    border-bottom:1px solid #ccc;
    border-left: 0;
    border-right: 0;
}
table{
border-top: 1px solid #fff;
}
td{
padding:10px 100px;
}
table{
    border-collapse:collapse;
}
.table{
display: flex;
justify-content:center;
alight-item:center;
flex-direction: column;
}
</style>
</head>
<body>
<%
	Double tiencpu=0.0;
	String cpu = request.getParameter("core");
	if(cpu!=null){

	if(cpu.equals("CoreI9")){
		tiencpu+=15000000;
	}else if(cpu.equals("CoreI5")){
		tiencpu+=10000000;
		}else if(cpu.equals("CoreI3")){
			tiencpu+=5000000;
		}		
	}
	
	Double tienram=0.0;
	String 	ram = request.getParameter("ram");
	if(ram!=null){

		if(ram.equals("32GB")){
			tienram+=15000000.0;
		}else if(ram.equals("16GB")){
			tienram+=10000000.0;
		}
	}
		
	String[] checkbox = request.getParameterValues("cb");
%>
<!-- Code HTML -->
<div class="table">
	<h1>Hóa đơn bán hàng</h1> <br>
	<table>
	<thead>
		<td>Sản phẩm</td>
		<td>Giá tiền</td>
	</thead>
	<tbody>
	<% if(cpu!=null){ %>
	<tr>
	<td><%=cpu %></td>
	<td><%=Math.round(tiencpu) %></td>
	</tr>
	<%} %>
		
		
	<% if(ram!=null){ %>
	<tr>
	<td><%=ram %></td>
	<td><%=Math.round(tienram) %></td>
	</tr>
	<%} %>
	
	<% if(checkbox!=null){
	for(String s: checkbox){
	%>
		<tr>
		<td><%=s%></td>
		<% if(s.equals("ManHinh")){ %>
		<td>3000000</td>
		<%}else if(s.equals("Chuot")) {%>
		<td>2000000</td>
		<%} else if(s.equals("BanPhim")){%>
		<td>1000000</td>
		<%} %>
		</tr>
	<%}} %>
	
	
	
	</tbody>
	
	</table>
</div>
</body>
</html>