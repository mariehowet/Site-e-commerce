<%--
  Created by IntelliJ IDEA.
  User: MH030
  Date: 10/11/2022
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="include/importTags.jsp"%>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <title>Adresse</title>
</head>
<body>
<nav aria-label="breadcrumb" style="padding-left: 10px" class="navbar bg-light">
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Accueil</li>
        <li class="breadcrumb-item" aria-current="page">Panier</li>
        <li class="breadcrumb-item active" aria-current="page">Adresse</li>
    </ol>
</nav>
<div class="container
    my-5 py-5">
    <div class="row">
        <main class="col-xl-8 col-lg-8">
            <p class="text-uppercase fw-bold mb-3 text-font">Etape 1 : Adresse</p>
            <div class="progress mb-4">
                <div class="progress-bar progress-bar-striped bg-danger progress-bar-animated" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <div class="card mb-4">
                <div class="card-body">
                    <p class="text-uppercase fw-bold mb-3 text-font">Vos données</p>
                    <div class="float-end">
                        <a href="#" class="btn btn-outline-primary">S'inscrire</a>
                        <a href="#" class="btn btn-primary">Se connecter</a>
                    </div>
                    <h5>Avez-vous un compte?</h5>
                </div>
            </div>

            <div class="col-md-8 mb-4">
                <div class="card mb-4">
                    <div class="card-header py-3">
                        <h5 class="mb-0 text-font text-uppercase">Adresse de livraison</h5>
                    </div>
                    <div class="card-body">
                        <form>

                            <div class="row  mb-4">
                                <div class="col-md-6 mb-4">
                                    <label class="form-label" for="form6Example1">Région</label>
                                    <select class="select">
                                        <option value="1">Wallonie</option>
                                        <option value="2">Flandre</option>
                                        <option value="3">Bruxelles</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Text input -->
                            <div class="row mb-4">
                                <div class="col">
                                    <div class="form-outline">
                                        <label class="form-label" for="form6Example1">Rue</label>
                                        <input type="text" id="form6Example1" class="form-control" />
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-outline">
                                        <label class="form-label" for="form6Example2">N° maison</label>
                                        <input type="text" id="form6Example2" class="form-control" />
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-outline">
                                        <label class="form-label" for="form6Example2bis">Boite</label>
                                        <input type="text" id="form6Example2bis" class="form-control" />
                                    </div>
                                </div>
                            </div>

                            <!-- Text input -->
                            <div class="row mb-4">
                                <div class="col">
                                    <div class="form-outline">
                                        <label class="form-label" for="form6Example6">Ville</label>
                                        <input type="text" id="form6Example6" class="form-control" />
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-outline">
                                        <label class="form-label" for="form6Example7">Code postale</label>
                                        <input type="text" id="form6Example7" class="form-control" />
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="text-center">
                    <button type="button" class="btn btn-danger button-order col-md-10">Continuer vers paiement</button>
                </div>
            </div>
        </main>
        <div class="col-md-4 mb-4 position-static">
            <div class="card mb-4">
                <div class="card-header py-3">
                    <h5 class="mb-0 text-font">Récapitulatif</h5>
                </div>

                <dl class="dlist-align m-2">
                    <dt>Prix Total:</dt>
                    <dd class="text-end"> €195.90</dd>
                </dl>
                <dl class="dlist-align  m-2">
                    <dt>Promo:</dt>
                    <dd class="text-end text-danger"> - €60.00 </dd>
                </dl>
                <dl class="dlist-align  m-2">
                    <dt>Transport:</dt>
                    <dd class="text-end"> Gratuit </dd>
                </dl>
                <hr>
                <dl class="dlist-align  m-2">
                    <dt> Total: </dt>
                    <dd class="text-end"> <strong class="text-dark">$252.90</strong> </dd>
                </dl>

                <hr>
                <h6 class="m-4">Articles dans le Panier</h6>

                <figure class="itemside align-items-center m-4">
                    <div class="aside">
                        <b class="badge bg-secondary rounded-pill">1</b>
                        <img src="images/items/7.webp" class="img-sm rounded border">
                    </div>
                    <figcaption class="info">
                        <a href="#" class="title">Gaming Headset with Mic <br> Darkblue color</a>
                        <div class="price text-muted">Total: €295.99</div> <!-- price .// -->
                    </figcaption>
                </figure>

                <figure class="itemside align-items-center m-4">
                    <div class="aside">
                        <b class="badge bg-secondary rounded-pill">1</b>
                        <img src="images/items/5.webp" class="img-sm rounded border">
                    </div>
                    <figcaption class="info">
                        <a href="#" class="title">Apple Watch Series 4 Space <br> Large size</a>
                        <div class="price text-muted">Total: €217.99</div> <!-- price .// -->
                    </figcaption>
                </figure>

                <figure class="itemside align-items-center m-4">
                    <div class="aside">
                        <b class="badge bg-secondary rounded-pill">3</b>
                        <img src="images/items/1.webp" class="img-sm rounded border">
                    </div>
                    <figcaption class="info">
                        <a href="#" class="title">GoPro HERO6 4K Action Camera - Black</a>
                        <div class="price text-muted">Total: €910.00</div> <!-- price .// -->
                    </figcaption>
                </figure>
            </div>
        </div>
    </div>

</div>

</body>
</html>

