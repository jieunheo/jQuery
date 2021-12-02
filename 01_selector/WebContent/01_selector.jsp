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
				//전체 선택자
				$("*").css("background-color","#eee");
				//id 선택자 - 맨 처음 1개만 선택됨
				$("#divA").css("color","red");
				$("#divB").css("color","blue");
				$("#divC").css("color","green");
				//태그 선택자
				$("div").css("border","1px solid #000");
				//클래스 선택자 - 전체 적용
				$(".myclass").css("background-color","yellow");
				//멀티 선택자
				$(".myclass, span").css("font-size","10px");
			}
		</script>
		
		<div id="divA">test</div>
		<div id="divB" class="myclass">test</div>
		<span id="divC">test</span>
		<span id="divA" class="myclass">test</span>
	</body>
</html>