<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>practicum</title>
    <link rel="stylesheet" href="css/Postjob.css"/>
    <%--<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>--%>
    <script type="text/javascript">

        function check(){

            var list = document.getElementsByTagName("input");

            for(var i=0;i<list.length;i++){
                if(list[i].value==""){
                    alert("you should fill in the form");
                    return false;
                }
            }
            alert("Sucessfully post!!!");
            return true;
        }
    </script>
</head>

<body>

<div class="SignUpBox">
    <h1> Post job</h1>

    <form method="post" action="${pageContext.request.contextPath}/post.do" onsubmit="return check()">

        <font color="#ff0000">${email_msg}</font><br />
        <div>
            <p>Jobname</p>
            <div>
                <input type="text" id="jobname" placeholder="input a jobname" name="jobname" />
            </div>
        </div>

        <div>
            <p>CompanyName</p>
            <div>
                <input type="text" id="companyname" placeholder="input a companyname" name="companyname" />
            </div>
        </div>

        <div>
            <p>Requirement</p>
            <div>
                <input type="text" id="requirement" placeholder="Please enter your requirement" name="requirement" />
            </div>
        </div>

        <div>
            <p>Location</p>
            <div>
                <input type="text" id="location" placeholder="Please enter your location" name="location" />
            </div>
        </div>

        <div>
            <p>Contact</p>
            <div>
                <input type="text" id="contact" placeholder="Please enter your contact" name="contact" />
            </div>
        </div>

        <div>
            <p>jobarea</p>
            <div>
                <input type="text" id="jobarea" placeholder="Please enter your jobarea" name="jobarea" />
            </div>
        </div>
        <div id="submit">
            <button type="submit" class="submit">Submit</button>
        </div>
    </form>
</div>
</body>
</html>
