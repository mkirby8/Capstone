<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin View Orders Page</title>
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

<form action="AdminViewOrders" method="get">
<section>
	<div class="container">
	<div class="column is-full">
	<table class="table is-striped is-fullwidth">
		<thead>
		<tr>
			<th>Order ID</th>
			<th>Username</th>
			<th>Order Total</th>
			
		</tr>
		</thead>
		<tbody>
		
		<c:forEach items="${orders}" var="order">
		<tr>
			<td><c:out value="${order.orderID}"/></td>
			<td><c:out value="${order.username}"/></td>
			<td>$<c:out value="${order.orderTotal}"/></td>
			
		</tr>	
		</c:forEach>
		</tbody>
	</table>
	</div>
	</div>
	
</section>
</form>
</body>
</html>