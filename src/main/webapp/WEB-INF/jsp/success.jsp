<%--
  Created by IntelliJ IDEA.
  User: MH030
  Date: 17/07/2023
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="include/importTags.jsp"%>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <link type="text/css" href="<spring:url value='/css/login.css' />" rel="Stylesheet">
</head>
<body>
<div class="form"><br>
    <h1> <spring:message code="success"/></h1> <br>
    <p><spring:message code="thanksPurchase"/></p>
    <hr>
    <p><spring:message code="redirectHomePage"/> : <a href="<spring:url value='/welcome' />"><spring:message code="homepage"/></a></p>
</div>
</body>
</html>

