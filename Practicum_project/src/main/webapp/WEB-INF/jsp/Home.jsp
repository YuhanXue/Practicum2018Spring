<%--
  Created by IntelliJ IDEA.
  User: chengli
  Date: 2018/3/5
  Time: 09:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <title>Home</title>
    <link rel="stylesheet" href="css/Home.css"/>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script type="text/javascript">
        $('#handout_wrap_inner').media({
            width: '100%',
            height: '100%',
            autoplay: true,
            src:'images/Li_Cheng_Resume.docx',
        });

    </script>
</head>
<div class="w">
<nav class="nav-main">
    <div class="logo">Find Your Job</div>
            <ul>
                <li><a href="#" class="nav-item">Find job</a></li>
                <li><a href="${pageContext.request.contextPath}/Company" class="nav-item">Company Review</a></li>
                <li><a href="#" class="nav-item">Find Salaries</a></li>
                <li><a href="#" class="nav-item" id="find_resume" onclick="checkright()">Find Resume</a></li>
                <li><a href="#" class="nav-item">Post job</a></li>
                <li id="messages" style="padding-left: 120px"><a href="#" class="nav-item">Welcome ${user.username}</a>
                  <%--<div class="nav-content">--%>
                    <%--<div class="nav-sub">--%>
                      <%--<ul id="box">--%>
                        <%--<li><a href="${pageContext.request.contextPath}/myAccount">User center</a></li>--%>
                        <%--<li><a href="">company applied</a></li>--%>
                        <%--<li><a href="${pageContext.request.contextPath}/logout.do">Logout</a></li>--%>
                      <%--</ul>--%>
                     <%--</div>   --%>
                  <%--</div>--%>
                    <ul class="box" id="box">
                        <li><a class="nav-item1" href="${pageContext.request.contextPath}/myAccount">User center</a></li>
                        <li><a class="nav-item1" href="${pageContext.request.contextPath}/show_jobapplied_list.do">job applied</a></li>
                        <li><a class="nav-item1" href="${pageContext.request.contextPath}/logout.do">Logout</a></li>
                    </ul>
                </li>
            </ul>

 </nav>
</div>
<div class="w search">
    <form action="${pageContext.request.contextPath }/joblist">
        <div class="job">
            <label class="icl-TextInput-label--whatWhere">what</label>
            <div class="icl-TextInput-helpText--whatWhere">job title, keywords, or company</div><br/>
            <input class="job_input" type="text" name="jobname"/>

        </div>
        <div class="location">
            <label class="icl-TextInput-label--whatWhere">where</label>
            <div class="icl-TextInput-helpText--whatWhere">city, state, or zip code</div><br/>
            <input class="location_input" type="text" name="location"/>
        </div>
        <button value="submit">submit</button>
    </form>

</div>
<div class=" w job_content">
    <div class="Recommend_job">Recommend job</div>
    <table width="100%" border="0" cellspacing="0" class="tableopen">
        <tr>
            <td bgcolor="#A3E6DF" class="tableopentd01">Job_id</td>
            <td bgcolor="#A3D7E6" class="tableopentd01">Company_Name</td>
            <td bgcolor="#A3D7E6" class="tableopentd01">Job_Name</td>
            <td bgcolor="#A3B6E6" class="tableopentd01">Requirement</td>
            <td bgcolor="#A3E2E6" class="tableopentd01">location</td>
            <td bgcolor="#A3E2E6" class="tableopentd01">contact</td>
            <td bgcolor="#A3E2E6" class="tableopentd01">Jobarea</td>
        </tr>


        <c:forEach items="${jobs}" var="job" varStatus="vs">

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
            </tr>
        </c:forEach>
    </table>
</div>
<div class="w againw">
    <div class="copyright">
        Beijing Public Security Bureau Chaoyang Branch Record No. 110105014669  |  Beijing ICP Certificate No. 070359  |  Internet Drug Information Service Qualification Certificate Number (Beijing)-Operation-2014-0008<br />
        Audio and video products business license Su Su batch 005 |  Publication Management License No. New Departure (Su) Batch No. N-012  |  Internet Publishing License No. New Network Certificate (Beijing) No. 150<br />
        Reporting illegal and bad information: 4006561155 Copyright © 2004-2018 xayd.com All rights reserved.<br />
        <%--<a href="http://www.xdocin.com/xdoc?_func=to&amp;_format=html&amp;_cache=1&amp;_xdoc=${pageContext.request.contextPath}/images/Li_Cheng_Resume.docx" target="_blank" rel="nofollow">XDOC</a>--%>
        <%--<a href="${pageContext.request.contextPath}/images/Li_Cheng_Resume.docx" target="_blank" rel="nofollow">XDOC</a>--%>
    </div>

</div>
<%
   String s = (String) session.getAttribute("rs_msg");
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
</script>

</body>
</html>
