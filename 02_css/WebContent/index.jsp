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
		<style>
			.mycss {
				color: #fff;
				background: red;
			}
		</style>
		<script>
			window.onload = function()
			{
				$('div').css('color','1px solid red');
				$('div').css('border','1px solid yellow');
				$('div').css('width','200px');
				$('div').css('height','100px');
				$('div').css('display','inline-block');
			}
			
			function SetClass()
			{
				if ($('#myspan').hasClass('mycss'))
				{
					$('#myspan').removeClass('mycss');
				} else
				{
					$('#myspan').addClass('mycss');
				}
			}
		</script>
		
		<div>div1</div>
		<div>div2</div>
		<span id="myspan" onclick="SetClass()">div3</span>
	</body>
</html>