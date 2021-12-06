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
			window.onload = function ()
			{
				$('#setbtn').click(function(){
					$.ajax({
						type: "get",
						url: "div.jsp",
						dataType: "html",
						success: function(data) {
							alert('success');
							$('#myDIV').html(data);
						},
						complete: function(data) {
							alert('complete');
						},
						error: function(xhr, status, error) {
							alert('error');
						}
					});
				});
			}
		</script>
	
		<input type="button" id="setbtn" name="setbtn" value="테스트">
		<div id="myDIV"></div>
	</body>
</html>