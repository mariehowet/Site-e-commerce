<%@ page pageEncoding="UTF-8"
         contentType="text/html; charset=UTF-8"%>
<%@ include file="include/importTags.jsp"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title> Adresse </title>
    <link type="text/css" href="<spring:url value='/css/address.css' />" rel="Stylesheet">

</head>
<body>
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
        <%--<form:checkbox path="remember" value="false" label="Se souvenir de moi"/>--%>

        <form:button>Modifier</form:button>

    </form:form>
</div>
</body>
</html>