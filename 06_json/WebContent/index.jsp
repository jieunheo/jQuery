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
				//$('#title').html('제목입니다.');
				//$('#name').html('홍길동입니다.');
				$.ajax({
					type: "get",
					url: "getdata.jsp",
					dataType: "json",
					success: function(data) {
						$.each(data, function(name,value) {
							//alert(name);
							//alert(value);
							if(name == "title")
							{
								$('#title').html(value);
							}
							if(name == "name")
							{
								$('#name').html(value);
							}
							if(name == "age")
							{
								$('#age').html(value);
							}
						});
					}
				});
			}
		</script>
		제목: <span id="title"></span><br>
		이름: <span id="name"></span><br>
		나이: <span id="age"></span>
	</body>
</html>