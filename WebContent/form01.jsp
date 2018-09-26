<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<script>
        <% String user = "";%>
        var checkbox = document.getElementById('chbox');
        if (checkbox.defaultChecked){
            <%
				Cookie[] cookies = request.getCookies();
				if(cookies != null){
					for(Cookie c:cookies){
						if("user".equals(c.getName())){
							user = c.getName();
						}
					}
				}

            %>
        }
	</script>

</head>
<body>

<form action="requestResult01.jsp" method="post">

	username<input type="text" name="userName" value="<%=user %>" />
	password<input type="text" name="passwd" value="" />
	<input type="submit" value="提交"/>
	Remember Me<input type="checkbox" id="chbox" value="">
</form>


</body>
</html>