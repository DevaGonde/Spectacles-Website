<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- --﷽-- -->

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>about</title>

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
        <header class="header">
      <!-- ---header logo--- -->
      <a href="#" class="header-logo">
        <img src="images/logo.png" alt="Logo" />
      </a>

      <!-- ---navigation--- -->
      <nav class="navigation">
    <% String name = null, pass = null;
       name = request.getParameter("name");
       pass = request.getParameter("pass");
    %>
    <ul class="main-list">
        <li><a href="index.jsp?name=<%= name %>&pass=<%= pass %>">home</a></li>
        <li><a href="Products.jsp?name=<%= name %>&pass=<%= pass %>">products</a></li>
        <li>
            <a href="#">pages +</a>
            <ul class="sub-list">
                <li><a href="About.jsp?name=<%= name %>&pass=<%= pass %>">about</a></li>
                <li><a href="Blogs.jsp?name=<%= name %>&pass=<%= pass %>">blogs</a></li>
            </ul>
        </li>
        <li><a href="Contact.jsp?name=<%= name %>&pass=<%= pass %>">contacts</a></li>
        <% if (name != null && !name.isEmpty()) { %>
            <li><a href="Profile.jsp?name=<%= name %>&pass=<%= pass %>"><%= name %></a></li>
        <% } else { %>
            <li>
                <a href="#">account +</a>
                <ul class="sub-list">
                    <li><a href="Login.jsp">login</a></li>
                    <li><a href="Register.jsp">register</a></li>
                </ul>
            </li>
        <% } %>
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
    <main class="main-about">
      <!-- ====markup about title section==== -->
      <section class="about-title">
        <h2>about us</h2>
        <div class="page-direction">
          <a href=index.jsp">home</a> >> about
        </div>
      </section>

      <!-- ====markup about content section===== -->
      <section class="about-content">
        <h2>why choose us?</h2>

        <!-- ---about content desc--- -->
        <div class="ac-desc">
          <figure class="acd-image">
            <img src="images/about-img.jpg" alt="found no image" />
          </figure>
          <div class="acd-text">
            <h3>the best eye glasses seller</h3>
            <p>
              Lorem ipsum, dolor sit amet consectetur adipisicing elit. In
              assumenda ut nisi suscipit voluptatum, hic perspiciatis fugit quae
              quasi quod laudantium doloremque repellat, incidunt minus
              architecto dolore vero, molestiae quaerat?
            </p>
            <p>
              Lorem ipsum, dolor sit amet consectetur adipisicing elit.
              Veritatis perferendis necessitatibus exercitationem quam tempore
              recusandae iure qui, nobis ut aliquam.
            </p>
            <input type="button" value="read more" />
          </div>
        </div>

        <!-- ---about content card container--- -->
        <div class="ac-card-container">
          <!-- ---acc card no 01--- -->
          <div class="acc-card">
            <figure class="accc-img">
              <img src="images/icon-1.png" alt="found no image" />
            </figure>
            <h4>all size</h4>
          </div>

          <!-- ---acc card no 02--- -->
          <div class="acc-card">
            <figure class="accc-img">
              <img src="images/icon-2.png" alt="found no image" />
            </figure>
            <h4>free delivery</h4>
          </div>

          <!-- ---acc card no 03--- -->
          <div class="acc-card">
            <figure class="accc-img">
              <img src="images/icon-3.png" alt="found no image" />
            </figure>
            <h4>easy returns</h4>
          </div>

          <!-- ---acc card no 04--- -->
          <div class="acc-card">
            <figure class="accc-img">
              <img src="images/icon-4.png" alt="found no image" />
            </figure>
            <h4>easy payments</h4>
          </div>

          <!-- ---acc card no 05--- -->
          <div class="acc-card">
            <figure class="accc-img">
              <img src="images/icon-5.png" alt="found no image" />
            </figure>
            <h4>24/7 support</h4>
          </div>
        </div>
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
    <script src="js/main.js"></script>
  </body>
</html>

<!-- happy coding !!!! -->
<!-- this project made by Fahad at 10th May, 2022. -->
    