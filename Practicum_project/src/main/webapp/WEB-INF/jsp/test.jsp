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

    <link rel="stylesheet" href="css/resume.css"></link>
    <script type="text/javascript">
        function check(){
            var list = document.getElementsByTagName("input");
            for(var i=0;i<list.length;i++){
                if(list[i].value==""){
                    alert("you should fill out the form");
                    return false;
                }
            }
            return true;
        }
    </script>
</head>

<body>
<div>

</div>



</body>
</html>
