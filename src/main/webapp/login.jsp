<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login Page</title>
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

  </div>
</nav>
</div>
</section>

<c:if test="${sessionScope.username != null}">
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
                                    <p>You're already logged in!</p>
                                    <p>Return to <a href="userHome.jsp">Profile</a></p>
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
                <h1 class="title is-1">Log in</h1>
                <form name="login" method="post" action="UserLogin">
                <br>
                    <p class="has-text-danger">${message}</p>
                  <div class="field">
                    <div class="control">
                      <input class="input" type="text" name="username" placeholder="username">
                    </div>
                  </div>

                  <div class="field">
                    <div class="control">
                      <input class="input" type="password" name="password" placeholder="password">
                    </div>
                  </div>

                  <div class="field is-vcenter">
                    <div class="control">
                      <button class="button is-primary is-rounded is-fullwidth">Login</button>
                    </div>
                    
                    
                  </div>
                  </form>
                  <div class="field is-vcentered">
                    <div class="control">
                      <a href="signup.jsp"><button class="button is-primary is-light is-rounded is-fullwidth" >Sign Up</button></a>
                    </div>
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
</body>

</html>