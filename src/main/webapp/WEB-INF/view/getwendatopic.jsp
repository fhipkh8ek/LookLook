<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>${type}</title>
    <link rel="stylesheet" type="text/css" href="../css/teacherIntroduStyles.css">
<link rel="stylesheet" type="text/css" href="../css/head_foot.css">
    
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>

<body>
<%@ include file="/head.jsp"%>
    <div style="width:1120px;margin:auto">
     <div style="height:20px;"></div>
        <!-- header -->
        <div style="border:1px solid gray ;border-radius:30px; height:15%;margin-top:20px">
            <img src="/look/imgs/qa.jpg" style="height:130px;border-radius:30px;float:left;width:15%;margin-left:10px;margin-top:10px" alt="问答榜">
            <div style="margin-left:200px;width:75%">
                <p style="font-size:40px;padding-left:10px;">
                    <b>${type}</b>
                </p>
                <br>
                <p style="padding-left:10px;"> 有问必答，解惑驾考难题</p><br>
                <p style="padding-left:10px;">
                    <span>
                        <b>帖子总数:</b>
                    </span>
                    <span style="color:red">${count}</span>
                </p>
                <p style="height:10px;clear:both"></p>

            </div>
        </div>
        <!-- footer -->
         <c:forEach items="${topiclist}"  var="topiclist">
        <div style="margin-top:20px;border:1px solid gray ;border-radius:30px;">
            <ul>
           
            <br><br>
                <li class="row" style="vertical-align: middle;list-style: none;align-content: center;margin-left:10px">
                    <!-- <p class="touxiang" style="display:inline-block;border-radius:5px;background:gray;width:5%;text-align:center;line-height:50%;align:center">12</p> -->
                   
                    <div>
                        <p class="col-xs-2 " style="align-content:center;" id="left">
                            
                            <img src="../photo/${topiclist.tphoto}" style="height:80px;border-radius:10px;float:left;" alt="头像" /> 
                        </p>
                        <div class="col-xs-9 " class="tiezi" id="right">
                            <a href="/look/topic/getonetopic.htm?tid=${topiclist.tid}" target="_parent">
                                <B>${topiclist.tname}</B>
                            </a>
                            <br />
                            <p style="width: 660px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap">来源 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${topiclist.sname}
                            </p>

                            <div class="pinglun">
                                <p>${topiclist.ttime}<span style="float:right"><img src="/look/imgs/zan.png" alt="">（${topiclist.tgood}）<img src="/look/imgs/see.png" alt="">（${topiclist.tlook})</span>
                                    </br>
                                    <br>
                                </p>
                            </div>
                        </div>
                    </div>
                </li>
              
             
            </ul>

        </div>
          </c:forEach>
    </div>
    <div style="height:100px;"></div>
    <%@ include file="/foot.jsp"%>
			<script type="text/javascript" src="../js/intro.js"></script>
</body>
</html>