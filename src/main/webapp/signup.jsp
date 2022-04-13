<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sign Up Page</title>
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
    <section class="hero is-fullheight">
        <div class="hero-body has-text-centered">
            <div class="container">
                <div class="section is-vcentered ">
                    <div class="columns">
                        <div class="column">
                        </div>
                        <div class="column">
                            <div class="content is-vcentered">
                                <h1 class="title is-1">Sign up</h1>
                                <form name="signup" method="post" action="AddUser">
                                  
                                    
                                    <div class="field">
                                        <div class="control">
                                            <input class="input" type="text" name="username" placeholder="Username">
                                        </div>
                                    </div>

                                    <div class="field">
                                        <div class="control">
                                            <input class="input" type="password" name="password" placeholder="Password">
                                        </div>
                                    </div>
                                    
                                    <div class="field">
                                        <div class="control">
                                            <input class="input" type="email" name="email" placeholder="Email">
                                        </div>
                                    </div>

                                    <div class="field">
                                        <div class="control">
                                            <input class="input" type="text" name ="firstname" placeholder="First Name">
                                        </div>
                                    </div>
                                    
                                    <div class="field">
                                        <div class="control">
                                            <input class="input" type="text" name="lastname" placeholder="Last Name">
                                        </div>
                                    </div>

                                    <div class="field">
                                        <div class="control">
                                            <input class="input" type="text" name="address" placeholder="Address">
                                        </div>
                                    </div>

                                    <div class="field is-horizontal">
                                        <div class="field">
                                            <div class="control">
                                                <input class="input" type="text" name="zip" placeholder="ZIP">
                                            </div>    
                                        </div>
                                        <div class="field">
                                            <div class="control">
                                                <input class="input" type="text" name="country" placeholder="Country">
                                            </div>    
                                        </div>
                                    </div>

                                    <div class="field is-vcentered">
                                        <div class="control">
                                            <button class="button is-primary is-rounded is-fullwidth">Sign Up</button>
                                        </div>
                                    </div>
                                </form>
                                <div class="field is-vcentered">
                    <div class="control">
                      <a href="login.jsp"><button class="button is-primary is-light is-rounded is-fullwidth" >Already registered? Login</button></a>
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
</body>

</html>