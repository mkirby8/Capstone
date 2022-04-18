<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Cart Page</title>
  <link rel="stylesheet" href="Styles/bulma.css">
</head>

<body>
<c:if test="${sessionScope.username != null}">

<section class="hero is-primary">
    <div class="hero-body">
	<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item is-size-1">
      Simply Shopping
    </a>

  </div>


  <div id="navbar" class="navbar-menu">
    <div class="navbar-start">
      <a class="navbar-item" href="mainStore.jsp">
        Home
      </a>

      <a class="navbar-item" href="adminLogin.jsp">
        Admin Login
      </a>
      <a class="navbar-item" href="userHome.jsp">
        User Profile
      </a>

      
    </div>
    <div class="navbar-end">
      <div class="navbar-item">
        <p>Welcome, <%= request.getSession().getAttribute("username")%></p>
        </div>
      </div>
    </div>

  
</nav>
</div>
</section>
</c:if>

<c:if test="${sessionScope.username == null}">
<section class="hero is-primary">
    <div class="hero-body">
	<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item is-size-1">
      Simply Shopping
    </a>

  </div>


  <div id="navbar" class="navbar-menu">
    <div class="navbar-start">
      <a class="navbar-item" href="mainStore.jsp">
        Home
      </a>

      <a class="navbar-item" href="adminLogin.jsp">
        Admin Login
      </a>
      

      
    </div>

</div>
  
</nav>
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
                                <div class="box">
                                    <p>To continue, please <a href="login.jsp">Login</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="column">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</c:if>
<c:if test="${sessionScope.username != null}">
<c:if test="${sessionScope.cart != null}">

  <section class="hero is-fullheight">
    <div class="hero-body has-text-centered">
      <div class="container">
        <div class="section is-vcentered ">
          <div class="columns">
            <div class="column is-two-thirds">

              
<c:forEach items="${cart}" var="item">
<c:set var="cartTotal" value="${cartTotal + (item.product.price * item.quantity)}"></c:set>
<input type="hidden" value="${cartTotal + (item.product.price * item.quantity)}" name="cartTotal"/>
              <div class="box has-text-left">
                <div class="media">
                  <div class="media-left">
                    <figure class="image is-64x64">
                      <img src="resources/${item.product.photo}" alt="Image">
                    </figure>
                  </div>
                  <div class="media-content">
                    <p>Item: <c:out value="${item.product.productName}"/> (<c:out value="${item.product.category}"/>)</p>
                    <p>Size: <c:out value="${item.product.size}"/></p>
                    <p>Price: $<fmt:formatNumber type="number" pattern="0.00" value="${item.product.price * item.quantity}"/> </p>
                    <p>Quantity: <c:out value="${item.quantity}"/></p>
                  </div>
                  <div class="media-right">
                  	<form action="RemoveFromCart" method="get"><button class="delete is-large" type="submit" name="productID" value="${item.product.productID}"></button></form>
                  </div>
                </div>
              </div>
              </c:forEach>

              

            </div>
            <div class="column is-one-third is-full has-text-centered">
              <div id="purchase">
                <h1 class="title is-1 has-text-centered">Total Cost</h1>
                  <p>$<fmt:formatNumber type="number" pattern="0.00" value="${cartTotal}"/></p>
                  <br>
                  <br>
                  <form action="OrderConfirmation" method="get"><button class="button is-primary">Place Order</button></form>
              </div>
              <br>
                <p class="has-text-danger">${message}</p>
              
            </div>
            
            
          </div>
        </div>
      </div>
    </div>
  </section>
  </c:if>
  <c:if test="${sessionScope.cart == null}">
	<section class="hero is-fullheight">
        <div class="hero-body has-text-centered">
            <div class="container">
                <div class="section is-vcentered ">
                    <div class="columns">
                        <div class="column">
                        </div>
                        <div class="column">
                            <div class="content is-vcentered">
                                <div class="box">
                                    <p>Your cart is empty!</p>
                                </div>
                            </div>
                        </div>
                        <div class="column">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</c:if>
  </c:if>
</body>

</html>