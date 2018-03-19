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
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <%--<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>--%>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="css/Login.css"></link>
    <script type="text/javascript">
        function check(){
            var list = document.getElementsByTagName("input");
            for(var i=0;i<list.length;i++){
                if(list[i].value==""){
                    alert("you should fill in the form");
                    return false;
                }
            }
            return true;
        }
    </script>
</head>

<body>
<div class="loginBox">
    <img src="../images/UserProfile.png" class="user"/>
    <h1>User Login</h1>
    <form method="post" action="${pageContext.request.contextPath}/login.do" onsubmit="return check()">
        <div>
            <p>Username</p>
            <input type="text" id="Username" placeholder="Enter Username" name="username"/>
        </div>

        <div>
            <p>Password</p>
            <input type="password" id="password" placeholder="Enter Password" name="password"/>
        </div>

        <div>
            <input type="submit" value="Sign In"/>
        </div>

        <a href="#">Forget Your Password ?</a>
    </form>
</div>

<%--<form class="form-horizontal" action="${pageContext.request.contextPath}/login.do">--%>
    <%--<h1 class="page-header"><span class="glyphicon glyphicon-user"></span> User Login</h1>--%>
    <%--<font color="#ff0000">${user_msg}</font><br />--%>
    <%--<div class="form-group">--%>
        <%--<label for="Username" class="col-sm-2 control-label">Username</label>--%>
        <%--<div class="col-sm-6">--%>
            <%--<input type="text" class="form-control"  id="Username" placeholder="Username" name="username">--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class="form-group">--%>
        <%--<label for="password" class="col-sm-2 control-label">Password</label>--%>
        <%--<div class="col-sm-6">--%>
            <%--<input type="password" class="form-control" id="password" placeholder="Password" name="password">--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class="form-group">--%>
        <%--<div class="col-sm-offset-2 col-sm-10">--%>
            <%--<button type="submit" class="btn btn-primary">Submit</button>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</form>--%>

</body>
</html>
