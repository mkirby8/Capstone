<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Cart Page</title>
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

      <a class="navbar-item" href="adminLogin.jsp">
        Admin Login
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

<c:if test="${sessionScope.username == null}">
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

  <section class="hero is-fullheight">
    <div class="hero-body has-text-centered">
      <div class="container">
        <div class="section is-vcentered ">
          <div class="columns">
            <div class="column is-two-thirds">

              <div class="box has-text-left">
                <div class="media">
                  <div class="media-left">
                    <figure class="image is-64x64">
                      <img src="resources/temp.png" alt="Image">
                    </figure>
                  </div>
                  <div class="media-content">
                    <p>Item Description: </p>
                    <p>Price: </p>
                  </div>
                </div>
              </div>

              <div class="box has-text-left">
                <div class="media">
                  <div class="media-left">
                    <figure class="image is-64x64">
                      <img src="resources/temp.png" alt="Image">
                    </figure>
                  </div>
                  <div class="media-content">
                    <p>Item Description: </p>
                    <p>Price: </p>
                  </div>
                </div>
              </div>

              <div class="box has-text-left">
                <div class="media">
                  <div class="media-left">
                    <figure class="image is-64x64">
                      <img src="resources/temp.png" alt="Image">
                    </figure>
                  </div>
                  <div class="media-content">
                    <p>Item Description: </p>
                    <p>Price: </p>
                  </div>
                </div>
              </div>

              <div class="box has-text-left">
                <div class="media">
                  <div class="media-left">
                    <figure class="image is-64x64">
                      <img src="resources/temp.png" alt="Image">
                    </figure>
                  </div>
                  <div class="media-content">
                    <p>Item Description: </p>
                    <p>Price: </p>
                  </div>
                </div>
              </div>

              <div class="box has-text-left">
                <div class="media">
                  <div class="media-left">
                    <figure class="image is-64x64">
                      <img src="resources/temp.png" alt="Image">
                    </figure>
                  </div>
                  <div class="media-content">
                    <p>Item Description: </p>
                    <p>Price: </p>
                  </div>
                </div>
              </div>

            </div>
            <div class="column is-one-third is-full has-text-left">
              <div id="purchase">
                <h1 class="title is-1 has-text-centered">Total</h1>
                  <p>Total cost: </p>
                  <p>Delivery Address: </p>
                  <br>
                  <br>
                  <a href="confirmation.jsp"><button class="button is-primary">Place Order</button></a>
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>
  </section>
  </c:if>
</body>

</html>