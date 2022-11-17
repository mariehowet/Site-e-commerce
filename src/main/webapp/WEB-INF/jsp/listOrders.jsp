<%@ page pageEncoding="UTF-8"
         contentType="text/html; charset=UTF-8"%>
<%@ include file="include/importTags.jsp"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title> Mes commandes </title>
    <link type="text/css" href="<spring:url value='/css/listOrders.css' />" rel="Stylesheet">

</head>
<body>
<div class="form">
    <h1>Mes commandes</h1> <br>

    <form:form id = "listOrders"
               method="POST"
               action="/ecommerce/orders"
               modelAttribute="listOrders">

        <form:button>Toutes les commandes</form:button>&emsp;
        <form:button>En attente</form:button>&emsp;
        <form:button>Expédiés</form:button>&emsp;
        <form:button>Annulées</form:button>&emsp;
        <br><br>

        <table>
            <tr>
                <th>Date</th>
                <th>Numéro de commande</th>
            </tr>
            <tr>
               <td>Image cap</td>
                <td>Détails</td>
            </tr>
        </table>

    </form:form>
</div>
</body>
</html>