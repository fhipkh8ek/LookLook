<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="UTF-8">
<head>
<title>修改信息</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="../css/teacherIntroduStyles.css">
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../css/head_foot.css">
<script type="text/javascript" src="http://api.map.baidu.com/getscript?v=2.0&ak=QXfWGArZwMaN4YpllRWCzC1jY20U4cqb"></script> 

    <style type="text/css">
        .center-in-center{
            position: absolute;
            top: 50%;
            left: 50%;
            width: 600px;
             
            height: 400px;
            -webkit-transform: translate(-50%, -50%);
            -moz-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            -o-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }
    </style>

</head>

<body>
	<!--<div class="jkpt-header-top"></div>-->
	<!--<div class="jkpt-header-bar" style="width: 100%;"></div>-->
	<!--<div class="jkpt-header-nav"></div>-->
	<div id="firstPage">

		 <%@ include file="/head.jsp"%>
		 
		 
		 <c:forEach items="${student}"  var="student">
<form action="/look/student/update.htm" method="post" enctype="multipart/form-data" class="form-inline">
<input type="hidden" name="sid" value="${student.sid }">

<div class="center-in-center">

<img src="${student.sphoto}" height="100px" width="100px">
<input type="file" value="${student.sphoto}" name="file"><br>
<input type="hidden" name="photo" value="${student.sphoto}">
<label for="exampleInputName2">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:&nbsp;</label> 
<input type="text" class="form-control" name="sname" value="${student.sname}"><br>

<label for="exampleInputName2">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄:&nbsp;</label> 
<input type="text" class="form-control" name="sage" value="${student.sage }"><br>

<label for="exampleInputName2">居&nbsp;住&nbsp;地:&nbsp;</label> 
<input type="text" class="form-control" name="saddress" value="${student.saddress}"><br>

<label for="exampleInputName2">家&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;乡:&nbsp;</label> 
<input type="text" class="form-control" name="shome" value="${student.shome }"><br>

<label for="exampleInputName2">电话号码:</label> 
<input type="text" class="form-control" name="sphone" value="${student.sphone}"><br>

<label for="exampleInputName2">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱:&nbsp;</label> 
<input type="text" class="form-control" name="semail" value="${student.semail }"><br>

<div class="main-div">  

<label for="exampleInputName2">经&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;度:&nbsp;</label> 
<input type="text" class="form-control" ID="lng" name="slon" value="${student.slon}"><br>

<label for="exampleInputName2">维&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;度:&nbsp;</label> 
<input type="text" class="form-control" ID="lat" name="slat" value="${student.slat }"><br>

<label for="exampleInputName2">物理位置:</label> 
<input type="text" class="form-control" ID="sever_add" name="s1" value="${student.s1 }">
<input type='button' value='点击显示地图获取地址经纬度' class="btn btn-default" id='open' align="right" size="100">  
<div id='allmap' style='width: 100%; height: 30%; position: absolute; display: none'></div></div>
<input type="submit" class="btn btn-default" value="修改">
</div>

</form>
</c:forEach>
   <%--  <%@ include file="/foot.jsp"%> --%>
		</body>
		 <script type="text/javascript">
		 

           function validate() {
               var sever_add = document.getElementsByName('sever_add')[0].value;
               if (isNull(sever_add)) {
                   //alert('请选择地址');
                   return false;
               }
               return true;
           }

           //判断是否是空  
           function isNull(a) {
               return (a == '' || typeof (a) == 'undefined' || a == null) ? true : false;
           }

           document.getElementById('open').onclick = function () {
               if (document.getElementById('allmap').style.display == 'none') {
                   document.getElementById('allmap').style.display = 'block';
               } else {
                   document.getElementById('allmap').style.display = 'none';
               }
           }

           var map = new BMap.Map("allmap");
           var geoc = new BMap.Geocoder();   //地址解析对象  
           var markersArray = [];
           var geolocation = new BMap.Geolocation();


           var point = new BMap.Point(116.331398, 39.897445);
           map.centerAndZoom(point, 20); // 中心点  
           geolocation.getCurrentPosition(function (r) {
               if (this.getStatus() == BMAP_STATUS_SUCCESS) {
                   var mk = new BMap.Marker(r.point);
                   map.addOverlay(mk);
                   map.panTo(r.point);
                   map.enableScrollWheelZoom(true);
               }
               else {
                   alert('failed' + this.getStatus());
               }
           }, { enableHighAccuracy: true })
           map.addEventListener("click", showInfo);


           //清除标识  
           function clearOverlays() {
               if (markersArray) {
                   for (i in markersArray) {
                       map.removeOverlay(markersArray[i])
                   }
               }
           }
           //地图上标注  
           function addMarker(point) {
               var marker = new BMap.Marker(point);
               markersArray.push(marker);
               clearOverlays();
               map.addOverlay(marker);
           }
           //点击地图时间处理  
           function showInfo(e) {
               document.getElementById('lng').value = e.point.lng;
               document.getElementById('lat').value = e.point.lat;
               geoc.getLocation(e.point, function (rs) {
                   var addComp = rs.addressComponents;
                   var address = addComp.province + addComp.city + addComp.district + addComp.street + addComp.streetNumber;
                   document.getElementById('sever_add').value = address;
                   //if (confirm("确定要地址是" + address + "?")) {
                   //    document.getElementById('allmap').style.display = 'none';
                    //   document.getElementById('sever_add').value = address;
                   //}
               });
               addMarker(e.point);
           }  
    </script>  
</html> 