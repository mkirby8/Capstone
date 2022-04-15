<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin View Users Page</title>
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

<form action="AdminViewUsers" method="get">
<section>
	<div class="container">
	<div class="column is-full">
	<table class="table is-striped is-fullwidth">
		<thead>
		<tr>
			<th>Username</th>
			<th>Password</th>
			<th>Email</th>
			<th>Full Name</th>
			<th>Zip Code</th>
			<th>Country</th>
		</tr>
		</thead>
		<tbody>
		
		<c:forEach items="${users}" var="user">
		<tr>
			<td><c:out value="${user.username}"/></td>
			<td><c:out value="${user.password}"/></td>
			<td><c:out value="${user.email}"/></td>
			<td><c:out value="${user.firstName}"/> <br> <c:out value="${user.lastName}"/></td>
			<td><c:out value="${user.zip}"/></td>
			<td><c:out value="${user.country}"/></td>
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