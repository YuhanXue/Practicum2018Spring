<%--
  Created by IntelliJ IDEA.
  User: chengli
  Date: 2018/4/2
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LogoutSuccess</title>
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
</head>
<body>
<!------------------  重启操作 准备弹窗 --------------->
<div id="reboot_pre" style="width: 450px; height: 200px; margin-left:auto; margin-right:auto; margin-top:200px; visibility:hidden; background: #F0F0F0; border:1px solid #00DB00; z-index:9999">
    <div style="width: 450px; height: 30px; background:#00DB00; line-height:30px;text-align: center;"><b>Preparing</b></div>
    <br /><br />
    <div><p style="margin-left:50px">We try to let you logout system please wait..<span id="reboot_pre_time">4</span> seconds</p></div>
    <br />
    <div><button type="button" style="width:70px; height:20px; margin-left:340px" onclick="reboot_cancel()">cancel</button></div>
</div>

</body>
</html>
