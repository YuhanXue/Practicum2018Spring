<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%--<script type="text/javascript"--%>
	<%--src="${pageContext.request.contextPath}/js/my.js">--%>
	<%----%>
<%--</script>--%>
<script type="text/javascript" src="jQuery/jquery-3.2.1.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".inputtable").keyup(function(){
            var content  = $(".inputtable").val();
            if(content==""){
                $('#content').css("display","none");
                return;
            }

            var time = new Date().getTime();

            $.ajax({
                type:"GET",
                url: "${pageContext.request.contextPath}/findProductName.do",
                data:{name:content,time:time},
                success: function (data){
                    var res = data.split(",");
                    var html="";
                    for (var i=0;i<res.length;i++){
                        html+="<div onclick='setSearch_onclick(this)' onmouseout='changeBackColor_out(this)' onmouseover='changeBackColor_over(this)'>"+res[i]+"</div>";
                    }
                    $('#content').html(html);
                    $('#content').css("display","block");
                }

            });
        });});
    function changeBackground_over(div){
        div.style.background="gray";
    }

    function changeBackground_out(div){
        div.style.background="white";
    }
    function setSearch_onclick(div){
        $(".inputtable").val(div.innerText);
        $("#context").css("display","none");
    }
</script>

<div id="divmenu">
	<a
		href="${pageContext.request.contextPath}/PageServlet?category=literature">literature</a>
	<a
		href="${pageContext.request.contextPath}/PageServlet?category=life">life</a>
	<a
		href="${pageContext.request.contextPath}/PageServlet?category=computer science">computer science</a>
	<a
		href="${pageContext.request.contextPath}/PageServlet?category=English">English</a>
	<a
		href="${pageContext.request.contextPath}/PageServlet?category=management">management</a>
	<a
		href="${pageContext.request.contextPath}/PageServlet?category=motivational">motivational</a>
	<a
		href="${pageContext.request.contextPath}/PageServlet?category=society">society</a>
	<a
		href="${pageContext.request.contextPath}/PageServlet?category=academic">academic</a>
	<a
		href="${pageContext.request.contextPath}/PageServlet?category=children">children</a>
	<a
		href="${pageContext.request.contextPath}/PageServlet?category=art">art</a>
	<a
		href="${pageContext.request.contextPath}/PageServlet?category=original edition">original edition</a>
	<a
		href="${pageContext.request.contextPath}/PageServlet?category=scinence">scinence</a>
	<a
		href="${pageContext.request.contextPath}/PageServlet?category=examination">examination</a>
	<a
		href="${pageContext.request.contextPath}/PageServlet?category=home life">home life</a>
	<a href="${pageContext.request.contextPath}/PageServlet"
		style="color:#FFFF00">All catalogs</a>
</div>
<div id="divsearch">
	<form action="${pageContext.request.contextPath}/findProductName.do"
		method="post">
		<table width="100%" border="0" cellspacing="0">
			<tr>
				<td style="text-align:right; padding-right:220px">
				Search <input
					type="text" name="name" class="inputtable"
					id="name" /> 
					<input type="image" src="images/serchbutton.gif"
					border="0" style="margin-bottom:-4px">
				</td>
			</tr>
		</table>

	</form>
</div>
<div id="content"
	style="background-color:white;width:128px; text-align:left;margin-left:1020px;color:black;float:left;margin-top: -20px;display: none">
</div>