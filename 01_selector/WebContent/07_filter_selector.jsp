<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>jquery 연습</title>
	<script src="./jquery-3.6.0.js"></script>
	</head>
	<body>
		<script>
			window.onload = function()
			{
				SetItem();
			}
			
			function SetItem()
			{
				$("select option").css("color","black");
				$(":selected").css("color","red");
			}
		</script>
		
		<form id="frm" name="frm">
			<select onchange="SetItem()">
				<option>항목1</option>
				<option>항목2</option>
				<option selected>항목3</option>
				<option>항목4</option>
			</select>
		</form>
	</body>
</html>