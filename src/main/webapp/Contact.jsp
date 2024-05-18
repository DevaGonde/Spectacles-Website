<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- --﷽-- -->

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>contact</title>

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
    <main class="main-contact">
      <!-- ====markup contact title section==== -->
      <section class="contact-title">
        <h2>contact us</h2>
        <div class="page-direction">
          <a href="index.jsp">home</a> >> contact
        </div>
      </section>

      <!-- ====markup contact content section==== -->
      <div class="contact-content">
        <h2>get in touch</h2>

        <div class="content-body">
				<form action="#" class="contact-form" autocomplete="off"
					>
					<input type="text" id="name" placeholder="Name" required /> <input
						type="tel" id="number" placeholder="Phone Number" required /> <input
						type="email" id="email" placeholder="Email" required />
					<textarea id="message" cols="30" rows="7" placeholder="Message"></textarea>
					<input type="submit" value="Send Message" />
				</form>
				<div class="location-map">
            <iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3775.834611034178!2d73.8856281736474!3d18.85002025903105!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2cbc48e31be6d%3A0xa008ec27e8ad1f1f!2sHrm%20College%20Ground!5e0!3m2!1sen!2sin!4v1681322402245!5m2!1sen!2sin"
					width="700" height="450" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
        </div>
      </div>
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
   
</script>
  </body>
</html>

<!-- happy coding !!!! -->
<!-- this project made by Fahad at 10th May, 2022. -->
    