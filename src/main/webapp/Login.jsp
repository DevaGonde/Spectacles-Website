<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!-- --﷽-- -->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>login</title>

        <!-- ---linked glasses favicon--- -->
        <link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />

        <!-- ---linked font awesome cdn--- -->
        <link
            rel="stylesheet"
            href="index.css"
            integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />

        <!-- ---linked style.css file--- -->
        <link rel="stylesheet" href="style.css" />

        <!-- ---linked media.css file--- -->
        <link rel="stylesheet" href="media.css" />
    </head>
    <body>
        <%
            String msg=(String)request.getAttribute("msg");
            if(msg !=null && !msg.isEmpty()){%>
            <script>
                alert(<%=msg%>);
            </script>
            <%}%>
        <header class="header">
            <!-- ---header logo--- -->
            <a href="#" class="header-logo">
                <img src="images/logo.png" alt="Logo" />
            </a>

            <!-- ---navigation--- -->
            <nav class="navigation">
                <ul class="main-list">
                    <li><a href="index.jsp">home</a></li>
                    <li><a href="Products.jsp">products</a></li>
                    <li>
                        <a href="#">pages +</a>
                        <ul class="sub-list">
                            <li><a href="About.jsp">about</a></li>
                            <li><a href="Blogs.jsp">blogs</a></li>
                        </ul>
                    </li>
                    <li><a href="Contact.jsp">contacts</a></li>
                    <li>
                        <a href="#">account +</a>
                        <ul class="sub-list">
                            <li><a href="Login.jsp">login</a></li>
                            <li><a href="Register.jsp">register</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>

            <!-- ---header icons--- -->
            <div class="header-icons">
                <div id="search-icon" class="fas fa-search icon"></div>
                <a href="Cart.jsp" class="fas fa-shopping-cart icon"></a>
                <div id="menu-icon" class="fas fa-bars icon"></div>
            </div>

            <!-- --- header search form--- -->
            <form action="#" class="search-form" autocomplete="off">
                <input
                    type="search"
                    name="search"
                    id="search-box"
                    placeholder="search here..."
                    />
                <label for="search-box" class="fas fa-search"></label>
            </form>
        </header>

        <!-- =====markup main element===== -->
        <main class="main-login">
            <!-- ====markup login title section==== -->
            <section class="login-title">
                <h2>account</h2>
                <div class="page-direction">
                    <a href="index.jsp">home</a> >> login
                </div>
            </section>

            <!-- ====markup user login  section==== -->
            <section class="user-login">
                <form action="LoginServlet" method="post" class="login-form" autocomplete="off">
                    <h2>user login</h2>

                    <div class="login-desc">
                        <i class="fas fa-user"></i>
                        <input type="text" name="name" placeholder="enter your username" required />
                    </div>

                    <div class="login-desc">
                        <i class="fas fa-lock"></i>
                        <input type="password" name="pass" placeholder="enter your password" required />
                    </div>
                    <input type="submit" value="sign in" />

                    <div class="ul-forgot">
                        <div class="remember">
                            <input type="checkbox" id="remember-me" />
                            <label for="remember-me">remember me</label>
                        </div>
                        <a href="#">forgot password?</a>
                    </div>

                    <a href="Register.jsp" class="create-account">
                        <input type="button" value="create an account" />
                    </a>
                </form>
            </section>
        </main>

        <!-- =====markup footer element===== -->
        <footer class="footer">
            <div class="footer-content">
                <!-- ---quick links--- -->
                <div class="quick-links">
                    <h3>quick links</h3>
                    <a href="index.jsp">
                        <i class="fas fa-angle-right"></i>
                        <span>home</span>
                    </a>
                    <a href="Products.jsp">
                        <i class="fas fa-angle-right"></i>
                        <span>products</span>
                    </a>
                    <a href="About.jsp">
                        <i class="fas fa-angle-right"></i>
                        <span>about</span>
                    </a>
                    <a href="Blogs.jsp">
                        <i class="fas fa-angle-right"></i>
                        <span>blogs</span>
                    </a>
                    <a href="Contact.jsp">
                        <i class="fas fa-angle-right"></i>
                        <span>contact</span>
                    </a>
                    <a href="Login.jsp">
                        <i class="fas fa-angle-right"></i>
                        <span>login</span>
                    </a>
                    <a href="Register.jsp">
                        <i class="fas fa-angle-right"></i>
                        <span>register</span>
                    </a>
                </div>

                <!-- ---extra links--- -->
                <div class="extra-links">
                    <h3>extra links</h3>
                    <a href="#">
                        <i class="fas fa-angle-right"></i>
                        <span>my account</span>
                    </a>
                    <a href="#">
                        <i class="fas fa-angle-right"></i>
                        <span>my order</span>
                    </a>
                    <a href="#">
                        <i class="fas fa-angle-right"></i>
                        <span>my wishlist</span>
                    </a>
                    <a href="#">
                        <i class="fas fa-angle-right"></i>
                        <span>terms of use</span>
                    </a>
                    <a href="#">
                        <i class="fas fa-angle-right"></i>
                        <span>privacy policy</span>
                    </a>
                </div>

                <!-- ---follow us--- -->
                <div class="follow-us">
                    <h3>follow us</h3>
                    <a href="https://www.facebook.com" target="_blank">
                        <i class="fab fa-facebook"></i>
                        <span>facebook</span>
                    </a>
                    <a href="https://www.twitter.com" target="_blank">
                        <i class="fab fa-twitter"></i>
                        <span>twitter</span>
                    </a>
                    <a href="https://www.instagram.com" target="_blank">
                        <i class="fab fa-instagram"></i>
                        <span>instagram</span>
                    </a>
                    <a href="https://www.pinterest.com" target="_blank">
                        <i class="fab fa-pinterest"></i>
                        <span>pinterest</span>
                    </a>
                    <a href="https://www.linkedin.com" target="_blank">
                        <i class="fab fa-linkedin"></i>
                        <span>linkedin</span>
                    </a>
                    <a href="https://www.github.com" target="_blank">
                        <i class="fab fa-github"></i>
                        <span>github</span>
                    </a>
                </div>

                <!-- ---newsletter--- -->
                <div class="newsletter">
                    <h3>newsletter</h3>
                    <p>subsribe for latest updates</p>

                    <!-- ---subscribe form--- -->
                    <form action="#" class="newsletter-form" autocomplete="off">
                        <input
                            type="email"
                            name="email"
                            id="email"
                            placeholder="enter your email"
                            required
                            />
                        <input type="submit" value="subscribe" />
                    </form>
                </div>
            </div>

            <!-- ---creater credit--- -->
            <div class="credit">
                &copy 2022 <span>ahf</span> || all right reserved .
            </div>
        </footer>

        <!-- ---linked main.js file--- -->
        <script src="js/main.js">
        </script>
    </body>
</html>

<!-- happy coding !!!! -->
<!-- this project made by Fahad at 10th May, 2022. -->

