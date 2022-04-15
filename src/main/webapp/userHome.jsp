
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>User Home Page</title>
  <link rel="stylesheet" href="Styles/bulma.css">
</head>

<body>
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
	<a class="navbar-item" href="cart.jsp">
        Shopping Cart
      </a>
      
    </div>

  
  </div>
</nav>
</div>
</section>
<c:if test="${sessionScope.username != null}">
 

<section class="section">
<h1 class="title is-size-1 has-text-centered"> User  Home</h1>
<br>
<h2 class="subtitle has-text-centered"> Welcome, <%= request.getSession().getAttribute("username") %>
</h2>

</section>
<section class = "section">
<div class="container">
  <div class="columns is-centered">  
    <div class="column is-one-third">
	<div class="field is-grouped">
		<a href ="userViewOrders.jsp"><button class="button is-link">View My Orders</button></a>

		<form action="UserViewInfo" method="get"><button class="button is-primary">View My Information</button></form>
		
		<br>
		<form name="logout" action="UserLogout" method="get">	
		<button class="button">Logout</button>
		</form>
	</div>
	
	</div>
	</div>
	</div>


</section>
</c:if>
  <c:if test="${sessionScope.username == null}">
  <section class = "section">
<div class="container">
  <div class="columns is-centered">  
    <div class="column is-one-quarter">
	<div class="field is-grouped">
  	<p class="control">
		<a href ="login.jsp"><button class="button is-link">Login</button></a>
	</p>
	<p class="control">	
		<a href="signup.jsp"><button class="button is-primary">Signup</button></a>
		</p>
    </div>
    </div>
    </div>
    </div>
    </section>
    </c:if>
</body>
</html>