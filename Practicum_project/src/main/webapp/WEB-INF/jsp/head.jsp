<%--
  Created by IntelliJ IDEA.
  User: chengli
  Date: 2018/3/28
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>head</title>
    <link rel="stylesheet" href="css/base.css"/>
    <link rel="stylesheet" href="css/Home.css"/>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
</head>
<body>
<div class="shortcut">
    <div class="w">
        <div class="scleft">
            <ul class="main">
                <li><a href="${pageContext.request.contextPath}/Home" class="findjob" style="display:block;float: left; font-size: 17px;line-height: 30px;">Find job</a></li>
                <li><a href="${pageContext.request.contextPath}/Company" style="display:block;font-size: 17px;line-height: 30px;">Company Review</a></li>
                <li><a style="display:block;font-size: 17px;line-height: 30px;">Find Salaries</a></li>
                <li><a id="find_resume" onclick="checkright()" style="display:block;font-size: 17px;line-height: 30px;">Find Resume</a></li>
                <li><a href="#" class="nav-item" id="post" onclick="checkpostright()">Post job</a></li>
                <li class="messages" id="messages"><a style="font-size: 17px;line-height: 30px;">Welcome ${user.username}</a>

                    <ul class="box" id="box">
                        <%--<li><a href="${pageContext.request.contextPath}/ModifyUserInfo">modify user information and resume</a></li>--%>
                        <li><a href="${pageContext.request.contextPath}/myAccount">User center</a></li>
                        <li><a href="${pageContext.request.contextPath}/show_jobapplied_list.do">job applied</a></li>
                        <li><a href="${pageContext.request.contextPath}/logout.do">Logout</a></li>
                    </ul>

                </li>
            </ul>

        </div>

    </div>
</div>
<%--<div class="w">--%>
    <%--<nav class="nav-main">--%>
        <%--<div class="logo">Find Your Job</div>--%>

        <%--<ul>--%>
            <%--<li><a href="#" class="nav-item">Find job</a></li>--%>
            <%--<li><a href="${pageContext.request.contextPath}/Company" class="nav-item">Company Review</a></li>--%>
            <%--<li><a href="#" class="nav-item">Find Salaries</a></li>--%>
            <%--<li><a href="${pageContext.request.contextPath}/find_resume" class="nav-item">Find Resume</a></li>--%>
            <%--<li><a href="#" class="nav-item">Post job</a></li>--%>
            <%--<li id="messages" style="padding-left: 120px"><a href="#" class="nav-item">Welcome ${user.username}</a>--%>
                <%--&lt;%&ndash;<div class="nav-content">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="nav-sub">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<ul id="box">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<li><a href="${pageContext.request.contextPath}/myAccount">User center</a></li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<li><a href="">company applied</a></li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<li><a href="${pageContext.request.contextPath}/logout.do">Logout</a></li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>   &ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--<ul class="box" id="box">--%>
                    <%--<li><a class="nav-item1" href="${pageContext.request.contextPath}/myAccount">User center</a></li>--%>
                    <%--<li><a class="nav-item1" href="${pageContext.request.contextPath}/show_jobapplied_list.do">job applied</a></li>--%>
                    <%--<li><a class="nav-item1" href="${pageContext.request.contextPath}/logout.do">Logout</a></li>--%>
                <%--</ul>--%>
            <%--</li>--%>
        <%--</ul>--%>

    <%--</nav>--%>
<%--</div>--%>
<%
    String s = (String) session.getAttribute("rs_msg");
%>
<%
    String t = (String) session.getAttribute("p_msg");
%>
<script language="JavaScript">
    document.getElementById("messages").onmouseout=function(){//当鼠标滑出
        document.getElementById("box").style.visibility="hidden";
    };
    document.getElementById("messages").onmouseover=function(){ //当鼠标经过
        document.getElementById("box").style.visibility="visible";
    };
    function checkright(){
        var s = '<%=s%>';
        if(s == "1"){

            document.getElementById("find_resume").href ="${pageContext.request.contextPath}/find_resume";
        }
        else {
            alert(s);

        }

    };
    function checkpostright() {
        var s = '<%=t%>';
        if(s == "1"){

            document.getElementById("post").href ="${pageContext.request.contextPath}/job_post";
        }
        else {
            alert(s);

        }
    };
</script>
    </body>
</html>
