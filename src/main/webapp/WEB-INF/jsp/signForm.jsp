<%@ page pageEncoding="UTF-8"
         contentType="text/html; charset=UTF-8"%>
<%@ include file="include/importTags.jsp"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title> Inscription </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

    <link type="text/css" href="<spring:url value='/css/login.css' />" rel="Stylesheet">

</head>
<body>
<nav aria-label="breadcrumb" style="padding-left: 10px" class="navbar bg-light">
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Accueil</li>
        <li class="breadcrumb-item active" aria-current="page">Inscription</li>
    </ol>
</nav>


<div class="form"><br>
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

        <form:label path="birthdate" class="control-label " for="date"> Date de naissance * </form:label><br>

            <div class="input-group-addon">
                <i class="fa fa-calendar"></i>
            </div>
            <form:input path="birthdate" id="date" name="date" placeholder="mm/dd/yyyy" type="date" />
            <form:errors path="birthdate"/>
            <br><br>



       <form:label path="email"> Adresse e-mail * </form:label><br>
       <form:input path="email"/>

       <br><br>

       <form:label path="password"> Mot de passe * </form:label><br>
       <form:input path="password"/>

       <br>

       <p>* Champs obligatoires</p><br>
       <%--<form:checkbox path="remember" value="false" label="Se souvenir de moi"/>--%>

        <button type="submit" class="btn btn-primary">S'inscrire</button>

        <hr>
        <p>Déjà inscris ? <a href="<spring:url value='/login' />">Connecte-toi.</a></p>


    </form:form>
</div>

</body>
</html>