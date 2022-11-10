<%--
  Created by IntelliJ IDEA.
  User: MH030
  Date: 10/11/2022
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>

<<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="include/importTags.jsp"%>

<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
  <title>Panier</title>
</head>
<body>
  <section>
  <nav aria-label="breadcrumb" style="padding-left: 10px" class="navbar bg-light">
    <ol class="breadcrumb">
      <li class="breadcrumb-item">Accueil</li>
      <li class="breadcrumb-item" aria-current="page">Panier</li>
      <li class="breadcrumb-item active" aria-current="page">Adresse</li>
    </ol>
  </nav>
</section>
  <section class="padding-y bg-light">
    <div class="container">
      <div class="row">
        <main class="col-xl-8 col-lg-8">

          <article class="car mb-4">
            <div class="content-body">
              <div class="float-end">
                <a href="#" class="btn btn-outline-primary">S'inscrire</a>
                <a href="#" class="btn btn-primary">Se connecter</a>
              </div>
              <h5>Avez-vous un compte?</h5>
              <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
            </div>
          </article>

          <article class="card">

          </article>
        </main>
        <aside class="col-xl-4 col-lg-4">
          <!-- ============== COMPONENT SUMMARY =============== -->
          <article class="ms-lg-4 mt-4 mt-lg-0" style="max-width: 320px">
            <h6 class="card-title">Summary</h6>

            <dl class="dlist-align">
              <dt>Total price:</dt>
              <dd class="text-end"> $195.90</dd>
            </dl>
            <dl class="dlist-align">
              <dt>Discount:</dt>
              <dd class="text-end text-danger"> - $60.00 </dd>
            </dl>
            <dl class="dlist-align">
              <dt>Shipping cost:</dt>
              <dd class="text-end"> + $14.00 </dd>
            </dl>
            <hr>
            <dl class="dlist-align">
              <dt> Total: </dt>
              <dd class="text-end"> <strong class="text-dark">$252.90</strong> </dd>
            </dl>

            <div class="input-group my-4">
              <input type="text" class="form-control" name="" placeholder="Promo code">
              <button class="btn btn-light text-primary">Apply</button>
            </div>

            <hr>
            <h6 class="mb-4">Items in cart</h6>

            <figure class="itemside align-items-center mb-4">
              <div class="aside">
                <b class="badge bg-secondary rounded-pill">1</b>
                <img src="images/items/7.webp" class="img-sm rounded border">
              </div>
              <figcaption class="info">
                <a href="#" class="title">Gaming Headset with Mic <br> Darkblue color</a>
                <div class="price text-muted">Total: $295.99</div> <!-- price .// -->
              </figcaption>
            </figure>

            <figure class="itemside align-items-center mb-4">
              <div class="aside">
                <b class="badge bg-secondary rounded-pill">1</b>
                <img src="images/items/5.webp" class="img-sm rounded border">
              </div>
              <figcaption class="info">
                <a href="#" class="title">Apple Watch Series 4 Space <br> Large size</a>
                <div class="price text-muted">Total: $217.99</div> <!-- price .// -->
              </figcaption>
            </figure>

            <figure class="itemside align-items-center mb-4">
              <div class="aside">
                <b class="badge bg-secondary rounded-pill">3</b>
                <img src="images/items/1.webp" class="img-sm rounded border">
              </div>
              <figcaption class="info">
                <a href="#" class="title">GoPro HERO6 4K Action Camera - Black</a>
                <div class="price text-muted">Total: $910.00</div> <!-- price .// -->
              </figcaption>
            </figure>
          </article>
          <!-- ============== COMPONENT SUMMARY .// =============== -->
        </aside>
      </div>
    </div>
  </section>
</body>
</html>

