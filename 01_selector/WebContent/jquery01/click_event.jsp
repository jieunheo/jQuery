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
			$("#menuA").css("display","none");
			$("#menuB").css("display","none");
		}
		
		function ShowMenuA()
		{
			$("#menuA").css("display","");
			$("#menuB").css("display","none");			
		}
		
		function ShowMenuB()
		{
			$("#menuA").css("display","none");
			$("#menuB").css("display","");			
		}		
		</script>
		
		<table border="1" width="200px">
			<tr>
				<td><a href="javascript:ShowMenuA();">메뉴1</a></td>
				<td><a href="javascript:ShowMenuB();">메뉴2</a></td>
			</tr>
		</table>
		
		<table id="menuA" border="1" width="200px">
			<tr>
				<td>서브메뉴 1-1</td>
			</tr>
			<tr>
				<td>서브메뉴 1-2</td>
			</tr>
		</table>
		
		<table id="menuB"  border="1" width="200px">
			<tr>
				<td>서브메뉴 2-1</td>
			</tr>
			<tr>
				<td>서브메뉴 2-2</td>
			</tr>
		</table>
	</body>
</html>