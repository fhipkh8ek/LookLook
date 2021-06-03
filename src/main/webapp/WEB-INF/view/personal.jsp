<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="UTF-8">
<head>
<title>个人中心</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css"
	href="../css/teacherIntroduStyles.css">
<link rel="stylesheet" type="text/css" href="../css/head_foot.css">
</head>

<body>
	<!--<div class="jkpt-header-top"></div>-->
	<!--<div class="jkpt-header-bar" style="width: 100%;"></div>-->
	<!--<div class="jkpt-header-nav"></div>-->
	<div id="firstPage">

		 <%@ include file="/head.jsp"%>

		<c:forEach items="${student}"  var="student">
		<div class="jkpt-content-container">
			<div class="jkpt-location">
				<div class="jkpt-location-content"></div>
			</div>
			
			
			<div class="jkpt-content">
				<div class="jkpt-index-left">
					<div class="jkpt-te-header">
						<div class="jkpt-te-content">
							<div class="jkpt-pull-left">
							<img src="${student.sphoto}"
									title="${student.sname}">
								
							</div>
							<div class="jkpt-pull-center">
								<dl>
									<dt>

										<h1 class="jkpt-te-name">${student.sname}</h1>&nbsp;
										<span class="age">${student.sage}岁</span>
									</dt>
									<dd class="jkpt-te-name">
										<b>电子邮箱${student.semail}</b>
										
									</dd>
									<dd class="jkpt-te-icon">
										<span class="star">性别：${student.ssex}<i style="width: 100%"></i></span>
									</dd>
									<dd class="te-tel">
										<span><i>联系电话：</i><b>${student.sphone}</b></span> <span><i>住宿地：</i>${student.saddress}</span>
									</dd>
									<dd class="jkpt-te-name">
										<b>家乡：${student.shome}</b>
										
									</dd>
									<dd class="te-advisory">
										<a class="button" href="/look/student/getonestudent.htm?sid=${student.sid}" ">修改个人信息</a>
									</dd>
								</dl>
							</div>
							<div style="height: 0; clear: both;"></div>
						</div>

					</div>
					
	
		</div>
		</c:forEach>
		</div>	
		    <%@ include file="/foot.jsp"%>
			<script type="text/javascript" src=".。/js/intro.js"></script>
</body>
</html>