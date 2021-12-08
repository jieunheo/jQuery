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
					dataType: "xml",
					success: function(xml) {
						//alert(xml);
						
						//item 태그를 찾아서 존재하는 만큼 반복
						$(xml).find('item').each(function() {
							//해당 아이템의 값 다 찾아서 출력
							alert($(this).find('title').text());
							alert($(this).find('name').text());

							$('#title').html($(this).find('title').text());
							$('#name').html($(this).find('name').text());
						});
					}
				});
			}
		</script>
		제목: <span id="title"></span><br>
		이름: <span id="name"></span>
	</body>
</html>