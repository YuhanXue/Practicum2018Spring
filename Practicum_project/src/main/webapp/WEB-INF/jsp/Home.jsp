<%--
  Created by IntelliJ IDEA.
  User: chengli
  Date: 2018/3/5
  Time: 09:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="css/base.css"/>
</head>
<body>
<div class="shortcut">
    <div class="w">
        <div class="scleft">
            <ul>
                <li><a href="#" class="findjob">Find job</a></li>
                <li><a>Company Review</a></li>
                <li><a>Find Salaries</a></li>
                <li><a>Find Resume</a></li>
                <li><a>Post job</a></li>
                <li class="messages"><a>Messages</a></li>
            </ul>

        </div>

    </div>
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
            <td bgcolor="#A3D7E6" class="tableopentd01">Job_Name</td>
            <td bgcolor="#A3B6E6" class="tableopentd01">Requirement</td>
            <td bgcolor="#A3E2E6" class="tableopentd01">location</td>
            <td bgcolor="#A3E2E6" class="tableopentd01">contact</td>
        </tr>


        <c:forEach items="${jobs}" var="job" varStatus="vs">

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
<div class="w againw">
    <div class="copyright">
        北京市公安局朝阳分局备案编号110105014669  |  京ICP证070359号  |  互联网药品信息服务资格证编号(京)-经营性-2014-0008  |  新出发京零 字第大120007号<br />
        音像制品经营许可证苏宿批005号  |  出版物经营许可证编号新出发(苏)批字第N-012号  |  互联网出版许可证编号新出网证(京)字150号<br />
        违法和不良信息举报电话：4006561155  Copyright © 2004-2018  xxxx.com 版权所有<br />
    </div>
</div>
</body>
</html>
