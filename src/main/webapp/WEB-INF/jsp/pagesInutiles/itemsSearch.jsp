<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../include/importTags.jsp"%>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <title>Title</title>
    <style>
        #cards_container {
            display: flex;
            flex-wrap: wrap;
        }
        .card {
            margin: 10px;
        }
        #search_filters {
            margin: 5px 0;
        }
        #filters_container {
            border-bottom: 1px solid gray;
            border-top: 1px solid grey;
            margin: 5px;
        }
        #filter_buttons {
            margin-top: 5px;;
        }
        #breadcrumb_container {
            margin: 0 5px;
        }
    </style>
</head>
<body>
    <!-- petite navBar avec le type de recherche choisie (femme, homme, enfant, marques ou friperie) -->
    <div id="breadcrumb_container">
        <nav aria-label="breadcrumb" style="padding-left: 10px" class="navbar bg-light">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Accueil</a></li>
                <li class="breadcrumb-item active" aria-current="page">Femme</li>
            </ol>
        </nav>
    </div>
    <!-- partie avec les types de recherche, et les étiquettes avec les recherches choisies -->
    <div id="filters_container">
        <!-- Boutons pour filtrer la recherche -->
        <div id="filter_buttons">
            <div class="btn-group">
                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Catégorie
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">T-shirt</a></li>
                    <li><a class="dropdown-item" href="#">Pantalon</a></li>
                    <li><a class="dropdown-item" href="#">Pull</a></li>
                </ul>
            </div>
            <div class="btn-group">
                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Taille
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">XS</a></li>
                    <li><a class="dropdown-item" href="#">S</a></li>
                    <li><a class="dropdown-item" href="#">M</a></li>
                    <li><a class="dropdown-item" href="#">L</a></li>
                    <li><a class="dropdown-item" href="#">XL</a></li>
                    <li><a class="dropdown-item" href="#">XXL</a></li>
                </ul>
            </div>
            <div class="btn-group">
                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Prix
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">Moins de 10€</a></li>
                    <li><a class="dropdown-item" href="#">Entre 10€ et 20€</a></li>
                    <li><a class="dropdown-item" href="#">Plus de 20€</a></li>
                </ul>
            </div>
        </div>
        <!-- Filtres appliqués sur la recherche -->
        <div id="search_filters">
            <span>
                <span class="badge text-bg-light">
                    Taille M  <button type="button" class="btn-close" aria-label="Close"></button>
                </span>
                <span class="badge text-bg-light">
                    Pantalon  <button type="button" class="btn-close" aria-label="Close"></button>
                </span>
            </span>
            <span class="float-end">Effacer les filtres</span>
        </div>
    </div>
    <!-- partie avec les articles -->
    <div id="cards_container">
        <div class="card" style="width: 18rem;" >
            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img5.webp" class="card-img-top" alt="remplasse image">
            </a>
            <div class="card-body">
                <h5 class="card-title">Nom de l'article | taille ...</h5>
                <p class="card-text">Prix : 10€</p>
                <p class="card-text">Vient de chez ...</p>
            </div>
        </div>
        <div class="card" style="width: 18rem;" >
            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img4.webp" class="card-img-top" alt="remplasse image">
            </a>
            <div class="card-body">
                <h5 class="card-title">Nom de l'article | taille ...</h5>
                <p class="card-text">Prix : 10€</p>
                <p class="card-text">Vient de chez ...</p>
            </div>
        </div>
        <div class="card" style="width: 18rem;" >
            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img5.webp" class="card-img-top" alt="remplasse image">
            </a>
            <div class="card-body">
                <h5 class="card-title">Nom de l'article | taille ...</h5>
                <p class="card-text">Prix : 10€</p>
                <p class="card-text">Vient de chez ...</p>
            </div>
        </div>
        <div class="card" style="width: 18rem;" >
            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img2.webp" class="card-img-top" alt="remplasse image">
            </a>
            <div class="card-body">
                <h5 class="card-title">Nom de l'article | taille ...</h5>
                <p class="card-text">Prix : 10€</p>
                <p class="card-text">Vient de chez ...</p>
            </div>
        </div>
        <div class="card" style="width: 18rem;" >
            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img1.webp" class="card-img-top" alt="remplasse image">
            </a>
            <div class="card-body">
                <h5 class="card-title">Nom de l'article | taille ...</h5>
                <p class="card-text">Prix : 10€</p>
                <p class="card-text">Vient de chez ...</p>
            </div>
        </div>
        <div class="card" style="width: 18rem;" >
            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img5.webp" class="card-img-top" alt="remplasse image">
            </a>
            <div class="card-body">
                <h5 class="card-title">Nom de l'article | taille ...</h5>
                <p class="card-text">Prix : 10€</p>
                <p class="card-text">Vient de chez ...</p>
            </div>
        </div>
        <div class="card" style="width: 18rem;" >
            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img5.webp" class="card-img-top" alt="remplasse image">
            </a>
            <div class="card-body">
                <h5 class="card-title">Nom de l'article | taille ...</h5>
                <p class="card-text">Prix : 10€</p>
                <p class="card-text">Vient de chez ...</p>
            </div>
        </div>
        <div class="card" style="width: 18rem;" >
            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img5.webp" class="card-img-top" alt="remplasse image">
            </a>
            <div class="card-body">
                <h5 class="card-title">Nom de l'article | taille ...</h5>
                <p class="card-text">Prix : 10€</p>
                <p class="card-text">Vient de chez ...</p>
            </div>
        </div>
    </div>
</body>
</html>
