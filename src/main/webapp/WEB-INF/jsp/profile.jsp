<%@ page pageEncoding="UTF-8"
         contentType="text/html; charset=UTF-8"%>
<%@ include file="include/importTags.jsp"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title> Profil </title>
    <link type="text/css" href="<spring:url value='/css/profile.css' />" rel="Stylesheet">
</head>
<body>

<form:form id = "profile"
           method="POST"
           action="/ecommerce/profile"
           modelAttribute="currentUser">
<form:button>Mes commandes</form:button><br>
<form:button>Mon adresse</form:button><br>
<form:button>Déconnexion</form:button><br>
</form:form>

<div class="form">
    <h1>Profil</h1> <br>
    <h2>Nom</h2>
    <br>
    <p>email</p>
    <form:form id = "profile"
               method="POST"
               action="/ecommerce/profile"
               modelAttribute="currentUser">
    <form:button>Modifier</form:button>
        <br><br>
        <p>mdp</p>
        <form:button>Modifier</form:button>
        <br><br><br>
        <form:label path="password"> Mot de passe  actuel * </form:label><br>
        <form:input path="password"/>
        <br><br>
        <form:label path="password"> Nouveau mot de passe * </form:label><br>
        <form:input path="password"/>
        <br><br>
        <form:button>Confirmer</form:button>
        <br>

    </form:form>


</div>
</body>
</html>