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
body{
display: flex;
justify-content:center;
alight-item:center;
}
</style>
</head>
<body>
	<div>
	<table id="table" border="1">
	<thead>
	<td>STT</td>
	<td>Sản phẩm</td>
	<td>Số lượng</td>
	<td>Giá tiền</td>
	</thead>
	<tbody>
	</tbody>
	<tfoot align="right">
	<tr>
	<td colspan="3">Tổng tiền</td>
	<td id="total"></td>
	</tr>
	</tfoot>
	</table>
	
	<form id="form">
	<h2>Sản phẩm</h2>
	<input type="text" name="text" id="text" value="">
	<h2>So luong</h2>
	<input type="number" name="sl" id="sl">
	<h2>Gia tien</h2>
	<input type="text" name="giatien" id="giatien" value="">
	
	<input type="submit">
	
	</form>
	
	
	</div>
	<script>
	document.getElementById('form').addEventListener('submit',function(event){
		event.preventDefault();
		var tongtien = 0;
		var sanPham= document.getElementById('text').value;
		if(sanPham==""){
			alert("Nhap ten hop le!");
			return;
		} 
		var sl= document.getElementById('sl').value;
		if(sl=="" || isNaN(sl)){
			alert("Nhap sl hop le!");
			return;
		}
		var giaTien= document.getElementById('giatien').value;
		if(giaTien=="" || isNaN(giaTien)){
			alert("Nhap gia tien hop le!");
			return;
		}
		// lay body cua table
		var tbody= document.getElementById('table').getElementsByTagName('tbody')[0];
		// dem so dong cua table body
		var soDong = 0;
		soDong = tbody.rows.length;
		console.log(soDong);
		
		// tao mot row
		
		var newrow= tbody.insertRow(soDong);
		var cell1= newrow.insertCell(0);
		var cell2= newrow.insertCell(1);
		var cell3= newrow.insertCell(2);
		var cell4= newrow.insertCell(3);
		
		// chèn dữ liệu
		cell1.innerHTML = soDong + 1;
		cell2.innerHTML = sanPham;
		cell3.innerHTML=sl;
		cell4.innerHTML= giaTien;
		
		
		var tongtien=0;
		for(let i=0; i<tbody.rows.length;i++){
			var row = tbody.rows[i];
			var gia = parseInt(row.cells[3].innerHTML);
			tongtien+=gia;
		}
		document.getElementById('form').reset();
		// xu ly tfoot
	var tfoot= document.getElementById('table').getElementsByTagName('tfoot')[0];
	var firstRow = tfoot.getElementsByTagName('tr')[0];
	
	document.getElementById("total").innerHTML= tongtien;
   
    
	});
	</script>
</body>
</html>