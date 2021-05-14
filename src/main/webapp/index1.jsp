<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/look/bootstrap/css/bootstrap.min.css"/>
<script type="text/javascript" src="/look/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="/look/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<button class="btn btn-primary" onclick="sendAjax()">点此发送请求</button>
	<script type="text/javascript">
		function sendAjax(){
			$.post('/look/user/login.htm',function(data){
				alert(data.userName);
			},'json');
		}
	</script>
	<hr>
	123
</body>
</html>