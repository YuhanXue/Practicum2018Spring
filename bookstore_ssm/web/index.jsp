<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>bookStore首页</title>
<%--导入css --%>
<link rel="stylesheet" href="css/main.css" type="text/css" />
</head>

<body class="main">

	<%@include file="head.jsp"%>
	<%@include file="menu_search.jsp" %>
	<div id="divad">
		<img src="ad/index_ad.jpg" />
	</div>

	<div id="divcontent">
		<table width="900px" border="0" cellspacing="0">
			<tr>
				<td width="497"><img src="images/billboard.gif" width="497"
					height="38" />
					<table cellspacing="0" class="ctl">
						<tr>
							<td>&middot;<a href="news.html" style="color:#000000">Booking 3 fold support online browsing first look to buy do not regret any product free shipping</a></td>
						</tr>
						<tr>
							<td>&middot;<a href="news.html" style="color:#000000">Lonely
								Planet has published over 600 travel guides covering almost every corner of the world.</a></td>
						</tr>
						<tr>
							<td>&middot;<a href="news.html" style="color:#000000">2007 bestseller travel book China Travel, World Travel, travel books all 70% off top</a></td>
						</tr>
						<tr>
							<td>&middot;<a href="news.html" style="color:#000000">500,000 kinds of books 3 fold best-selling department store buy list bestseller courier promotion every day</a></td>
						</tr>
						<tr>
							<td>&middot;<a href="news.html" style="color:#000000">500,000 kinds of books 3 fold best-selling department store buy list bestseller courier promotion every day</a></td>
						</tr>
					</table></td>
				<td style="padding:5px 15px 10px 40px"><table width="100%"
						border="0" cellspacing="0">
						<tr>
							<td><img src="images/hottitle.gif" width="126" height="29" />
							</td>
						</tr>
					</table>
					<table width="100%" border="0" cellspacing="0">
						<tr>
							<td style="width:50; text-align:center"><a href="info.html"><img
									src="bookcover/travelbook.jpg" width="102" height="130"
									border="0" /> </a><br /> <a href="info.html">TravelBook<br />
									author:Lonley Plant</a></td>
							<td style="width:50; text-align:center"><a href="info.html"><img
									src="bookcover/java2.jpg" width="102" height="130" border="0" />
							</a><br /> <a href="info.html">Java2 entry classic (JDK5) <br /> Author :( US) Houghton</a>
							</td>
						</tr>
					</table></td>
			</tr>
		</table>
	</div>



	<jsp:include page="foot.jsp"/>


</body>
</html>
