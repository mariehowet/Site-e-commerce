<%--
  Created by IntelliJ IDEA.
  User: MH030
  Date: 02/11/2022
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8"
         contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/importTags.jsp"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <title>FripFrites</title>
    <spring:url var="localeFr" value="">
        <spring:param name="locale" value="fr"/>
        <c:if test="${currentUrlParam.name != null && currentUrlParam.value != null}">
            <spring:param name="${currentUrlParam.name}" value="${currentUrlParam.value}"/>
        </c:if>
    </spring:url>

    <spring:url var="localeEn" value="">
        <spring:param name="locale" value="en"/>
        <c:if test="${currentUrlParam.name != null && currentUrlParam.value != null}">
            <spring:param name="${currentUrlParam.name}" value="${currentUrlParam.value}"/>
        </c:if>
    </spring:url>

    <style>
        i {
            font-size: 25px;
        }
    </style>
</head>
<body >
<header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href='<spring:url value="/welcome"/>'>FripFrite</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <spring:message code="categories"/>
                        </a>
                        <ul class="dropdown-menu">
                            <c:forEach items = "${categoriesTranslations}" var="categoryTranslation">
                                <li>
                                    <a class="dropdown-item"
                                       href='<spring:url value="/categoryItems">
                                                <spring:param name="category" value="${categoryTranslation.categoryId}"/>
                                             </spring:url>'>
                                            ${categoryTranslation.name}
                                    </a>
                                </li>
                            </c:forEach>
                        </ul>
                    </li>
                </ul>


                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <a href="${localeFr}">
                        <img height="25" width="32" id="fr" alt="fr" src='<spring:url value="/images/localeFr.png"/>' />
                    </a>

                    <a href="${localeEn}">
                        <img height="25" width="32" id="en" alt="en" src='<spring:url value="/images/localeEn.png"/>' />
                    </a>
                    <a href="<spring:url value="/profile"/>">
                        <i height="25" width="25" class="bi bi-person-circle text-white"></i>
                    </a>
                    <a href="<spring:url value="/basket"/>">
                        <i height="25" width="25" class="bi bi-cart text-white"></i>
                    </a>
                    <sec:authorize access="isAuthenticated()">
                        <p class="text-white"><spring:message code="greeting"/> ${pageContext.request.userPrincipal.principal.firstName}</p>
                        <a href='<spring:url value="/logout"/>'>
                            <button class="btn btn-primary" type="submit"><spring:message code="disconnect"/></button>
                        </a>
                    </sec:authorize>
                </div>
            </div>
        </div>
    </nav>
    <div class="alert alert-danger" role="alert">
        <spring:message code="discountDescription"/> !
    </div>
</header>
<!--Contenu de chaque page jsp---->
<div>
    <tiles:insertAttribute name="main-content"/>
</div>

<!--Contenu de chaque page jsp---->
<!-- Footer -->
  <footer class="text-center text-lg-start bg-light text-muted">
    <!-- Section: Social media -->
    <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
        <!-- Left -->
        <div class="me-5 d-none d-lg-block">
            <span><spring:message code="contactUs"/>:</span>
        </div>
        <!-- Left -->
    </section>

    <section class="">
        <div class="container text-center text-md-start mt-5">
            <!-- Grid row -->
            <div class="row mt-3">
                <!-- Grid column -->
                <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                    <!-- Content -->
                    <h6 class="text-uppercase fw-bold mb-4">
                        <spring:message code="company"/>
                    </h6>
                    <a href="<spring:url value="/companyDescription"/>">
                        <spring:message code="aboutUsLabel"/>
                    </a>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold mb-4">
                        <spring:message code="thriftShops"/>
                    </h6>
                    <p>
                        <a href="https://petitsriens.be/" class="text-reset">Les Petits Riens</a>
                    </p>
                    <p>
                        <a href="https://www.chezbonnemaman.be/" class="text-reset">Chez Bonne Maman</a>
                    </p>
                    <p>
                        <a href="https://www.besap.be/" class="text-reset">Besap</a>
                    </p>

                </div>
                <!-- Grid column -->
                <!-- Grid column -->
                <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold mb-4"><spring:message code="contact"/></h6>
                    <p><i class="fas fa-home me-3"></i>Rue Joseph Calozet 19, 5000 Namur</p>
                    <p>
                        <i class="fas fa-envelope me-3"></i>
                        info@fripfrites.be
                    </p>
                    <p><i class="fas fa-phone me-3"></i> 02 234 567 88</p>
                </div>
                <!-- Grid column -->
            </div>
            <!-- Grid row -->
        </div>
    </section>
    <!-- Section: Links  -->

    <!-- Copyright -->
    <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
        © 2023 Copyright:
        <a class="text-reset fw-bold" ref='<spring:url value="/welcome"/>'>FripFrites.be</a>
    </div>
    <!-- Copyright -->
</footer>
<!-- Footer -->

</body>
</html>