<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>practicum</title>

</head>

<body>
    <form action="${pageContext.request.contextPath}/register.do">
        <font color="#ff0000">${email_msg}</font><br />
        Username:<input type="text" name="username"><br/>
        Password:<input type="text" name="password"><br/>
        ID_Number:<input type="text" name="id_number"/><br/>
        Degree:<select name="degree">
        <option value="Bachelor">Bachelor</option>
        <option value="Master">Master</option>
        <option value="Phd">Phd</option>
    </select><br/>
        College:<input type="text" name="college"><br/>
        Email:<input type="text" name="email"><br/>
        <input type="submit"/>
    </form>
</body>
</html>
