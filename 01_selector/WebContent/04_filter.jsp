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
				$("li:even").css("color","red");
			}
		</script>
		
		<ul>
			<li>0번 요소</li>
			<li class="myli">1번 요소</li>
			<li>2번 요소</li>
			<li><span class="myli">3번 요소</span></li>
		</ul>
		
		<ul>
			<li>4번 요소</li>
			<li>5번 요소</li>
			<li>6번 요소</li>
		</ul>
	</body>
</html>