<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>教练介绍</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css"
	href="../css/teacherIntroduStyles.css">
<link rel="stylesheet" type="text/css" href="../css/head_foot.css">
<link rel="stylesheet" type="text/css" href="../css/teacherShowStyles.css">
   
</head>

<body>

	<div id="firstPage">

		<%@ include file="/head.jsp"%>


		<div class="jkpt-content-container">
			<div class="jkpt-location">
				<div class="jkpt-location-content"></div>
			</div>
			<c:forEach items="${onedriverschoollist}" var="onedriverschoollist">



				<div class="jkpt-content">
					<div class="jkpt-index-left">
						<div class="jkpt-te-header">
							<div class="jkpt-te-content">
								<div class="jkpt-pull-left">
									<img src="${onedriverschoollist.dphoto}"
										title="${onedriverschoollist.dname}">
								</div>
								<div class="jkpt-pull-center">
									<dl>
										<dt>

											<h1 class="jkpt-te-name">${onedriverschoollist.dname}</h1>
											<img src="../images/cer-icon.png">
										</dt>
										<dd class="jkpt-te-price">
											<span class="strong">￥<b>${onedriverschoollist.d1}</b>起
											</span>
										</dd>
										<dd class="jkpt-te-icon">
											<span class="star">
												<div>
													<div style="float: left">驾校在
														${onedriverschoollist.daddress}</div>
												</div>
											</span>
										</dd>

										<dd class="te-tel">
											<span><i>驾校咨询电话：</i><b>${onedriverschoollist.d2}</b></span>
										</dd>
										<dd class="te-advisory">
											<!-- <a class="button" href="/look/coach/email.htm?cphone=${coach.cphone}" onclick="alert('已经通过邮件联系${coach.cname}教练')">报名咨询</a> -->
										</dd>
									</dl>
								</div>
								<div style="height: 0; clear: both;"></div>
							</div>

						</div>


						<div class="jkpt-tab-content">
							<ul>
								<li class="jkpt-tab-content-introduce" id="t0">
									<div class="tab-content-introheader">
										<h2>驾校简介</h2>
									</div>
									<div class="jkpt-tab-content-detail">
										${onedriverschoollist.dcontent}</div>
								</li>
								<li class="jkpt-tab-content-course" id="t1">
								
								
								 <div class="tacher-list">
           						<ul class="ul-list">
				<c:forEach items="${coachlist}" var="coachlist">
										<li>
											<div class="jkpt-list-left">
												<a target="_blank"
													href="/look/coach/getnamecoach.htm?cid=${coachlist.cid}"><img
													src="${coachlist.cphoto}" title="${coachlist.cname}教练"></a>
											</div>
											<div class="jkpt-list-center">
												<div class="title">
													<a href="/look/coach/getnamecoach.htm?cid=${coachlist.cid}">${coachlist.cname}
													</a><span class="age">教龄${coachlist.c2}年</span>
												</div>
												<div class="address">
													<span>${coachlist.dname}</span>
												</div>
												<div class="jtaddress">
													<span>地址：${coachlist.caddress} </span>
												</div>
												<div class="score">
													<span>评分：${coachlist.cscore}</span>
												</div>
											</div> <!-- <div class="jkpt-list-pirce "> -->
											<div style="float: right; margin-top: 14px;">
												<p>
													<font
														style="font-size: 28px; font-family: sans-serif; color: red"><strong><i>￥</i>${coachlist.c1}</strong></font><span><font
														size="2px">起</font></span>
												</p>
											</div> <br>
										<br>
											<div style="height: 0; clear: both;"></div>
										<li>
					</c:forEach>
									</ul>
									</div>
									
									</li>
								<li class="jkpt-tab-content-photos" id="t2">
									<div class="photos-header">
										<h2>驾校环境</h2>
									</div>
									<div class="photos-details">
										<ul>
											<li><img
												src="../photo/photo10.jpg"></a>
											</li>
											<li><img
												src="../photo/photo11.jpg"></a>
											</li>
											<li><img
												src="../photo/photo12.jpg"></a>
											</li>
											<li><img
												src="../photo/photo13.jpg"></a>
											</li>
										</ul>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
		</div>
		</c:forEach>
	</div>

<br><br><br><br>
<div style="height:200px">
</div>
    <%@ include file="/foot.jsp"%>

	<script type="text/javascript" src="../js/intro.js"></script>
</body>

</html>