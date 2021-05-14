<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../css/teacherIntroduStyles.css">
<link rel="stylesheet" type="text/css" href="../css/head_foot.css">
    <title>Look圈论坛</title>
</head>
<body>
<%@ include file="/head.jsp"%>
        <div style="width:1120px;height:1300px;margin:auto">
           <!-- title -->
           <c:forEach items="${onetopiclist}"  var="onetopiclist">
           <div style="border:1px solid gray ;border-radius:30px;height:150px;margin-top:10px;">
           <br><br>
               <div style="margin-left:20px;">
		            <div><b style="font-size:40px">${onetopiclist.tname}</b></div><br>
		            <div>
		                <span>发布者:</span><span>${onetopiclist.sname}</span><span style="margin-left:20px">发布时间:${onetopiclist.ttime}</span><span style="margin-left:20px">访问量：${onetopiclist.tlook}</span>
		            <span>&nbsp;&nbsp;&nbsp;&nbsp;${onetopiclist.ttype}</span>
		            </div>
	            </div>
            </div>
           <!-- content -->
           <div style="height:50px"></div>
           <div style="width:100%;height:600px;border:1px solid gray ;border-radius:30px;"><br><br>&nbsp;&nbsp;&nbsp;&nbsp;${onetopiclist.tcontent}</div>
           
            <!-- review     -->
            <div style="border:1px solid gray;margin-top:20px;border-radius:30px;height:150px">
            <div style="margin-left:30px;margin-top:20px;">
            <a href="/look/topic/dianzan.htm?tid=${onetopiclist.tid}">点赞</a>（${onetopiclist.tgood}）
            <br>
            <hr>
            <form action="/look/comment/addcomment.htm" method="post">
				<textarea  style="border:2px solid black"rows="3" cols="130" name="comment"></textarea>
				<input type="hidden" name="tid" value="${onetopiclist.tid}">
				<input type="hidden" name="sid" value="${stu.sid}">
				<br><input type="submit" value="提交"> 
				<input type="reset" value="重置">
			</form>
            </c:forEach>
                <ul>
                <br><br><br>
                <c:forEach items="${commentlist}"  var="commentlist">
                	<hr>
                        <li class="row" style="vertical-align: middle;border-bottom:1px solid gray;list-style: none;align-content: center;">
                                <!-- <p class="touxiang" style="display:inline-block;border-radius:5px;background:gray;width:5%;text-align:center;line-height:50%;align:center">12</p> -->
                               
                                <div>
                                    <p class="col-xs-4 col-offset-xs-1" style="align-content:center;" id="left">
                                        
                                        <img src="${commentlist.sphoto}" style="height:80px;border-radius:10px;float:left;" alt="头像" /> 
                                    </p>
                                    <div class="col-xs-6" class="tiezi" id="right">
                                        <p>
                                            <B>${commentlist.sname}</B>
                                        </p>
                                        
                                        <p style="width: 660px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap">${commentlist.comment}
                                        </p>
                                        <p>${commentlist.comtime} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    </br>
                                                    <br>
                                                </p>
                                    </div>
                                </div>
                            </li>
                     </c:forEach>
                </ul>
                </div>
            </div>
        </div>
            <%@ include file="/foot.jsp"%>
			<script type="text/javascript" src="../js/intro.js"></script>
</body>
</html>