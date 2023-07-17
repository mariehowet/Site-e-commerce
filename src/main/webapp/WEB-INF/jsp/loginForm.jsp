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

<h1><spring:message code="signIn"/></h1> <br>

<form:form id = "loginForm"
           method="POST"
           modelAttribute="customer">

    <form:label path="username">* <spring:message code="username"/></form:label><br>
    <form:input path="username"/>

    <br><br>

    <form:label path="password">* <spring:message code="password"/></form:label><br>
    <form:input path="password" type="password"/>

    <br><br>

    <p style="color: red">* <spring:message code="mandatory"/></p><br>
    <%--<form:checkbox path="remember" value="false" label="Se souvenir de moi"/>--%>
    <c:if test="${error != null}">
        <div class="form-group">
            <p style="color: red"><spring:message code="credentialsError"/></p>
        </div>
    </c:if>

    <form:button type="submit" class="btn btn-primary"><spring:message code="signIn"/></form:button>

    <hr>
    <p><spring:message code="noAccount"/> ? <a href="<spring:url value='/inscription' />"><spring:message code="signUp"/></a></p>


</form:form>
</div>
</body>
</html>