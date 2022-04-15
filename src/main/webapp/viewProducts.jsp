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

<form action="AdminViewProducts" method="get">
<section>
	<div class="container">
	<div class="column is-full">
	<table class="table is-striped is-fullwidth">
		<thead>
		<tr>
			<th>Product Name</th>
			<th>Size</th>
			<th>Category</th>
			<th>Price</th>
			<th>Quantity</th>
		</tr>
		</thead>
		<tbody>
		
		<c:forEach items="${products}" var="product">
		<tr>
			<td><c:out value="${product.productName}"/></td>
			<td><c:out value="${product.size}"/></td>
			<td><c:out value="${product.category}"/></td>
			<td>$<c:out value="${product.price}"/></td>
			<td><c:out value="${product.quantity}"/></td>
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