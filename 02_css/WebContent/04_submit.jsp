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
			function MySubmit()
			{
				if(document.login.id.value == "")
				{
					alert('아이디를 입력하세요');
					return;
				}
				document.login.submit();
			}
		</script>
		
		<form name="login" method="post" action="loginok.jsp">
			아이디: <input type="text" id="id" name="id"><br>
			비밀번호: <input type="text" id="pw" name="pw"><br>
			<a href="javascript:MySubmit();">전송</a>
		</form>
	</body>
</html>