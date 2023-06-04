<%--
  Created by IntelliJ IDEA.
  User: MH030
  Date: 04/11/2022
  Time: 09:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="include/importTags.jsp"%>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <title>Panier</title>
</head>
<body>
    <nav aria-label="breadcrumb" style="padding-left: 10px" class="navbar bg-light">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">Accueil</li>
            <li class="breadcrumb-item active" aria-current="page">Panier</li>
        </ol>
    </nav>

    <div class="container py-5">
        <div class="row d-flex justify-content-center align-items-center ">
            <div class="col-12">
                <div class="card card-registration card-registration-2" style="border-radius: 15px;">
                    <div class="card-body p-0">
                        <div class="row g-0">
                            <div class="col-lg-8">
                                <div class="p-5">
                                    <div class="d-flex justify-content-between align-items-center mb-5">
                                        <h1 class="fw-bold mb-0 text-black">Panier</h1>
                                        <h6 class="mb-0 text-muted">3 articles</h6>
                                    </div>

                                    <c:forEach items="${list}" var="orderRow">
                                    <hr class="my-4">

                                    <div class="row mb-4 d-flex justify-content-between align-items-center">
                                        <div class="col-md-2 col-lg-2 col-xl-2">
                                            <img
                                                    src='<spring:url value="/images/items/${orderRow.value.item.picture}"/>' class="img-fluid rounded-3">
                                        </div>
                                        <div class="col-md-3 col-lg-3 col-xl-3">
                                            <h6 class="text-black mb-0">${orderRow.value.item.brand} | ${orderRow.value.item.size}</h6>
                                        </div>
                                        <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
                                            <button class="btn btn-link px-2"
                                                    onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                                                <i class="fas fa-minus"></i>
                                            </button>

                                            <input min="0" name="quantity" value="${orderRow.value.quantity}" type="number"
                                                   class="form-control form-control-sm" />

                                            <button class="btn btn-link px-2"
                                                    onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                                                <i class="fas fa-plus"></i>
                                            </button>
                                        </div>
                                        <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                                            <h6 class="mb-0">€ ${orderRow.value.realPrice}</h6>
                                        </div>
                                        <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                                            <a href="<spring:url value='/basket/deleteToBasket'>
                                                        <spring:param name="itemId" value="${orderRow.value.item.id}"/>
                                                     </spring:url>" class="text-muted">
                                                <i class="bi bi-x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    </c:forEach>


                                </div>
                            </div>
                            <div class="col-lg-4 bg-grey">
                                <div class="p-5">
                                    <h3 class="fw-bold mb-5 mt-2 pt-1">Résumé</h3>
                                    <hr class="my-4">

                                    <div class="d-flex justify-content-between mb-4">
                                        <h5 class="text-uppercase">Articles 3</h5>
                                        <h5>€ 132.00</h5>
                                    </div>

                                    <div class="d-flex justify-content-between mb-4">
                                        <h5 class="text-uppercase">TVA</h5>
                                        <h5>€ 5.50</h5>
                                    </div>

                                    <div class="d-flex justify-content-between mb-4">
                                        <h5 class="text-uppercase">Promo</h5>
                                        <h5>- € 10</h5>
                                    </div>

                                    <div class="d-flex justify-content-between mb-4">
                                        <h5 class="text-uppercase">transport</h5>
                                        <h5>Gratuit</h5>
                                    </div>

                                    <hr class="my-4">

                                    <div class="d-flex justify-content-between mb-5">
                                        <h5 class="text-uppercase">Prix Total</h5>
                                        <h5>€ 137.00</h5>
                                    </div>

                                    <a href="<spring:url value="/payment"/>">
                                    <button type="button" class="btn btn-dark btn-block btn-lg"
                                            data-mdb-ripple-color="dark">Commander</button>
                                    </a>

                                    <div class="card mb-4 mb-lg-0 mt-4">
                                        <div class="card-body">
                                            <p><strong>Nous acceptons</strong></p>
                                            <i class="bi bi-paypal"></i>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
