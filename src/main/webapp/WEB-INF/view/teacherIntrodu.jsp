<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="UTF-8">
<head>
<title>教练介绍</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="../css/teacherIntroduStyles.css">
<link rel="stylesheet" type="text/css" href="../css/head_foot.css">
<link href="/look/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://api.map.baidu.com/getscript?v=2.0&ak=QXfWGArZwMaN4YpllRWCzC1jY20U4cqb"></script>

<link href="/look/css/lanrenzhijia.css" type="text/css" rel="stylesheet" />
<script src="/look/js/jquery.min.js"></script>
<script src="/look/js/jquery.imgbox.pack.js"></script>
<script language="JavaScript" src="/look/js/bootstrap.min.js"></script>

<c:if test="${not empty message}">
<script type="text/javascript">alert(message)</script>
</c:if>

</head>

<body>
	<!--<div class="jkpt-header-top"></div>-->
	<!--<div class="jkpt-header-bar" style="width: 100%;"></div>-->
	<!--<div class="jkpt-header-nav"></div>-->
	<div id="firstPage">

		 <%@ include file="/head.jsp"%>

		
		<div class="jkpt-content-container">
			<div class="jkpt-location">
				<div class="jkpt-location-content"></div>
			</div>
			<c:forEach items="${coach}"  var="coach" varStatus="a">
			<input type="hidden" id="lng2" value="${coach.clon}">
         	<input type="hidden" id="lat2" value="${coach.clat}">
 <!--  <c:if test="${a.count==1}"> -->
			
			<div class="jkpt-content">
				<div class="jkpt-index-left">
					<div class="jkpt-te-header">
						<div class="jkpt-te-content">
							<div class="jkpt-pull-left">
								<img src="${coach.cphoto}"
									title="${coach.cname}教练">
							</div>
							<div class="jkpt-pull-center">
								<dl>
									<dt>

										<h1 class="jkpt-te-name">${coach.cname}</h1>
										<img src="../images/cer-icon.png"><span class="age">${coach.c2}年教龄</span>
									</dt>
									<dd class="jkpt-te-price">
										<span class="strong">￥<b>${coach.c1}</b>起
										</span>
									</dd>
									<dd class="jkpt-te-icon">
										<span class="star">
											<div style="width:250px">
												<div style="float:left">
													教练在 ${coach.caddress}<!-- ,距我：</div><div style="float:left"><h5 style="display:inline" id="juli2"></h5>公里 -->
												</div>
											</div> 
										</span>
									</dd>
									
									<dd class="te-tel">
										<span><i>邮箱：</i><b>${coach.cphone}</b></span> <span><i>所属驾校：</i>
										<a target="_blank" href="/look/driverschool/getalldriverschool.htm">${coach.dname}</a></span>
									</dd>
									<dd class="te-advisory">
										<a class="button" href="/look/coach/email.htm?cphone=${coach.cphone}&sname=${stu.sname}&sphone=${stu.sphone}" >报名咨询</a>
									</dd>
								</dl>
							</div>
							<div style="height: 0; clear: both;"></div>
						</div>

					</div>
					<div class="jkpt-tab-bar">
						<ul id="tab-bar">

						</ul>

					</div>
					<div style="height: 0; clear: both;"></div>
					<div class="jkpt-tab-content">
						<ul>
							<li class="jkpt-tab-content-introduce" id="t0">
								<div class="tab-content-introheader">
									<h2>教练简介</h2>
								</div>
								<div class="jkpt-tab-content-detail">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${coach.cintroduction}
								</div>
							</li>
							<li class="jkpt-tab-content-course" id="t1">
								<div class="course-header">
									<h2>教练班型费用</h2>
								</div>
								<div class="content-detail">
									<table cellpadding="0" cellspacing="0">
										<thead>
											<tr>
												<td style="width: 15%;">课程名称</td>
												<td style="width: 15%;">教学类型</td>
												<td style="width: 15%;">学车费用</td>
												<td style="width: 25%;">备注</td>
											</tr>
										</thead>
										<tbody>
											<tr class="last">
												<td>普通班</td>
												<td>C1</td>
												<td class="course-price">${coach.c1}</td>
												<td class="last"><p>暂无</p></td>
											</tr>
										</tbody>
									</table>
								</div>
							</li>
							<li class="jkpt-tab-content-photos" id="t2">
								<div class="photos-header">
									<h2>教练教学环境</h2>
								</div>
								<div class="photos-details">
									<ul>
										<li>
										
										<img
											src="../photo/photo4.jpg"></a>
										</li>
										<li><img
											src="../photo/photo5.jpg"></a>
										</li>
										<li><img
											src="../photo/photo6.jpg"></a>
										</li>
										<li><img
											src="../photo/photo7.jpg"></a>
										</li>
									</ul>
								</div>
							</li>
							<li style="height: 0; clear: both;"></li>
							<li class="jkpt-tab-content-comment" id="t3">
								<div class="comment-header">
									<h2>学员评价</h2>
								</div>
								<div class="comment-detail">
									<!-- <div class="comment-detail-header">
										<div class="jkpt-pull-left comment-list-score">
											<dl>
												<dt>
													<span class="strong">5.0</span>分
												</dt>
												<dd>
													<span class="s-score-star"><i class="star5"></i></span>
												</dd>
												<dd>
													共<span class="strong">514</span>人评价
												</dd>
											</dl>

										</div>

										<div class="jkpt-pull-left comment-list-score-detail">

											<ul>
												<li><span class="strong">教学态度</span><span
													class="s-score-star s-score-sm"><i class="star5"></i>
												</span> <span>5分</span></li>
												<li><span class="strong">学车收费</span><span
													class="s-score-star s-score-sm"><i class="star5"></i></span>
													<span>5分</span></li>
												<li><span class="strong">教学技术</span><span
													class="s-score-star s-score-sm"><i class="star5"></i>
												</span><span>5分</span></li>
												<li style="height: 0; clear: both;"></li>
											</ul>
										</div>
										<div style="height: 0; clear: both;"></div>
									</div> -->
									
									<div class="jkpt-comment-list">
										<ul>
										
											<li>
												<div>
												<!--  what???
													<div class="comment-avatar  pull-left">
														<img alt="judge.getSname() " src="showImg.jsp?id=sid&sid=judge.getSid()&photoname=timg&db=t_judge">
													</div>
 												-->
 												 
													<div class=" comment-content  pull-left">
														<form action="/look/evaluate/addcontent.htm" method="post">
														<textarea class="form-control" rows="3" cols="50" name="econtent"></textarea>
														<input type="hidden" name="cid" value="${coach.cid}">
														<input type="hidden" name="sid" value="${stu.sid}">
														<br><input class="btn btn-default" type="submit" value="提交"> 
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														<input class="btn btn-default" type="reset" value="重置">
														</form>
														
													</div>
													
													
													<div style="height: 0; clear: both;"></div>
												</div>
												
											</li>
									<!-- 	</c:if>  -->
											</c:forEach>
					<c:forEach items="${evaluate}"  var="evaluate" >
											<li>
											
												
													
													<hr>
													
													${evaluate.sname}说:
													${evaluate.econtent}
													<br>
													评论时间：${evaluate.etime}
										</li>
							</c:forEach>
										</ul>
									</div>
								</div>
							</li>
						</ul>

					</div>
					
				</div>
			</div>
			<div id="allmap1"></div>
			<script type="text/javascript" src="look/js/intro.js"></script>
