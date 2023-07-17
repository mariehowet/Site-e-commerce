<%@ page pageEncoding="UTF-8"
         contentType="text/html; charset=UTF-8"%>
<%@ include file="include/importTags.jsp"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <link type="text/css" href="<spring:url value='/css/login.css' />" rel="Stylesheet">

</head>
<body>

<div class="form"><br>
    <h1><spring:message code="signUp"/></h1> <br>


    <form:form id = "signForm"
               method="POST"
               action="/ecommerce/inscription/send"
               modelAttribute="customer">

            <form:label path="lastName">* <spring:message code="lastName"/></form:label><br>
            <form:input path="lastName"/><br>
            <form:errors path="lastName" color="red"/>

            <br><br>

            <form:label path="firstName">* <spring:message code="firstName"/></form:label><br>
            <form:input path="firstName"/><br>
            <form:errors path="firstName" color="red"/>

            <br><br>

            <form:label path="birthdate" class="control-label " for="date">* <spring:message code="birthdate"/></form:label><br>
            <form:input path="birthdate" id="date" name="date" placeholder="mm/dd/yyyy" type="date" /><br>
            <form:errors path="birthdate" color="red"/>

        <br><br>

            <form:label path="deliveryAddress">* <spring:message code="deliveryAddress"/></form:label><br>
            <form:input path="deliveryAddress" /><br>
            <form:errors path="deliveryAddress" color="red"/>

        <br><br>

            <form:label path="phoneNumber"><spring:message code="phoneNumber"/></form:label><br>
            <form:input path="phoneNumber" type="tel"/><br>
            <form:errors path="phoneNumber" color="red"/>

        <br><br>

            <form:label path="username">* <spring:message code="username"/> </form:label><br>
            <form:input path="username"/><br>
            <form:errors path="username" color="red"/>

        <br><br>

            <form:label path="email">* <spring:message code="email"/></form:label><br>
            <form:input path="email" type="email"/><br>
            <form:errors path="email" color="red"/>

        <br><br>

            <form:label path="password">* <spring:message code="password"/></form:label><br>
            <form:input path="password" type="password"/><br>
            <form:errors path="password" color="red"/>

        <br><br>

            <form:label path="confirmPassword">* <spring:message code="confirmPassword"/></form:label><br>
            <form:input path="confirmPassword" type="password"/><br>
            <form:errors path="confirmPassword" color="red"/>

        <br><br>
       <p style="color: red">* <spring:message code="mandatory"/></p><br>
       <%--<form:checkbox path="remember" value="false" label="Se souvenir de moi"/>--%>

        <form:button type="submit" class="btn btn-primary"><spring:message code="signUp"/></form:button>

        <hr>
        <p><spring:message code="alreadyRegistered"/> ? <a href="<spring:url value='/login' />"><spring:message code="signIn"/></a></p>

    </form:form>
    </div>
</div>

</body>
</html>