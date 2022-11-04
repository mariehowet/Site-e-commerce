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

    <nav aria-label="breadcrumb" style="padding-left: 10px">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">Accueil</li>
            <li class="breadcrumb-item active" aria-current="page">Panier</li>
        </ol>
    </nav>

    <figure class="text-center">
        <h1>Panier</h1>
    </figure>

        <table class="table table-bordered table-sm text-center" style="width: 700px; margin: auto">
                <thead>
                <tr>
                    <th scope="col">Article</th>
                    <th scope="col">Quantité</th>
                    <th scope="col">Prix</th>
                    <th scope="col">Livraison</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">Photo</th>
                    <td>Compteur</td>
                    <td>€26,99</td>
                    <td>Livraison ce mardi</td>
                </tr>

                <tr>
                    <td colspan="4">
                        <p>A l'achat de 3 articles, le moins cher est offert.</p>
                        <p>Articles offerts :...</p>
                    </td>
                </tr>
                </tbody>
            </table>

        <button type="button" class="btn btn-primary" style=" margin: auto">Continuer</button>

        <table class="table table-bordered table-sm" style="width: 200px; margin: auto">

                <tbody>
                <tr>
                    <td>
                        <p>Prix</p>
                        <p>TVA</p>
                    </td>
                </tr>
                <tr>
                    <td>Total</td>
                </tr>
                </tbody>
            </table>

        <button type="button" class="btn btn-danger" style=" margin: auto">Commander</button>
        <i class="bi bi-paypal" style="display: block margin: auto"></i>
    </div>

</body>
</html>
