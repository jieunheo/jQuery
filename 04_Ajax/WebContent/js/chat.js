/* 로드 되자마자 */
window.onload = function()
{
	$('#btnSend').click(function() {
		SendMsg();
	});
	
	//접속 하자마자 가져오기
	GetMsg();
	
	//이후 1초 간격으로 실행하기
	setInterval(function() {
		GetMsg();
	}, 1000);
}

//기존의 메세지 가져오기
var cno = 0;
function GetMsg()
{
	$.ajax({
		type: "get",
		url: "getmsg.jsp?cno=" + cno,
		dataType: "html",
		success: function(data) {
			/*
			var org_html = $('#chatMsg').html();
			org_html = data + org_html;
			*/
			data = data.trim();
			var aryMsg = data.split('<!-- EOR -->');
			for(i=0; i<aryMsg.length; i++)
			{
				var item = aryMsg[i].split('<!-- EOF -->');
				if(item[0] != "")
				{
					cno = item[0];
					var org_html = $('#chatMsg').html();
					org_html = item[1] + org_html;
					
					//html 반영
					$('#chatMsg').html(org_html);
				}
			}
		}
	})
	
}

//새로운 메세지 입력하기
function SendMsg()
{
	if($('#msg').val() == "")
	{
		alert('메세지를 입력해주세요');
		$('#msg').focus();
		return false;
	}
	
	//보낼 값
	var postData = "";
	postData = "msg=" + $('#msg').val();
	
	$.ajax({
		type: "post",
		url: "sendmsg.jsp",
		data: postData,
		dataType: "html",
		success: function(data) {
			GetMsg();
			
			$('#msg').val("");
			$('#msg').focus();
		}
	})
	return false;
}