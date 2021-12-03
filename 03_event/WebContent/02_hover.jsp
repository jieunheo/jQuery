<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>jquery 연습</title>
	<script src="../js/jquery-3.6.0.js"></script>
	</head>
	<body>
		<script>
			window.onload = function()
			{
				/*
				$('tr').hover(function()
				{
					$(this).css('background','yellow');
				});
				*/
				$('tr').mouseover(function()
				{
					$(this).css('background','yellow');
				});
				$('tr').mouseout(function()
				{
					$(this).css('background','white');
				});
			}
		</script>
		
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
			</tr>
			<tr>
				<td>1</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>2</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>3</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>4</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>5</td>
				<td>제목입니다</td>
			</tr>
		</table>
	</body>
</html>