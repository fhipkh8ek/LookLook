<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>LOOK圈——全真模拟考试</title>
<link rel="stylesheet" type="text/css" href="/look/css/head_foot.css">
<link rel="stylesheet" type="text/css" href="/look/css/exam_test.css">
    
</head>
<body onload="javascript:timedCount()">
		
	<div class="exam_testpage">
		<!--头部-->
		<%@include file="head.jsp"%>
		
		<input type="hidden" name="control_i">
		<input type="hidden" name="answer_i">
		<input type="hidden" name="submit_i">
					
		<div class="content">
			<div class="content_show">
				<div class="test_contain">
					<div class="test_contain_left">
						<div class="theory_test">
							<fieldset class="local_info">
								<legend>理论考试</legend>
								<span>科目一、科目四</span>
							</fieldset>
						</div>
						<div class="candidate_msg">
							<fieldset class="candidate_info">
								<legend>考试信息</legend>
								<div class="photo">
									<img src="/look/imgs/w_03.png">
								</div>
								<div class="msg_text">
									<p>科目一科目四考试要求</p>
									<p>考试题数：100题</p>
									<p>考试时间：45分钟</p>
									<p>合格标准：满分100分</p>
									<p>90分及格</p>
								</div>
							</fieldset>
						</div>
					</div>
					
					<div class="test_contain_right">
						<fieldset class="test_name">
							<legend>在线题目</legend>
							<div class="text_content_con">
								<div class="text_content_top">
									<div class="text_content_left">
										<div class="text_content_lshow">
											<div class="text_question">
												<i>${exam.iid}</i>
												<p class="question">${exam.question }</p>
											</div>
											<p>A、${exam.item1 }</p>
											<p>B、${exam.item2 }</p>
											<p>C、${exam.item3 }</p>
											<p>D、${exam.item4 }</p>
										</div>
									</div>
									<div class="text_content_right">
										<div class="text_content_rshow">
											<img src="${exam.url }"> <span><a href="${exam.url }" target="_blank" id="s_img">查看大图</a></span>
										</div>
									</div>
								</div>
								<div class="text_content_btom">
									<div class="text_content_choose">
										<span>请选择：</span>
										<%-- <a href="exam_answer?control_i=${index+1 }&answer_i=${1}"><button class="choose" type="button">A</button></a>
                                        --%>
                                        <a><button class="choose" type="button">A</button></a>
                                        <a><button class="choose" type="button">B</button></a>
                                        <a><button class="choose" type="button">C</button></a>
                                        <a><button class="choose" type="button">D</button></a>
									</div>
								</div>
							</div>
						</fieldset>
					</div>
					
				</div>
				<div class="test_information">
					<div class="test_information_left">
						<fieldset class="time_less">
							<legend>每题时间</legend>
							<span id="time1"><input type="text" id="time"></span>
						</fieldset>
					</div>
					<div class="test_information_right">
						<fieldset class="tishi_msg">
							<legend>参考答案</legend>
							<span id="tishi_span">
								<c:if test="exam.answer==4">D</c:if>
							${exam.answer}
							</span>
						</fieldset>
					</div>
					
					<div class="submit_answer">					
						<%-- <a href="exam_test?control_i=${index-1 }&answer_i=${0}"><button class="prev">上一题</button></a>
						<a href="exam_test?control_i=${index+1 }&answer_i=${0}"><button class="next">下一题</button></a>
						<a href="exam_submit?submit_i=${200 }"><button class="hand_test" type="button">交卷</button></a> --%>
						<a href=/look/exam/getexamquestion.htm?iid=1><button class="prev">上一题</button></a>
						<a href=/look/exam/getexamquestion.htm?iid=2><button class="next">下一题</button></a>
						<a><button  class="hand_test">查看答案</button></a>
					</div>
				</div>
				<div class="test_answer">
					<fieldset class="answer_msg">
						<legend>答题信息</legend>
						<ul>
							${exam.explains}
						</ul>
					</fieldset>				
				</div>
			</div>
		</div>

		<!--尾部-->
		<%@include file="foot.jsp"%>
		
		<input type="hidden" name="item3" value="${subject.item3 }" id="getItem">
		<input type="hidden" name="url" value="${subject.url }" id="geturl">
	</div>
</body>

<script type="text/javascript">
	var c=0
	var t
	function timedCount(){
		document.getElementById('time').value=c+"s"
		c=c+1
		t=setTimeout("timedCount()",1000)
	}
</script>


</html>