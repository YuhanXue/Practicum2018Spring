<%--
  Created by IntelliJ IDEA.
  User: chengli
  Date: 2018/3/26
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>company_review</title>
    <link rel="stylesheet" href="css/company.css"/>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <%--<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>--%>
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="http://apps.bdimg.com/libs/angular.js/1.4.6/angular.min.js"></script>
</head>
<body>
<div class="w">
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" ></li>
            <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="images/image1.jpeg" alt="First slide" class="img1"/>
                <div class="carousel-caption">BestBuy</div>
            </div>
            <div class="item">
                <img src="images/image2.jpeg" alt="Second slide" class="img2"/>
                <div class="carousel-caption">Verizon</div>
            </div>
            <div class="item">
                <img src="images/image3.jpeg" alt="Third slide" class="img3"/>
                <div class="carousel-caption">Walmart</div>
            </div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="carousel-control left" href="#myCarousel"
           data-slide="prev">&lsaquo;</a>
        <a class="carousel-control right" href="#myCarousel"
           data-slide="next">&rsaquo;</a>
    </div>
</div>
<div class="searcharea" style="height: 400px;">
    <div class="search">
        <p class="title1">Find great places to work</p>
        <p class="smaller">Discover <b>18 million</b> company reviews</p>
        <div class="cmp-discovery-curated">
            <input type="text" class="cmp-discovery-input cmp-discovery-curated" placeholder="Enter a company name" id="inputtable"/>
            <button type="submit" class="btn btn-primary">search</button>
            <div class="content" id="content" style="background-color: #fff;top:20px; width: 100%;font-size: 17px;color: black;float: left">
            </div>
        </div>
    </div>

</div>
<div class="w popular_company">

    <h1>More Popular Company</h1>
    <div class="content">
        <div class="box1">
            <ul>
                <li><a href="#">Dollar General</a></li>
                <li><a href="#">Apple</a></li>
                <li><a href="#">Chick-fil-A</a></li>
                <li><a href="#">Sam's Club</a></li>
                <li><a href="#">Google</a></li>
                <li><a href="#">Alorica</a></li>
                <li><a href="#">U.S. Army</a></li>
                <li><a href="#">Wells Fargo</a></li>
                <li><a href="#">Planet Fitness</a></li>
            </ul>
        </div>
        <div class="box2">
            <ul>
                <li><a href="#">Comcast</a></li>
                <li><a href="#">Cintas</a></li>
                <li><a href="#">PetSmart</a></li>
                <li><a href="#">Starbucks</a></li>
                <li><a href="#">Quest Diagnostics</a></li>
                <li><a href="#">JCPenney</a></li>
                <li><a href="#">UnitedHealth Group</a></li>
                <li><a href="#">Panera Bread</a></li>
                <li><a href="#">Goodwill Industries</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="w againw">
    <div class="copyright">
        Beijing Public Security Bureau Chaoyang Branch Record No. 110105014669  |  Beijing ICP Certificate No. 070359  |  Internet Drug Information Service Qualification Certificate Number (Beijing)-Operation-2014-0008<br />
        Audio and video products business license Su Su batch 005 |  Publication Management License No. New Departure (Su) Batch No. N-012  |  Internet Publishing License No. New Network Certificate (Beijing) No. 150<br />
        Reporting illegal and bad information: 4006561155 Copyright © 2004-2018 xayd.com All rights reserved.<br />
    </div>
</div>
<script type="text/javascript">
$(document).ready(function(){
    $("#inputtable").keyup(function () {
        var content = $("#inputtable").val();
        if(content==""){
         $("#content").css("display","none");
         return;
        }
        var time = new Date().getTime();
        $.ajax({
            type:"GET",
            url:"${pageContext.request.contextPath}/findcompany.do",
            data:{name:content,time:time},
            success:function (data) {
                var res = data.split(",");
                var html  = "";
                var count=0;
                // if(res.length>6){
                //     count=6;
                // }
                if(res.length<=6){
                for(var i=0;i<res.length;i++){
                    html+="<div onclick='setSearch_onclick(this)' onmouseout='changeBackground_out(this)' onmouseover='changeBackground_over(this)'>"+res[i]+"</div>";
                }
                $("#content").html(html);
                $("#content").css("display","block");}
                else {
                    for(var i=0;i<6;i++){
                        html+="<div onclick='setSearch_onclick(this)' onmouseout='changeBackground_out(this)' onmouseover='changeBackground_over(this)'>"+res[i]+"</div>";
                    }
                    $("#content").html(html);
                    $("#content").css("display","block");}
                }

        });
    });

});
function changeBackground_over(div){
    div.style.background="gray";
}
function changeBackground_out(div) {
    div.style.background="white";
}
function setSearch_onclick(div) {
    $(document).ready(function () {
        $("#inputtable").val(div.innerHTML);
        $("#content").css("display","none");
    });
}
</script>
</body>
</html>
