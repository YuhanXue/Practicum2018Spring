<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>电子书城</title>
    <link rel="stylesheet" href="css/main.css" type="text/css" />
</head>

<body class="main">
<jsp:include page="head.jsp"></jsp:include>
<div id="divpagecontent">
    <table width="100%" border="0" cellspacing="0">
        <tr>
            <td width="25%">
                <table width="100%" border="0" cellspacing="0"
                       style="margin-top:30px">
                    <tr>
                        <td class="listtitle">My Account</td>
                    </tr>
                    <tr>
                        <td class="listtd"><img src="images/miniicon.gif" width="9"
                                                height="6" />&nbsp;&nbsp;&nbsp;&nbsp; <a
                                href="${pageContext.request.contextPath}/ModifyUserInfo">modfiy user information</a></td>
                    </tr>

                    <tr>
                        <td class="listtd"><img src="images/miniicon.gif" width="9"
                                                height="6" />&nbsp;&nbsp;&nbsp;&nbsp; <a href="orderlist.jsp">Applied Companies</a>
                        </td>
                    </tr>

                    <tr>
                        <td class="listtd"><img src="images/miniicon.gif" width="9"
                                                height="6" />&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/logout">Logout</a>
                        </td>
                    </tr>
                </table></td>
            <td>
                <div style="text-align:right; margin:5px 10px 5px 0px">
                    <a href="index.jsp">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;<a
                        href="myAccount.jsp">&nbsp;myAccount</a>&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="${pageContext.request.contextPath}/findUserById?id=${user.id}">modify user information</a>
                </div>



                <table cellspacing="0" class="infocontent">
                    <tr>
                        <td>
                            <form action="${pageContext.request.contextPath}/ModifyUserInfo.do" method="post">
                                <input type="hidden" name="id" value="${u.id}">
                                <table width="100%" border="0" cellspacing="2" class="upline">
                                    <tr>
                                        <td style="text-align:right; width:20%">Member email：</td>
                                        <td style="width:40%; padding-left:20px">${user.email}</td>
                                        <td>&nbsp;</td>


                                    </tr>
                                    <tr>
                                        <td style="text-align:right">Member name：</td>
                                        <td style="padding-left:20px">${user.username}</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right">change Password：</td>
                                        <td><input type="password" name="password"
                                                   class="textinput" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right">change ID_Number：</td>
                                        <td><input type="text" name="id_number"
                                                   class="textinput" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right">change Academic Degree</td>
                                        <td><select name="degree" id="degree" >
                                            <option value="Bachelor" ${user.degree=='Bachelor'?"selected='selected'":""}>Bachelor</option>
                                            <option value="Master" ${user.degree=='Master'?"selected='selected'":""}>Master</option>
                                            <option value="Phd" ${user.degree=='Phd'?"selected='selected'":""}>Phd</option>
                                        </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>





                                <p style="text-align:center">

                                    <input type="image" src="images/botton_gif_025.gif" border="0">

                                </p>
                                <p style="text-align:center">&nbsp;</p>
                            </form></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>
