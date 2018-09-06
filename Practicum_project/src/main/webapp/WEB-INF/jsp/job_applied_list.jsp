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
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="w">

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
        </tr>


        <c:forEach items="${job_applied_list}" var="job" varStatus="vs">

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
