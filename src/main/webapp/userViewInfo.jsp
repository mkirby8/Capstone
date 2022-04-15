<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>User View Info Page</title>
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
 <section class="hero is-fullheight">
        <div class="hero-body has-text-centered">
            <div class="container">
                <div class="section is-vcentered ">
                    <div class="columns">
                        <div class="column">
                        </div>
                        <div class="column">
                            <div class="content is-vcentered">
                            <form name="viewInfo" action="UserViewInfo" method="get">
                            
                                <div class="box">
                                    <p>Username: <c:out value="${info.username}"/></p>
                                    <p>Email: <c:out value="${info.email}"/></p>
                                    <p>First Name: <c:out value="${info.firstName}"/></p>
                                    <p>Last Name: <c:out value="${info.lastName}"/></p>
                                    <p>Address: <c:out value="${info.address}"/></p>
                                    <p>Zip Code: <c:out value="${info.zip}"/></p>
                                    <p>Country: <c:out value="${info.country}"/></p>
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