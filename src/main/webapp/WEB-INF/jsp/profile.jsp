<%@ page pageEncoding="UTF-8"
         contentType="text/html; charset=UTF-8"%>
<%@ include file="include/importTags.jsp"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page import="java.text.SimpleDateFormat" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
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


<div class="py-5 container">
    <div class="row justify-content-between pb-2 mb-4 border-bottom">
        <div class="col-md-2">
            <h2><spring:message code="profile"/></h2>
        </div>
    </div>
    <form class="row g-3">
        <div class="col-md-6">
            <label for="profileName" class="form-label"><spring:message code="lastName"/></label>
            <input type="text" class="form-control" id="profileName" value="${pageContext.request.userPrincipal.principal.lastName}" disabled readonly>
        </div>

        <div class="col-md-6">
            <label for="profileFirstName" class="form-label"><spring:message code="firstName"/></label>
            <input type="text" class="form-control" id="profileFirstName" value="${pageContext.request.userPrincipal.principal.firstName}" disabled readonly>
        </div>

        <div class="col-md-6">
            <label for="profileAlias" class="form-label"><spring:message code="username"/></label>
            <input type="text" class="form-control" id="profileAlias" value="${pageContext.request.userPrincipal.principal.username}" disabled readonly>
        </div>

        <div class="col-md-6">
            <label for="profileTelNumber" class="form-label"><spring:message code="phoneNumber"/></label>
            <input type="tel" class="form-control" id="profileTelNumber" value="${pageContext.request.userPrincipal.principal.phoneNumber != null ? pageContext.request.userPrincipal.principal.phoneNumber : 'Pas de numéro de téléphone'}" disabled readonly>
        </div>

        <div class="col-12">
            <label class="form-label"><spring:message code="birthdate"/></label>
            <input type="date" class="form-control"  value="${SimpleDateFormat("YYYY-MM-dd").format(pageContext.request.userPrincipal.principal.birthdate)}" disabled readonly>
        </div>

        <div class="col-12">
            <label for="profileEmail" class="form-label"><spring:message code="email"/></label>
            <input type="email" class="form-control" id="profileEmail" value="${pageContext.request.userPrincipal.principal.email}" disabled readonly>
        </div>

        <div class="col-12">
            <label for="profileAddress" class="form-label"><spring:message code="deliveryAddress"/></label>
            <input type="text" class="form-control" id="profileAddress" value="${pageContext.request.userPrincipal.principal.deliveryAddress}" disabled readonly>
        </div>
    </form>
</div>
    </div>

</div>

</div>
</body>
</html>