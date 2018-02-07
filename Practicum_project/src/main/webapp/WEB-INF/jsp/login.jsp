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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<form action="${pageContext.request.contextPath}/login.do">
    <font color="#ff0000">${user_msg}</font><br />
Username:<input type="text" name="username"><br/>
Password:<input type="text" name="password"><br/>
    <input type="submit"/>
</form>
<img src="images/banner.jpg" />
</body>
</html>
