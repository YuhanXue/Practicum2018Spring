<%--
  Created by IntelliJ IDEA.
  User: chengli
  Date: 2018/3/6
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>job_list</title>
    <link rel="stylesheet" href="css/job_list.css"/>
    <link rel="stylesheet" href="css/Home.css"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div>
<div class="w">
    <%--<div class="shortcut">--%>
        <%--<div class="w">--%>
            <%--<div class="scleft">--%>
                <%--<ul class="main">--%>
                    <%--<li><a href="#" class="findjob">Find job</a></li>--%>
                    <%--<li><a>Company Review</a></li>--%>
                    <%--<li><a>Find Salaries</a></li>--%>
                    <%--<li><a>Find Resume</a></li>--%>
                    <%--<li><a>Post job</a></li>--%>
                    <%--<li class="messages" id="messages"><a>User Center</a>--%>

                        <%--<ul class="box" id="box">--%>
                            <%--<li><a href="">标准</a></li>--%>
                            <%--<li><a href="">教程</a></li>--%>
                            <%--<li><a href="">技术文章</a></li>--%>
                            <%--<li><a href="">常见问题</a></li>--%>
                            <%--<li><a href="">布局教程专题</a></li>--%>
                            <%--<li><a href="">CSS菜单</a></li>--%>
                            <%--<li><a href="">浏览器兼容</a></li>--%>
                            <%--<li><a href="">滚动条相关</a></li>--%>
                            <%--<li><a href="">圆角矩形专题</a></li>--%>
                            <%--<li><a href="">CSS特效欣赏专题</a></li>--%>
                        <%--</ul>--%>

                    <%--</li>--%>
                <%--</ul>--%>

            <%--</div>--%>

        <%--</div>--%>
    <%--</div>--%>
        <jsp:include page="head.jsp"></jsp:include>
    <table width="100%" border="0" cellspacing="0" class="tableopen">
        <tr>
            <td bgcolor="#A3E6DF" class="tableopentd01">Job_id</td>
            <td bgcolor="#A3D7E6" class="tableopentd01">Company_Name</td>
            <td bgcolor="#A3D7E6" class="tableopentd01">Job_Name</td>
            <td bgcolor="#A3B6E6" class="tableopentd01">Requirement</td>
            <td bgcolor="#A3E2E6" class="tableopentd01">location</td>
            <td bgcolor="#A3E2E6" class="tableopentd01">contact</td>
            <td bgcolor="#A3E2E6" class="tableopentd01">Jobarea</td>
            <td bgcolor="#A3E2E6" class="tableopentd01">quickly_apply</td>
        </tr>


        <c:forEach items="${job_list}" var="job" varStatus="vs">

            <tr>
                <td class="tableopentd02">${vs.count}</td>
                <td class="tableopentd02">${job.companyname}</td>
                    <%--<td class="tableopentd02">${user.id}</td>--%>
                <td class="tableopentd02">${job.jobname}</td>
                    <%--<td class="tableopentd02">${user.paystate==0?no_pay:have_pay}</td>--%>
                <td class="tableopentd02">${job.requirement}</td>
                <td class="tableopentd02">${job.location}</td>
                <td class="tableopentd02">${job.contact}</td>
                <td class="tableopentd02">${job.jobarea}</td>
                <td class="tableopentd02"><a class="btn btn-primary" href="${pageContext.request.contextPath}/job_applied.do?id=${job.id}">Apply</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
    <div class="w againw">
        <div class="copyright">
            Beijing Public Security Bureau Chaoyang Branch Record No. 110105014669  |  Beijing ICP Certificate No. 070359  |  Internet Drug Information Service Qualification Certificate Number (Beijing)-Operation-2014-0008<br />
            Audio and video products business license Su Su batch 005 |  Publication Management License No. New Departure (Su) Batch No. N-012  |  Internet Publishing License No. New Network Certificate (Beijing) No. 150<br />
            Reporting illegal and bad information: 4006561155 Copyright © 2004-2018 xayd.com All rights reserved.<br />


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
</div>
</body>
</html>
