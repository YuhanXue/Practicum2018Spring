<%--
  Created by IntelliJ IDEA.
  User: chengli
  Date: 2018/3/6
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>find_resume</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%--<div class="col-lg-6">--%>
    <%--<div class="input-group">--%>
        <%--<input type="text" class="form-control">--%>
        <%--<span class="input-group-btn">--%>
            <%--<button class="btn btn-default" type="button">Go!</button>--%>
        <%--</span>--%>
    <%--</div>--%>
<form method="post" action="${pageContext.request.contextPath}/find_resume.do">
<div class="col-lg-6">
    <div class="input-group">
        <input type="text" class="form-control" name="rs_name"/>
        <span class="input-group-btn">
            <button class="btn btn-default" type="submit">Go!</button>
        </span>
    </div>
  </div>
</div>
</form>
</body>
</html>
