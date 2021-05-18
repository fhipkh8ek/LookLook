<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  lang="UTF-8">
<head>
	<title>驾校列表</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="/look/css/teacherShowStyles.css">
    <link rel="stylesheet" type="text/css" href="/look/css/head_foot.css">
    <script type="text/javascript" src="http://api.map.baidu.com/getscript?v=2.0&ak=QXfWGArZwMaN4YpllRWCzC1jY20U4cqb"></script>
    <script type="text/javascript" src="/look/js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
    <link href="/look/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
       <!-- <div id="simple-container"></div> -->
       <!--<div class="jkpt-header-top"></div>-->
       <!--<div class="jkpt-header-bar" style="width: 100%;"></div>-->
       <!--<div class="jkpt-header-nav"></div>-->
       <!--<div class="jkpt-nav-switch"></div>-->
       <div id="firstPage">

          <%@ include file="/head.jsp"%>


           </div>
       <div class="tacher-list">
       <br>
       <center><font style="font-size:28px;font-family: sans-serif">驾校列表</font></center>
           <ul class="ul-list" id="ul-list">
            
            
             <c:forEach items="${driverschoollist}"  var="driverschoollist">
             <li>
             <div class="jkpt-list-left"><a target="_blank" href="/look/driverschool/getonedriverschool.htm?did=${driverschoollist.did}"><img src="${driverschoollist.dphoto}" title="${driverschoollist.dname}"></a>
                 </div>
                 <div class="jkpt-list-center">
                     <div class="title"><a href="/look/driverschool/getonedriverschool.htm?did=${driverschoollist.did}">${driverschoollist.dname} </a>&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/cer-icon.png"></div>
                     <div class="address"><span>${driverschoollist.dname}</span></div>
                     <div class="jtaddress"><span>地址：${driverschoollist.daddress} </span></div>
                     <div class="score"><span>驾校评分：${driverschoollist.sid}</span></div>
                 </div>
                 <!-- <div class="jkpt-list-pirce "> -->
                 <div style="float:right;margin-top: 14px;">
                       <p><font style="font-size:28px;font-family: sans-serif;color: red"><strong ><i >￥</i>${driverschoollist.d1}</strong></font><span><font size="2px">起</font></span></p>
                 </div>
               <br><br>
                <div style="height:0; clear:both;" ></div>
             </li>
             </c:forEach>
 
           </ul>
           <!-- https://www.cnblogs.com/lhb25/p/5-great-juqery-pagination-effect.html -->
           
           <hr>
		<div align="center">
			<div style="float:left">
				<button onclick="firstpage()" class="btn btn-default">首页</button>&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<div style="float:left">	
				<button onclick="previouspage()" class="btn btn-default">上一页</button>&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<div align="center">
	    			<div style="float:left">当前是第</div>
	    			<div style="float:left" id="pagenumber"></div>
	    			<div style="float:left">页</div>
	        </div>&nbsp;&nbsp;&nbsp;&nbsp;
			<div style="float:left">
				<button onclick="nextpage()" class="btn btn-default">下一页</button>&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<div style="float:left">	
				<button onclick="lastpage()" class="btn btn-default">尾页</button>&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<div align="center">
				<div style="float:left">共</div>
				<div style="float:left" id="total"></div>
				<div style="float:left">页</div>
			</div>
		</div>
         </div>
         

         
          <div id="allmap1"></div>
</body>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap1");
	var point = new BMap.Point(116.331398,39.897445);
	map.centerAndZoom(point,12);

	var lng1;
	var lat1;
	var fail='fail';

	var geolocation = new BMap.Geolocation();
	geolocation.getCurrentPosition(function(r){
		if(this.getStatus() == BMAP_STATUS_SUCCESS){
			var mk = new BMap.Marker(r.point);
			map.addOverlay(mk);
			map.panTo(r.point);
			lng1=r.point.lng;
			lat1=r.point.lat;
			//alert('您的位置：'+r.point.lng+','+r.point.lat);
		}
		else {
			//alert('failed'+this.getStatus());
			fail='failed'+this.getStatus()
		}        
	},{enableHighAccuracy: true})
	
</script>

