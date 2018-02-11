<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>practicum</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

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
    <form action="${pageContext.request.contextPath}/register.do">
        <font color="#ff0000">${email_msg}</font><br />
        <div class="form-group">
            <label for="Username">Username</label>
            <input type="text" class="form-control" id="Username" placeholder="Username" name="username">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" placeholder="Password" name="password">
        </div>
        <div class="form-group">
            <label for="id_number">ID_Number</label>
            <input type="text" class="form-control" id="id_number" placeholder="id_number" name="id_number">
        </div>
        <div class="form-group">
            <label for="college">College</label>
            <input type="text" class="form-control" id="college" placeholder="college" name="college">
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" placeholder="Email" name="email">
        </div>
        <div class="form-group">
            <label for="degree">Degree</label>
            <select name="degree" id="degree" class="form-control">
                <option value="Bachelor">Bachelor</option>
                <option value="Master">Master</option>
                <option value="Phd">Phd</option>
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</body>
</html>
