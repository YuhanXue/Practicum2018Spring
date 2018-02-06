<%--
  Created by IntelliJ IDEA.
  User: chengli
  Date: 2018/2/6
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/login.do">
    <font color="#ff0000">${user_msg}</font><br />
Username:<input type="text" name="username"><br/>
Password:<input type="text" name="password"><br/>
    <input type="submit"/>
</form>
</body>
</html>
