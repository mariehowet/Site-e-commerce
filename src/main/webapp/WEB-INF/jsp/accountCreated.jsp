<%--
  Created by IntelliJ IDEA.
  User: portable
  Date: 04-06-23
  Time: 23:17
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
    <h1>Succès</h1> <br>
        <p>Votre compte à bien été créé</p>
        <hr>
        <p>Me rediriger vers la connection : <a href="<spring:url value='/profile' />">Connection.</a></p>

    </div>
</body>
</html>
