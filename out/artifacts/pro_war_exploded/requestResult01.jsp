<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String username = request.getParameter("userName");
	String passwd = request.getParameter("passwd");
	Cookie cookie = new Cookie(username,passwd);
	cookie.setMaxAge(30000);
	response.addCookie(cookie);
%>

<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="com.test.userRegis"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>

您的用户名为:<jsp:getProperty property="userName" name="user"/>
您的密码为:<jsp:getProperty property="passwd" name="user"/>

</body>
</html>