<script type="text/javascript">
		var pagenumber = 1;
		var pagesize = 5;
		var total = 0;
		
		//查询总条数
		
		$(function(){
			$.post('/look/driverschool/countdriverschool.htm',function(data){
				total = parseInt(data);
				
				var maxpage = 0;
		
				//计算最大页数
				if(total%pagesize==0){
					maxpage = total/pagesize;
				}else{
					maxpage = parseInt(total/pagesize + 1);
				}
				
				document.getElementById("total").innerHTML = maxpage;
			},'text');
		
		});
		
		//下一页
		function nextpage(){
			var maxpage = 0;
		
			//计算最大页数
			if(total%pagesize==0){
				maxpage = total/pagesize;
			}else{
				maxpage = parseInt(total/pagesize + 1);
			}
			
			if(pagenumber>=maxpage){
				alert("已经是最后一页了！");
				return;
			}
			
			
			$.post('/look/driverschool/paginationdriverschool.htm',{
				pagenumber:(++pagenumber-1)*pagesize,
				pagesize:pagesize
			},function(data){
				$('#ul-list li').remove();
				for(var i=0;i<data.length;i++){
					$('#ul-list').append('<li><div class="jkpt-list-left"><a target="_blank" href="/look/driverschool/getonedriverschool.htm?did='+data[i].did+'"><img src="'+data[i].dphoto+'" title="'+data[i].dname+'"></a></div><div class="jkpt-list-center"><div class="title"><a href="/look/driverschool/getonedriverschool.htm?did='+data[i].did+'">'+data[i].dname+' </a>&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/cer-icon.png"></div><div class="address"><span>'+data[i].dname+'</span></div><div class="jtaddress"><span>地址：'+data[i].daddress+' </span></div><div class="score"><span>驾校评分：'+data[i].sid+'</span></div></div><div style="float:right;margin-top: 14px;"><p><font style="font-size:28px;font-family: sans-serif;color: red"><strong ><i >￥</i>'+data[i].d1+'</strong></font><span><font size="2px">起</font></span></p></div><br><br><div style="height:0; clear:both;" ></div></li>');
				}
			},'json')
			document.getElementById("pagenumber").innerHTML = pagenumber;
			document.getElementById("total").innerHTML = maxpage;
		}
		
		//上一页
		function previouspage(){
			var maxpage = 0;
		
			//计算最大页数
			if(total%pagesize==0){
				maxpage = total/pagesize;
			}else{
				maxpage = parseInt(total/pagesize + 1);
			}
		
			if(pagenumber==1){
				alert("前面已经没有了！");
				return;
			}
			
			$.post('/look/driverschool/paginationdriverschool.htm',{
				pagenumber:(--pagenumber-1)*pagesize,
				pagesize:pagesize
			},function(data){
				$('#ul-list li').remove();
				for(var i=0;i<data.length;i++){
					$('#ul-list').append('<li><div class="jkpt-list-left"><a target="_blank" href="/look/driverschool/getonedriverschool.htm?did='+data[i].did+'"><img src="'+data[i].dphoto+'" title="'+data[i].dname+'"></a></div><div class="jkpt-list-center"><div class="title"><a href="/look/driverschool/getonedriverschool.htm?did='+data[i].did+'">'+data[i].dname+' </a>&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/cer-icon.png"></div><div class="address"><span>'+data[i].dname+'</span></div><div class="jtaddress"><span>地址：'+data[i].daddress+' </span></div><div class="score"><span>驾校评分：'+data[i].sid+'</span></div></div><div style="float:right;margin-top: 14px;"><p><font style="font-size:28px;font-family: sans-serif;color: red"><strong ><i >￥</i>'+data[i].d1+'</strong></font><span><font size="2px">起</font></span></p></div><br><br><div style="height:0; clear:both;" ></div></li>');
				}
			},'json')
			document.getElementById("pagenumber").innerHTML = pagenumber;
			document.getElementById("total").innerHTML = maxpage;
		}
		
		//首页
		function firstpage(){
			
			var maxpage = 0;
		
			//计算最大页数
			if(total%pagesize==0){
				maxpage = total/pagesize;
			}else{
				maxpage = parseInt(total/pagesize + 1);
			}
			
			$.post('/look/driverschool/paginationdriverschool.htm',{
				pagenumber:0,
				pagesize:pagesize
			},function(data){
				$('#ul-list li').remove();
				for(var i=0;i<data.length;i++){
					$('#ul-list').append('<li><div class="jkpt-list-left"><a target="_blank" href="/look/driverschool/getonedriverschool.htm?did='+data[i].did+'"><img src="'+data[i].dphoto+'" title="'+data[i].dname+'"></a></div><div class="jkpt-list-center"><div class="title"><a href="/look/driverschool/getonedriverschool.htm?did='+data[i].did+'">'+data[i].dname+' </a>&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/cer-icon.png"></div><div class="address"><span>'+data[i].dname+'</span></div><div class="jtaddress"><span>地址：'+data[i].daddress+' </span></div><div class="score"><span>驾校评分：'+data[i].sid+'</span></div></div><div style="float:right;margin-top: 14px;"><p><font style="font-size:28px;font-family: sans-serif;color: red"><strong ><i >￥</i>'+data[i].d1+'</strong></font><span><font size="2px">起</font></span></p></div><br><br><div style="height:0; clear:both;" ></div></li>');
				}
			},'json')
			document.getElementById("pagenumber").innerHTML = 1;
			document.getElementById("total").innerHTML = maxpage;
		}
		
		//尾页
		function lastpage(){
			var maxpage = 0;
		
			//计算最大页数
			if(total%pagesize==0){
				maxpage = total/pagesize;
			}else{
				maxpage = parseInt(total/pagesize + 1);
			}
			
			
			$.post('/look/driverschool/paginationdriverschool.htm',{
				pagenumber:(maxpage-1)*pagesize,
				pagesize:pagesize
			},function(data){
				$('#ul-list li').remove();
				for(var i=0;i<data.length;i++){
					$('#ul-list').append('<li><div class="jkpt-list-left"><a target="_blank" href="/look/driverschool/getonedriverschool.htm?did='+data[i].did+'"><img src="'+data[i].dphoto+'" title="'+data[i].dname+'"></a></div><div class="jkpt-list-center"><div class="title"><a href="/look/driverschool/getonedriverschool.htm?did='+data[i].did+'">'+data[i].dname+' </a>&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/cer-icon.png"></div><div class="address"><span>'+data[i].dname+'</span></div><div class="jtaddress"><span>地址：'+data[i].daddress+' </span></div><div class="score"><span>驾校评分：'+data[i].sid+'</span></div></div><div style="float:right;margin-top: 14px;"><p><font style="font-size:28px;font-family: sans-serif;color: red"><strong ><i >￥</i>'+data[i].d1+'</strong></font><span><font size="2px">起</font></span></p></div><br><br><div style="height:0; clear:both;" ></div></li>');
				}
			},'json')
			pagenumber = maxpage;
			document.getElementById("pagenumber").innerHTML = maxpage;
			document.getElementById("total").innerHTML = maxpage;
			
		}
		
		document.getElementById("pagenumber").innerHTML = pagenumber;
		
	</script>
</html>