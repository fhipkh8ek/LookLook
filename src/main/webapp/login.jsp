<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>LOOK圈登录界面</title>
	<link rel="stylesheet" type="text/css" href="/look/css/head_foot.css">
	<link rel="stylesheet" type="text/css" href="/look/css/login.css">
	<script type="text/javascript" src="/look/js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
</head>
<c:if test="${flag=='false'}">
<script type="text/javascript">alert("请登陆在评论！")</script>
</c:if>
<c:if test="${flag1=='false'}">
<script type="text/javascript">alert("请登陆在发布！")</script>
</c:if>
<c:if test="${flag2=='false'}">
<script type="text/javascript">alert("请登陆在联系教练！")</script>
</c:if>
<body>
		<%@ include file="head.jsp"%>
		
		<form action="/look/student/studentlogin.htm" method="post">
        <div class="content">
        	<div class="content_show">
				<div class="login_box">
					<div class="login_box_show">
						<p>用户密码登录<span>${msg}</span></p>
						<div class="name"><input type="text" name="username" placeholder="用户名"></div>
						<div class="pwd"><input type="password" name="password" placeholder="密码"></div>
						<div class="name"><input type="text" name="validatecode" placeholder="验证码"></div>
						<div class="name"><img id="validateCode" alt="验证码" src="${validatePic.getPic()}" onclick="refreshValidateCode()"></div>
						<div class="tijiao"><button type="submit">确认登录</button></div>
						<div class="reg"><a href="register.jsp">免费注册</a></div>
					</div>
				</div>
        	</div>
        </div>
        </form>

		<%@ include file="foot.jsp"%>

</body>
<script type="text/javascript">
	let validatePic;
function refreshValidateCode(){
	alert("刷星！！！");
	$.post('/look/login/validateCode.htm',function(data){
		validatePic = data;
		alert(validatePic.id);
		document.getElementById("validateCode").src = validatePic.pic;
	},'json');
}
</script>
</html>