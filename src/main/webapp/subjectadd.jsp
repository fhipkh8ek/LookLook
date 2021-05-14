<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>添加题目</h3>
		<form action="subjectadd" method="post" target="myIframe" enctype="multipart/form-data">
			题目编号：<input type="text" name="id"><br>
			题目：<textarea rows="10" cols="50" name="question"></textarea><br>
			选项1：<input type="text" name="item1"><br>
			选项2：<input type="text" name="item2"><br>
			选项3：<input type="text" name="item3"><br>
			选项4：<input type="text" name="item4"><br>
			答案：<input type="text" name="answer"><br>
			解释：<input type="text" name="explains"><br>
			图片：<input type="file" name="url"><br>
			<input type="hidden" name="wrongnumber" value="0">
			<input type="submit" value="确认提交">
		</form>
	</center>
</body>
</html>