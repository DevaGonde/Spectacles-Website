<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="JavaClasses.*"%>
<!-- --﷽-- -->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>products</title>

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
	<main class="main-products">
		<!-- ====markup product title section==== -->
		<section class="product-title">
			<h2>our products</h2>
			<div class="page-direction">
				<a href="index.jsp">home</a> >> products
			</div>
		</section>

		<!-- ====markup product card section==== -->
		<section class="product-container">
			<h2>featured products</h2>

			<div class="pc-container">
				<!-- ---product card 01--- -->

				<div class="p-card">
					<button
						onclick="window.location.href='Cart.jsp?name=<%=name%>&pass=<%=pass%>&img=product-1.jpg&type=Stylish Frames&price=1500&sprice=2000'"
						class="p-card-btn">
						<div class="pc-social">
							<i class="fas fa-shopping-cart"></i> <i class="fas fa-share"></i>
							<i class="fas fa-eye"></i>
						</div>
						<figure class="pc-image">
							<img src="images/product-1.jpg" alt="found no image" />
						</figure>
						<div class="pc-content">
							<h3>Stylish Frames</h3>
							<div class="star-rating">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star-half-alt"></i>
							</div>
							<p class="price">
								$1500 <span>$2000</span>
							</p>
						</div>
					</button>
				</div>

				<div class="p-card">
					<button
						onclick="window.location.href='Cart.jsp?name=<%=name%>&pass=<%=pass%>&img=product-2.jpg&type=Designer Eyewear&price=2000&sprice=2500'"
						class="p-card-btn">
						<div class="pc-social">
							<i class="fas fa-shopping-cart"></i> <i class="fas fa-share"></i>
							<i class="fas fa-eye"></i>
						</div>
						<figure class="pc-image">
							<img src="images/product-2.jpg" alt="found no image" />
						</figure>
						<div class="pc-content">
							<h3>Designer Eyewear</h3>
							<div class="star-rating">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star-half-alt"></i>
							</div>
							<p class="price">
								$2000 <span>$2500</span>
							</p>
						</div>
					</button>
				</div>



				<button
					onclick="window.location.href='Cart.jsp?name=<%=name%>&pass=<%=pass%>&img=product-3.jpg&type=Fashionable Spectacles&price=1800&sprice=2200'"
					class="p-card">
					<div class="pc-social">
						<i class="fas fa-shopping-cart"></i> <i class="fas fa-share"></i>
						<i class="fas fa-eye"></i>
					</div>
					<figure class="pc-image">
						<img src="images/product-3.jpg" alt="found no image" />
					</figure>
					<div class="pc-content">
						<h3>Fashionable Spectacles</h3>
						<div class="star-rating">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
						<p class="price">
							$1800 <span>$2200</span>
						</p>
					</div>
				</button>

				<button class="p-card"
					onclick="window.location.href='Cart.jsp?name=<%=name%>&pass=<%=pass%>&img=product-4.jpg&type=Trendy Eyeglasses&price=1700&sprice=2100'">
					<div class="pc-social">
						<i class="fas fa-shopping-cart"></i> <i class="fas fa-share"></i>
						<i class="fas fa-eye"></i>
					</div>
					<figure class="pc-image">
						<img src="images/product-4.jpg" alt="found no image" />
					</figure>
					<div class="pc-content">
						<h3>Trendy Eyeglasses</h3>
						<div class="star-rating">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
						<p class="price">
							$1700 <span>$2100</span>
						</p>
					</div>
				</button>


				<div class="p-card">
					<button
						onclick="window.location.href='Cart.jsp?name=<%=name%>&pass=<%=pass%>&img=product-5.jpg&type=Chic Frames&price=2500&sprice=3000'"
						class="p-card-btn">
						<div class="pc-social">
							<i class="fas fa-shopping-cart"></i> <i class="fas fa-share"></i>
							<i class="fas fa-eye"></i>
						</div>
						<figure class="pc-image">
							<img src="images/product-5.jpg" alt="found no image" />
						</figure>
						<div class="pc-content">
							<h3>Chic Frames</h3>
							<div class="star-rating">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star-half-alt"></i>
							</div>
							<p class="price">
								$2500 <span>$3000</span>
							</p>
						</div>
					</button>
				</div>

				<div class="p-card">
					<button
						onclick="window.location.href='Cart.jsp?name=<%=name%>&pass=<%=pass%>&img=product-6.jpg&type=Elegant Eyewear&price=2200&sprice=2700'"
						class="p-card-btn">
						<div class="pc-social">
							<i class="fas fa-shopping-cart"></i> <i class="fas fa-share"></i>
							<i class="fas fa-eye"></i>
						</div>
						<figure class="pc-image">
							<img src="images/product-6.jpg" alt="found no image" />
						</figure>
						<div class="pc-content">
							<h3>Elegant Eyewear</h3>
							<div class="star-rating">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star-half-alt"></i>
							</div>
							<p class="price">
								$2200 <span>$2700</span>
							</p>
						</div>
					</button>
				</div>

				<div class="p-card">
					<button
						onclick="window.location.href='Cart.jsp?name=<%=name%>&pass=<%=pass%>&img=product-7.jpg&type=Modern Spectacles&price=1900&sprice=2300'"
						class="p-card-btn">
						<div class="pc-social">
							<i class="fas fa-shopping-cart"></i> <i class="fas fa-share"></i>
							<i class="fas fa-eye"></i>
						</div>
						<figure class="pc-image">
							<img src="images/product-7.jpg" alt="found no image" />
						</figure>
						<div class="pc-content">
							<h3>Modern Spectacles</h3>
							<div class="star-rating">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star-half-alt"></i>
							</div>
							<p class="price">
								$1900 <span>$2300</span>
							</p>
						</div>
					</button>
				</div>

				<div class="p-card">
					<button
						onclick="window.location.href='Cart.jsp?name=<%=name%>&pass=<%=pass%>&img=product-8.jpg&type=Sleek Glasses&price=2400&sprice=2900'"
						class="p-card-btn">
						<div class="pc-social">
							<i class="fas fa-shopping-cart"></i> <i class="fas fa-share"></i>
							<i class="fas fa-eye"></i>
						</div>
						<figure class="pc-image">
							<img src="images/product-8.jpg" alt="found no image" />
						</figure>
						<div class="pc-content">
							<h3>Sleek Glasses</h3>
							<div class="star-rating">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star-half-alt"></i>
							</div>
							<p class="price">
								$2400 <span>$2900</span>
							</p>
						</div>
					</button>
				</div>

				<div class="p-card">
					<button
						onclick="window.location.href='Cart.jsp?name=<%=name%>&pass=<%=pass%>&img=product-9.jpg&type=Fashion Frames&price=2800&sprice=3300'"
						class="p-card-btn">
						<div class="pc-social">
							<i class="fas fa-shopping-cart"></i> <i class="fas fa-share"></i>
							<i class="fas fa-eye"></i>
						</div>
						<figure class="pc-image">
							<img src="images/product-9.jpg" alt="found no image" />
						</figure>
						<div class="pc-content">
							<h3>Fashion Frames</h3>
							<div class="star-rating">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star-half-alt"></i>
							</div>
							<p class="price">
								$2800 <span>$3300</span>
							</p>
						</div>
					</button>
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

			<!-- ---newsletter--- -->
			<div class="newsletter">
				<h3>newsletter</h3>
				<p>subsribe for latest updates</p>

				<!-- ---subscribe form--- -->
				<form action="#" class="newsletter-form" autocomplete="off">
					<input type="email" name="email" id="email"
						placeholder="enter your email" required /> <input type="submit"
						value="subscribe" />
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
