<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>practicum</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="SignUp.css">
</head>

<body>
    <div class="SignUpBox">
        <img src="" class="user">

        <h1 class=""> Sign Up</h1>

        <form class=""  id="Form" action="${pageContext.request.contextPath}/register.do">

            <div id="s0">
                <p>Username</p>
                <div id="box1">
                    <input type="text" id="Username" placeholder="Create a Username" name="username">
                </div>
            </div>


            <div id="s1">
                <p>Password</p>
                <div id="box2">
                    <input type="password" id="password" placeholder="Create a Password" name="password">
                </div>
            </div>


            <div id="s3">
                <p>ID Number</p>
                <div id="box3">
                    <input type="text" id="id_number" placeholder="Please enter your ID number" name="id_number">
                </div>
            </div>


            <div id="s4">
                <p>College</p>
                <div id="box4">
                    <input type="text" id="college" placeholder="Please enter your college" name="college">
                </div>
            </div>

            <div id="s5">
                <p>Email</p>
                <div id="box5">
                    <input type="email" id="email" placeholder="Please enter your Email" name="email">
                </div>
            </div>


            <div id="s6">
                <p>Academic Degree</p>
                <div class="select">
                <select name="degree" id="degree">
                    <option value="Bachelor">Bachelor</option>
                    <option value="Master">Master</option>
                    <option value="Phd">Phd</option>
                </select>
                </div>
            </div>


            <div id="submit">
                <input type="submit" name="" value="Register">
            </div>
    </form>
    </div>
</body>
</html>
