<%--
  Created by IntelliJ IDEA.
  User: chengli
  Date: 2018/3/28
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>head</title>
    <link rel="stylesheet" href="css/base.css"/>
</head>
<body>
<div class="shortcut">
    <div class="w">
        <div class="scleft">
            <ul class="main">
                <li><a href="#" class="findjob" style="display:block;float: left; font-size: 17px;line-height: 30px;">Find job</a></li>
                <li><a style="display:block;font-size: 17px;line-height: 30px;">Company Review</a></li>
                <li><a style="display:block;font-size: 17px;line-height: 30px;">Find Salaries</a></li>
                <li><a style="display:block;font-size: 17px;line-height: 30px;">Find Resume</a></li>
                <li><a style="display:block;font-size: 17px;line-height: 30px;">Post job</a></li>
                <li class="messages" id="messages"><a style="font-size: 17px;line-height: 30px;">User Center</a>

                    <ul class="box" id="box">
                        <li><a href="">标准</a></li>
                        <li><a href="">教程</a></li>
                        <li><a href="">技术文章</a></li>
                        <li><a href="">常见问题</a></li>
                        <li><a href="">布局教程专题</a></li>
                        <li><a href="">CSS菜单</a></li>
                        <li><a href="">浏览器兼容</a></li>
                        <li><a href="">滚动条相关</a></li>
                        <li><a href="">圆角矩形专题</a></li>
                        <li><a href="">CSS特效欣赏专题</a></li>
                    </ul>

                </li>
            </ul>

        </div>

    </div>
</div>
<script language="JavaScript">
    document.getElementById("messages").onmouseout=function(){//当鼠标滑出
        document.getElementById("box").style.visibility="hidden";
    };
    document.getElementById("messages").onmouseover=function(){ //当鼠标经过
        document.getElementById("box").style.visibility="visible";
    };

</script>
    </body>
</html>
