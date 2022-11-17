<%@ page pageEncoding="UTF-8"
         contentType="text/html; charset=UTF-8"%>
<%@ include file="include/importTags.jsp"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title> Inscription </title>
    <link type="text/css" href="<spring:url value='/css/login.css' />" rel="Stylesheet">
</head>
<body>
<div class="form">
    <h1>Inscris-toi</h1> <br>

    <form:form id = "signForm"
               method="POST"
               action="/ecommerce/inscription"
               modelAttribute="currentUser">

        <form:label path="lastName"> Nom * </form:label><br>
        <form:input path="lastName"/>
        <br><br>
        <form:label path="firstName"> Prénom * </form:label><br>
        <form:input path="firstName"/>
        <br><br>

        <%--<form:label path="birthdate"> Date de naissance </form:label><br>
       <form:input path="birthdate"/>--%>

        <form:select path="birthdate">
            <form:options items="${hobbies}" itemValue="name" itemLabel="name" />
        </form:select>

       <form:label path="email"> Adresse e-mail * </form:label><br>
       <form:input path="email"/>

       <br><br>

       <form:label path="password"> Mot de passe * </form:label><br>
       <form:input path="password"/>

       <br>

       <p>* Champs obligatoires</p><br>
       <%--<form:checkbox path="remember" value="false" label="Se souvenir de moi"/>--%>

        <form:button>S'inscrire</form:button>

        <hr>
        <p>Déjà inscris ? Connecte-toi.</p>


    </form:form>
</div>
</body>
</html>