<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Simply Shopping Home Page</title>
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

<br>
<h1 class="title has-text-centered">Women</h1>

  <div class="columns px-5 pt-5">
    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=44"><input type="image" src="resources/blackLeggings.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=48"><input type="image" src="resources/jeanShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

      </div>

    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=52"><input type="image" src="resources/redSkirt.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=56"><input type="image" src="resources/whitePants.jpeg" width="200" height="200"/>
       </a>
      </div>

    </div>

    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=60"><input type="image" src="resources/whiteDress.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=64"><input type="image" src="resources/floralDress.jpeg" width="200" height="200"/>
       </a>
      </div>

    </div>

    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=68"><input type="image" src="resources/yellowSweater.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=72"><input type="image" src="resources/stripedShirt.jpeg" width="200" height="200"/>
       </a>
      </div>

    </div>

    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=76"><input type="image" src="resources/orangeCardigan.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=80"><input type="image" src="resources/denimJacket.jpeg" width="200" height="200"/>
       </a>
      </div>

    </div>

    
  
</div>

<h1 class="title has-text-centered">Men</h1>

  <div class="columns px-5 pt-5">
    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=4"><input type="image" src="resources/cargoShorts.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=8"><input type="image" src="resources/darkJeans.jpeg" width="200" height="200"/>
       </a>
      </div>

      </div>

    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=12"><input type="image" src="resources/graySweats.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=16"><input type="image" src="resources/yellowTrousers.jpeg" width="200" height="200"/>
       </a>
      </div>

    </div>

    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=20"><input type="image" src="resources/redFlannel.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=24"><input type="image" src="resources/blackPolo.jpeg" width="200" height="200"/>
       </a>
      </div>

    </div>

    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=28"><input type="image" src="resources/blueCollared.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=32"><input type="image" src="resources/floralCollared.jpeg" width="200" height="200"/>
       </a>
      </div>

    </div>

    <div class="column">
      <div class="box">
        <a href="ViewProduct?product=36"><input type="image" src="resources/blackPeacoat.jpeg" width="200" height="200"/>
       </a>
      </div>

      <div class="box">
        <a href="ViewProduct?product=40"><input type="image" src="resources/leatherJacket.jpeg" width="200" height="200"/>
       </a>
      </div>

    </div>

    
  
</div>
</body>

</html>