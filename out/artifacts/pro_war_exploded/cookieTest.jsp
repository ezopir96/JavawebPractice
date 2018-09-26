<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/26 0026
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username = request.getParameter("userName");
    String passwd = request.getParameter("passwd");
    Cookie cookie = new Cookie(username,passwd);
    cookie.setMaxAge(30000);
    response.addCookie(cookie);
%>

</body>
</html>
