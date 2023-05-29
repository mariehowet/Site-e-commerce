<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="include/importTags.jsp"%>

<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  <title>Title</title>
  <style>
    #breadcrumb_container {
      padding: 0 5px;
      border-bottom: 1px solid black;
    }
    .card {
      max-width: 1080px;
      margin-left: auto;
      margin-right: auto;
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <div id="breadcrumb_container">
    <nav aria-label="breadcrumb" style="padding-left: 10px" class="navbar bg-light">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Accueil</a></li>
        <li class="breadcrumb-item"><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Femme</a></li>
        <li class="breadcrumb-item active" aria-current="page">Nom de l'article</li>
      </ol>
    </nav>
  </div>
  <!-- partie avec l'article et ses infos -->
  <div class="card mb-3">
    <div class="row g-0">
      <div class="col-md-5">
        <img src='<spring:url value="/images/items/${item.picture}"/>' class="img-fluid rounded-start" alt="...">
      </div>
      <div class="col-md-7">
        <div class="card-body">
          <h5 class="card-titel">${item.label}</h5>
          <p class="card-text">Marque : ${item.brand}</p><br/>
          <p class="card-text">Taille : ${item.size}</p><br/>
          <p class="card-text">Friperie : ${item.thriftShop}</p><br/>
          <p class="card-text">Prix : ${item.price}€</p>
          <spring:url var="actionValue" value='/basket/addToBasket'>
            <spring:param name="itemId" value="${item.id}"/>
          </spring:url>
          <form:form id = "addToBasketForm"
                     method="POST"
                     action="${actionValue}"
                     modelAttribute="orderRow">
            <div class="row mb-4 d-flex">
              <div class="col-md-2 col-lg-2 col-xl-2">
                <p class="text-black mb-0">Quantité :</p>
              </div>
              <div class="col-md-3 col-lg-3 col-xl-3 d-flex">
                <button class="btn btn-link px-2"
                  onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                  <i class="fas fa-minus"></i>
                </button>

                <form:input path="quantity" min="0" name="quantity" value="1" type="number" class="form-control form-control-sm" />

                <button class="btn btn-link px-2"
                onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                <i class="fas fa-plus"></i>
                </button>
              </div>
            </div>

            <form:button type="submit" class="btn btn-primary">Ajouter au panier</form:button>
          </form:form>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
