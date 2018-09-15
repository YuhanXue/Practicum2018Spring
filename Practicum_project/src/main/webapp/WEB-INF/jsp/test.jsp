<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <%--<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>--%>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $('#handout_wrap_inner').media({
            width: '100%',
            height: '100%',
            autoplay: true,
            src:'images/transcript.PDF',
        });
    </script>
</head>
<body>
<embed :src="${pageContext.request.contextPath}/images/transcript.PDF" type="application/pdf" width="100%" height="100%" />
<a href="${pageContext.request.contextPath}/images/transcript.PDF"> ttt</a>
</body>
</html>
