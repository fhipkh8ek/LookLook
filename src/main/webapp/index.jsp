<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOOK圈——驾考服务平台</title>

    <link href="/look/css/index.css" rel="stylesheet" type="text/css">
    <link href="/look/css/bootstrap.min.css" rel="stylesheet">
    <link href="/look/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="/look/css/animate.min.css" rel="stylesheet" media="all">
    <!-- Bootstrap bootstrap-touch-slider Slider Main Style Sheet -->
    <link href="/look/css/bootstrap-touch-slider.css" rel="stylesheet" media="all">
    <!--<script src="js/index.js"></script>-->
    <link href="/look/css/img_show.css" rel="stylesheet" type="text/css">
</head>
<body>
    <!--首页-->
    <div id="firstPage">

       <%@ include file="head.jsp"%>

        <!--内容-->
        <div id="content">

            <!--banner-->
            <div id="bootstrap-touch-slider" class="carousel bs-slider fade  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="5000" >

                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#bootstrap-touch-slider" data-slide-to="0" class="active"></li>
                    <li data-target="#bootstrap-touch-slider" data-slide-to="1"></li>
                    <li data-target="#bootstrap-touch-slider" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper For Slides -->
                <div class="carousel-inner" role="listbox">

                    <!-- Third Slide -->
                    <div class="item active">

                        <!-- Slide Background -->
                        <img src="/look/images/b1.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                        <div class="bs-slider-overlay"></div>

                        <div class="container">
                            <div class="row">
                                <!-- Slide Text Layer -->
                                <div class="slide-text slide_style_left">
                                    <h1 data-animation="animated zoomInRight">一个驾考服务平台</h1>
                                    <p data-animation="animated fadeInLeft">打造良好的学车环境，更优质的服务</p>
                                    <a href="/look/driverschool/fristdriverschool.htm" target="_blank" class="btn btn-default" data-animation="animated fadeInLeft">点击查看</a>
                                    <a href="/look/register.jsp" target="_blank"  class="btn btn-primary" data-animation="animated fadeInRight">注册报名</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End of Slide -->

                    <!-- Second Slide -->
                    <div class="item">

                        <!-- Slide Background -->
                        <img src="/look/images/b2.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                        <div class="bs-slider-overlay"></div>
                        <!-- Slide Text Layer -->
                        <div class="slide-text slide_style_center">
                            <h1 data-animation="animated flipInX">高效安全拿驾驶证</h1>
                            <p data-animation="animated lightSpeedIn">一个你值得拥有的LOOK驾考平台</p>
                            <a href="/look/driverschool/fristdriverschool.htm" target="_blank" class="btn btn-default" data-animation="animated fadeInUp">点击查看</a>
                            <a href="/look/register.jsp" target="_blank"  class="btn btn-primary" data-animation="animated fadeInDown">注册报名</a>
                        </div>
                    </div>
                    <!-- End of Slide -->

                    <!-- Third Slide -->
                    <div class="item">

                        <!-- Slide Background -->
                        <img src="/look/images/p3.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                        <div class="bs-slider-overlay"></div>
                        <!-- Slide Text Layer -->
                        <div class="slide-text slide_style_right">
                            <h1 data-animation="animated zoomInLeft">找教练、练题、交流</h1>
                            <p data-animation="animated fadeInRight">LOOK可以帮你做到</p>
                            <a href="/look/driverschool/fristdriverschool.htm" target="_blank" class="btn btn-default" data-animation="animated fadeInLeft">点击查看</a>
                            <a href="/look/register.jsp" target="_blank" class="btn btn-primary" data-animation="animated fadeInRight">注册报名</a>
                        </div>
                    </div>
                    <!-- End of Slide -->


                </div><!-- End of Wrapper For Slides -->

                <!-- Left Control -->
                <a class="left carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="prev">
                    <span class="fa fa-angle-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>

                <!-- Right Control -->
                <a class="right carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next">
                    <span class="fa fa-angle-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>

            </div> <!-- End  bootstrap-touch-slider Slider -->

 <!--考试-->
            <div id="exam">

                <!--理论考试显示部分-->
                <div class="exam_show">
                    <!--标题-->
                    <div class="exam_title">
                        <p>LOOK驾驶考试</p>
                        <hr class="exam_line">
                    </div>

                    <!--内容-->
                    <div class="exam_content">
                        <div class="exam_1">
                            <a href="/look/exam/getexamquestion.htm?iid=1">
                                <img src="/look/imgs/lc_02.png">
                                <p class="exam_num">科目一</p>
                                <p class="exam_des">驾驶员理论考试</p>
                            </a>
                        </div>
                         <div class="exam_text">
                            <div class="exam_text_1">
                                <a href="/look/exam/getexamquestion.htm?iid=1">
                                    <p class="exam_text_p1">科目一</p>
                                    <p class="exam_text_p2">根据公安部123号令，学员需要了解机动车基本知识，掌握道路交通安全法律、法规及道路交通信号的规定。</p>
                                </a>
                            </div>
                            <div class="exam_text_4">
                                <a href="/look/exam/getexamquestion.htm?iid=4">
                                    <p class="exam_text_p1">科目四</p>
                                    <p class="exam_text_p2">学员需要掌握安全文明驾驶知识，具备对车辆综合控制能力；熟练掌握一般道路和夜间驾驶方法。</p>
                                </a>
                            </div>
                        </div>
                   
                        <div class="exam_4">
                            <a href="/look/exam/getexamquestion.htm?iid=4">
                                <img src="/look/imgs/lc_05.png">
                                <p class="exam_num">科目四</p>
                                <p class="exam_des">安全文明驾驶常识考试</p>
                            </a>
                        </div>
                    </div>

                </div>
            </div>
            <br><br>
           
            <!--LOOK教练排行榜-->
            <div id="teacher">

                <!--显示部分-->
                <div class="teacher_show">
                    <!--标题-->
                    <div class="teacher_title">
                        <p>LOOK排行榜</p>
                        <hr class="teacher_line">
                    </div>

                    <!--内容部分-->
                    <div class="teacher_content">

                        <!--口碑排行-->
                        <div class="talk">
                            <div class="t_title">
                                <p>口碑排行榜</p>
                            </div>
                            <div class="talk_con">
                                <ul>
                                <c:forEach items="${driverschool}"  var="driverschool" varStatus="a">
                                    <li class="list_top">
                                        <div class="list_num1">${a.count}</div>
                                        <div class="list_pic">
                                            <a href="/look/driverschool/getonedriverschool.htm?did=${driverschool.did}">
                                                <img src="${driverschool.dphoto}"/>
                                            </a>
                                         </div>
                                        <div class="list_text">
                                           <a href="/look/driverschool/getonedriverschool.htm?did=${driverschool.did}"><p class="text_name">${driverschool.dname }</p></a>
                                           <p class="text_p">评分：${driverschool.sid}</p>
                                           <p class="text_p">地址：${driverschool.daddress }</p>
                                        </div>
                                    </li>
                                    <br><br>
                             </c:forEach>
                                </ul>
                            </div>
                        </div>

                        <!--权威排行-->
                        <div class="power">
                            <div class="t_title">
                                <p>教练权威榜</p>
                            </div>
                            <div class="pt_con">
                                <ul>
                                 <c:forEach items="${coach}"  var="coach" varStatus="a">
                                    <li>
                                        <div class="pt_num1">${a.count }</div>
                                        <div class="pt_img">
                                            <a href="/look/coach/getnamecoach.htm?cid=${coach.cid}">
                                                <img src="${coach.cphoto }">
                                            </a>
                                        </div>
                                        <div class="pt_center">
                                            <a href="/look/coach/getnamecoach.htm?cid=${coach.cid}"><p class="t_name">${coach.cname }</p></a>
                                            <p class="t_text">评分员：${coach.cscore }<span class="t_star">${coach.caddress}</span></p>
                                        </div>
                                    </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>

                        <!--综合排行-->
                        <div class="total">
                            <div class="t_title">
                                <p>教练综合榜</p>
                            </div>
                            <div class="pt_con">
                                <ul>
                                <c:forEach items="${coachlist}"  var="coachlist" varStatus="a">
                                    <li>
                                        <div class="pt_num1">${a.count }</div>
                                        <div class="pt_img">
                                            <a href="/look/coach/getnamecoach.htm?cid=${coachlist.cid}">
                                                <img src="${coachlist.cphoto }">
                                            </a>
                                        </div>
                                        <div class="pt_center">
                                            <a href="/look/coach/getnamecoach.htm?cid=${coachlist.cid}"><p class="t_name">${coachlist.cname }</p></a>
                                            <p class="t_text">评分：${coachlist.cscore }<span class="t_star">${coachlist.caddress }</span></p>
                                        </div>
                                    </li>
                                   </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

            </div> 

            <!--LOOK分享-->
            <div id="about">
                <!--展示框-->
                <div class="about_show">
                    <!--标题-->
                    <div class="about_title">
                        <p>LOOK图片分享</p>
                        <hr class="about_line">
                    </div>
                    <!--内容-->
                    <div class="about_content">
                        <ul id="demo">
                            <li class="active"> <a href="#"><img src="/look/images/1.png"  /></a>
                                <div><a href="#">驾考资讯</a></div>
                            </li>
                             <li> <a href="#"><img src="/look/images/2.png"  /></a>
                                <div><a href="#">驾考资讯</a></div>
                            </li>
                             <li > <a href="#"><img src="/look/images/3.png"  /></a>
                                <div><a href="#">驾考资讯</a></div>
                            </li>
                             <li > <a href="#"><img src="/look/images/4.png"  /></a>
                                <div><a href="#">驾考资讯</a></div>
                            </li>
                             <li > <a href="#"><img src="/look/images/5.png"  /></a>
                                <div><a href="#">驾考资讯</a></div>
                            </li>
                   
                        </ul>
                    </div>
                </div>
            </div>

            <!--LOOK热点话题-->
            <div id="topic">
                <!--显示部分-->
                <div class="topic_show">
                    <!--标题-->
                    <div class="topic_title">
                        <p>LOOK热点话题</p>
                        <hr class="topic_line">
                    </div>
                    <!--内容-->
                    <div class="topic_content">
                        <!--展示的话题-->
                        <div class="topic_display">
                            <ul>
                            <c:forEach items="${topic}"  var="topic">
                                <li>
                                    <div class="display_img">
                                        <a href="/look/topic/getonetopic.htm?tid=${topic.tid}"><img src="${topic.tphoto }"/></a>
                                    </div>
                                    <div class="display_text">
                                        <a href="/look/topic/getonetopic.htm?tid=${topic.tid}">
                                            <p class="display_title">${topic.tname }</p>
                                        </a>
                                        <div class="display_con">
                                            <div class="display_con_left">
                                                <div class="left_img">
                                                    <img src="${topic.tphoto}">
                                                </div>
                                                <div class="left_text">
                                                   ${topic.sname }
                                                </div>
                                            </div>
                                            <div class="display_con_right">
                                                <img src="/look/imgs/see.png" alt="">
                                                <span>${topic.tlook }</span>
                                                <img src="/look/imgs/zan.png" alt="">
                                                <span>${topic.tgood }</span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                </c:forEach>
                                <div class="see_more">
                                    <a href="/look/topic/alltopic.htm">
                                        更多>
                                    </a>
                                </div>
                            </ul>
                        </div>

                    </div>
                </div>

             </div> 

        </div>
		
		<%@ include file="foot.jsp"%> 
    </div>
</body>
<script src="/look/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="/look/js/bootstrap.min.js"></script>
<script src="/look/js/jquery.touchSwipe.min.js"></script>
<script src="/look/js/bootstrap-touch-slider.js"></script>
<script type="text/javascript">
    $('#bootstrap-touch-slider').bsTouchSlider();
</script>
<script src="/look/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="/look/js/jquery.indexSlidePattern.js"></script>
<script language="javascript">
    $(document).ready(function(e){
        var opt	=	{
            "speed"	:	"normal"		,	//变换速度,三速度可选 slow,normal,fast;
            "by"	:	"mouseover"		,	//触发事件,click或者mouseover;
            "auto"	:	true		,	//是否自动播放;
            "sec"	:	3000	 		//自动播放间隔;
        };
        $("#demo").IMGDEMO(opt);
    });
</script>
</html>