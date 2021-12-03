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
			function SetDiv(w)
			{
				//$('#mydiv').text("<h2>안녕하세요</h2>");
				$('#mydiv').html("<h2>안녕하세요</h2>");
				
				var temp = $('#mydiv').html();
				$('#yourdiv').html(temp);
			}
		</script>
		
		<div id="mydiv"></div>
		<div id="yourdiv"></div>
		<a href="javascript:SetDiv();">DIV 값 변경</a>
	</body>
</html>