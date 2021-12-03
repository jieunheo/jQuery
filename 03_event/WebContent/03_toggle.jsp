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
			#subMenuA, #subMenuB, #subMenuC {
				background: yellow;
				position: absolute;
			}
		</style>
		<script>
			$(document).ready(function()
			{
				$('#menuA,#menuB,#menuC').mouseover(function()
				{
					$(this).css('background','yellow');
				});
				$('#menuA,#menuB,#menuC').mouseout(function()
				{
					$(this).css('background','white');
				});
				
				$('#menuA,#menuB,#menuC').click(function()
				{
					//alert($(this).attr('id'));
					var tag = $(this).attr('id');

					//$('#subMenuA,#subMenuB,#subMenuC').css('display','none');
					
					if(tag == "menuA") {
						$('#subMenuB,#subMenuC').css('display','none');
						$('#subMenuA').toggle();
					} else if (tag == "menuB") {
						$('#subMenuA,#subMenuC').css('display','none');
						$('#subMenuB').toggle();
					} else {
						$('#subMenuA,#subMenuB').css('display','none');
						$('#subMenuC').toggle();
					}
				});
				
			})
		</script>
		
		<table border="1" width="100%">
			<tr>
				<td id="menuA">메뉴1</td>
				<td id="menuB">메뉴2</td>
				<td id="menuC">메뉴3</td>
			</tr>
		</table>
		<table id="subMenuA" border="1" width="100%" style="display:none">
			<tr>
				<td>메뉴1-1</td>
			</tr>
			<tr>
				<td>메뉴1-2</td>
			</tr>
			<tr>
				<td>메뉴1-3</td>
			</tr>
		</table>
		<table id="subMenuB" border="1" width="100%" style="display:none">
			<tr>
				<td>메뉴2-1</td>
			</tr>
			<tr>
				<td>메뉴2-2</td>
			</tr>
			<tr>
				<td>메뉴2-3</td>
			</tr>
		</table>
		<table id="subMenuC" border="1" width="100%" style="display:none">
			<tr>
				<td>메뉴3-1</td>
			</tr>
			<tr>
				<td>메뉴3-2</td>
			</tr>
			<tr>
				<td>메뉴3-3</td>
			</tr>
		</table>
		
		<table border="1" width="100%" >
			<tr>
				<th>번호</th>
				<th>제목</th>
			</tr>
			<tr>
				<td>1</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>2</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>3</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>4</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>5</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>6</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>7</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>8</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>9</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>10</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>11</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>12</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>13</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>14</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>15</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>16</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>17</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>18</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>19</td>
				<td>제목입니다</td>
			</tr>
			<tr>
				<td>20</td>
				<td>제목입니다</td>
			</tr>
		</table>
	</body>
</html>