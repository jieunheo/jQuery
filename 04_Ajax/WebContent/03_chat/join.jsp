<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>채팅방 입장</title>
		<script src="./js/jquery-3.6.0.js"></script>
		<script src="./js/chat.js"></script>
		
	</head>
	<body>
		<table border="1" width="700px">
			<tr>
				<td>
					<div id="chatMsg">채팅방에 입장하였습니다.</div>
				</td>
			</tr>
			<tr>
				<td>
				<form id="chat" name="chat" method="post" action="chatmsg.jsp" onsubmit="return SendMsg();">
					<input type="text" id="msg" name="msg" size="80%">
					<input id="btnSend" type="button" value="보내기">
				</form>
				</td>
			</tr>
		</table>
	</body>
</html>