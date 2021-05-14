<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>发布论坛</title>	
	<link rel="stylesheet" type="text/css" href="css/head_foot.css">
	<link rel="stylesheet" type="text/css" href="css/register.css">
</head>
<body>

	<%@ include file="head.jsp"%>
		<form action="/look/topic/addtopic.htm" method="post"  enctype="multipart/form-data" >
		<input type="hidden" name="sid" value="${stu.sid}">
		<div class="content">
			<fieldset style="width:400px;height:400px;border-radius:30px;">
			<legend>发帖</legend>
			<ul>
				<li>
					<div class="point_msg"><span>主题：</span></div>
					<div class="input_box"><input type="text" name="tname"  required></div>
				</li>
				<li>
					<div class="point_msg"><span>类型：</span></div>
					<div class="input_box">
						<select name="ttype">
							<option value ="社区公告">社区公告</option> 
							<option value ="热帖榜">热帖榜</option> 
							<option value ="分享会">分享会</option> 
							<option value ="问答榜">问答榜</option> 
							<option value ="愿望墙">愿望墙</option> 
							<option value ="学车趣事">学车趣事</option> 
						</select>

					</div>
				</li>				
				<li>					
					
					&nbsp;&nbsp;&nbsp;<input type="file" name="file" required>
				</li>
				<li style="height:150px">
				<br>
					<div class="point_msg"><span>内容：</span></div>
					<div class="input_box"><textarea rows="8" cols="33" name="tcontent" required></textarea></div>
				</li>
				
				
				<li class="zhuce" style="margin-left:60px">
					<input type="submit" name="code" value="立即发布">
				</li >
				
			</ul>
			</fieldset>
		</div>

		</form>

        <%@ include file="foot.jsp"%>

</body>
<script type="text/javascript">
var xmlHttpRequest;

function createHttpRequest() {
	if (window.ActiveXObject) {
		xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
		//alert("OK IE");
	} else if (window.XMLHttpRequest) {
		xmlHttpRequest = new window.XMLHttpRequest();
		//alert("OK not IE");
	} else {
		alert("Cannot Create HttpRequest");
		return;
	}
}

function doResult() {
	if (xmlHttpRequest.readyState==4 && xmlHttpRequest.status==200) {
		var rsp = xmlHttpRequest.responseText;
		var result = document.getElementById("result");
		if (rsp=="ok") {
			result.innerHTML = "<font color='green'>OK</font>";
		} else {
			result.innerHTML = "<font color='red'>ERROR</font>";
		}
	}
}

function sendCodeToServer(code) {
	xmlHttpRequest.onreadystatechange=doResult;
	xmlHttpRequest.open("POST", "code?code=" + code);
	xmlHttpRequest.send();
}

function sendValidCode(code) {
	if (code.length==5) {
		sendCodeToServer(code);
	}
}

createHttpRequest();
</script>
</html>