<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin Home Page</title>
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

      
    </div>

  <div class="navbar-end">
      <div class="navbar-item">
        <p>Admin View</p>
        </div>
      </div>
      
  </div>
</nav>
</div>
</section>

<section class="section">
<h1 class="title is-size-1 has-text-centered"> Admin  Home</h1>
</section>
<section class = "section">
<div class="container">
  <div class="columns is-centered">
    <div class="column is-one-third">
	<div class="field is-grouped">
		<form action="AdminViewOrders" method="get"><button class="button is-link">View All Orders</button></form>
		<form action="AdminViewUsers" method="get"><button class="button">View All Users</button></form>
		<form action="AdminViewProducts" method="get"><button class="button is-primary">View All Products</button></form>
	</div>
	</div>
	</div>
	</div>


</section>
</body>
</html>