<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="../css/bbs.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../css/teacherIntroduStyles.css">
	<link rel="stylesheet" type="text/css" href="../css/head_foot.css">
    
    <title>经验论坛</title>
    <style type="text/css">
        a {
            text-decoration: none;
        }
        
        
        button {
            border-radius: 75%;
            color: deepskyblue;
        }
        .touxiang img {
             border-radius: 50%;
            /* float: left; */
            width: 90px;
            height: 90px;
            vertical-align: middle; 
        }
        
        .pinglun {
            font-size: 14px;
        }
        
       
        </style>
</head>
<body>
<%@ include file="/head.jsp"%>
    <div id="mian">
        <div id="bankuai">
            <li>
                <div class="moban" style="width: 300px;height: 130px;">
                    
                    <div style="float:left"><a href="/look/topic/getgonggaotopic.htm"><img src="../imgs/notice.jpg" alt="社区公告" style=""  /></a></div>
                    <div style="float:left"><a href="/look/topic/getgonggaotopic.htm"><h3>&nbsp;&nbsp;&nbsp;&nbsp;社区公告</h3></a><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话题：${gonggao}</p> 
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一知天下必知</p></div>
                 
                </div>
            </li>
            <li>
                <div class="moban" style="width: 300px;height: 130px;">
                    <div style="float:left"> <a href="/look/topic/getrentietopic.htm"><img src="../imgs/hot.jpg" alt="热帖榜" style=""  /></a></div>
                    <div style="float:left"> <a href="/look/topic/getrentietopic.htm"><h3>&nbsp;&nbsp;&nbsp;&nbsp;热帖榜</h3></a><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话题：${retie}</p> 
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最火最热,最佳贴</p></div>
                 
                </div>
            </li>
            <li>
                <div class="moban" style="width: 300px;height: 130px;">
                    <div style="float:left"><a href="/look/topic/getfenxiangtopic.htm"><img src="../imgs/share.jpg" alt="分享会" style=""  /></a></div>
                    <div style="float:left"><a href="/look/topic/getfenxiangtopic.htm"><h3>&nbsp;&nbsp;&nbsp;&nbsp;分享会</h3></a><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话题：${fenxiang}</p> 
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我分享我快乐</p></div>
                 
                </div>
            </li>
            <li>
                <div class="moban" style="width: 300px;height: 130px;">
                    <div style="float:left"><a href="/look/topic/getwendatopic.htm"><img src="../imgs/qa.jpg" alt="问答榜" style=""  /></a></div>
                    <div style="float:left"><a href="/look/topic/getwendatopic.htm"><h3>&nbsp;&nbsp;&nbsp;&nbsp;问答榜</h3></a><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话题：${wendao}</p> 
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有问必答,解惑驾考难题</p></div>
                 
                </div>
            </li>
            <li>
                <div class="moban" style="width: 300px;height: 130px;">
                    <div style="float:left"><a href="/look/topic/getyuanwangtopic.htm"><img src="../imgs/wish.jpg" alt="愿望墙" style=""  /></a></div>
                    <div style="float:left"><a href="/look/topic/getyuanwangtopic.htm"><h3>&nbsp;&nbsp;&nbsp;&nbsp;愿望墙</h3></a><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话题：${yuanwang}</p> 
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;天灵灵地灵灵我的愿望最灵</p></div>
                 
                </div>
            </li>
            <li>
                <div class="moban" style="width: 300px;height: 130px;">
                    <div style="float:left"><a href="/look/topic/getxuechetopic.htm"><img src="../imgs/fun.jpg" alt="学车趣事" style=""  /></a></div>
                    <div style="float:left"><a href="/look/topic/getxuechetopic.htm"><h3>&nbsp;&nbsp;&nbsp;&nbsp;学车趣事</h3></a><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话题：${xueche}</p> 
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分享趣事，一起乐呵呵</p></div>
                 
                </div>
            </li>
        </div>
       
        <div id="detail">
            <div style="width: 800px height:1050px">
                <div id="cheyouquan" style="width: auto; height: 120px;">
                    <h2><b style="font-size:40px">驾考车友圈</b></h2>
                    <br /> <br /> 
                        <div id="fatie"style="width: 50px; height: 30px; background-color: #499AFD; float: right;">
                        <a href="/look/addtopic.jsp" target="_parent">	发帖</a>
                        </div>
                    
                    <hr style="width: 750px" />
                </div>
        
        
                <div id="main" style="width: 800px; height: 105px;">
                <c:forEach items="${topicalllist}"  var="topicalllist">
                    <li style="border-bottom:1px solid gray;">
                         
                                <div class="touxiang" id="left"
                                    style="float: left; width: 15%; height: 100%; text-align: center">
        							<a href="/look/topic/getonetopic.htm?tid=${topicalllist.tid}" target="_parent">
                                    <img src="${topicalllist.tphoto}" alt="头像" /> <br />
                                    </a>
                                </div>
                                <div class="tiezi" id="right"
                                    style="float: right; width: 85%; height: 100%">
                                    <a href="/look/topic/getonetopic.htm?tid=${topicalllist.tid}" target="_parent">
                                    <B>${topicalllist.tname}</B>
                                    </a> <br />
                                    <p
                                        style="width: 660px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap">来源
                                        &nbsp;&nbsp;${topicalllist.sname}
                                    </p>
        
                                    <div class="pinglun"><p>${topicalllist.ttime} <span style="float:right"><img src="/look/imgs/zan.png" alt="">（${topicalllist.tgood}） <img src="/look/imgs/see.png" alt="">（${topicalllist.tlook}）</span></br>
                                        <br></p>
                                    </div>
                                </div>
                </li>
                </c:forEach>
                    
                </div>
            </div>
        </div>
        <div style="height:100px"></div>
        <div id="retie">
            <div id="toutiao">
                <h3><B style="font-size:20px">今日头条推荐</B></h3>
                <hr />
                <c:if test="${empty topicjinrilist}">
                	今日尚未有人发布，快去 <a href="/look/addtopic.jsp" target="_parent">发布</a>一个吧
                </c:if>
                <c:forEach items="${topicjinrilist}"  var="topicjinrilist">
                <li><a href="/look/topic/getonetopic.htm?tid=${topicjinrilist.tid}">${topicjinrilist.tname}</a></li>
                </c:forEach>
                
                
                <hr />
            </div>
            <br />
            <br />
            <div id="tuijian">
                <h3><B style="font-size:20px">热门推荐</B></h3>
                <hr />
                <c:forEach items="${liulanlist}"  var="liulanlist">
                <li><a href="/look/topic/getonetopic.htm?tid=${liulanlist.tid}">${liulanlist.tname}</a></li>
                </c:forEach>
                
                <hr />
            </div>
        </div>
    </div>
        <%@ include file="/foot.jsp"%>
</body>
</html>