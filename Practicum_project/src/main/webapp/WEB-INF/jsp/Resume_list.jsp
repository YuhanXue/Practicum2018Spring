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
    <form method="post" action="${pageContext.request.contextPath}/find_resume.do">
        <div class="col-lg-6">
            <div class="input-group">
                <input type="text" class="form-control" name="rs_name"/>
                <span class="input-group-btn">
            <button class="btn btn-default" type="submit">Go!</button>
        </span>
            </div>
        </div>
</form>
    <table width="100%" border="0" cellspacing="0" class="tableopen">
        <tr>
            <td bgcolor="#A3E6DF" class="tableopentd01">Resume_id</td>
            <td bgcolor="#A3D7E6" class="tableopentd01">User_Name</td>
            <td bgcolor="#A3D7E6" class="tableopentd01">Resume_Name</td>
            <td bgcolor="#A3D7E6" class="tableopentd01">Download</td>
        </tr>


        <c:forEach items="${resume_list}" var="resume" varStatus="vs">

            <tr>
                <td class="tableopentd02">${vs.count}</td>
                <td class="tableopentd02">${resume.username}</td>
                <td class="tableopentd02">${resume.filename}</td>
                <td class="tableopentd02"><a class="btn btn-primary" href="${pageContext.request.contextPath}/download?filename=${resume.filename}">download</a></td>

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
