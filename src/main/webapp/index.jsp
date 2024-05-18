<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>home</title>

<!-- ---linked glasses favicon--- -->
<link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />

<!-- ---linked font awesome cdn--- -->
<link rel="stylesheet" href="index.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- ---linked style.css file--- -->
<link rel="stylesheet" href="style.css" />

<!-- ---linked media.css file--- -->
<link rel="stylesheet" href="media.css" />
</head>
<body>
	<header class="header">
		<!-- ---header logo--- -->
		<a href="#" class="header-logo"> <img src="images/logo.png"
			alt="Logo" />
		</a>

		<!-- ---navigation--- -->
		<nav class="navigation">
			<%
			String name = null, pass = null;
			name = request.getParameter("name");
			pass = request.getParameter("pass");
			%>
			<ul class="main-list">
				<li><a href="index.jsp?name=<%=name%>&pass=<%=pass%>">home</a></li>
				<li><a href="Products.jsp?name=<%=name%>&pass=<%=pass%>">products</a></li>
				<li><a href="#">pages +</a>
					<ul class="sub-list">
						<li><a href="About.jsp?name=<%=name%>&pass=<%=pass%>">about</a></li>
						<li><a href="Blogs.jsp?name=<%=name%>&pass=<%=pass%>">blogs</a></li>
					</ul></li>
				<li><a href="Contact.jsp?name=<%=name%>&pass=<%=pass%>">contacts</a></li>
				<%
				if (name != null && !name.isEmpty()) {
				%>
				<li><a href="Profile.jsp?name=<%=name%>&pass=<%=pass%>"><%=name%></a></li>
				<%
				} else {
				%>
				<li><a href="#">account +</a>
					<ul class="sub-list">
						<li><a href="Login.jsp">login</a></li>
						<li><a href="Register.jsp">register</a></li>
					</ul></li>
				<%
				}
				%>
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
			<input type="search" name="search" id="search-box"
				placeholder="search here..." /> <label for="search-box"
				class="fas fa-search"></label>
		</form>
	</header>

	<!-- =====markup main element===== -->

	<main class="main-home">
		<!-- =====markup slide gallery section===== -->
		<section class="slide-gallery">
			<!-- ---slide no 01--- -->
			<div class="slide active">
				<div class="slide-content">
					<p>protect your eyes</p>
					<h2>upto 50% off</h2>
					<a href="Products.jsp?name=<%=name%>&pass=<%=pass%>" ><input type="button" value="shop now" /></a>
				</div>
			</div>

			<!-- ---slide no 02--- -->
			<div class="slide">
				<div class="slide-content">
					<p>protect your eyes</p>
					<h2>upto 50% off</h2>
					<a href="Products.jsp?name=<%=name%>&pass=<%=pass%>" ><input type="button" value="shop now" /></a>
				</div>
			</div>

			<!-- ---slide no 03--- -->
			<div class="slide">
				<div class="slide-content">
					<p>protect your eyes</p>
					<h2>upto 50% off</h2>
					<a href="Products.jsp?name=<%=name%>&pass=<%=pass%>" ><input type="button" value="shop now" /></a>
				</div>
			</div>

			<!-- ---prev next arrow--- -->
			<div id="prev-slide" class="fas fa-angle-left previous"></div>
			<div id="next-slide" class="fas fa-angle-right next"></div>

			<!-- ---dot indicator--- -->
			<div class="dot-indicator"></div>
		</section>

		<!-- =====markup home card section===== -->
		<!-- =====markup home card section===== -->
		<section class="home-card">
			<!-- ---card no 01--- -->
			<div class="hp-card">
				<figure class="hp-card-image">
					<img src="images/banner-1.jpg" alt="found no image" />
				</figure>
				<div class="hp-card-content">
					<span>special offer</span>
					<h3>upto 30% off</h3>
					<!-- Change here to 30% off -->
					<a href="Products.jsp?name=<%=name%>&pass=<%=pass%>" ><input type="button" value="shop now" /></a>
				</div>
			</div>

			<!-- ---card no 02--- -->
			<div class="hp-card">
				<figure class="hp-card-image">
					<img src="images/banner-2.jpg" alt="found no image" />
				</figure>
				<div class="hp-card-content">
					<span>special offer</span>
					<h3>upto 30% off</h3>
					<!-- Change here to 30% off -->
					<a href="Products.jsp?name=<%=name%>&pass=<%=pass%>" ><input type="button" value="shop now" /></a>
				</div>
			</div>

			<!-- ---card no 03--- -->
			<div class="hp-card">
				<figure class="hp-card-image">
					<img src="images/banner-3.jpg" alt="found no image" />
				</figure>
				<div class="hp-card-content">
					<span>special offer</span>
					<h3>upto 30% off</h3>
					<!-- Change here to 30% off -->
					<a href="Products.jsp?name=<%=name%>&pass=<%=pass%>" ><input type="button" value="shop now" /></a>
				</div>
			</div>
			</section>


		<section class="home-card">

			<!-- ---card no 04--- -->
			<div class="hp-card">
				<figure class="hp-card-image">
					<img src="images/banner-4.jpg" alt="found no image" />
				</figure>
				<div class="hp-card-content">
					<span>special offer</span>
					<h3>upto 30% off</h3>
					<!-- Change here to 30% off -->
					<a href="Products.jsp?name=<%=name%>&pass=<%=pass%>" ><input type="button" value="shop now" /></a>
				</div>
			</div>

			<!-- ---card no 05--- -->
			<div class="hp-card">
				<figure class="hp-card-image">
					<img src="images/banner-5.jpg" alt="found no image" />
				</figure>
				<div class="hp-card-content">
					<span>special offer</span>
					<h3>upto 30% off</h3>
					<!-- Change here to 30% off -->
					<a href="Products.jsp?name=<%=name%>&pass=<%=pass%>" ><input type="button" value="shop now" /></a>
				</div>
			</div>

			<!-- ---card no 06--- -->
			<div class="hp-card">
				<figure class="hp-card-image">
					<img src="images/banner-6.jpg" alt="found no image" />
				</figure>
				<div class="hp-card-content">
					<span>special offer</span>
					<h3>upto 30% off</h3>
					<!-- Change here to 30% off -->
					<a href="Products.jsp?name=<%=name%>&pass=<%=pass%>" ><input type="button" value="shop now" /></a>
				</div>
			</div>
		</section>


		<section class="home-card">
			<div class="hp-card">
				<figure class="hp-card-image">
					<img src="images/banner-7.jpg" alt="found no image" />
				</figure>
				<div class="hp-card-content">
					<span>special offer</span>
					<h3>upto 20% off</h3>
					<a href="Products.jsp?name=<%=name%>&pass=<%=pass%>" ><input type="button" value="shop now" /></a>
				</div>
			</div>

			<div class="hp-card">
				<figure class="hp-card-image">
					<img src="images/banner-8.jpg" alt="found no image" />
				</figure>
				<div class="hp-card-content">
					<span>special offer</span>
					<h3>upto 25% off</h3>
					<a href="Products.jsp?name=<%=name%>&pass=<%=pass%>" ><input type="button" value="shop now" /></a>
				</div>
			</div>

			<div class="hp-card">
				<figure class="hp-card-image">
					<img src="images/banner-9.jpg" alt="found no image" />
				</figure>
				<div class="hp-card-content">
					<span>special offer</span>
					<h3>upto 15% off</h3>
					<a href="Products.jsp?name=<%=name%>&pass=<%=pass%>" ><input type="button" value="shop now" /></a>
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
				<a href="index.jsp"> <i class="fas fa-angle-right"></i> <span>home</span>
				</a> <a href="Products.jsp"> <i class="fas fa-angle-right"></i> <span>products</span>
				</a> <a href="About.jsp"> <i class="fas fa-angle-right"></i> <span>about</span>
				</a> <a href="Blogs.jsp"> <i class="fas fa-angle-right"></i> <span>blogs</span>
				</a> <a href="Contact.jsp"> <i class="fas fa-angle-right"></i> <span>contact</span>
				</a> <a href="Login.jsp"> <i class="fas fa-angle-right"></i> <span>login</span>
				</a> <a href="Register.jsp"> <i class="fas fa-angle-right"></i> <span>register</span>
				</a>
			</div>

			<!-- ---extra links--- -->
			<div class="extra-links">
				<h3>extra links</h3>
				<a href="#"> <i class="fas fa-angle-right"></i> <span>my
						account</span>
				</a> <a href="#"> <i class="fas fa-angle-right"></i> <span>my
						order</span>
				</a> <a href="#"> <i class="fas fa-angle-right"></i> <span>my
						wishlist</span>
				</a> <a href="#"> <i class="fas fa-angle-right"></i> <span>terms
						of use</span>
				</a> <a href="#"> <i class="fas fa-angle-right"></i> <span>privacy
						policy</span>
				</a>
			</div>

			<!-- ---follow us--- -->
			<div class="follow-us">
				<h3>follow us</h3>
				<a href="https://www.facebook.com" target="_blank"> <i
					class="fab fa-facebook"></i> <span>facebook</span>
				</a> <a href="https://www.twitter.com" target="_blank"> <i
					class="fab fa-twitter"></i> <span>twitter</span>
				</a> <a href="https://www.instagram.com" target="_blank"> <i
					class="fab fa-instagram"></i> <span>instagram</span>
				</a> <a href="https://www.pinterest.com" target="_blank"> <i
					class="fab fa-pinterest"></i> <span>pinterest</span>
				</a> <a href="https://www.linkedin.com" target="_blank"> <i
					class="fab fa-linkedin"></i> <span>linkedin</span>
				</a> <a href="https://www.github.com" target="_blank"> <i
					class="fab fa-github"></i> <span>github</span>
				</a>
			</div>

			<div class="newsletter">
				<h3>newsletter</h3>
				<p>subsribe for latest updates</p>

				<form action="#" class="newsletter-form" autocomplete="off">
					<input type="email" name="email" id="email"
						placeholder="enter your email" required /> <input type="submit"
						value="subscribe" />
				</form>
			</div>
		</div>

		<div class="credit">
			&copy 2022 <span>ahf</span> || all right reserved .
		</div>
	</footer>

	<script src="js/home.js"></script>
	<script src="js/main.js"></script>
	<script>
	function btn-onclick(){
		window.location.href="Products.jsp?name=<%=name%>&pass=<%=pass%>";
			}
	</script>
</body>
</html>
