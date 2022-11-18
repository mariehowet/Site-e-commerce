<%@ page pageEncoding="UTF-8"
         contentType="text/html; charset=UTF-8"%>
<%@ include file="include/importTags.jsp"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title> Adresse </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

</head>
<body>
<nav aria-label="breadcrumb" style="padding-left: 10px" class="navbar bg-light">
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Accueil</li>
        <li class="breadcrumb-item active" aria-current="page">Mes adresses</li>
    </ol>
</nav>
<div class="container">
<form class="row g-3 m-2" >
    <h1 class="h3 mb-3 font-weight-normal">Mes adresses</h1>
    <div class="col-12">
        <label for="inputAddress" class="form-label">Rue *</label>
        <input type="text" class="form-control" id="inputAddress">
    </div>
    <div class="col-12">
        <label for="inputAddress2" class="form-label">Ville *</label>
        <input type="text" class="form-control" id="inputAddress2">
    </div>
    <div class="col-md-6">
        <label for="inputCity" class="form-label">Code postal *</label>
        <input type="text" class="form-control" id="inputCity">
    </div>
    <div class="col-12">
        <label for="inputAddress" class="form-label">Numéro de téléphone</label>
        <input type="text" class="form-control" id="inputAddress">
    </div>
    <p>* Champs obligatoires</p><br>
    <div class="col-12">
        <button type="submit" class="btn btn-primary">Modifier</button>
    </div>
</form>
</div>

<%---
<div class="form">
    <h1>Adresse de livraison</h1> <br>

    <form:form id = "addressForm"
               method="POST"
               action="/ecommerce/profile/address"
               modelAttribute="currentUser">

        <form:label path="deliveryAddress"> Rue * </form:label><br>
        <form:input path="deliveryAddress"/>

        <br><br>

        <form:label path="deliveryAddress"> Ville * </form:label>

        <form:label path="deliveryAddress"><span class="marge"> Code postal * </span></form:label><br>

        <form:input path="deliveryAddress"/>
        <form:input path="deliveryAddress"/>
        <br><br>


        <form:label path="phoneNumber"> Numéro de téléphone * </form:label><br>
        <form:input path="phoneNumber"/>
        <br>

        <p>* Champs obligatoires</p><br>
        <%--<form:checkbox path="remember" value="false" label="Se souvenir de moi"/>

        <form:button>Modifier</form:button>

    </form:form>
</div>
---%>
</body>
</html>