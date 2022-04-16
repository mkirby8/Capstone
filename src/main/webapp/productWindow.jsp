<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Product Window</title>
  <link rel="stylesheet" href="Styles/bulma.css">
</head>

<body>
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
      <a class="navbar-item" href="userHome.jsp">
        User Profile
      </a>
 	<a class="navbar-item" href="cart.jsp">
        Shopping Cart
      </a>
      
    </div>

    <div class="navbar-end">
      <div class="navbar-item">
        <div class="buttons">
          <a class="button is-primary" href="signup.jsp">
            <strong>Sign up</strong>
          </a>
          <a class="button is-light" href="login.jsp">
            Log in
          </a>
        </div>
      </div>
    </div>
  </div>
</nav>
</div>
</section>
</c:if>

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
 	<a class="navbar-item" href="cart.jsp">
        Shopping Cart
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

<section class="section">

<div class="container">

  <div class="columns is-vcentered">
    
    <div class="column is-6">
   
    <h1 class="title is-size-1 has-text-centered"><c:out value="${product.productName}"/> (<c:out value="${product.category}"/>)</h1>
    <figure class="image is-square">
         <img src="resources/${product.photo}" width="200" height="200">
    </figure>
    </div>
    
    <div class="column is-6 has-text-centered">
      <div class="is-size-4 pb-4"><c:out value="${product.description}"/></div>
      <p class="pb-4">$ <c:out value="${product.price}"/></p>
      <form name="addtocart" method="post" action="AddToCart">
      <c:set var="name" value="${product.productName}"/>
      <input type="hidden" value="${product.productName}" name="productName"/>
      <div class="select">
      	<select name="size">
      		<option value="S">S</option>
      		<option value="M">M</option>
      		<option value="L">L</option>
      		<option value="XL">XL</option>
      	</select>
      </div>
      <div class="select">
        <select name="num">
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
        </select>
      </div>
      
      <button class="button is-primary">Add to cart</button>
     </form>
    </div>
  </div>

 </div> 
  </section>
  
  
  
  
</body>

</html>