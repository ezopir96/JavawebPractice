<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/26 0026
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie cookie = new Cookie("user","zs-123");
/* Cookie c = new Cookie("usernme","zs");
Cookie p = new Cookie("psw","123"); */
    cookie.setMaxAge(30);
    response.addCookie(cookie);

//获取cookie
    Cookie[] cookies = request.getCookies();
    for(Cookie c:cookies){
        System.out.println(c.getName()+","+c.getValue());
    }

%>
</body>
</html>
