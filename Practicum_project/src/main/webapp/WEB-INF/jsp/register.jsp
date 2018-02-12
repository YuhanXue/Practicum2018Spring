<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>practicum</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <%--<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>--%>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
    <%--<form action="${pageContext.request.contextPath}/register.do">--%>
        <%--<font color="#ff0000">${email_msg}</font><br />--%>
        <%--Username:<input type="text" name="username"><br/>--%>
        <%--Password:<input type="text" name="password"><br/>--%>
        <%--ID_Number:<input type="text" name="id_number"/><br/>--%>
        <%--Degree:<select name="degree">--%>
        <%--<option value="Bachelor">Bachelor</option>--%>
        <%--<option value="Master">Master</option>--%>
        <%--<option value="Phd">Phd</option>--%>
    <%--</select><br/>--%>
        <%--College:<input type="text" name="college"><br/>--%>
        <%--Email:<input type="text" name="email"><br/>--%>
        <%--<input type="submit"/>--%>
    <%--</form>--%>
    <form class="form-horizontal" action="${pageContext.request.contextPath}/register.do">
        <font color="#ff0000">${email_msg}</font><br />
        <div class="form-group">
            <label for="Username" class="col-sm-2 control-label">Username</label>
            <div class="col-sm-10">
            <input type="text" class="form-control" id="Username" placeholder="Username" name="username">
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-2 control-label">Password</label>
            <div class="col-sm-10">
            <input type="password" class="form-control" id="password" placeholder="Password" name="password">
            </div>
        </div>
        <div class="form-group">

            <label for="id_number" class="col-sm-2 control-label">ID_Number</label>
            <div class="col-sm-10">
            <input type="text" class="form-control" id="id_number" placeholder="id_number" name="id_number">
            </div>
        </div>
        <div class="form-group">
            <label for="college" class="col-sm-2 control-label">College</label>
            <div class="col-sm-10">
            <input type="text" class="form-control" id="college" placeholder="college" name="college">
            </div>
        </div>
        <div class="form-group">
            <label for="email"  class="col-sm-2 control-label">Email</label>
            <div class="col-sm-10">
            <input type="email" class="form-control" id="email" placeholder="Email" name="email">
            </div>
        </div>
        <div class="form-group">
            <label for="degree" class="col-sm-2 control-label">Degree</label>
            <div class="col-sm-10">
            <select name="degree" id="degree" class="form-control">
                <option value="Bachelor">Bachelor</option>
                <option value="Master">Master</option>
                <option value="Phd">Phd</option>
            </select>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </form>
</body>
</html>
