<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
form{
border: 1px solid #ccc;
}
</style>
</head>
<body>

	<form id="formmau">
	<div class="textBox">
	<label for="text"> Input text</label>
	<input type ="text" id="text" name="textBox" value="Input text here.">
	</div>
	<div class="checkBox">
	<h2>Ví dụ về check-box - Mua thêm</h2>
	<input type ="checkbox" id="taiNghe" class="checkbox" name="taiNghe" value="TaiNghe">
	<label for="taiNghe"> Tai nghe</label>
	<input type ="checkbox" id="chuot" class="checkbox" name="chuot" value="Chuot">
	<label for="taiNghe"> chuột</label>
	<input type ="checkbox" id="banPhim" class="checkbox" name="banPhim" value="BanPhim">
	<label for="taiNghe"> Bàn phím</label>
	</div>
	<div class="radio">
		<h2>Ví dụ Radio button - Chọn CPU</h2>
		
	<input type="radio" id="codei9" class="radiobutton" name="core" value="Corei9">
	<label for="corei9">Core I9</label>
	
	<input type="radio" id="codei5" class="radiobutton" name="core" value="Corei5">
	<label for="corei5">Core I5</label>
	
	<input type="radio" id="codei3" class="radiobutton" name="core" value="Corei3">
	<label for="corei3">Core I3</label>
	
		
		
	</div>
	
	<div class="date">
	<h2>Ví dụ Date</h2>	
	<label for="datetime"> Date: </label>
	<input type="date" id="datetime" name="datetime">
	</div>
			
		<input type="submit">
	</form>

<script>
document.getElementById('formmau').addEventListener('submit', function(event) {
		event.preventDefault();
		
		// lay data text field
		const text= document.getElementById('text');
		alert(text.value);
		// lay list data tu checkbox
		const arrChecked=[];
		const arrCheckBox = document.getElementsByClassName('checkbox');
		for(let i=0; i<arrCheckBox.length;i++){
			if(arrCheckBox[i].checked){
				arrChecked.push(arrCheckBox[i].value);
			}
		}
		console.log(arrChecked);
		
		var radio="";
		const arrRadio= document.getElementsByClassName('radiobutton');
		for(let i=0; i<arrRadio.length;i++){
			if(arrRadio[i].checked){
				radio = arrRadio[i].value;
				break;
			}
		}
		console.log(radio);
		
		
		const date = document.getElementById('datetime').value;
		
		console.log(new Date(date).getFullYear());
	});


</script>
</body>
</html>