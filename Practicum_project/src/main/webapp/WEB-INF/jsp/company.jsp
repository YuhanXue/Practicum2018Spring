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
    <script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
<div class="searcharea">
    <div class="search">
        <p class="title1">Find great places to work</p>
        <p class="smaller">Discover <b>18 million</b> company reviews</p>
        <div class="cmp-discovery-curated">
            <input type="text" class="cmp-discovery-input cmp-discovery-curated" placeholder="Enter a company name"/>
            <button type="submit" class="btn btn-primary">search</button>
        </div>
    </div>

</div>
<div class="popular_company">

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
