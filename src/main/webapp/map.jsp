<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head id="Head1" runat="server">
    <title>百度地图API自定义地图</title>
<!--引用百度地图API-->
<style type="text/css">
    html,body{margin:0;padding:0;}
    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
<style type="text/css">
		body, html{
			width: 100%;
			height: 100%;
			margin:0;
			font-family:"微软雅黑";
			font-size:14px;
		}
		#l-map {
			width:100%; 
			height:500px;
			overflow: hidden;
		}
		#result{
			width:100%;
		}
		li{
			line-height:28px;
		}
		.cityList{
			height: 320px;
			width:372px;
			overflow-y:auto;
		}
		.sel_container{
			z-index:9999;
			font-size:12px;
			position:absolute;
			right:0px;
			top:0px;
			width:140px;
			background:rgba(255,255,255,0.8);
			height:30px;
			line-height:30px;
			padding:5px;
		}
		.map_popup {
			position: absolute;
			z-index: 200000;
			width: 382px;
			height: 344px;
			right:0px;
			top:40px;
		}
		.map_popup .popup_main { 
			background:#fff;
			border: 1px solid #8BA4D8;
			height: 100%;
			overflow: hidden;
			position: absolute;
			width: 100%;
			z-index: 2;
		}
		.map_popup .title {
			background: url("http://map.baidu.com/img/popup_title.gif") repeat scroll 0 0 transparent;
			color: #6688CC;
			font-weight: bold;
			height: 24px;
			line-height: 25px;
			padding-left: 7px;
		}
		.map_popup button {
			background: url("http://map.baidu.com/img/popup_close.gif") no-repeat scroll 0 0 transparent;
			cursor: pointer;
			height: 12px;
			position: absolute;
			right: 4px;
			top: 6px;
			width: 12px;
		}	
	</style>
	
	<!-- 加载百度地图样式信息窗口 -->
	<script type="text/javascript" src="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.js"></script>
	<link rel="stylesheet" href="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.css" />
	<!-- 加载城市列表 -->
	<script type="text/javascript" src="http://api.map.baidu.com/library/CityList/1.2/src/CityList_min.js"></script>
</head>

<body>
    <!--百度地图容器-->
   <!-- <div id='dituContent' style='width: 50%; height: 50%; position: absolute; display: none'></div>-->
    <div  style="width:100%;height:100%;border:#ccc solid 1px;display:none;" id="dituContent">
    </div>
    <div class="sel_container"><strong id="curCity">自贡市</strong> [<a id="curCityText" href="javascript:void(0)">更换城市</a>]</div>
    
    <div class="map_popup" id="cityList" style="display:none;">
		<div class="popup_main">
			<div class="title">城市列表</div>
			<div class="cityList" id="citylist_container"></div>
			<button id="popup_close"></button>
		</div>
	</div>

    <br />
</body>
<script type="text/javascript">

   // var a=new Array();
    //a=lb2.split("@");

    
    
   

    //for(int i=0;i<a.length;i++)
    //{
    //    alert(a[i]);
   // }
    //创建和初始化地图函数：
    function initMap() {
        createMap(); //创建地图
        setMapEvent(); //设置地图事件
        addMapControl(); //向地图添加控件
    }
    var pointt = new Array();
    var markerr = new Array();
    var opts = new Array();
    var infoWindow=new Array();
    //创建地图函数：
    function createMap() {
        //在百度地图容器中创建一个地图
       var map = new BMap.Map("dituContent");


      
        //for (i = 0; i < log.length; i++) {
        
        
        var myCl = new BMapLib.CityList({ container: "citylist_container", map: map });

        // 给城市点击时，添加相关操作
        myCl.addEventListener("cityclick", function (e) {
            // 修改当前城市显示
            document.getElementById("curCity").innerHTML = e.name;

            // 点击后隐藏城市列表
            document.getElementById("cityList").style.display = "none";
        });
        // 给“更换城市”链接添加点击操作
        document.getElementById("curCityText").onclick = function () {
            var cl = document.getElementById("cityList");
            if (cl.style.display == "none") {
                cl.style.display = "";
            } else {
                cl.style.display = "none";
            }
        };
        // 给城市列表上的关闭按钮添加点击操作
        document.getElementById("popup_close").onclick = function () {
            var cl = document.getElementById("cityList");
            if (cl.style.display == "none") {
                cl.style.display = "";
            } else {
                cl.style.display = "none";
            }
        };

      
        var point = new BMap.Point(104.922, 29.28); //定义一个中心点坐标
        map.centerAndZoom(point, 12); //设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map; //将map变量存储在全局

       
    }

    //地图事件设置函数：
    function setMapEvent() {
        map.enableDragging(); //启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom(); //启用地图滚轮放大缩小
        map.enableDoubleClickZoom(); //启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard(); //启用键盘上下左右键移动地图


    }

    //地图控件添加函数：
    function addMapControl() {
        //向地图中添加缩放控件
        var ctrl_nav = new BMap.NavigationControl({ anchor: BMAP_ANCHOR_TOP_LEFT, type: BMAP_NAVIGATION_CONTROL_LARGE });
        map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
        var ctrl_ove = new BMap.OverviewMapControl({ anchor: BMAP_ANCHOR_BOTTOM_RIGHT, isOpen: 1 });
        map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
        var ctrl_sca = new BMap.ScaleControl({ anchor: BMAP_ANCHOR_BOTTOM_LEFT });
        map.addControl(ctrl_sca);
    }

    

    initMap(); //创建和初始化地图
</script>

</html>