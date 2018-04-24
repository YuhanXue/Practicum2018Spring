<%--
  Created by IntelliJ IDEA.
  User: chengli
  Date: 2018/2/8
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Verify Page</title>
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
</head>
<body>
   <%--Your email has been verify, <a href="login.do">click here to login page</a>--%>
   <div>your account has been verified successfully after&nbsp;&nbsp;&nbsp;<span id="time" style="color: red;">5</span>&nbsp;&nbsp;&nbsp;seconds will jump to login page</div>
   <script type="text/javascript">
       $(function () {
           setInterval(ChangeTime,1000);
       });

       function ChangeTime() {
           var time;
           time = $("#time").text();
           time=parseInt(time);
           time--;
           if(time<=0){
               window.location.href="${pageContext.request.contextPath}/login"
           }else {
               $('#time').text(time);
           }
       }
   </script>
</body>
</html>
