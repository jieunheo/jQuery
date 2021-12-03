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
			function SetCat()
			{
				$('#myimg').attr('src','./img/cat.jpg');
			}

			function ShowImg(w)
			{
				$('#myimg').attr('width',w);
			}
		</script>

		<img id="myimg" onmouseover="ShowImg('20.5%');" onmouseout="ShowImg('20%');" src="./img/dog.jpg" width="20%">
		<a href="javascript:SetCat();">고양이로 변경</a>
	</body>
</html>