</body>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap1");
	var point = new BMap.Point(116.331398,39.897445);
	map.centerAndZoom(point,12);

	var lng1;
	var lat1;
	var fail='fail';
	
	var lng2=document.getElementById("lng2").value;
	var lat2=document.getElementById("lat2").value;;
	//alert(lng2+','+lat2);
	
	var juli=1;
	
	var geolocation = new BMap.Geolocation();
	geolocation.getCurrentPosition(function(r){
		if(this.getStatus() == BMAP_STATUS_SUCCESS){
			var mk = new BMap.Marker(r.point);
			map.addOverlay(mk);
			map.panTo(r.point);
			lng1=r.point.lng;
			lat1=r.point.lat;
			
			juli=getGreatCircleDistance(lat1,lng1,lat2,lng2);
			document.getElementById('juli2').innerHTML = juli;
			//alert('您的位置：'+r.point.lng+','+r.point.lat);
		}
		else {
			alert('failed'+this.getStatus());
			fail='failed'+this.getStatus()
		}        
	},{enableHighAccuracy: true})
	
	
	 var EARTH_RADIUS = 6378137.0;    //单位M
    var PI = Math.PI;
    
    function getRad(d){
        return d*PI/180.0;
    }
    
    /**
     * caculate the great circle distance
     * @param {Object} lat1
     * @param {Object} lng1
     * @param {Object} lat2
     * @param {Object} lng2
     */
    function getGreatCircleDistance(lat1,lng1,lat2,lng2){
        var radLat1 = getRad(lat1);
        var radLat2 = getRad(lat2);
        
        var a = radLat1 - radLat2;
        var b = getRad(lng1) - getRad(lng2);
        
        var s = 2*Math.asin(Math.sqrt(Math.pow(Math.sin(a/2),2) + Math.cos(radLat1)*Math.cos(radLat2)*Math.pow(Math.sin(b/2),2)));
        s = s*EARTH_RADIUS;
        s = Math.round(s*10000)/10000.0/1000.0;
        s=s.toFixed(2)
        return s;
    }
</script>
</html>