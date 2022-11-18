<%@ page pageEncoding="UTF-8"
         contentType="text/html; charset=UTF-8"%>
<%@ include file="include/importTags.jsp"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title> Profil </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <style>

        .vertical-nav {
            min-width: 17rem;
            width: 17rem;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.1);
            transition: all 0.4s;
            margin-top: 70px;
            padding-top: 20px;
        }

        .page-content {
            width: calc(100% - 17rem);
            margin-left: 17rem;
            transition: all 0.4s;
        }

        /* for toggle behavior */

        #sidebar.active {
            margin-left: -17rem;
        }

        #content.active {
            width: 100%;
            margin: 0;
        }

        @media (max-width: 768px) {
            #sidebar {
                margin-left: -17rem;
            }
            #sidebar.active {
                margin-left: 0;
            }
            #content {
                width: 100%;
                margin: 0;
            }
            #content.active {
                margin-left: 17rem;
                width: calc(100% - 17rem);
            }
        }


    </style>
</head>
<body>
<!-- Vertical navbar -->
<div class="vertical-nav" id="sidebar">


    <ul class="nav flex-column bg-white mb-0">
        <li class="nav-item">
            <a href="#" class="nav-link text-dark font-italic bg-light">
                <i class="fa fa-th-large mr-3 text-primary fa-fw"></i>
                Home
            </a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link text-dark font-italic">
                <i class="fa fa-address-card mr-3 text-primary fa-fw"></i>
                About
            </a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link text-dark font-italic">
                <i class="fa fa-cubes mr-3 text-primary fa-fw"></i>
                Services
            </a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link text-dark font-italic">
                <i class="fa fa-picture-o mr-3 text-primary fa-fw"></i>
                Gallery
            </a>
        </li>
    </ul>
</div>
<!-- End vertical navbar -->


<!-- Page content holder -->
<div class="page-content p-5" id="content">

    <!-- Demo content -->
    <h2 class="display-4">NOM</h2>
            <div class="bg-white p-5 rounded my-5 shadow-sm">
                <p class="lead font-italic mb-0 text-muted"><div class="mb-3 row">
                <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-3">
                    <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="email@example.com">
                </div>
                <div class="col-sm-4">
                    <button type="submit" class="btn btn-primary mb-2">Modifier</button>
                </div>
                </div>
                </p>
                <div class="mb-3 row">
                    <label for="staticEmail" class="col-sm-2 col-form-label">Mot de passe</label>
                    <div class="col-sm-3">
                        <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="********">
                    </div>
                    <div class="col-sm-4">
                        <button type="submit" class="btn btn-primary mb-2">Modifier</button>
                    </div>

                </div>
            </div>

        </div>

    </div>

</div>
<!-- End demo content -->



































<%--
<form:form id = "profile"
           method="POST"
           action="/ecommerce/profile"
           modelAttribute="currentUser">
<form:button>Mes commandes</form:button><br>
<form:button>Mon adresse</form:button><br>
<form:button>Déconnexion</form:button><br>
</form:form>

<div class="form">
    <h1>Profil</h1> <br>
    <h2>Nom</h2>
    <br>
    <p>email</p>
    <form:form id = "profile"
               method="POST"
               action="/ecommerce/profile"
               modelAttribute="currentUser">
    <form:button>Modifier</form:button>
        <br><br>
        <p>mdp</p>
        <form:button>Modifier</form:button>
        <br><br><br>
        <form:label path="password"> Mot de passe  actuel * </form:label><br>
        <form:input path="password"/>
        <br><br>
        <form:label path="password"> Nouveau mot de passe * </form:label><br>
        <form:input path="password"/>
        <br><br>
        <form:button>Confirmer</form:button>
        <br>

    </form:form>

--%>
</div>
</body>
</html>