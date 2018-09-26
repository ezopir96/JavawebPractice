<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="stu" class="com.test.Student">
	</jsp:useBean>	
	<jsp:setProperty property="*" name="stu"/>
	
	<jsp:getProperty property="name" name="stu" param="anonymous"/>
	<jsp:getProperty property="id" name="stu"/>
	<jsp:getProperty property="age" name="stu"/>
</body>
</html>