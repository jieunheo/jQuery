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
			function setMsg(color,msg) {
				$('#msg').css('color',color);
				$('#msg').html(msg);
			}
		
			window.onload = function()
			{
				$('#id').keyup(function() {
					//alert($(this).val());
					var userid = $(this).val();
					if (userid == "")
					{
						setMsg('black','아이디를 입력하세요.');
						/*
						$('#msg').css('color','black');
						$('#msg').html('아이디를 입력하세요.');
						*/
						return;
					}
					
					
					/*
					if (userid == "test")
					{
						setMsg('red','중복된 아이디입니다.');
						return;
					} else
					{
						setMsg('blue','사용 가능한 아이디입니다.');
						return;
					}
					*/
					$.ajax({
						type: "get",
						url: "idcheck.jsp?id=" + userid,
						dataType: "html",
						success: function(data) {
							//alert('success');
							data = data.trim();
							//alert(data);
							
							if (data == "00")
							{
								setMsg('black','아이디를 입력하세요.');
							} else if (data == "01")
							{
								setMsg('red','중복된 아이디입니다.');
							} else
							{
								setMsg('blue','사용 가능한 아이디입니다.');
							}
						},
						complete: function(data) {
							//alert('complete');
						},
						error: function(xhr, status, error) {
							//alert('error');
							//alert(error);
						}
					});
				});
			}
		</script>
		
		<form name="join" method="post" action="joinok.html">
			<table border="0" style="width:100%;">
				<tr>
					<td style="height:40px">
						<span style="font-weight:bold; color:red;">※ 회원가입</span>
					</td>
				</tr>																		
			</table>
			<table border="1" style="width:100%;">
				<tr>
					<td style="width:130px;">아이디 (*)</td>
					<td>
						<input type="text" required id="id" name="id" style="width:100px">
						<span id="msg">아이디를 입력하세요.</span>
					</td>
				</tr>
				<tr>
					<td>비밀번호 (*)</td>
					<td><input type="password" required name="pw"  style="width:95%"></td>
				</tr>
				<tr>
					<td>비밀번호 확인 (*)</td>
					<td><input type="password" required name="pwcheck" style="width:95%"></td>
				</tr>			
				<tr>
					<td>이름 (*)</td>
					<td><input type="text" required name="name"  style="width:95%"></td>
				</tr>		
				<tr>
					<td>성별 (*)</td>
					<td>
						<input type="radio" name="gender" checked>남자
						<input type="radio" name="gender">여자
					</td>
				</tr>		
				<tr>
					<td>취미 (*)</td>
					<td>
						<select name="habby" >
							<option value="1" selected>낚시</option>
							<option value="2">여행</option>
							<option value="3">게임</option>
						</select>
					</td>
				</tr>		
				<tr>
					<td>관심분야</td>
					<td>
						<input type="checkbox" value="1" name="interest"  checked>책
						<input type="checkbox" value="2" name="interest">영화					
					</td>
				</tr>		
				<tr>
					<td colspan="2" style="text-align:center;">
						<input type="submit" value="가입완료">
						<input type="button" value="취소">
					</td>							
				</tr>																															
			</table>
		</form>
	</body>
</html>