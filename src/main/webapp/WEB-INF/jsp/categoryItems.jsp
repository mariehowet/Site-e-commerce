<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="include/importTags.jsp"%>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <style>
        .carousel-item {
            height: 300px;
        }
        #cards_container {
            display: flex;
            flex-wrap: wrap;
        }
        .card {
            margin: 10px;
        }
    </style>
</head>
<body>
    <!-- Partie carousel
    <div id="carousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img4.webp" class="d-block w-100 img-fluid" alt="remplasse image">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Nom de l'article | taille ...</h5>
                    <p>C'est un très beau t-shirt</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img5.webp" class="d-block w-100 img-fluid" alt="remplasse image">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Nom de l'article | taille ...</h5>
                    <p>C'est également un très beau t-shirt</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img5.webp" class="d-block w-100 img-fluid" alt="remplasse image">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Nom de l'article | taille ...</h5>
                    <p>Ce t-shirt est magnifique</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

   Partie avec tous les vêtements -->
    <div class="py-5 container" id="cards_container">
        <c:forEach items = "${itemsByCategory}" var="item">
            <div class="card" style="width: 18rem;" >
                <a href='<spring:url value="/item">
                                <spring:param name="item" value="${item.id}"/>
                         </spring:url>'>
                    <img src='<spring:url value="/images/items/${item.picture}"/>' class="card-img-top" alt="remplasse image">
                </a>
                <div class="card-body">
                    <h5 class="card-title">${item.brand} | ${item.size}</h5>
                    <p class="card-text"><spring:message code="from"/> ${item.thriftShop}</p>
                    <p class="card-text">€ ${item.price}</p>
                </div>
            </div>
        </c:forEach>
    </div>
</body>
</html>