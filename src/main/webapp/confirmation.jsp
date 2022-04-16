<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Order Confirmation</title>
    <link rel="stylesheet" href="Styles/bulma.css">
</head>

<body>
<section class="hero is-primary">
    <div class="hero-body">
      <p class="title">
        Shopping Simply
      </p>
    </div>
  </section>
    <section class="hero is-fullheight">
        <div class="hero-body has-text-centered">
            <div class="container">
                <div class="section is-vcentered ">
                    <div class="columns">
                        <div class="column">
                        </div>
                        <div class="column">
                            <div class="content is-vcentered">
                            <form action="OrderConfirmation" method="get">
                                <div class="box">
                                    <p>Your order <a href="somerandomlink" id="order number">#<c:out value="${orderid}"/></a> has been confirmed</p>
                                    <p>Delivery Address: </p>
                                    <p><c:out value="${info.address}"/></p>
                  					<p><c:out value="${info.zip}"/> <c:out value="${info.country }"/></p>
                                    <p>Return to your <a href="userHome.jsp">profile</a></p>
                                </div>
                                </form>
                            </div>
                        </div>
                        <div class="column">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>

</html>