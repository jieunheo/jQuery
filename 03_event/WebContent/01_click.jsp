<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>jquery 연습</title>
	<script src="./js/jquery-3.6.0.js"></script>
	</head>
	<body>
		<script>
			window.onload = function()
			{
				$('div').click(function()
				{
					alert('click!');
				});
			}
		</script>
		
		<div>click me</div>
	</body>
</html>