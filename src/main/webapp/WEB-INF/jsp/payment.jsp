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
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>
<body>
    <div class="container
    my-5 py-5">
      <div class="row">
        <main class="col-xl-8 col-lg-8">
          <h1 class="fw-bold mb-0 text-black"><spring:message code="payment"/></h1>
          <div class="card mb-4">
            <div class="card-body">
              <p class="text-uppercase fw-bold mb-3 text-font"><spring:message code="sendTo"/></p>
              <p>${pageContext.request.userPrincipal.principal.firstName} ${pageContext.request.userPrincipal.principal.lastName}</p>
              <p>${pageContext.request.userPrincipal.principal.deliveryAddress}</p>
            </div>
          </div>
          <div class="card mb-4">
            <div class="card-body">
              <p class="text-uppercase fw-bold mb-3 text-font"><spring:message code="paymentMethod"/></p>
              <i class="bi bi-paypal">Paypal</i>
            </div>
          </div>

          <div>
            <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
              <input hidden name="business" value="sb-5oyu626763887@personal.example.com"/>
              <input hidden name="cert_id" value="ASXGaHitXphSznUAw4pOYxGhHZVam4FtLyG0yqiFgIwd7fMH3_-RtoQZETlil_Bj3VPNVZVYTuDOiJ9h" />
              <input hidden name="cmd" value="_xclick" />
              <input hidden name="amount" value=" ${subtotal - discount}" />
              <input hidden name="item_name" value="order" />
              <input hidden name="lc" value="fr_BE" />
              <input hidden name="currency_code" value="EUR" />
              <input hidden name="return" value="http://localhost:1234/ecommerce/payment/success" />
              <input hidden name="cancel_return" value="http://localhost:1234/ecommerce/payment" />
              <button class="btn btn-outline-primary mt-3"><spring:message code="pay"/></button>
            </form>
          </div>

        </main>
        <div class="col-md-4 mb-4 position-static">
          <div class="card mb-4">
            <div class="card-header py-3">
              <h5 class="mb-0 text-font"><spring:message code="summary"/></h5>
            </div>

            <dl class="dlist-align m-2">
              <dt><spring:message code="price"/></dt>
              <dd class="text-end"> € ${subtotal}</dd>
            </dl>
            <dl class="dlist-align  m-2">
              <dt><spring:message code="discount"/></dt>
              <dd class="text-end text-danger"> -€ ${discount} </dd>
            </dl>
            <hr>
            <dl class="dlist-align  m-2">
              <dt><spring:message code="total"/></dt>
              <dd class="text-end"> <strong class="text-dark">€ ${subtotal - discount}</strong> </dd>
            </dl>

            <hr>
            <h6 class="m-4"><spring:message code="items"/></h6>
          <c:forEach items="${list}" var="orderRow">
            <figure class="itemside align-items-center m-4">
              <div class="aside">
                <b class="badge bg-secondary rounded-pill">${orderRow.value.quantity} x </b>
                <img src='<spring:url value="/images/items/${orderRow.value.item.picture}"/>' class="img-fluid rounded-3">
              </div>
              <figcaption class="info">
                <div class="title">${orderRow.value.item.brand} | ${orderRow.value.item.size}</div>
                <div class="price text-muted">€ ${orderRow.value.realPrice}</div> <!-- price .// -->
              </figcaption>
            </figure>
          </c:forEach>
          </div>
        </div>
      </div>

    </div>

</body>
</html>

