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
</head>
<body>
<div class="w">
<table width="100%" border="0" cellspacing="0" class="tableopen">
    <tr>
        <td bgcolor="#A3E6DF" class="tableopentd01">Job_id</td>
        <td bgcolor="#A3D7E6" class="tableopentd01">Job_Name</td>
        <td bgcolor="#A3B6E6" class="tableopentd01">Requirement</td>
        <td bgcolor="#A3E2E6" class="tableopentd01">location</td>
        <td bgcolor="#A3E2E6" class="tableopentd01">contact</td>
    </tr>


    <c:forEach items="${job_list}" var="job" varStatus="vs">

        <tr>
            <td class="tableopentd02">${vs.count}</td>

                <%--<td class="tableopentd02">${user.id}</td>--%>
            <td class="tableopentd02">${job.jobname}</td>
                <%--<td class="tableopentd02">${user.paystate==0?no_pay:have_pay}</td>--%>
            <td class="tableopentd02">${job.requirement}</td>
            <td class="tableopentd02">${job.location}</td>
            <td class="tableopentd02">${job.contact}</td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>
