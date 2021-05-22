<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta charset="utf-8">
	<title>LOOK圈用户注册</title>	
	<link rel="stylesheet" type="text/css" href="/look/css/head_foot.css">
	<link rel="stylesheet" type="text/css" href="/look/css/register.css">
	<script type="text/javascript" src="/look/js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
    <link href="/look/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    
	<c:if test="${not empty message}">
		<script type="text/javascript">alert(message)</script>
	</c:if>
</head>
<body>

	<%@ include file="head.jsp"%>
		<form action="/look/student/register.htm" method="post">
				
		<div class="content">
			
			
				
					用户名：
					<input type="text" class="form-control" name="sname" required><br>
				
				密码：
					<input type="password" class="form-control" name="spassword" required><br>
							
								
					确认密码：
					<input type="password" class="form-control" name="besurepwd" required><br>
				
				
					邮箱：
					<input type="email" id="email" class="form-control" name="email" required><br>
					
					
					
				
					<a href="javascript:void(0)" onclick="radom()" class="btn btn-default">获取验证码</a>
					<input type="hidden" id="random" value="" class="random" class="form-control"  name ="radom">
				
					验证码：
					<input type="text" class="form-control" name="verification">
					<br>
				
					性别：
						<label class="checkbox-inline">
						<input class="sex1" type="radio" id="inlineCheckbox1" name="sex" checked value="男">
						<span>男</span>
						</label>
						<label class="checkbox-inline">
						<input class="sex2" type="radio" id="inlineCheckbox1" name="sex" value="女">
						<span>女</span>
						</label>
					<br>
				
				<!-- <li>
					<div class="point_msg"><span>验证码：</span></div>
					<div class="code_box">
					<input name="code" onkeyup="return sendValidCode(this.value);"/>
					<span id="result"></span>
					<img src="code"/>
					</div>
				</li> -->
				
				<br>
				<center>	<input type="submit" class="btn btn-default" name="code" value="立即注册"></center>
				
				
					<center>点击立即注册表示您已接受<a href="#">用户协议</a></center>
				
			
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

<script type="text/javascript">
		
		
		//查询总条数
		
		
		function radom(){
			var random = 0;
			var email = document.getElementById("email").value;  
			if(email.length==0){
				alert("请输入邮箱");
				return;
			}
		
			$.post('/look/student/radom.htm',{
				email:email
			},function(data){
				
				random = parseInt(data);
				
				document.getElementById("random").value = random;
			},'text');
			
			
		}
		
</script>
</html>