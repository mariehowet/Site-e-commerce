<%--
  Created by IntelliJ IDEA.
  User: portable
  Date: 16-05-23
  Time: 18:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="include/importTags.jsp"%>
<html>
<head>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <style>
        h1,p {
            text-align: center;
        }
        img {
            display: block;
            margin-left: auto;
            margin-right: auto
        }

    </style>
</head>
<body>
    <div class="py-5 container">
        <h1><spring:message code="aboutUs"/></h1>
        <br>
        <img width="800" height="497" src='<spring:url value="/images/company.jpg"/>'>
        <br><br>
        <p>
            <spring:message code="aboutUsDescription"/>
        </p>
    </div>
</body>
</html>
