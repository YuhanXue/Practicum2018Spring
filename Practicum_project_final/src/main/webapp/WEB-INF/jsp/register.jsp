<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>practicum</title>
    <link rel="stylesheet" href="css/SignUp.css"/>
    <%--<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>--%>
    <script type="text/javascript">
        function changeImage() {

            document.getElementById("img").src = "${pageContext.request.contextPath}/imagecode?time="
                + new Date().getTime();
        }
        function check(){

           var list = document.getElementsByTagName("input");

           for(var i=0;i<list.length;i++){
               if(list[i].value==""){
                   alert("you should fill in the form");
                   return false;
               }
           }


            return true;
        }
    </script>
</head>

<body>
    <%--<form action="${pageContext.request.contextPath}/register.do">--%>
        <%--<font color="#ff0000">${email_msg}</font><br />--%>
        <%--Username:<input type="text" name="username"><br/>--%>
        <%--Password:<input type="text" name="password"><br/>--%>
        <%--ID_Number:<input type="text" name="id_number"/><br/>--%>
        <%--Degree:<select name="degree">--%>
        <%--<option value="Bachelor">Bachelor</option>--%>
        <%--<option value="Master">Master</option>--%>
        <%--<option value="Phd">Phd</option>--%>
    <%--</select><br/>--%>
        <%--College:<input type="text" name="college"><br/>--%>
        <%--Email:<input type="text" name="email"><br/>--%>
        <%--<input type="submit"/>--%>
    <%--</form>--%>
    <div class="SignUpBox">
        <h1> Sign Up</h1>

        <form method="post" action="${pageContext.request.contextPath}/register.do" onsubmit="return check()">

        <font color="#ff0000">${email_msg}</font><br />
            <div>
                <p>Username</p>
                <div>
                    <input type="text" id="Username" placeholder="Create a Username" name="username" />
                </div>
            </div>

            <div>
                <p>Password</p>
                <div>
                    <input type="password" id="password" placeholder="Create a Password" name="password" />
                </div>
            </div>

            <div>
                <p>ID Number</p>
                <div>
                    <input type="text" id="id_number" placeholder="Please enter your ID number" name="id_number" />
                </div>
            </div>

            <div>
                <p>College</p>
                <div>
                    <input type="text" id="college" placeholder="Please enter your college" name="college" />
                </div>
            </div>

            <div>
                <p>Email</p>
                <div>
                    <input type="email" id="email" placeholder="Please enter your Email" name="email" />
                </div>
            </div>

            <div>
                <p>Academic Degree</p>
                <div>
                    <select name="degree" id="degree" >
                        <option value="Bachelor">Bachelor</option>
                        <option value="Master">Master</option>
                        <option value="Phd">Phd</option>
                    </select>
                </div>
            </div>

        <font color="#ff0000">${errorMsg}</font><br />
        <div>
            <p>VerifyCode</p>
                <input type="text"  id="checkCode" placeholder="Please enter verify code" name="checkCode"/>
                <img src="${pageContext.request.contextPath}/imagecode" class="img" id="img"/>&nbsp;&nbsp;
                <a href="javascript:void(0);" onclick="changeImage()">Can not see clearly</a>
        </div>
            <div id="submit">
                <button type="submit" class="submit">Submit</button>
            </div>
    </form>
    </div>

</body>
</html>
