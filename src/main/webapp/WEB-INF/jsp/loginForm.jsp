<%@ page pageEncoding="UTF-8"
         contentType="text/html; charset=UTF-8"%>
<%@ include file="include/importTags.jsp"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title> Connexion </title>
    <link type="text/css" href="<spring:url value='/css/login.css' />" rel="Stylesheet">
</head>
<body>
<div class="form">
<h1>Connecte-toi</h1> <br>

<form:form id = "loginForm"
           method="POST"
           action="/ecommerce/login"
           modelAttribute="currentUser">
    <form:label path="email"> Adresse e-mail * </form:label><br>
    <form:input path="email"/>

    <br><br>

    <form:label path="password"> Mot de passe * </form:label><br>
    <form:input path="password"/>

    <br>

    <p>* Champs obligatoires</p><br>
    <%--<form:checkbox path="remember" value="false" label="Se souvenir de moi"/>--%>

    <form:button>Se connecter</form:button>

    <hr>
    <p>Nouveau ici ? Inscris-toi.</p>

    <p>Mot de passe oublié ?</p>


</form:form>
</div>
</body>
</html>