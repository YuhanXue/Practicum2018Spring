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
<%--<div>You have logout successfully,after&nbsp;&nbsp;&nbsp;<span id="time" style="color: red;">5</span>&nbsp;&nbsp;&nbsp;seconds will jump to login page</div>--%>
<%--<script type="text/javascript">--%>
<%--$(function () {--%>
    <%--setInterval(ChangeTime,1000);--%>
<%--});--%>

    <%--function ChangeTime() {--%>
        <%--var time;--%>
        <%--time = $("#time").text();--%>
        <%--time=parseInt(time);--%>
        <%--time--;--%>
        <%--if(time<=0){--%>
            <%--window.location.href="${pageContext.request.contextPath}/login"--%>
        <%--}else {--%>
            <%--$('#time').text(time);--%>
        <%--}--%>
    <%--}--%>
<%--</script>--%>
<!------------------  重启操作 准备弹窗 --------------->
<div id="reboot_pre" style="width: 450px; height: 200px; margin-left:auto; margin-right:auto; margin-top:200px; visibility:hidden; background: #F0F0F0; border:1px solid #00DB00; z-index:9999">
    <div style="width: 450px; height: 30px; background:#00DB00; line-height:30px;text-align: center;"><b>Preparing</b></div>
    <br /><br />
    <div><p style="margin-left:50px">We try to let you login system please wait..<span id="reboot_pre_time">1</span> seconds</p></div>
    <br />
</div>
<!------------------  重启操作 准备弹窗 --------------->

<!------------------  重启操作 进行弹窗 --------------->
<div id="reboot_ing" style="width: 450px; height: 150px;  margin-left:auto; margin-right:auto; margin-top:-150px; visibility: hidden; background: #F0F0F0; border:1px solid #00DB00">
    <div style="width: 450px; height: 30px; background:#00DB00; line-height:30px;text-align: center;"><b>Processing</b></div>
    <br />
    <div><p style="margin-left:40px">Try to restart system...   please wait <span id="reboot_ing_time">2</span>second</p></div>
    <br />
    <div  id="progress_reboot" style="margin-left:40px;color:#00DB00;font-family:Arial;font-weight:bold;height:18px">|</div>
    <br />
</div>
<!------------------  重启操作 进行弹窗 --------------->


<script type="text/javascript">

    var cancel_flag = 0;
    var already = 0;

    /* 网页一加载就执行的操作 */
    window.onload = reboot();

    /* 重启按钮的单击操作 */
    function reboot(){
        if(confirm("registersuccessful and we will let you login to our website")){

            window.location.href="${pageContext.request.contextPath}/login";
        }
    }
    /* 重启准备弹窗计时 5秒 */
    function delayPre_reboot(str) {
        if(!cancel_flag){
            var delay = document.getElementById(str).innerHTML;
            if(delay > 0) {
                delay--;
                document.getElementById(str).innerHTML = delay;
                setTimeout("delayPre_reboot('reboot_pre_time')", 1000);
            } else {
                hideDiv("reboot_pre");
                setTimeout("showDiv('reboot_ing')",500);
                delayDo_reboot("reboot_ing_time");
            }
        }
    }
    /* 重启进行中弹窗计时 15秒 */
    function delayDo_reboot(str){
        display_reboot(100);
        var delay = document.getElementById(str).innerHTML;
        if(delay > 0) {
            delay--;
            document.getElementById(str).innerHTML = delay;
            setTimeout("delayDo_reboot('reboot_ing_time')", 1000);
        } else {
            hideDiv("reboot_ing");
            alert("successful！");
            window.location.href="${pageContext.request.contextPath}/logout.do";
        }
    }x
    /* 重启准备时 取消按钮的事件*/
    function reboot_cancel(){
        cancel_flag = 1;
        hideDiv("reboot_pre");

        alert("you already cancel logout the system");
        window.location.href="${pageContext.request.contextPath}/login";
    }
    /* 显示弹窗 */
    function showDiv (str){
        document.getElementById(str).style.visibility = "visible";
    }
    /* 隐藏弹窗 */
    function hideDiv (str){
        document.getElementById(str).style.visibility = "hidden";
    }

    /* 重启进行中弹窗计时，缓冲条的移动*/
    function display_reboot(max){
        already++;
        var dispObj = document.all.progress_reboot;
        dispObj.style.width = 100.0*already/max+"px";
        document.all.progress_reboot.innerHTML += "||||||||||||||||||||||||||||||||||";
        // var timer = window.setTimeout("display("+max+")",1000);
        // if (already >= max){
        //     window.clearTimeout(timer);
        // }
    }

</script>
</body>
</html>
